# terra-infrastructure
Minimal shared infrastructure example that conveys organisation-wide identifiers and other policy parameters via SSM parameter store.

__Ref:__ [terraform docs: sharing data between configurations](https://developer.hashicorp.com/terraform/language/state/remote-state-data#alternative-ways-to-share-data-between-configurations)

Specifically:

```hcl
resource "aws_ssm_parameter" "vpc_id" {
  name  = "/codeasone/vpc/id"
  type  = "String"
  value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "public_subnet_id" {
  name  = "/codeasone/subnet/public/a"
  type  = "String"
  value = aws_subnet.public.id
}
```

__See also:__ [terra-service](https://github.com/codeasone/terra-service) which uses these parameters.
