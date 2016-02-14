package pass.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import ch.qos.logback.core.net.SyslogOutputStream;
import pass.vo.MemberDto;
import pass.vo.UserDto;

@Repository("memberDao")
public interface MemberDao {
	@Insert("insert into member values(#{mem_no},#{mem_name},#{mem_id},#{mem_pass},#{mem_nickname},"
			+ "#{mem_birth},#{mem_mail1},#{mem_mail2})")
	public void insertMember(MemberDto mins);
	
	@Insert("insert into user values(#{id},#{password},#{role})")
	public void insertUser(UserDto uins);
	
	@Select("select max(mem_no) from member")
	public String maxMember();
	
	@Select("select * from member")
	public List<MemberDto> selectMember();
	
	@Select("SELECT mem_id FROM member WHERE mem_id = #{mem_id}")
	public String idCheck(String mem_id);
	
	@Select("SELECT mem_nickname FROM member WHERE mem_nickname = #{mem_nickname}")
	public String nicknameCheck(String mem_nickname);
	
	@Select("select * from member where mem_id=#{mem_id} and mem_pass=#{mem_pass}")
	public MemberDto membercheck(MemberDto mins);

	@Select("select * from member where mem_id=#{mem_id} and mem_pass=#{mem_pass}")
	public MemberDto modifycheck(MemberDto mins);

	@Update("update member set mem_pass=#{mem_pass},mem_nickname=#{mem_nickname},mem_birth=#{mem_birth},mem_mail1=#{mem_mail1},mem_mail2=#{mem_mail2} where mem_id=#{mem_id} ")
	public int modifyok(MemberDto mins);
	

	
	
	
}
