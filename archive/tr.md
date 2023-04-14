## _Let's delve deeper into 'tr' - the translate command!_

**And what better ways there are compared to learning from a few examples!**

### _Examples_

> **_01_**

```bash
echo my foot! | tr o x
# my fxxt!
```

---

```bash
echo my foot! | tr my MY
# MY foot!
```

---

```bash
echo my foot! | tr [:upper:] [:lower:]
# MY FOOT!
```

---

```bash
echo my foot! | tr 'a-z' 'b-za'
# nz gppu!

alias rot25="tr 'a-z' 'za-y'"
echo nz gppu! | rot25
# my foot!

unalias rot25
```

> **_02_**

```bash
echo '          my' '           foot!' | tr --squeeze-repeats ' '
#  my foot!
```

> **_03_**

```bash
echo 'me yogurt' | tr --delete "eogurt' '"
# my

# If you're on OS X, use '-d' instead.
```

> **_04_**

```bash
echo foo | tr --complement o x
# xooxbandit0@bandit:~$

# Essentially this does the opposite of 'tr o x', and changes everything that's NOT an 'o' to a 'x', including the newline character, which is why the output comes out on the same line as the new prompt.
```

---

```bash
echo foobar | tr --complement fr x
# fxxxxrxbandit0@bandit:~$
```

> **_Extra_**

```bash
cat /usr/bin/tail | tr --complement [:graph:] ' ' | tr --squeeze-repeats ' '

# This transforms every non-readable character into a space char, then squeezes the blanks spaces to make it more readable.
# But at the end of day, it's still gibberish...
```
