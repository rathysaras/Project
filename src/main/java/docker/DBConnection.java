package docker;

import com.mongodb.ConnectionString;
import com.mongodb.MongoClientSettings;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;

public class DBConnection {

	public static MongoClient mongoClient;
	
	static {
		MongoClientInstance();
	}
			
	private static void MongoClientInstance() {
		ConnectionString connectionString = new ConnectionString("mongodb://mongo_container:27017");
	    MongoClientSettings clientSettings =
	        MongoClientSettings.builder()
	            .applyConnectionString(connectionString)
	            .build();

	    mongoClient = MongoClients.create(clientSettings);
	}
}
