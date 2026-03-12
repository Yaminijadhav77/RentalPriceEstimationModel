package org.techhub.repsitory;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.techhhub.model.RegisterModel;
import org.techhhub.model.StateModel;

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

	@Override
	public boolean isAddState(StateModel state) {
		String sql = "INSERT INTO state(state_id,name,State_code) VALUES(?,?,?)";
		int result = jdbcTemplate.update(
                sql,
                state.getState_id().toString(),
                state.getName(),
                state.getStateCode()
        );
		return result>0? true: false;
	}

	@Override
	public List<StateModel> getAllStates() {
		List<StateModel> list=jdbcTemplate.query(
				"select * from state",new RowMapper<StateModel>() {

					@Override
					public StateModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						StateModel model=new StateModel();
						model.setState_id(UUID.fromString(rs.getString("state_id")));
						model.setName(rs.getString("name"));
                        model.setStateCode(rs.getString("state_code"));

                        return model;
	
					}
					
				});
		return list;
	}
}