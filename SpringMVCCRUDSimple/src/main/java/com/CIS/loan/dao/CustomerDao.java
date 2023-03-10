package com.CIS.loan.dao;  
import java.sql.Date;
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;  
import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;

import com.CIS.loan.model.Category;
import com.CIS.loan.model.customer;
import com.CIS.loan.model.inventory;
import com.CIS.loan.model.loan;
import com.CIS.loan.model.login;  
  
public class CustomerDao {  
JdbcTemplate template;  
  
public void setTemplate(JdbcTemplate template) {  
    this.template = template;  
} 



//Customer 

public int saveCustomer(customer c){  
	
    String sql="insert into loan.customer(fullname,dateOfBirth,email,phone,password) values('"+c.getFullName()+"','"+c.getDateOfBirth()+"','"+c.getEmail()+"',"+c.getPhone()+",'"+c.getPassword()+"')";  
    return template.update(sql);  
 }  

public List<customer> getCustomer(){    
    return template.query("SELECT fullName, dateOfBirth, loanBalance, userAmount, installmentPlan FROM loan.customer JOIN loan.loanDetails ON loan.customer.customerId = loan.loanDetails.customerId;",new RowMapper<customer>(){    
        public customer mapRow(ResultSet rs, int row) throws SQLException {    
        	customer e=new customer();    
            e.setFullName(rs.getString(1));  
            e.setDateOfBirth(rs.getString(2));
           e.setLoanBalance(rs.getDouble(3));
            e.setUserAmount(rs.getDouble(4));
            e.setInstallmentPlan(rs.getDouble(5));  
            return e;    
        }

	 
    });    
} 


//login

public login loginCheck(String username,String password) {
	String sql="select username, password from loan.admin where username=? and password=?";
	return template.queryForObject(sql, new Object[]{username,password},new BeanPropertyRowMapper<login>(login.class)); 
}

//Inventory

public int save(inventory i){  
    String sql="insert into loan.inventory(productName,price,qty,description,category,brand) values('"+i.getProductName()+"',"+i.getPrice()+","+i.getQty()+",'"+i.getDescription()+"','"+i.getCategory()+"','"+i.getBrand()+"')";  
    return template.update(sql);  
 }  
public int updateInventory(inventory i){  
String sql="update loan.inventory set productName='"+i.getProductName()+"', price="+i.getPrice()+",qty='"+i.getQty()+"',description='"+i.getDescription()+"',category='"+i.getCategory()+"',brand='"+i.getBrand()+"' where productId="+i.getProductId()+"";  
return template.update(sql);  
}  
public int deleteInventory(int id){  
String sql="delete from loan.inventory where productId="+id+"";  
return template.update(sql);  
}  
public inventory getProductById(int id){  
	System.out.println(id);
String sql="select * from loan.inventory where productId=?";   
return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<inventory>(inventory.class));  
}  
public List<inventory> getInventory(){    
return template.query("select * from loan.inventory",new RowMapper<inventory>(){    
   public inventory mapRow(ResultSet rs, int row) throws SQLException {    
 	  inventory e=new inventory();    
       e.setProductId(rs.getInt(1));   
       e.setProductName(rs.getString(2));  
       e.setPrice(rs.getDouble(3));
       e.setQty(rs.getInt(4));
       e.setDescription(rs.getString(5));
       e.setCategory(rs.getString(6)); 
       e.setBrand(rs.getString(7));
       return e;    
   }

	 
});    
} 


//Category



public int save(Category c){  
    String sql="insert into loan.category(categoryId,categoryName) values('"+c.getCategoryId()+"','"+c.getCategoryName()+"')";  
    return template.update(sql);  
 }  
public int updateCategory(Category c){  
String sql="update loan.category set categoryName='"+c.getCategoryName()+"' where categoryId="+c.getCategoryId()+""; 
return template.update(sql);  
}  
public int deleteCategory(int id){  
String sql="delete from loan.category where categoryId="+id+"";  
return template.update(sql);  
}  
public Category getCategoryById(int id){  
String sql="select * from loan.category where categoryId=?" ; 
return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Category>(Category.class));  
}  
public List<Category> getCategory(){    
return template.query("select * from loan.category",new RowMapper<Category>(){    
   public Category mapRow(ResultSet rs, int row) throws SQLException {    
	   Category e=new Category();    
       e.setCategoryId(rs.getInt(1));   
       e.setCategoryName(rs.getString(2)); 
      
       return e;    
   }

	 
});    
} 

}  