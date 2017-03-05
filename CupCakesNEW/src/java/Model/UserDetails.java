/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author trez__000
 */
public class UserDetails {
    private String username;
    private String password;
    private int balance;
    
    
    public UserDetails() {
        
    }
    
    public UserDetails(String username, String password, int balance) {
        this.username = username;
        this.password = password;
        this.balance = balance;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public int getBalance() {
        return balance;
    }
    
    
    
}
