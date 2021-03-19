Bangla Calendar
---------------
    A shell script convert Gregorian calendar into Bongabdo

Installation and Usage:
------
'git clone https://github.com/imrufbd/bangla-calendar.git'

### cd into directory and give permission or put bncal in your path

#### help:
```
bncal -h
```

#### Bangla date today:
```
bncal
```

#### Bangla date on a given date eg. 21 Feb 1952
```
bncal -d 21 -m 2 -y 1952
```

#### Date Format ( use -f)
```
bncal -d 14 -m 2 -f 3 
```
    - Default format: Hritu Bar Tariq Mas Bongabdo
    - 1 : Bar, Tariq Mas
    - 2 : Bar, Tariq Mas Bongabdo
    - 3 : Hritu Tariq Mas
    - 4 : Hritu Tariq Mas Bongabdo
