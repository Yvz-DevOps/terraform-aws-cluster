module "db" {
    source = "./hw_cluster"
    region = "us-east-2"
    subnet_ids = [
    "subnet-0637cfd680b1ebb65", 
    "subnet-04402d15b2d3fcf10", 
    "subnet-020fa4749b04ec6cf"
    ]
    security_group_name = "db"
    allowed_hosts = [
    "0.0.0.0/0"
    ]
    db_name = "dbname"
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t2.micro"
    username = "foo"
    password = "foobarbaz"
    publicly_accessible = true
}