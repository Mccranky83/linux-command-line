## _Let's delve deeper into 'openssl' - an open-source software toolkit used for providing secure communications over computer networks against eavesdropping!_

**And what better ways there are compared to learning from a few examples!**

### _Examples_

> **_01_**

```bash
openssl genrsa -out mykey.pem 2048
# 2048 bit by default
```

**_or:_**

```bash
openssl genrsa 2048 > mykey.pem
```

> **_02_**

```bash
openssl enc -ciphers
# view valid ciphername values
```

---

```bash
openssl enc -aes-256-cbc -md sha512 -pbkdf2 -iter 10000 -salt -in lv0.txt -out lv0.enc
# 'enc' for 'encryption', '-salt' throws in some random symbols, '-iter' for 'iteration'
```

---

```bash
openssl enc -aes-256-cbc -md sha512 -pbkdf2 -out dec.txt -d
```

> **_03_**

```bash
openssl s_client -connect localhost:<port-number>
```

> **_Extra:_**

```bash
# openssl rsa

# openssl cms
```