package com.shoppingcart.doa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shoppingcart.model.Order;
import com.shoppingcart.model.Product;

public class OrderDoa {
	
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet res;
    
    

	public OrderDoa(Connection con) {
		super();
		this.con = con;
	}

	public boolean insertOrder(Order model) {
        boolean result = false;
        try {
            query = "insert into orders (p_id, u_id, o_quantity, o_date) values(?,?,?,?)";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, model.getId());
            pst.setInt(2, model.getUid());
            pst.setInt(3, model.getQuantity());
            pst.setString(4, model.getDate());
            pst.executeUpdate();
            result = true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return result;
    }
	

    public List<Order> userOrders(int id) {
        List<Order> list = new ArrayList<>();
        try {
            //query = "select * from orders where u_id=? order by orders.o_id desc";
        	query = "select * from orders where u_id=?";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            res = pst.executeQuery();
            while (res.next()) {
                Order order = new Order();
                ProductDoa productDoa = new ProductDoa(this.con);
                int pId = res.getInt("p_id");
                Product product = productDoa.getSingleProduct(pId);
                order.setOrderId(res.getInt("o_id"));
                order.setId(pId);
                order.setName(product.getName());
                order.setCategory(product.getCategory());
                order.setPrice(product.getPrice()*res.getInt("o_quantity"));
                order.setQuantity(res.getInt("o_quantity"));
                order.setDate(res.getString("o_date"));
                list.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return list;
    }

    public void cancelOrder(int id) {
        //boolean result = false;
        try {
            query = "delete from orders where o_id=?";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            pst.execute();
            //result = true;
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        //return result;
    }
}

