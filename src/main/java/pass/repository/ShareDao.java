package pass.repository;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

import pass.vo.ProDto;

@Repository
public interface ShareDao {
	@Insert("")
	public void insertPro(ProDto ins);
}
