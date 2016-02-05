package pass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import pass.repository.MemberDao;
import pass.vo.MemberDto;
import pass.vo.UserDto;

@Service("memberService")
public class MemberService {

	@Autowired
	@Qualifier("memberDao")
	private MemberDao memberDao;
	
	public void insertMember(MemberDto mins) throws DataAccessException{
		memberDao.insertMember(mins);
	} 
	
	public int maxMember() throws DataAccessException{
		return memberDao.maxMember();
	}
	
	public List<MemberDto> selectMember() throws DataAccessException{
		return memberDao.selectMember();
	}
	
	public void insertUser(UserDto uins) throws DataAccessException{
		memberDao.insertUser(uins);
	}
	
}
