/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import Model.UserDetails;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author trez__000
 */
public class DataMapper {
    
    private Connection con;
    
    
    public DataMapper(){
        con = new DB().getConnection();
    }
    
    
    public int getBottomPrice (String bottomName) throws SQLException {
        int price = 0;
        String sql = "SELECT price from bottoms where bottom = '"+bottomName+"';";
        try {           
            
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            if(result.next()) {
                price = result.getInt("price");
            }
        } catch (SQLException x) {
            System.out.println("Couldn't get price: " + sql);
            x.printStackTrace();
        }
        return price;
    }
    
    
    public int getToppingPrice (String toppingName) throws SQLException {
        int price = 0;
        String sql = "SELECT price from toppings where topping = '"+toppingName+"';";
        try {           
            
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            if(result.next()) {
                price = result.getInt("price");
            }
        } catch (SQLException x) {
            System.out.println("Couldn't get price: " + sql);
            x.printStackTrace();
        }
        return price;
    }
    
    public UserDetails getUserDetails(String username) throws SQLException {
        UserDetails user = null;
        String sql = "SELECT * from users where username = '"+username+"';";
        try {
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            if(result.next()) {
                String userName = result.getString("username");
                String password = result.getString("password");
                int balance = result.getInt("balance");
                user = new UserDetails(userName, password, balance);
                
            }            
            
        }catch(SQLException x) {
            System.out.println("Couldnt get userdetails:" + x);
        }
        return user;
    }
    
    public int getUserBalance(String username) throws SQLException {
        
        String sql = "SELECT balance from users where username = '"+username+"';";  
        int balance = 0;
        try {
            PreparedStatement stm = con.prepareStatement(sql);
            ResultSet result = stm.executeQuery();
            if(result.next()){
                 balance = result.getInt("balance");
            }
        }catch(SQLException x) {
            System.out.println("Couldn't get user balance: " + x);
        }
        return balance;        
    }
    
    public int substractBalance(int substract, String username) throws SQLException {
        int balance = getUserBalance(username);

        try {
            if(substract > balance) {
                System.out.println("Can't withdraw more than you have in your balance");
            } else {
                balance -= substract;
            }
            
            String sql = "UPDATE users set balance = \""+balance+"\" where username = '"+username+"';";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.execute();
            
        } catch (SQLException x) {
            System.out.println("Coulnd't substract from db: "+x);
            x.printStackTrace();
        }
        return balance;
    }
    
    
    
    
    
    
    
    public static void main(String[] args) throws SQLException{
        DataMapper dm = new DataMapper();
        System.out.println(dm.getBottomPrice("Chocolate"));
        System.out.println(dm.getToppingPrice("Chocolate"));
        
        UserDetails petru = dm.getUserDetails("petru");
        System.out.println("UserName: "+petru.getUsername());
        System.out.println("Password: "+petru.getPassword());
        System.out.println("Balance: " +petru.getBalance());
       
        //System.out.println("Substracting 5: " + dm.substractBalance(5, "petru"));
        System.out.println("get user balance: "+dm.getUserBalance("petru"));
        
        
    }
    
    
    
}
