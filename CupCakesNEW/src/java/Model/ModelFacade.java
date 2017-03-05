/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author trez__000
 * 
 * 
 */


public class ModelFacade {
   
    public static void validate (String username, String password ) throws LoginError  {
        if ("catana".equals(password)) {
            return;
        }
       throw new LoginError();        
    }
    
    
    
    public static String[] getToppings() {
        String[] toppings = { "Chocolate", "Blueberry", "Rasberry", "Crispy", "Strawberry", "Rum/Raisin", "Orange", "Lemon", "Blue cheese" };
        return toppings;
    }

    public static String[] getBottoms() {
        String[] bottoms = { "Chocolate", "Vanilla", "Nutmeg", "Pistacio", "Almond" };
        return bottoms;
    }
    
    
}
