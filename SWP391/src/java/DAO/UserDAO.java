/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBUtil;
import Context.Hasher;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import models.Blog;
import models.Checkout;
import models.Comment;
import models.ContactDTO;
import models.User;

/**
 *
 * @author Lenovo
 */
public class UserDAO {

    public static List<ContactDTO> searchContact(String user) throws Exception {
        List<ContactDTO> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select * from Contact where name = ?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, user);

        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new ContactDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
        }
        //Closing the connection
        con.close();
        return list;
    }
     public static void searchContactEdit(String user) throws Exception {
        List<ContactDTO> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "update Contact set status = 'CHECK' where message = ?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, user);
        stm.executeUpdate();
        //if userId and password are correct
    }

    public static void clear(String user, String msg) throws SQLException, Exception {
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        String sql = "DELETE FROM contact WHERE name = ? and message = ?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, user);
        stm.setString(2, msg);
        stm.executeUpdate();

    }

    public static void clearAccount(String user) throws SQLException, Exception {
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        String sql = "DELETE FROM Users WHERE UserName = ?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, user);
        stm.executeUpdate();

    }

    // Check user servlet
    public static User check(String userName, String password) throws Exception {
        User user = null;
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select * from Users where UserName=? and Passwords=?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, userName);
        stm.setString(2, password);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        if (rs.next()) {
            user = new User();
            user.setId(rs.getInt(1));
            user.setUserName(rs.getString(2));
            user.setPassword(rs.getString(3));
            user.setRole(rs.getString(4));
        }
        //Closing the connection
        con.close();
        return user;
    }

    public static void contact(String user, String email, String subject, String message) throws Exception {
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();

        //Creating and executing sql statements            
        String sql = "insert Contact values(?, ?, ?, ?)";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, user);
        stm.setString(2, email);
        stm.setString(3, subject);
        stm.setString(4, message);
        stm.executeUpdate();
        //Closing the connection
        con.close();

    }

    public static void addComment(String a, String b, String c, String d) throws Exception {
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();

        //Creating and executing sql statements            
        String sql = "insert Comments values(?, ?, ?, ?)";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, a);
        stm.setString(2, b);
        stm.setString(3, c);
        stm.setString(4, d);
        stm.executeUpdate();
        //Closing the connection
        con.close();

    }

    public static List<Comment> showComment() throws Exception {
        List<Comment> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select * from Comments ";
        PreparedStatement stm = con.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new Comment(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5)));
        }
        //Closing the connection
        con.close();
        return list;
    }

    public static List<User> showStaff() throws Exception {
        List<User> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select UserName,Passwords from Users where Roles = 'STAFF' ";
        PreparedStatement stm = con.prepareStatement(sql);

        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new User(1, rs.getString(1), rs.getString(2), ""));
        }
        //Closing the connection
        con.close();
        return list;
    }
     public static List<User> showStaff(String a) throws Exception {
        List<User> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select UserName,Passwords from Users where Roles = 'STAFF' and UserName =?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, a);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new User(1, rs.getString(1), rs.getString(2), ""));
        }
        //Closing the connection
        con.close();
        return list;
    }
     

    public static List<Blog> showBlog() throws Exception {
        List<Blog> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select * from Blog";
        PreparedStatement stm = con.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new Blog(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
        }
        //Closing the connection
        con.close();
        return list;
    }

    public static List<Blog> showBlogPaging(int a) throws Exception {
        List<Blog> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "Select * from Blog ORDER BY ID OFFSET ? ROWS FETCH NEXT 4 ROWS ONLY";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setInt(1, (a - 1) * 4);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new Blog(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
        }
        //Closing the connection
        con.close();
        return list;
    }

    public static List<Blog> showBlogdown() throws Exception {
        List<Blog> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select TOP(3) * from BlOG ORDER BY ID DESC ";
        PreparedStatement stm = con.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new Blog(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
        }
        //Closing the connection
        con.close();
        return list;
    }

    public static List<Blog> showBlog(String a) throws Exception {
        List<Blog> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select * from Blog where Tittle = ?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, a);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new Blog(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
        }
        //Closing the connection
        con.close();
        return list;
    }

    public static List<Checkout> searchChekout(int user) throws Exception {
        List<Checkout> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select Total,Phone,DateOrder,UserID from Checkout where UserID = ? ";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setInt(1, user);

        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new Checkout(rs.getDouble(1), rs.getString(2), rs.getDate(3), rs.getInt(4)));
        }
        //Closing the connection
        con.close();
        return list;
    }

    public static List<Checkout> searchChekoutbyDay(String user) throws Exception {
        List<Checkout> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select Total,Phone,DateOrder,UserID from Checkout where DateOrder = ? ";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, user);

        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new Checkout(rs.getDouble(1), rs.getString(2), rs.getDate(3), rs.getInt(4)));
        }
        //Closing the connection
        con.close();
        return list;
    }

    public static List<Checkout> searchChekoutbyDay(String user, int id) throws Exception {
        List<Checkout> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select Total,Phone,DateOrder,UserID from Checkout where DateOrder = ? and UserID = ?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, user);
        stm.setInt(2, id);

        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new Checkout(rs.getDouble(1), rs.getString(2), rs.getDate(3), rs.getInt(4)));
        }
        //Closing the connection
        con.close();
        return list;
    }

    public static List<Checkout> showCheckout() throws Exception {
        List<Checkout> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select Total,Phone,DateOrder,UserID from Checkout";
        PreparedStatement stm = con.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new Checkout(rs.getDouble(1), rs.getString(2), rs.getDate(3), rs.getInt(4)));
        }
        //Closing the connection
        con.close();
        return list;
    }

    public static List<Checkout> showCheckout(int a) throws Exception {
        List<Checkout> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select Total,Phone,DateOrder,UserID from Checkout Where UserID = ? ";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setInt(1, a);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new Checkout(rs.getDouble(1), rs.getString(2), rs.getDate(3), rs.getInt(4)));
        }
        //Closing the connection
        con.close();
        return list;
    }

    public static List<ContactDTO> contact() throws Exception {
        List<ContactDTO> list = new ArrayList();
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select * from Contact ";
        PreparedStatement stm = con.prepareStatement(sql);

        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            list.add(new ContactDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
        }
        //Closing the connection
        con.close();
        return list;
    }

    // Check user cookies
    public static User check_web(String userName, String password) throws Exception {
        User user = null;
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select * from Users where UserName=? and Passwords=?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, userName);
        stm.setString(2, password);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        if (rs.next()) {
            user = new User();
            user.setId(rs.getInt(1));
            user.setUserName(rs.getString(2));
            user.setPassword(rs.getString(3));
            user.setRole(rs.getString(4));
        }
        //Closing the connection
        con.close();
        return user;
    }

    // Get user by userName to check duplication
    public static int check_duplication(String userName) throws Exception {
        int noOfUser = 0;
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select count(UserID) as noOfUser from Users where UserName=?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, userName);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        if (rs.next()) {
            noOfUser = rs.getInt("noOfUser");
        }
        //Closing the connection
        con.close();
        return noOfUser;
    }

//    public static boolean register(User user) throws Exception {
//        //Connecting to a database
//        DBUtil db = new DBUtil();
//        Connection con = db.getConnection();
//        //Creating and executing sql statements            
//        String sql = "insert Users values(?, ?, ?)";
//        PreparedStatement stm = con.prepareStatement(sql);
//        stm.setString(1, user.getUserName());
//        stm.setString(2, Hasher.hash(user.getPassword()));
//        stm.setString(3, user.getRole());
//        int count = stm.executeUpdate();
//        //Closing the connection
//        con.close();
//        return count == 1;
//    }
    public static boolean register(User user) throws Exception {
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        boolean done = true;
        //Check_duplication
        if (check_duplication(user.getUserName()) != 0) {
            done = false;
        } else {
            //Creating and executing sql statements            
            String sql = "insert Users values(?, ?, ?, ?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, user.getUserName());
            stm.setString(2, Hasher.hash(user.getPassword()));
            stm.setString(3, "USER");
            stm.setString(4, user.getEmail());
            stm.executeUpdate();
            //Closing the connection
            con.close();
        }

        return done;
    }

    public static void registerStaff(String name, String password) throws Exception {
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Check_duplication

        //Creating and executing sql statements            
        String sql = "insert Users values(?, ?, ?, ?)";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, name);
        stm.setString(2, password);
        stm.setString(3, "STAFF");
        stm.setString(4, "@company.com");
        stm.executeUpdate();
        //Closing the connection
        con.close();
    }

    public static void addBlog(String img, String tittle, String a, String b) throws Exception {
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Check_duplication

        //Creating and executing sql statements            
        String sql = "insert Blog values(?, ?, ?, ?, ?)";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, img);
        stm.setString(2, "ADMIN");
        stm.setString(3, tittle);
        stm.setString(4, a);
        stm.setString(5, b);
        stm.executeUpdate();
        //Closing the connection
        con.close();
    }

    public static User find(String userName) throws Exception {
        User user = null;
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select * from Users where UserName=?";
        PreparedStatement stm = con.prepareStatement(sql);
        stm.setString(1, userName);
        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        if (rs.next()) {
            user = new User();
            user.setId(rs.getInt(1));
            user.setUserName(rs.getString(2));
            user.setPassword(rs.getString(3));
            user.setRole(rs.getString(4));
            user.setEmail(rs.getString(5));
        }
        //Closing the connection
        con.close();
        return user;
    }

    public static int findAll() throws Exception {

        int count = 0;
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        //Creating and executing sql statements            
        String sql = "select *  from Users";
        PreparedStatement stm = con.prepareStatement(sql);

        ResultSet rs = stm.executeQuery();
        //if userId and password are correct
        while (rs.next()) {
            count = count + 1;
        }
        //Closing the connection
        con.close();
        return count;
    }

    public void update(User user) throws Exception {
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        PreparedStatement stm = con.prepareStatement("update users set Passwords=? where UserID=?");
        stm.setString(1, Hasher.hash(user.getPassword()));
        stm.setInt(2, user.getId());
        stm.executeUpdate();
    }

    public void updatePass(String user, String pass) throws Exception {
        //Connecting to a database
        DBUtil db = new DBUtil();
        Connection con = db.getConnection();
        PreparedStatement stm = con.prepareStatement("update users set Passwords=? where UserName=?");
        stm.setString(1, pass);
        stm.setString(2, user);
        stm.executeUpdate();
    }

}
