### Terraform Modules

A group of typical configuration files in a specific directory make up a Terraform module. Terraform modules put together resources that are used for a single operation. This cuts down on the amount of code you need to create identical infrastructure components.

Using the syntax below, you can transfer one Terraform module resource to another to be used.

```
module "custom-module-name" { 
	source     = "path-to-modules-resources" 
}
```