# acit4640-lab9

## Team

- Angad Bains
- Misha Makaroff

## create new keys

```bash
ssh-keygen -t ed25519 -f ~/.ssh/aws
```

This command will create the ssh key in the .ssh directory of the user. It will create a `aws` private key and a `aws.pub` public key.

## run included scripts to import and delete keys

```bash
./scripts/import_lab_key /home/anges/.ssh/aws.pub
```

This will add the newly created key to our logged in aws account.

```bash
./scripts/delete_lab_key
```

This removes the key from our aws account, as it is no longer needed.

## Infitializing

Using packer and anisble configurations create the AMI.

```bash
cd packer
packer init .
packer build .
```

## variables file

Following is how we make variables for our module in terraform.

1. project name

   ```hcl
    variable "project_name" {
        description = "project name of the webserver"
        type        = string
    }
   ```

2. ami

   ```hcl
    variable "ami" {
        description = "ami used for the webserver"
        type        = string
    }
   ```

3. instance type (with t3.micro default)

   ```hcl
    variable "instance_type" {
        description = "instance type of the webserver"
        type        = string
        default     = "t3.micro"
    }
   ```

4. key name

   ```hcl
    variable "key_name" {
        description = "ssh key name for the webserver"
        type        = string
    }
   ```

5. vpc security group ids (list(string))

   ```hcl
    variable "vpc_security_group_ids" {
        description = "vpc security group used by the webserver"
        type        = string
    }
   ```

6. subnet id

   ```hcl
    variable "subnet_id" {
        description = "subnet of the webserver"
        type        = string
        /*
        validation {
            condition     = length(regexall("^subnet-[\\d|\\w]+$", var.subnet_id))== 1
            error_message = "The subnet_id must match the pattern ^subnet-[\\d|\\w]+$"
        }
        */
    }
   ```
