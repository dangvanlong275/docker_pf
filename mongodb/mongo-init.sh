set -e

mongo <<EOF
db = db.getSiblingDB('payment-form')
db.createUser({
    user: "dev", 
    pwd: "Rabiloo@123", 
    roles: [
        {
            role:"readWrite", 
            db:"payment-form"
        }
    ]
})

EOF