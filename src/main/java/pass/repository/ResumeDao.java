package pass.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
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
	
	@Insert("insert into education values(#{edu_no1},#{edu_id},#{edu_school1},"
			+ "#{edu_major1},#{edu_submajor1},#{edu_grade1},#{edu_sdate1},"
			+ "#{edu_edate1})")
	public void insertEdu1(EduDto eins);
	
	@Insert("insert into education values(#{edu_no2},#{edu_id},#{edu_school2},"
			+ "#{edu_major2},#{edu_submajor2},#{edu_grade2},#{edu_sdate2},"
			+ "#{edu_edate2})")
	public void insertEdu2(EduDto eins);
	
	@Insert("insert into education values(#{edu_no3},#{edu_id},#{edu_school3},"
			+ "#{edu_major3},#{edu_submajor3},#{edu_grade3},#{edu_sdate3},"
			+ "#{edu_edate3})")
	public void insertEdu3(EduDto eins);
	
	@Insert("insert into military values(#{mil_no},#{mil_id},#{mil_div},"
			+ "#{mil_group},#{mil_class},#{mil_lance},#{mil_sdate},"
			+ "#{mil_edate})")
	public void insertMil(MilDto mins);
	
	@Insert("insert into language values(#{lang_no1},#{lang_id},#{lang_div1},"
			+ "#{lang_title1},#{lang_class1},#{lang_institute1},#{lang_sdate1},"
			+ "#{lang_edate1})")
	public void insertLang1(LangDto lains);
	
	@Insert("insert into language values(#{lang_no2},#{lang_id},#{lang_div2},"
			+ "#{lang_title2},#{lang_class2},#{lang_institute2},#{lang_sdate2},"
			+ "#{lang_edate2})")
	public void insertLang2(LangDto lains);
	
	@Insert("insert into language values(#{lang_no3},#{lang_id},#{lang_div3},"
			+ "#{lang_title3},#{lang_class3},#{lang_institute3},#{lang_sdate3},"
			+ "#{lang_edate3})")
	public void insertLang3(LangDto lains);
	
	@Insert("insert into introdution values(#{intro_no},#{intro_id},#{intro_title},"
			+ "#{intro_que},#{intro_ans})")
	public void insertIntro(IntroDto lins);
	
	
	@Select("select * from profile")
	public List<ProDto> selectAllpro();
	
	@Select("select * from education")
	public List<EduDto> selectAlledu();
	
	@Select("select * from military")
	public List<ProDto> selectAllmil();
	
	@Select("select * from lisence")
	public List<MilDto> selectAlllis();
	
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
	
	@Select("select * from introdution")
	public List<IntroDto> selectAllIntro();
	
	
}
