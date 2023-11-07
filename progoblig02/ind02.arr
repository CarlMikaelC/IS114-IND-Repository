use context essentials2021
include gdrive-sheets
include data-source
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
  load-table: komponent, energi
  source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
end 

fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 0
  end
where:
  energi-to-number("") is 0
  energi-to-number("48") is 48
end 

#funksjon beregner energiforbruk basert på kun bilbruk 

fun energi-bil(distance-travelled-per-day, distance-per-unit-of-fuel, energy-per-unit-of-fuel):
  (distance-travelled-per-day / distance-per-unit-of-fuel ) * energy-per-unit-of-fuel
end 

#legger energiforbruket av bil til summen av resten til energibruken 

fun total-energibruk(distance-travelled-per-day, distance-per-unit-of-fuel, energy-per-unit-of-fuel):
  energi-bil(distance-travelled-per-day, distance-per-unit-of-fuel, energy-per-unit-of-fuel) + #kaller opp funksjonen som beregner bilforbruk 
  
  sum(transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number) , "energi") #legger til summen fra tabellen og returnerer verdien 
  
end
