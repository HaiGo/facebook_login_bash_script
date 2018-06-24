#!/bin/bash


colors(){
  Escape="\033";
  white="${Escape}[0m";
  red="${Escape}[31m";
  green="${Escape}[32m";
  yellow="${Escape}[33m";
  blue="${Escape}[34m";
  cyan="${Escape}[36m";
  reset="${Escape}[0m";
}
colors;

logini() {

echo -e "${green}Please enter your facebook account email:";
read -p ">>" email
echo -e "Please enter your facebook account password:${reset}";
read -s -p ">>" pass

curl --cookie-jar cookies.txt --form pass=$pass --form email=$email "https://m.facebook.com/login.php?refsrc=https%3A%2F%2Fm.facebook.com%2F&lwv=100&refid=8"

}


getfb() {

curl --cookie cookies.txt "https://www.facebook.com/?stype=lo&jlou=AffHfTzpdfIBC76pdNimSALcwgkRRzkAg1NUbZCPrKwVnXdI7lSzCY9SPXJklj1G4v_dnkzSJ4v2718JYFxg7gIeYmTEC9iKKLSqsi3hZWYwbw&smuh=327&lh=Ac-oIzqqLQjj-_Rl&refid=8&ref_component=mbasic_footer&_rdr" > fb.html

echo -e "${cyan}An html page of your facebook wall has been saved to your computer.${reset}";

}



if [ ! -f cookies.txt ]; then

logini;

fi


getfb;



























