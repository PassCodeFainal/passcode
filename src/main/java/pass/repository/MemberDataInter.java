package pass.repository;

import java.util.List;

import org.springframework.dao.DataAccessException;

import pass.vo.IntroDto;
import pass.vo.MemberDto;
import pass.vo.UserDto;

public interface MemberDataInter {
	void insertMember(MemberDto mins) throws DataAccessException;
	int maxMember() throws DataAccessException;
	List<MemberDto> selectMember() throws DataAccessException;
	void insertUser(UserDto uins) throws DataAccessException;
}
