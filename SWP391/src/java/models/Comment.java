/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.Date;

/**
 *
 * @author DELL
 */
public class Comment {
    int ID;
    String name;
    String msg;
    Date date;
    String tittle;

    public Comment() {
    }

    public Comment(int ID, String name, String msg, Date date, String tittle) {
        this.ID = ID;
        this.name = name;
        this.msg = msg;
        this.date = date;
        this.tittle = tittle;
    }
    
    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }
    
    
    
}
