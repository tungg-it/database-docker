#!/bin/bash
set -e

mongosh <<EOF
print('Start #################################################################');
db = db.getSiblingDB('admin');

// move to the admin db - always created in Mongo
db.auth('$MONGO_INITDB_ROOT_USERNAME', '$MONGO_INITDB_ROOT_PASSWORD');

// log as root admin if you decided to authenticate in your docker-compose file...
db = db.getSiblingDB('$MONGO_INITDB_DATABASE');

// create and move to your new database
db.createUser(
    {
        user: '$MONGO_DATABASE_USERNAME',
        pwd: '$MONGO_DATABASE_PASSWORD',
        roles: [
            {
                role: "readWrite",
                db: '$MONGO_INITDB_DATABASE'
            },
            {
                role: "dbOwner",
                db: '$MONGO_INITDB_DATABASE'
            }
        ]
    }
);

print('END #################################################################');

EOF