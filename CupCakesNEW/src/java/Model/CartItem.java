/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Alex
 */
public class CartItem {
    
    private Bottom bottom;
    private Topping topping;
    private int number, totalPrice;

    public CartItem(Bottom bottom, Topping topping, int number, int totalPrice) {
        this.bottom = bottom;
        this.topping = topping;
        this.number = number;
        this.totalPrice = totalPrice;
    }
  
        
    /**
     * @return the bottom
     */
    public Bottom getBottom() {
        return bottom;
    }

    /**
     * @param bottom the bottom to set
     */
    public void setBottom(Bottom bottom) {
        this.bottom = bottom;
    }

    /**
     * @return the topping
     */
    public Topping getTopping() {
        return topping;
    }

    /**
     * @param topping the topping to set
     */
    public void setTopping(Topping topping) {
        this.topping = topping;
    }

    /**
     * @return the number
     */
    public int getNumber() {
        return number;
    }

    /**
     * @param number the number to set
     */
    public void setNumber(int number) {
        this.number = number;
    }
    
    
    
    
    
}
