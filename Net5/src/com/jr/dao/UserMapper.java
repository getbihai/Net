package com.jr.dao;


import com.jr.domain.Users;

public interface UserMapper {

    /**
     * ��¼
     *
     * @param users
     * @return
     */
    public Users login(Users user);
}
