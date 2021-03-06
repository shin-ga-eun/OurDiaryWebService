package com.example.demo.domain.member.dao;

import com.example.demo.domain.member.dto.SignUpDto;
import com.example.demo.domain.member.dto.UpdateMemberDto;
import com.example.demo.domain.member.entity.Member;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class MemberDao {
    private JdbcTemplate jdbcTemplate;
    public MemberDao(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Member> selectAll() {
        List<Member> results = jdbcTemplate.query("select * from member",
                new RowMapper<Member>() {
                    @Override
                    public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
                        Member member = new Member(
                                rs.getString("email"),
                                rs.getString("password"),
                                rs.getString("name"),
                                rs.getString("phone"),
                                rs.getString("profile"));
                        member.setId(rs.getLong("id"));
                        return member;
                    }
                });
        return results.isEmpty() ? null : results;
    }

    //select member by email
    public Member selectByEmail(String email) {
        List<Member> results = jdbcTemplate.query("select * from member where email=?",
                new RowMapper<Member>() {
                    @Override
                    public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
                        Member member = new Member(rs.getString("email"),
                                rs.getString("password"),
                                rs.getString("name"),
                                rs.getString("phone"),
                                rs.getString("profile"));
                        member.setId(rs.getLong("id"));
                        return member;
                    }
                }, email);
        return results.isEmpty() ? null : results.get(0);
    }

    // member insert
    public void insert (SignUpDto signUpDto){
        String email = signUpDto.getEmail();

        jdbcTemplate.update("insert member (email,password,name,phone,profile) values (?,?,?,?,?)",
                signUpDto.getEmail(), signUpDto.getPassword(), signUpDto.getName(), signUpDto.getPhone(), signUpDto.getProfile());
    }

    // member update
    public void update (UpdateMemberDto updateMemberDto){
        jdbcTemplate.update("update member set password=?, name=?, phone=?, profile=? where email=?",
                updateMemberDto.getPassword(), updateMemberDto.getName(), updateMemberDto.getPhone(), updateMemberDto.getProfile(), updateMemberDto.getEmail());
    }

    //member delete
    public void delete (String email){
        jdbcTemplate.update("delete from member where email=?",
                email);
    }

}
