// Connect to MongoDB
conn = new Mongo();

// Create a database instance
db = conn.getDB("admin");

db.auth('admin', 'MONGO1234567890');

db = conn.getDB("datahub");

db.createUser({
  user: 'datahub-admin',
  pwd: 'DATAHUB1234567890',
  roles: [
    {
      role: 'dbOwner',
      db: 'datahub',
    },
  ],
});