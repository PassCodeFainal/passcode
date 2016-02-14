package pass.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import pass.vo.AcDto;
import pass.vo.AwaDto;
import pass.vo.CarDto;
import pass.vo.EduDto;
import pass.vo.LangDto;
import pass.vo.IntroDto;
import pass.vo.MilDto;
import pass.vo.OthDto;
import pass.vo.ProDto;

@Repository("resumeDao")
public interface ResumeDao{
	@Insert("insert into profile values(#{pro_no},#{pro_id},"
			+ "#{pro_image},#{pro_name},#{pro_ename},#{pro_part},"
			+ "#{pro_pay},#{pro_tel},#{pro_mail},#{pro_address})")
	public void insertPro(ProDto pins);
	@Insert("insert into education values(#{db_edu_no},#{edu_id},#{db_edu_school},"
			+ "#{db_edu_major},#{db_edu_submajor},#{db_edu_grade},#{db_edu_sdate},"
			+ "#{db_edu_edate})")
	public void insertEdu(EduDto eins);
	@Insert("insert into military values(#{mil_no},#{mil_id},#{mil_div},"
			+ "#{mil_group},#{mil_class},#{mil_lance},#{mil_sdate},"
			+ "#{mil_edate})")
	public void insertMil(MilDto mins);
	@Insert("insert into db_language values(#{db_lang_no},#{db_lang_id},#{db_lang_div},"
			+ "#{db_lang_title},#{db_lang_class},#{db_lang_institute},#{db_lang_sdate},"
			+ "#{db_lang_edate})")
	public void insertLang(LangDto lains);
	@Insert("insert into introdution values(#{intro_no},#{intro_id},#{intro_title},"
			+ "#{intro_que},#{intro_ans})")
	public void insertIntro(IntroDto lins);
	@Update("update introdution set intro_title=#{intro_title},intro_que=#{intro_que},"
			+ "intro_ans=#{intro_ans} where intro_no=#{intro_no}")
	public void updateIntro(IntroDto lins);
	@Update("update profile set pro_id=#{pro_id},pro_image=#{pro_image},"
			+ "pro_name=#{pro_name},pro_ename=#{pro_ename},pro_part=#{pro_part}, pro_pay=#{pro_pay},"
			+ "pro_tel=#{pro_tel},pro_mail=#{pro_mail},pro_address=#{pro_address} where pro_no=#{pro_no}")
	public void updatePro(ProDto pins);
	@Update("update education set edu_id=#{edu_id},edu_school=#{db_edu_school},"
			+ "edu_major=#{db_edu_major},edu_submajor=#{db_edu_submajor},edu_grade=#{db_edu_grade}, edu_sdate=#{db_edu_sdate},"
			+ "edu_edate=#{db_edu_edate} where edu_no=#{db_edu_no}")
	public void updateEdu(EduDto eins);
	@Update("update military set mil_id=#{mil_id},mil_lance=#{mil_lance},"
			+ "mil_div=#{mil_div},mil_group=#{mil_group},mil_class=#{mil_class}, mil_sdate=#{mil_sdate},"
			+ "mil_edate=#{mil_edate} where mil_no=#{mil_no}")
	public void updateMil(MilDto mins);
	@Select("select * from profile where pro_id=#{pro_id}")
	public List<ProDto> selectAllpro(String pro_id);
	@Select("select * from education where edu_id=#{edu_id}")
	public List<EduDto> selectAlledu(String edu_id);
	@Select("select * from military where mil_id=#{mil_id}")
	public List<MilDto> selectAlllis(String mil_id);
	@Select("select * from career")
	public List<CarDto> selectAllcar();
	@Select("select * from award")
	public List<AwaDto> selectAllawa();
	@Select("select * from active")
	public List<AcDto> selectAllac();
	@Select("select * from other")
	public List<OthDto> selectAlloth();
	@Select("select * from language")
	public List<LangDto> selectAllLang();
	@Select("select max(pro_no) from profile")
	public String maxPro();
	@Select("select max(edu_no) from education")
	public String maxEdu();
	@Select("select max(mil_no) from military")
	public String maxMil();
	@Select("select max(ac_no) from active")
	public String maxAc();
	@Select("select max(awa_no) from award")
	public String maxAwa();
	@Select("select max(lie_no) from lisence")
	public String maxLie();
	@Select("select max(car_no) from career")
	public String maxCar();
	@Select("select max(oth_no) from other")
	public String maxOth();
	@Select("select max(lang_no) from language")
	public String maxLang();
	@Select("select max(intro_no) from introdution")
	public String maxIntro();
	@Select("select * from introdution where intro_id=#{intro_id}")
	public List<IntroDto> selectAllIntro(String intro_id);
	
	
}
