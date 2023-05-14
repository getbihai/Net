package com.jr.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jr.domain.ManageBooks;

public interface ManageBooksService {
	int addManageBooks(ManageBooks managebooks);

	int deleteManageBooksById(@Param("mbID") int mbID);

	int updateManageBooks(ManageBooks managebooks);

	ManageBooks queryManageBooksById(@Param("mbID") int mbID);

	List<ManageBooks> queryAllManageBooks();
}
