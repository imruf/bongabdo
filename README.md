বঙ্গাব্দ / Bongabdo
--------------

###### বাংলা পঞ্জিকা
	- ইংরেজি তারিখ বাংলায় রুপান্তরের স্ক্রীপ্ট।
	
#### Bangla Calendar
    - A shell script to convert Gregorian calendar into Bongabdo

###### ব্যবহারবিধি:
	- git clone https://github.com/imruf/bangla-calendar.git
	-  cd into directory and give permission or put bncal in your path.

###### সাহায্য:
```
bncal -h
```

###### আজকের দিনের বাংলা তারিখ:
```
bncal
```
###### কোন একটি নির্দিষ্ট দিনে বাংলা তারিখ ( যেমন: ২১ ফেব্রুয়ারি ১৯৫২ )
```
bncal -d 21 -m 2 -y 1952
```

###### তারিখ প্রদর্শনের রুপ ( -f ):
```
bncal -d 14 -m 2 -f 3 
```
	- স্বাভাবিক প্রদর্শন: ঋতু বার তারিখ মাস সন
    	- 1 : বার, তারিখ মাস
    	- 2 : বার, তারিখ মাস সন
    	- 3 : ঋতু তারিখ মাস
    	- 4 : ঋতু তারিখ মাস সন
