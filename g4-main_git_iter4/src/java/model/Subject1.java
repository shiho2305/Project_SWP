/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author TUF GAMING
 */
public class Subject1 {
    String sjCode, sjName, sPreRequire;
    int sCredit;

    public Subject1() {
    }

    public Subject1(String sjCode, String sjName, String sPreRequire, int sCredit) {
        this.sjCode = sjCode;
        this.sjName = sjName;
        this.sPreRequire = sPreRequire;
        this.sCredit = sCredit;
    }
    
    public Subject1(String sjCode) {
        this.sjCode = sjCode;
        
    }

    public String getSjCode() {
        return sjCode;
    }

    public String getSjName() {
        return sjName;
    }

    public String getsPreRequire() {
        return sPreRequire;
    }

    public int getsCredit() {
        return sCredit;
    }

    public void setSjCode(String sjCode) {
        this.sjCode = sjCode;
    }

    public void setSjName(String sjName) {
        this.sjName = sjName;
    }

    public void setsPreRequire(String sPreRequire) {
        this.sPreRequire = sPreRequire;
    }

    public void setsCredit(int sCredit) {
        this.sCredit = sCredit;
    }

    @Override
    public String toString() {
        return "Subject{" + "sjCode=" + sjCode + ", sjName=" + sjName + ", sPreRequire=" + sPreRequire + ", sCredit=" + sCredit + '}';
    }
    
    
    
    
}

