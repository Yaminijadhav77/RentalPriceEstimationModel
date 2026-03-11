package org.techhub.repsitory;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.techhhub.model.RegisterModel;

@Repository
public class RegisterRepoImpl implements RegisterRepo{

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public boolean insertUser(RegisterModel user) {

        String sql="insert into register(name,email,phone,password,role) values(?,?,?,?,?)";

        int value = jdbcTemplate.update(sql,
                user.getName(),
                user.getEmail(),
                user.getPhone(),
                user.getPassword(),
                user.getRole());

        return value>0;
    }

    @Override
    public String getPasswordByName(String name) {

        String sql="select password from register where name=?";

        List<String> list = jdbcTemplate.queryForList(sql,String.class,name);

        if(list.size()>0){
            return list.get(0);
        }

        return null;
    }
}