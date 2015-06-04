## Funktionen

1.
high address
----
int    -  4b
int    -  4b
int    -  4b
int    -  4b
int    -  4b
int    -  4b
char   - 20b
double -  8b
double -  8b <- esp
----
low adress

Wenn die Länge des Strings nicht beachtet wird werden ein Teil der vorher auf den Stack geschriebenen Integer überschrieben.

2.
high address
----
i - 4b
----
j - 4b
----
k - 4b
----
a - 1b
----
b - 1b
----
return address
----
old EBP
----
l - 4b
----
m - 4b
----
x - 8b
----
y - 8b
----
low address

3.
Um Variablen an eine Funktion zu übergeben werden diese in umgekerter Reihenfolge auf den Stack gelegt bevor die Rücksprrungaddresse abgelegt wird.
Um einen Wert zurück zu geben wird er als einziger wert auf dem stack belassen nachdem die Funktion zu ende gelaufen ist.
