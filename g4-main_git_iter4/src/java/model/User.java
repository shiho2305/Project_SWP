/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class User {

    private int id;
    private String uname;
    private String upwad;
    private String uemail;
    private String umobile;
    private Role roleID;
    private int roleID2;
    private String description;
    private String major;
    private String mode;
    private String photo;

    public User() {
    }

    public User(int id, String uname, String uemail, String umobile, String description, String major, String mode, String photo) {
        this.id = id;
        this.uname = uname;
        this.uemail = uemail;
        this.umobile = umobile;
        this.description = description;
        this.major = major;
        this.mode = mode;
        this.photo = photo;
    }

    public User(int id, String uname, String upwad, String uemail, String umobile, Role roleID, String description, String major, String mode, String photo) {
        this.id = id;
        this.uname = uname;
        this.upwad = upwad;
        this.uemail = uemail;
        this.umobile = umobile;
        this.roleID = roleID;
        this.description = description;
        this.major = major;
        this.mode = mode;
        this.photo = photo;
    }

    public User(String uname, String upwad, String uemail, String umobile, Role roleID, String description, String major, String mode, String photo) {
        this.id = id;
        this.uname = uname;
        this.upwad = upwad;
        this.uemail = uemail;
        this.umobile = umobile;
        this.roleID = roleID;
        this.major = major;
        this.mode = mode;
        this.photo = photo;
    }

    public User(String uname, String upwad, String uemail, String umobile, int roleID2) {
        this.id = id;
        this.uname = uname;
        this.upwad = upwad;
        this.uemail = uemail;
        this.umobile = umobile;
        this.roleID2 = roleID2;
    }

    public User(String uname, String upwad, String uemail, String umobile, int roleID2, String description, String major, String mode, String photo) {
        this.id = id;
        this.uname = uname;
        this.upwad = upwad;
        this.uemail = uemail;
        this.umobile = umobile;
        this.roleID2 = roleID2;
        this.major = major;
        this.mode = mode;
        this.photo = photo;
    }

    public int getRoleID2() {
        return roleID2;
    }

    public void setRoleID2(int roleID2) {
        this.roleID2 = roleID2;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwad() {
        return upwad;
    }

    public void setUpwad(String upwad) {
        this.upwad = upwad;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public String getUmobile() {
        return umobile;
    }

    public void setUmobile(String umobile) {
        this.umobile = umobile;
    }

    public Role getRoleID() {
        return roleID;
    }

    public void setRoleID(Role roleID) {
        this.roleID = roleID;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", uname=" + uname + ", upwad=" + upwad + ", uemail=" + uemail + ", umobile=" + umobile + ", roleID=" + roleID + ", roleID2=" + roleID2 + ", description=" + description + ", major=" + major + ", mode=" + mode + ", photo=" + photo + '}';
    }

    

}
