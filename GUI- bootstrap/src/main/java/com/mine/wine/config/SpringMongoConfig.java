package com.mine.wine.config;

import java.net.UnknownHostException;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;

public class SpringMongoConfig {
    
    public MongoClient getMongoClient() {
    	MongoClient mongoClient=null ;
    	String link ="mongodb://bharathgowda:webuipass@ds053784.mongolab.com:53784/cmpe280";
    	MongoClientURI uri =new MongoClientURI(link);
    	
    	try{
    		mongoClient = new MongoClient(uri);
    	}catch(UnknownHostException ex){
    		ex.printStackTrace();
    	}
		return mongoClient;
    }

}
