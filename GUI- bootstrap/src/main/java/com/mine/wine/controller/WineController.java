package com.mine.wine.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mine.wine.config.SpringMongoConfig;
import com.mine.wine.model.AdminEntity;
import com.mine.wine.model.CartEntity;
import com.mine.wine.model.Email;
import com.mine.wine.model.ProductEntity;
import com.mine.wine.model.User;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Message;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

@Controller
@RequestMapping("/")
public class WineController {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	public static final String ACCOUNT_SID = "ACcb63f40bbffb27bf7881adbce8f4640e";
	public static final String AUTH_TOKEN = "f492864806c00465b41f999753b230c7";
	Message message = null;
	Random randomGenerator = new Random();

	SpringMongoConfig mongoConfig=new SpringMongoConfig();
	MongoClient mongoClient=mongoConfig.getMongoClient();
	DB db =mongoClient.getDB("cmpe280");
	DBCollection userCollection = db.getCollection("User");
	
	@RequestMapping(value = "/onlineshop", method = RequestMethod.GET)
	public String showHome(ProductEntity product, ModelMap map) 
	{
		System.out.println("In home - GET");
		map.addAttribute("product", new ProductEntity());
		map.addAttribute("results", getAllProducts());
		
		return "home";
	}
	
	@RequestMapping(value = "/addtocart/{productId}", method = RequestMethod.GET)
	public String addToCart(@PathVariable int productId, CartEntity cartEntity, ModelMap map) 
	{
		addToCart( cartEntity, productId);
		
		map.addAttribute("cart", new CartEntity());
		map.addAttribute("results", getCartProducts());
       
		return "cart";
	}
	
	@RequestMapping(value = "/deleteProductFromCart/{id}", method = RequestMethod.GET)
	public String deleteProductFromCart(@PathVariable int id, CartEntity cartEntity, ModelMap map) 
	{
		
		deleteCartProduct(id);
		map.addAttribute("results", getCartProducts());
		return "cart";
	}
	
		private void deleteCartProduct(int id) {
			
			Session session = sessionFactory.openSession();
			Query q = session.createQuery("delete CartEntity where cartItemId = ?");
			q.setParameter(0, id);
			
			try{
				q.executeUpdate();
			}catch (HibernateException e) {
	 	       e.printStackTrace(); 
	 	    }finally {
	 	       session.close(); 
	 	    }
	 	}

		private List<CartEntity> getCartProducts() {
			
	        Session session = sessionFactory.openSession();
	        List<CartEntity> list = null;
	        String SQL_QUERY = "from CartEntity";
	        Query query = session.createQuery(SQL_QUERY);
	        //query.setParameter(0, id);
	        try{
	        
	        	list = query.list();
	        }catch (HibernateException e) {
	            e.printStackTrace(); 
	         }
	        if ((list != null) && (list.size() > 0)) {
	        	session.close();
	        	return list;  
	        }
			return list;
	                 
		}

		private void addToCart(CartEntity cartEntity, int productId) {
			
			List<ProductEntity> list = null;
			Session session = sessionFactory.openSession();
			
	        String SQL_QUERY = "from ProductEntity as p where p.productId =?";
	        Query query = session.createQuery(SQL_QUERY);
	        query.setParameter(0,productId);
	        
	        try{
	        list = query.list();
	        System.out.println("inside try of addToCart");
	        cartEntity.setBuyerId(0);
	        cartEntity.setCartItemId(randomGenerator.nextInt(99999));

	        if ((list != null) && (list.size() > 0)) {
	        	ProductEntity product = list.get(0);
	        	System.out.println("inside if of addToCart");
	        	cartEntity.setBrand(product.getBrand());
	        	cartEntity.setImageName(product.getImageName());
	        	cartEntity.setProductId(product.getProductId());
	        	cartEntity.setProductName(product.getProductName());
	        	cartEntity.setProductType(product.getProductType());
	        	cartEntity.setPrice(product.getPrice());
	        	cartEntity.setQuantity(1);
	        	
	        	this.sessionFactory.openSession().save(cartEntity);
	        	}
	        	}catch (HibernateException e) {
	        	       e.printStackTrace(); 
	        	    }finally {
	        	       session.close(); 
	        	    }
	        
		}
		
		@RequestMapping(value = "/checkOut", method = RequestMethod.POST)
		public String checkOut(CartEntity cartEntity, ModelMap map) 
		{
			int totalPrice=0;
			map.addAttribute("cart", new CartEntity());
			List<CartEntity> list = getCartProducts();
			map.addAttribute("results", list);
			for(int i =0; i<list.size(); i++) {
				CartEntity product = list.get(i);
				totalPrice = totalPrice + (product.getPrice() * product.getQuantity());
			}
			map.addAttribute("totalPrice", totalPrice);           
			return "checkOut";
		}

		@RequestMapping(value="/bookatour", method=RequestMethod.POST)
		public String bookTour(User user, ModelMap m) 
		{
			BasicDBObject document = new BasicDBObject();
			document.put("name", user.getName());
			document.put("email", user.getEmail());
			document.put("phone", user.getPhone());
			document.put("date", user.getDate1());
			document.put("message", user.getMessage());
			
			try{
				userCollection.insert(document);
			}catch(Exception e){
				m.addAttribute("message", "Failed to book the tour, Please try again later!");
				e.printStackTrace();
			}
			String[] day = user.getDate1().split("00");
			
			String body = "Your tour is booked for "+ day[0];
			
			sendMail(user.getEmail(), body);
			sendMessage(user.getPhone(), body);
			m.addAttribute("message", "Your tour is confirmed!");
			return "redirect:datepicker.jsp";
		}	
		
		@RequestMapping(value = "/toPay", method = RequestMethod.GET)
		public String toPay( ModelMap map) 
		{
			return "payment";
		}
		
		@RequestMapping(value = "/paid", method = RequestMethod.GET)
		public String paid(ModelMap map) 
		{
			deleteCartProducts();
			map.addAttribute("message", "Your payment was Successful!");
			map.addAttribute("product", new ProductEntity());
			map.addAttribute("results", getAllProducts());
			return "home";
		}
		
		@RequestMapping(value="/login", method=RequestMethod.GET)
		  public String Adminlogin(Model model) {  
			System.out.println("in Adminsignin get........................");
		     // model.addAttribute("user", user);
		      return "Login";
		  }
		
		@RequestMapping( value="/signIn", method = RequestMethod.POST)
	    public String processForm(HttpServletRequest request,HttpServletResponse response, AdminEntity user, BindingResult result,
	                    ModelMap model) {
			System.out.println("In SignIn POST");
	            
	            if (result.hasErrors()) {
	                    return "signIn";
	            }
	            
	            List<AdminEntity> userDetails = checkLogin(user.getEmail(), user.getPassword());
	            
	            if ((userDetails != null) && (userDetails.size() > 0)) {
	            	AdminEntity userList = userDetails.get(0);
	            	
	                    //model.put("signIn", user);
	                    //model.put("name", userList.getFirstname());
	                    model.addAttribute("name", userList.getFirstname());
	                    
	                    {
	                    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	                    	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	                    	response.setDateHeader("Expires", 0); // Proxies.
	                    	Cookie loginCookie = new Cookie("user",userList.getId()+":"+userList.getFirstname());
	                    	//loginCookie.getValue().split(":");
	                    	System.out.println("----------->"+userList.getId()+":"+userList.getFirstname());
	                    		loginCookie.setMaxAge(30*60);
	                    		String s = loginCookie.getValue();
	                    		response.addCookie(loginCookie);
	                    		model.addAttribute("a",s);                     
	                    	}
	                    return "vineyardmap";
	            }else{
	                    model.addAttribute("message","Email and Password doesn't match");
	                    return "Login";
	            }

	    }
		
		public List<AdminEntity> checkLogin(String email, String password){
	    	 
				List<AdminEntity> list = null;
           Session session = sessionFactory.openSession();
           String SQL_QUERY =" from AdminEntity as o where o.email=? and o.password=?";
           Query query = session.createQuery(SQL_QUERY);
           query.setParameter(0,email);
           query.setParameter(1,password);
           try{
        	   	list = query.list();
           	}catch (HibernateException e) {
		       e.printStackTrace(); 
		    }finally {
		       session.close(); 
		    }
          return list;              
}
		
		@RequestMapping(value="/register", method=RequestMethod.GET)
		  public String register(Model model) {  
		      return "Registration";
		  }
		
		@RequestMapping(value = "/registration", method = RequestMethod.POST)
		public String addUser(@Valid @ModelAttribute(value="user") AdminEntity user, BindingResult result, ModelMap model) 
		{
			if (result.hasErrors()) {
	    		return "userList";
	    	}
	    	else {
	    		
	    	boolean userExists = checkDuplicate(user.getEmail());	
	    		System.out.println("hereee" +userExists);
	    	if(userExists){
	    		model.addAttribute("message", "You are already registered");
	    		return "userList";
	    	}
			int x = randomGenerator.nextInt(999999);
			user.setId(x);
			addUser(user);

			return "Login";
	    	}
		}
		
		public void addUser(AdminEntity user) {
			try{
				this.sessionFactory.getCurrentSession().save(user);
				ApplicationContext mailContext = 
			            new ClassPathXmlApplicationContext("Spring-Mail.xml");
				
				Email mm = (Email) mailContext.getBean("Email");
				mm.sendMail("webui.cmpe280@gmail.com",
						user.getEmail(),
						   "Welcome!", 
						   "You are successfully added to Delicato Wines account");
			}catch(Exception e){
				e.printStackTrace();
			}
			
			
		}
		
		public boolean checkDuplicate(String email) {
			
			Session session = sessionFactory.openSession();
	        String SQL_QUERY =" from UserEntity as o where o.email=?";
	        try{
	        Query query = session.createQuery(SQL_QUERY);
	        query.setParameter(0,email);
	        List list = query.list();

	        if ((list != null) && (list.size() > 0)) {
	     	    
	     	    return true;
	        }
		}catch (HibernateException e) {
		    e.printStackTrace(); 
		 }finally {
		    session.close(); 
		 }

			return false;
		}
		public void deleteCartProducts() {
			
			Session session = sessionFactory.openSession();
			Query q = session.createQuery("delete CartEntity");
			
			try{
				q.executeUpdate();
			}catch (HibernateException e) {
	 	       e.printStackTrace(); 
	 	    }finally {
	 	       session.close(); 
	 	    }
	 	}

		public List<ProductEntity> getAllProducts() {
			Session session = null;
			try{
				session = sessionFactory.openSession();
	        Query query = session.createQuery("from ProductEntity");
	        //query.setParameter("state", "approved");
	        List<ProductEntity> list = query.list();
	        if(list.isEmpty()) System.out.println("Empty list");
	        return list;
	        }catch (HibernateException e) {
	  	       e.printStackTrace(); 
	 	    }catch(Exception ex){
	 	    	ex.printStackTrace();
	 	    }finally {
     	       session.close(); 
     	    }
			return null;
		}
		
		public void sendMail(String email, String body) {
			try{
				ApplicationContext mailContext = 
			            new ClassPathXmlApplicationContext("Spring-Mail.xml");
				
				Email mm = (Email) mailContext.getBean("Email");
				mm.sendMail("webui.cmpe280@gmail.com",
						email,
						   "Wine Tour Booked Successfully!", 
						   body);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		public void sendMessage(String phoneno, String body){
			TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
		    
		    List<NameValuePair> params = new ArrayList<NameValuePair>();
		    params.add(new BasicNameValuePair("Body", body));
		    params.add(new BasicNameValuePair("To", "+1"+phoneno));
		    params.add(new BasicNameValuePair("From", "+17652744800"));
		 
		    MessageFactory messageFactory = client.getAccount().getMessageFactory();
		    
			try {
				message = messageFactory.create(params);
			} catch (TwilioRestException e) {
				e.printStackTrace();
			}
		}
		
	 
	}
