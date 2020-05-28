package docker;

import java.util.ArrayList;
import java.util.List;

import org.bson.Document;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class Model {

	private MongoCollection<Document> c = null;
	
	public Model() {
		MongoDatabase db = DBConnection.mongoClient.getDatabase("docker");
		c =  db.getCollection("messages");
	}
	
	public void save(String text) {
		c.insertOne(new Document("message",text));
	}
	
	public List<Document> getAll() {
		List<Document> allTexts = new ArrayList<Document>();
		c.find().into(allTexts);
		return allTexts;
	}
}
