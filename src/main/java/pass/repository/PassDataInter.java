package pass.repository;

import java.util.List;

import org.springframework.dao.DataAccessException;

import pass.vo.EduDto;
import pass.vo.IntroDto;
import pass.vo.LangDto;
import pass.vo.MilDto;
import pass.vo.ProDto;

public interface PassDataInter {
	String maxPro() throws DataAccessException;
	String maxEdu() throws DataAccessException;
	String maxMil() throws DataAccessException;
	String maxAc() throws DataAccessException;
	String maxLie() throws DataAccessException;
	String maxCar() throws DataAccessException;
	String maxAwa() throws DataAccessException;
	String maxOth() throws DataAccessException;
	String maxLang() throws DataAccessException;
	String maxIntro() throws DataAccessException;
	List<ProDto> selectAllPro(String pro_id) throws DataAccessException;
	List<EduDto> selectAlledu(String edu_id) throws DataAccessException;
	List<MilDto> selectAllmil(String mil_id) throws DataAccessException;
	List<IntroDto> selectAllIntro(String intro_id) throws DataAccessException;
	void updateIntro(IntroDto lins) throws DataAccessException;
	void updatePro(ProDto pins) throws DataAccessException;
	void updateEdu(EduDto eins) throws DataAccessException;
	void updateMil(MilDto mins) throws DataAccessException;
	void insertPro(ProDto pins) throws DataAccessException;
	void insertEdu(EduDto eins) throws DataAccessException;
	void insertMil(MilDto mins) throws DataAccessException;
	void insertLang(LangDto lains) throws DataAccessException;
	void insertIntro(IntroDto lins) throws DataAccessException;
}
