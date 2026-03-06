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
   
   ```

2. ami

   ```hcl
   ```

3. instance type (with t3.micro default)

   ```hcl
   ```

4. key name

   ```hcl
   ```

5. vpc security group ids (list(string))

   ```hcl
   ```

6. subnet id

   ```hcl
   ```
