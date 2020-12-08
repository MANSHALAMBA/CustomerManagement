package com.mavericks.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.validation.constraints.Pattern;


public class Customer {

    private int registrationId;

    @NotBlank
    private String name;

    @NotBlank
    @Email
    private  String email;

    @NotBlank
    @Pattern(regexp="(^$|[0-9]{10})" ,message = "Must Contain ten digits")
    private String contactNumber;

    @NotBlank
    private String Address;

    @NotBlank
    @Pattern(regexp="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$",message = "Password must have Minimum eight characters, at least one letter, one number and one special character")
    private String pswd;

    private String status;

    public Customer(int registrationId, String name, String email, String contactNumber, String address, String pswd) {
        this.registrationId = registrationId;
        this.name = name;
        this.email = email;
        this.contactNumber = contactNumber;
        Address = address;
        this.pswd = pswd;
    }

    public Customer(int registrationId, String name, String email, String contactNumber, String address, String pswd, String status) {
        this.registrationId = registrationId;
        this.name = name;
        this.email = email;
        this.contactNumber = contactNumber;
        Address = address;
        this.pswd = pswd;
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Customer() {
    }

    public int getRegistrationId() {
        return registrationId;
    }

    public void setRegistrationId(int registrationId) {
        this.registrationId = registrationId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getPswd() {
        return pswd;
    }

    public void setPswd(String pswd) {
        this.pswd = pswd;
    }
}
