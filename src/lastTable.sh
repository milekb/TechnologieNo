

$option=""data", { \
   validator: { \
      $jsonSchema: { \
         bsonType: "object", \
         required: [ "type", "write_concern", "real", "user", "sys" ], \
         properties: { \
            type: { \
               bsonType: "string", \
               description: "must be a string and is required" \
            }, \
            write_concern: { \
               bsonType: "string", \
               description: "must be a string and is required" \
            }, \
            real: { \
               bsonType: "number", \
               minimum: 0.0, \
               maximum: 3600.0, \
               description: "must be an integer in [ 0, 3600 ] and is required" \
            }, \
            user: { \
               bsonType: "number", \
               minimum: 0.0, \
               maximum: 3600.0, \
               description: "must be an integer in [ 0, 3600 ] and is required" \
            }, \
            sys: { \
               bsonType: "number", \
               minimum: 0.0, \
               maximum: 3600.0, \
               description: "must be an integer in [ 0, 3600 ] and is required" \
            } \
         } \
      } \
   } \
}"




mongo weather --host localhost:27020 --eval db.createCollection("data", { \
   validator: { \
      $jsonSchema: { \
         bsonType: "object", \
         required: [ "type", "write_concern", "real", "user", "sys" ], \
         properties: { \
            type: { \
               bsonType: "string", \
               description: "must be a string and is required" \
            }, \
            write_concern: { \
               bsonType: "string", \
               description: "must be a string and is required" \
            }, \
            real: { \
               bsonType: "number", \
               minimum: 0.0, \
               maximum: 3600.0, \
               description: "must be an integer in [ 0, 3600 ] and is required" \
            }, \
            user: { \
               bsonType: "number", \
               minimum: 0.0, \
               maximum: 3600.0, \
               description: "must be an integer in [ 0, 3600 ] and is required" \
            }, \
            sys: { \
               bsonType: "number", \
               minimum: 0.0, \
               maximum: 3600.0, \
               description: "must be an integer in [ 0, 3600 ] and is required" \
            } \
         } \
      } \
   } \
});
