```sh
#!/bin/sh
set -eu

echo "Checking portfolio files..."

test -f index.html || {
    echo "ERROR: index.html is missing"
    exit 1
}

test -f style.css || {
    echo "ERROR: style.css is missing"
    exit 1
}

grep -qi '<title>' index.html || {
    echo "ERROR: HTML title is missing"
    exit 1
}

grep -q 'FA23-BAI-017' index.html || {
    echo "ERROR: Registration number is missing"
    exit 1
}

grep -q 'Contact' index.html || {
    echo "ERROR: Contact section is missing"
    exit 1
}

grep -q 'style.css' index.html || {
    echo "ERROR: CSS stylesheet is not linked"
    exit 1
}

echo "SUCCESS: All portfolio checks passed."
```
