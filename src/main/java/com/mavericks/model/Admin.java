package com.mavericks.model;

public class Admin {

    private String username;
    private String pswd;


    public Admin(String username, String pswd) {
        this.username = username;
        this.pswd = pswd;

    }

    public Admin() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPswd() {
        return pswd;
    }

    public void setPswd(String pswd) {
        this.pswd = pswd;
    }


}
