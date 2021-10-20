package kedaikopi.dao;

import java.sql.SQLException;
import java.util.List;

import kedaikopi.model.Kedaikopi;

public interface KedaikopiDao {

	void insertData(Kedaikopi nota) throws SQLException;
	void updateData(Kedaikopi nota) throws SQLException;
	boolean deleteData(long id) throws SQLException;
	List<Kedaikopi> selectAllTodos();
	Kedaikopi selectData(long dataId);

}
