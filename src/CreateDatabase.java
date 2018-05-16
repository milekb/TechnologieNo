package src;

import com.mongodb.client.MongoDatabase;
import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;

public class CreateDatabase {


      public static void main( String args[] ) {

      // Creating a Mongo client
      MongoClient mongo = new MongoClient( "localhost" , 27020 );

      // Creating Credentials
      MongoCredential credential;
      credential = MongoCredential.createCredential("milekb", "weather",
         "password".toCharArray());
      System.out.println("Connected to the database successfully");


      // Accessing the database
      MongoDatabase database = mongo.getDatabase("weather");



      //Creating a collection
      //if(collectionExists("city_attributes")==true) database.createCollection("city_attributes");
      //else if(collectionExists("humidity")==true) database.createCollection("humidity");
      //if(collectionExists("pressure")==true) database.createCollection("pressure");
    //  if(collectionExists("temperature")==true) database.createCollection("temperature");
    //  if(collectionExists("weather_description")==true) database.createCollection("weather_description");
    //  if(collectionExists("wind_direction")==true) database.createCollection("wind_direction");
    //  if(collectionExists("wind_speed")==true) database.createCollection("wind_speed");

    //  System.out.println("Collection created successfully");

   }


}
