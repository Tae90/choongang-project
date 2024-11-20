package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.Coordinate;
import com.example.demo.model.Good;
import com.example.demo.model.Runner_data;
import com.example.demo.model.SnsBoard;

@Mapper
public interface TrackDetailDAO {

	SnsBoard getboard(int int1);

	List<Good> get_good(int int1);

	String getUserPhoto(int int1);

	String getNickName(int int1);

	Runner_data getrdata(int runner_data_no);

	Coordinate[] getcdata(int runner_data_no);

	int checkGood(String user_id, int sns_no);

	int good_minus(String user_id, int sns_no);

	int good_delete(String user_id, int sns_no);

	int good_insert(String user_id, int sns_no);

	int good_plus(String user_id, int sns_no);

}