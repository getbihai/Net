package com.jr.service.impl;

import java.util.List;

import com.jr.dao.ManageBooksMapper;
import com.jr.domain.ManageBooks;
import com.jr.service.ManageBooksService;

public class ManageBooksServiceImpl implements ManageBooksService {

	private ManageBooksMapper manageBooksMapper;

    public ManageBooksMapper getManageBooksMapper() {
        return manageBooksMapper;
    }
    
    public void setManageBooksMapper(ManageBooksMapper manageBooksMapper) {
        this.manageBooksMapper = manageBooksMapper;
    }

    public int addManageBooks(ManageBooks manageBooks) {
        return manageBooksMapper.addManageBooks(manageBooks);
    }

    public int deleteManageBooksById(int mbID) {
        return manageBooksMapper.deleteManageBooksById(mbID);
    }

    public int updateManageBooks(ManageBooks manageBooks) {
        return manageBooksMapper.updateManageBooks(manageBooks);
    }

    public ManageBooks queryManageBooksById(int mbID) {
        return manageBooksMapper.queryManageBooksById(mbID);
    }

    public List<ManageBooks> queryAllManageBooks() {
        return manageBooksMapper.queryAllManageBooks();
    }

}
