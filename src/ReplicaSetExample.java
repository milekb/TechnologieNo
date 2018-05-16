package src;

import com.mongodb.DB;
import com.mongodb.Mongo;
import com.mongodb.DBCollection;
import com.mongodb.DBAddress;
import com.mongodb.ServerAddress;
import com.mongodb.DBObject;
import com.mongodb.BasicDBObject;
import com.mongodb.CommandResult;


// Java
import java.util.List;
import java.util.ArrayList;

/**
 * An example of how to setup/use a replica set.
 */
public final class ReplicaSetExample {

    private static final int [] _ports = { 27017, 27018, 27019 };

    public void setupMongo() throws Exception {

        final BasicDBObject config = new BasicDBObject("_id", "test");

        final List<BasicDBObject> servers = new ArrayList<BasicDBObject>();

        int idx=0;
        for (final int port : _ports) {
            final BasicDBObject server = new BasicDBObject("_id", idx);
            server.put("host", ("127.0.0.1:" + port));

            // We're going to specify that only the first server can be the master.
            // Additionally, we're going to configure the slaves to be 5 seconds behind
            // the master.
            if (idx > 0 && idx != 3) {
                //server.put("priority", 0);
                //server.put("slaveDelay", 1);
            }

            if (idx == 2) server.put("arbiterOnly", true);

            servers.add(server);

            idx++;
        }

        config.put("members", servers);

        final Mongo mongo = new Mongo(new DBAddress("127.0.0.1", 27017, "admin"));

        final CommandResult result
        = mongo.getDB("admin").command(new BasicDBObject("replSetInitiate", config));

        System.out.println(result);

        // Sleep for a bit to wait for all the nodes to be intialized.
        Thread.sleep(5000);
    }
}
