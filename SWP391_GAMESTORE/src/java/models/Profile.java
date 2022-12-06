/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author DELL
 */
public class Profile {
    String UserName;
    String FullName;
    String Address;
    String Country;
    int Age;
    int Phone;

    public Profile(String UserName, String FullName, String Address, int Phone, String Country, int Age) {
        this.UserName = UserName;
        this.FullName = FullName;
        this.Address = Address;
        this.Country = Country;
        this.Age = Age;
        this.Phone = Phone;
    }

    public Profile() {
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    public int getAge() {
        return Age;
    }

    public void setAge(int Age) {
        this.Age = Age;
    }

    public int getPhone() {
        return Phone;
    }

    public void setPhone(int Phone) {
        this.Phone = Phone;
    }
    
}
