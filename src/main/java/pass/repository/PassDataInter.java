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
	List<ProDto> selectAllP() throws DataAccessException;
	void insertPro(ProDto pins) throws DataAccessException;
	void insertEdu1(EduDto eins) throws DataAccessException;
	void insertEdu2(EduDto eins) throws DataAccessException;
	void insertEdu3(EduDto eins) throws DataAccessException;
	void insertMil(MilDto mins) throws DataAccessException;
	void insertLang1(LangDto lains) throws DataAccessException;
	void insertLang2(LangDto lains) throws DataAccessException;
	void insertLang3(LangDto lains) throws DataAccessException;
	void insertIntro(IntroDto lins) throws DataAccessException;
}
