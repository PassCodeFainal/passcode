package pass.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import pass.vo.MemberDto;
import pass.vo.UserDto;

@Repository("memberDao")
public interface MemberDao {
	@Insert("insert into member values(#{mem_no},#{mem_id},#{mem_pass},#{mem_nickname},"
			+ "#{mem_birth},concat(#{mem_mail1},'@',#{mem_mail2}))")
	public void insertMember(MemberDto mins);
	
	@Insert("insert into user values(#{id},#{password},#{role})")
	public void insertUser(UserDto uins);
	
	@Select("select max(mem_no) from member")
	public int maxMember();
	
	@Select("select * from member")
	public List<MemberDto> selectMember();
	
	
}
