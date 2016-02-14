package pass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import pass.repository.PassDataInter;
import pass.repository.ResumeDao;
import pass.vo.EduDto;
import pass.vo.LangDto;
import pass.vo.IntroDto;
import pass.vo.MilDto;
import pass.vo.ProDto;

@Service("passService")
public class PassService implements PassDataInter{
	@Autowired
	@Qualifier("resumeDao")
	private ResumeDao redao;
	public String maxPro() throws DataAccessException{
		String pno = redao.maxPro();
		if(pno == null){
			pno = "1";
		}else{
			pno = Integer.toString(Integer.parseInt(pno)+1);
		}
		return pno;
	}
	public String maxEdu() throws DataAccessException{
		String eno = redao.maxEdu();
		if(eno == null){
			eno = "1";
		}else{
			eno = Integer.toString(Integer.parseInt(eno)+1);
		}
		return eno;
	}
	public String maxMil() throws DataAccessException{
		String mno = redao.maxMil();
		if(mno == null){
			mno = "1";
		}else{
			mno = Integer.toString(Integer.parseInt(mno)+1);
		}
		return mno;
	}
	public String maxLie() throws DataAccessException{
		String lno = redao.maxLie();
		if(lno == null){
			lno = "1";
		}else{
			lno = Integer.toString(Integer.parseInt(lno)+1);
		}
		return lno;
	}
	public String maxCar() throws DataAccessException{
		String cno = redao.maxCar();
		if(cno == null){
			cno = "1";
		}else{
			cno = Integer.toString(Integer.parseInt(cno)+1);
		}
		return cno;
	}
	public String maxAwa() throws DataAccessException{
		String ano = redao.maxAwa();
		if(ano == null){
			ano = "1";
		}else{
			ano = Integer.toString(Integer.parseInt(ano)+1);
		}
		return ano;
	}
	public String maxAc() throws DataAccessException{
		String acno = redao.maxAc();
		if(acno == null){
			acno = "1";
		}else{
			acno = Integer.toString(Integer.parseInt(acno)+1);
		}
		return acno;
	}
	public String maxOth() throws DataAccessException{
		String ono = redao.maxOth();
		if(ono == null){
			ono = "1";
		}else{
			ono = Integer.toString(Integer.parseInt(ono)+1);
		}
		return ono;
	}
	public String maxLang() throws DataAccessException {
		String lano = redao.maxLang();
		if(lano == null){
			lano = "1";
		}else{
			lano = Integer.toString(Integer.parseInt(lano)+1);
		}
		return lano;
		
	}
	public String maxIntro() throws DataAccessException{
		String max =  redao.maxIntro();
		if(max == null){
			max = "1";
		}else{
			max = Integer.toString(Integer.parseInt(max)+1);
		}
		return max;
	}
	public List<ProDto> selectAllPro(String pro_id) throws DataAccessException{
		List<ProDto> list = null;
		list = redao.selectAllpro(pro_id);
		return list;
	}
	public List<EduDto> selectAlledu(String edu_id) throws DataAccessException {
		List<EduDto> list = null;
		list = redao.selectAlledu(edu_id);
		return list;
	}
	public List<MilDto> selectAllmil(String mil_id) throws DataAccessException {
		List<MilDto> list = null;
		list = redao.selectAlllis(mil_id);
		return list;
	}
	public void updatePro(ProDto pins) throws DataAccessException {
		redao.updatePro(pins);
	}
	public void updateEdu(EduDto eins) throws DataAccessException {
		redao.updateEdu(eins);
	}
	public void updateIntro(IntroDto lins) throws DataAccessException {
		redao.updateIntro(lins);
	}
	public void updateMil(MilDto mins) throws DataAccessException {
		redao.updateMil(mins);
	}
	public void insertPro(ProDto pins) throws DataAccessException{
		redao.insertPro(pins);
	}
	public void insertEdu(EduDto eins) throws DataAccessException{
		redao.insertEdu(eins);
	}
	public void insertMil(MilDto mins) throws DataAccessException{
		redao.insertMil(mins);
	}
	public void insertLang(LangDto lains) throws DataAccessException {
		redao.insertLang(lains);
	}
	public void insertIntro(IntroDto lins) throws DataAccessException{
		redao.insertIntro(lins);
	}
	public List<IntroDto> selectAllIntro(String intro_id) throws DataAccessException{
		List<IntroDto> list = null;
		list = redao.selectAllIntro(intro_id);
		return list;
	}
}
