```shell
terraform init
```

```shell
terraform plan
```

[vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)

```shell
terraform import aws_vpc.test_vpc {vpc_id}
```

[subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet)

```shell
terraform import aws_subnet.public_1 {subnet_id}
terraform import aws_subnet.public_2 {subnet_id}
terraform import aws_subnet.public_3 {subnet_id}
terraform import aws_subnet.public_4 {subnet_id}

```

[igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway)

```shell
terraform import aws_internet_gateway.igw {internet_gateway_id}
```

[route_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table)

```shell
terraform import aws_route_table.public_rt {route_table_id}
```

[security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)

```shell
terraform import aws_security_group.elb_sg sg-903004f8
```
