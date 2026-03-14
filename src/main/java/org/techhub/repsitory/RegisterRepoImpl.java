package org.techhub.repsitory;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.techhhub.model.RegisterModel;
import org.techhhub.model.StateModel;
import org.techhhub.model.StateUpdate;

@Repository
public class RegisterRepoImpl implements RegisterRepo {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public boolean insertUser(RegisterModel user) {
        String sql = "INSERT INTO register(name,email,phone,password,role) VALUES(?,?,?,?,?)";
        int value = jdbcTemplate.update(sql,
                user.getName(),
                user.getEmail(),
                user.getPhone(),
                user.getPassword(),
                user.getRole());
        return value > 0;
    }

    @Override
    public String getPasswordByName(String name) {
        String sql = "SELECT password FROM register WHERE name=?";
        List<String> list = jdbcTemplate.queryForList(sql, String.class, name);
        return list.size() > 0 ? list.get(0) : null;
    }

    @Override
    public boolean isAddState(StateModel state) {

        String sql = "INSERT INTO state(state_id,name,state_code,status,created_at,updated_at) VALUES(?,?,?,?,?,?)";

        int result = jdbcTemplate.update(
                sql,
                state.getState_id().toString(),
                state.getName(),
                state.getStateCode(),
                state.getStatus(),   // FIX (string)
                state.getCreated_at(),
                state.getUpdatedAt()
        );

        return result > 0;
    }

    @Override
    public List<StateModel> getAllStates() {

        return jdbcTemplate.query("SELECT * FROM state", (rs, rowNum) -> {

            StateModel model = new StateModel();

            model.setState_id(UUID.fromString(rs.getString("state_id")));
            model.setName(rs.getString("name"));
            model.setStateCode(rs.getString("state_code"));

            // FIX
            model.setStatus(rs.getString("status"));

            model.setCreated_at(rs.getTimestamp("created_at").toLocalDateTime());
            model.setUpdatedAt(rs.getTimestamp("updated_at").toLocalDateTime());

            return model;
        });
    }

	
	//update stuts
	@Override
	public boolean updateStatus(UUID stateId, String newStatus) {
		String sql = "UPDATE state SET status=?,updated_at=? WHERE state_id=?";

        int result = jdbcTemplate.update(
                sql,
                newStatus,   // FIX
                java.time.LocalDateTime.now(),
                stateId.toString()
        );

        return result > 0;
	}

	@Override
	public Optional<StateModel> getStateById(UUID stateId) {
		 String sql = "SELECT * FROM state WHERE state_id=?";

	        List<StateModel> list = jdbcTemplate.query(sql,
	                new Object[]{stateId.toString()},
	                (rs, rowNum) -> {

	                    StateModel model = new StateModel();

	                    model.setState_id(UUID.fromString(rs.getString("state_id")));
	                    model.setName(rs.getString("name"));
	                    model.setStateCode(rs.getString("state_code"));

	                    // FIX
	                    model.setStatus(rs.getString("status"));

	                    model.setCreated_at(rs.getTimestamp("created_at").toLocalDateTime());
	                    model.setUpdatedAt(rs.getTimestamp("updated_at").toLocalDateTime());

	                    return model;
	                });

	        return list.isEmpty() ? Optional.empty() : Optional.of(list.get(0));
	}
	@Override
	public boolean updateState(StateModel state) {

	    String sql="update state set name=?,state_code=?,updated_at=? where state_id=?";

	    int value = jdbcTemplate.update(
	            sql,
	            state.getName(),
	            state.getStateCode(),
	            java.time.LocalDateTime.now(),
	            state.getState_id().toString()
	    );

	    return value>0;
	}
	@Override
	public boolean deleteState(UUID stateId) {

	    String sql="delete from state where state_id=?";

	    int value = jdbcTemplate.update(sql,stateId.toString());

	    return value>0;
	}
}