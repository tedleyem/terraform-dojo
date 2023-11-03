module "subnet_module" {
	source     = "./modules"
    vpc_id     = aws_vpc.main_vpc.id
    vpc_cidr_block = aws_vpc.main_vpc.cidr_block
    availability_zones = var.availability_zones
    public_subnets_count = var.public_subnets_count
    private_subnets_count = var.private_subnets_count
 }