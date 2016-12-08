/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.appjpa.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author zak
 */
@Entity(name = "User")
@Table(name = "users")
public class User implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private int id;
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    @Column(name = "email", unique = true)
    private String email;
    @Column(name = "contact_no")
    private String contactNo;
    @Column(name = "contact_no_opt", insertable = false)
    private String contactNoOpt;
    @Column(name = "permanent_address")
    private String permanentAddress;
    @Column(name = "current_address")
    private String currentAddress;
    @Column(name = "blood_group")
    private String bloodGroup;
    @Column(name = "profession")
    private String profession;
    @Column(name = "working_at")
    private String workingAt;
    @Column(name = "education")
    private String education;
    @Column(name = "date_of_birth", insertable = true)
    private String dateOfBirth;
    @Column(name = "added_date", insertable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date addedDate;
    @Column(name = "modified_date", nullable = true)
    @Temporal(TemporalType.TIMESTAMP)
    private Date modifiedDate;
    @Column(name = "marital_status")
    private String maritalStatus;
    @Column(name = "gender")
    private String gender;
    @Column(name = "help_others")
    private String helpOthers;
    @Column(name = "about_you")
    private String aboutU;
    @Column(name = "status")
    private boolean status;

    public User() {
    }

    public User(int id, String firstName, String lastName, String email, String contactNo, String contactNoOpt, String permanentAddress, String currentAddress, String bloodGroup, String profession, String workingAt, String education, String dateOfBirth, String maritalStatus, String gender, String helpOthers, String aboutU, boolean status) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.contactNo = contactNo;
        this.contactNoOpt = contactNoOpt;
        this.permanentAddress = permanentAddress;
        this.currentAddress = currentAddress;
        this.bloodGroup = bloodGroup;
        this.profession = profession;
        this.workingAt = workingAt;
        this.education = education;
        this.dateOfBirth = dateOfBirth;
        this.maritalStatus = maritalStatus;
        this.gender = gender;
        this.helpOthers = helpOthers;
        this.aboutU = aboutU;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public String getContactNoOpt() {
        return contactNoOpt;
    }

    public void setContactNoOpt(String contactNoOpt) {
        this.contactNoOpt = contactNoOpt;
    }

    public String getPermanentAddress() {
        return permanentAddress;
    }

    public void setPermanentAddress(String permanentAddress) {
        this.permanentAddress = permanentAddress;
    }

    public String getCurrentAddress() {
        return currentAddress;
    }

    public void setCurrentAddress(String currentAddress) {
        this.currentAddress = currentAddress;
    }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) {
        this.bloodGroup = bloodGroup;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getWorkingAt() {
        return workingAt;
    }

    public void setWorkingAt(String workingAt) {
        this.workingAt = workingAt;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public Date getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getHelpOthers() {
        return helpOthers;
    }

    public void setHelpOthers(String helpOthers) {
        this.helpOthers = helpOthers;
    }

    public String getAboutU() {
        return aboutU;
    }

    public void setAboutU(String aboutU) {
        this.aboutU = aboutU;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", contactNo=" + contactNo + ", contactNoOpt=" + contactNoOpt + ", permanentAddress=" + permanentAddress + ", currentAddress=" + currentAddress + ", bloodGroup=" + bloodGroup + ", profession=" + profession + ", workingAt=" + workingAt + ", education=" + education + ", dateOfBirth=" + dateOfBirth + ", addedDate=" + addedDate + ", modifiedDate=" + modifiedDate + ", maritalStatus=" + maritalStatus + ", gender=" + gender + ", helpOthers=" + helpOthers + ", aboutU=" + aboutU + ", status=" + status + '}';
    }

    public String toCSV() {
        return id + "," + firstName + ", " + lastName + "," + email + "," + contactNo + ", " + contactNoOpt + "," + permanentAddress + "," + currentAddress + "," + bloodGroup + "," + profession + "," + workingAt + "," + education + ", " + dateOfBirth + "," + addedDate + ", " + modifiedDate + "," + maritalStatus + "," + gender + "," + helpOthers + "," + aboutU + ", " + status + "\r\n";
    }
}
