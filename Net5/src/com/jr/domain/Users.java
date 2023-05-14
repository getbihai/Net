package com.jr.domain;

public class Users {

    @Override
    public String toString() {
        return "User [id=" + id + ", userName=" + username + ", password="
                + password + ", roleName=" + roleName + "]";
    }

    private Integer id; 

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    private String username; 
    private String password; 
    private String roleName; 

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

}
