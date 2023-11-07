import lists as L

#tabell av land med tilhørende tall
table: Land :: String, Tall :: Number
 row: "Norge", 0
  row: "Danmark", 1
  row: "Sverige", 2
  row: "Finland", 3
  row: "Island", 4
  row: "Færøyene", 5
end

#legger til en kommentar av instruksjoner
"tegn land fra listen over med funksjonen under"

"flagg(tall, prop)"

"NB! bytt ut 'tall' med nummer til land fra listen, og 'prop' for størrelse mellom et tall fra 1-50"


fun flagg(tall, prop):
  
  doc: "tegner flagg"
  
#tre lister der verdiene står i rekkefølgen: Norge, Danmark, Sverige, Finland, Island og Færøyene.
 
  #dimensjoner til delene av flaggene
  dim = [list: 6, 4, 2, (12 * (2 / 3)), (4 * (2 / 3)), 0, 5, 2, 0, 4, 3, 0, 7, 4, 2, 6, 4, 2]
  #dimensjoner til selve faggene
rek = [list: 22, 16, 0, (37 * (2 / 3)), (4 * (2 / 3)), 0, 16, 10, 0, 18, 11, 0, 25, 18, 0, 22, 16]
  #fargene til flaggene
farger = [list: "fire-brick", "white", "dark-blue", "red", "white", "orange", "blue", "gold", "orange", "white", "dark-blue", "orange", "dark-blue", "white", "crimson", "white", "dark-blue", "crimson"]
  
  #lager bakgrunn
  bakgrunn = rectangle(L.get(rek, 0 + (3 * tall)) * 10, L.get(rek, 1 + (3 * tall)) * 10, "solid", L.get(farger, 0 + (3 * tall))) 

  #lager et vannrett rektangel
kors1 = put-image(rectangle(L.get(rek, 0 + (3 * tall)) * 10, L.get(dim, 1 + (3 * tall)) * 10, "solid", L.get(farger, 1 + (3 * tall))), (L.get(rek, 0 + (3 * tall)) / 2) * 10, (L.get(rek, 1 + (3 * tall)) / 2) * 10, bakgrunn)

  #lager et lodrett rektangel
kors2 = put-image(rectangle(L.get(dim, 1 + (3 * tall)) * 10, L.get(rek, 1 + (3 * tall)) * 10, "solid", L.get(farger, 1 + (3 * tall))), (L.get(rek, 1 + (3 * tall)) / 2) * 10, (L.get(rek, 1 + (3 * tall)) / 2) * 10, kors1)
  
  #lager et lodrett rektangel
kors3 = put-image(rectangle(L.get(rek, 0 + (3 * tall)) * 10, L.get(dim, 2 + (3 * tall)) * 10, "solid", L.get(farger, 2 + (3 * tall))), (L.get(rek, 0 + (3 * tall)) / 2) * 10, (L.get(rek, 1 + (3 * tall)) / 2) * 10, kors2)
  
  #lager et mindre loddrett rektangel
kors4 = put-image(rectangle(L.get(dim, 2 + (3 * tall)) * 10, L.get(rek, 1 + (3 * tall)) * 10, "solid", L.get(farger, 2 + (3 * tall))), (L.get(rek, 1 + (3 * tall)) / 2) * 10, (L.get(rek, 1 + (3 * tall)) / 2) * 10, kors3)
  
  #skaler flagget etter bruker ønske
  scale(prop / (L.get(rek, (0 + (3 * tall)))), kors4) 
  
end
