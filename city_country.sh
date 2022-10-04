#!/bin/bash

#Author Name: Hasnain Zafar
#Description: Map the city name to a country

PS3="What city are you traveling to: "
select city_name in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karachi; do
        case "$city_name" in
                Tokyo)
                        country="Japan" ;;
                London|Manchester)
                        country="United Kingdom" ;;
                Los\ Angeles|New\ York)
                        country="United States" ;;
                Moscow)
                        country="Russia" ;;
                Dubai|Abu\ Dhabi)
                        country="UAE" ;;
                Paris)
                        country="France" ;;
                Bangalore|Pune)
                         country="India" ;;
                Johannesburg)
                        country="South Africa" ;;
                Istanbul)
                         country="Turkey" ;;
                Milan)
                        country="Italy" ;;
                Nairobi)
                         country="Kenya" ;;
                Berlin)
                        country="Germany" ;;
                Karachi)
                        country="Pakistan" ;;
        esac
        echo "$city_name is in $country"
        break
done
