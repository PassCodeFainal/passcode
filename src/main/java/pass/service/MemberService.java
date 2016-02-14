package pass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import ch.qos.logback.core.net.SyslogOutputStream;
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
		String no = memberDao.maxMember();
		int getNo = 0;
		if(no==null){
			getNo=1;
		}else{
			getNo = Integer.parseInt(no)+1;
		}
		return getNo;
	}
	
	//check 하는 로직=======================================================
	
	public String idCheck(String id) throws DataAccessException{
		return memberDao.idCheck(id);
	}
	
	public MemberDto membercheck(MemberDto mins) throws DataAccessException{
		return memberDao.membercheck(mins);
	}
	
	public String nicknameCheck(String nickname) throws DataAccessException{
		return memberDao.nicknameCheck(nickname);
	}
	
	public MemberDto modifycheck(MemberDto mins) throws DataAccessException{
		
		return memberDao.modifycheck(mins);
	}
	//=======================================================================
	
	public List<MemberDto> selectMember() throws DataAccessException{
		return memberDao.selectMember();
	}

	
	public void insertUser(UserDto uins) throws DataAccessException{
		memberDao.insertUser(uins);
	}

	public int modifyok(MemberDto mins) throws DataAccessException{
		
		return memberDao.modifyok(mins);
	}
	
}
