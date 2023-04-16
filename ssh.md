## _Let's delve deeper into 'ssh' - the secure shell protocol!_

**And what better ways there are compared to learning from a few examples!**

### _Examples_

> **_01_**

```bash
ssh -v git@example.net

# 'v' stands for 'verbose'
# displays ssh connection details and any errors that occur during authentication.
```

> **_02_**

```bash
ssh-add ~/.ssh/id_rsa
# adds private key to the ssh agent so that it can be used for authentication.
```

---

```bash
ssh-add -d ~/.ssh/id_rsa
# 'd' for 'delete'
```
