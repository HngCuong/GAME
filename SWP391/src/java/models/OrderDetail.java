/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author DELL
 */
public class OrderDetail {
    public class StringToDateExample {
	
}
    public static void main(String[] args) throws ParseException {
        String stringDate = "2022-09-14";
		Date date1 = new SimpleDateFormat("yyyy-MM-dd").parse(stringDate);
		System.out.println(stringDate + "\t" + date1);
    }
}
