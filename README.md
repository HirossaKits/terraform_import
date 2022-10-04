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
