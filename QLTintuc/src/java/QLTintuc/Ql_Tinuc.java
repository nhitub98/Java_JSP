/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QLTintuc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class Ql_Tinuc {
     private Connection con;
    //Constructor
    public Ql_Tinuc(){
        //Ket noi bang SQLServer
        //try {
//              Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//		String user = "username=sa;password=congbv";
//		String url  = "jdbc:sqlserver://127.0.0.1:3306/managernews";
//			
//		con = DriverManager.getConnection(url + user);
//	  } catch (ClassNotFoundException | SQLException e) {
//			e.getMessage();
//	  }
        //Ket noi bang mysql
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = new String("jdbc:mysql://127.0.0.1:4306/managernews");
            try{
                con = DriverManager.getConnection(url, "root", "");
                System.out.println("Ket noi thanh cong");
            }catch(SQLException e){
                e.printStackTrace();
            }
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }
    }
    public void setCon(Connection con) {
        this.con = con;
    }

    public Connection getCon() {
        return con;
    }
    public ResultSet getConnectionNews(){
        try{
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM tbl_news ORDER BY ID_News DESC");
            return rs;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    public int InsertNews(String News_ID, String News_Tieude, String News_Tomtat, String News_Noidung, String News_Author){
        int result = -1;
        try{
            PreparedStatement pst = this.getCon().prepareCall("insert into tbl_News value(?, ?, ?, ?, ?)");
            pst.setString(1, News_ID);
            pst.setString(2, News_Tieude);
            pst.setString(3, News_Tomtat);
            pst.setString(4, News_Noidung);
            pst.setString(5, News_Author);
            
            result = pst.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            return result;
        }
    }
    public ResultSet getByIDNews(String IDNews){
        try{
            Statement st;
            st = getCon().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM tbl_news  where ID_News =");
            return rs;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    public int DeleteNews(String ID_News){
        int result = -1;
        try{
            String sql="DELETE FROM tbl_news WHERE ID_News = '" + ID_News +"'";
            PreparedStatement pst = this.getCon().prepareCall(sql);
            result = pst.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            return result;
        }
        }

      public int UpdateNews(String News_ID, String News_Tieude, String News_Tomtat, String News_Noidung, String News_Author){
          int result = -1;
          try {
            String sql = "update tbl_news SET Title = ?, Summary = ?, Decription = ?, Author = ?, image = ?" + " where ID_News= ?";
            PreparedStatement pst = this.getCon().prepareCall(sql);
            pst.setString(1, News_ID);
            pst.setString(2, News_Tieude);
            pst.setString(3, News_Tomtat);
            pst.setString(4, News_Noidung);
            pst.setString(5, News_Author);
            pst.executeUpdate();
        } catch(SQLException e){
            e.printStackTrace();
        }finally{
            return result;
        }
        }
}

