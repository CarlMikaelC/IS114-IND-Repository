# Norsk-Flag
pyret, 114, Oppgave Ind02
------------------------------------------------------------------------------------------------------------------

Pyret Link under:

https://code.pyret.org/editor#share=1JOpVXXvfnp4LF_DrOGHkrKkuPnsCoBLD&v=4d870d2

------------------------------------------------------------------------------------------------------------------

Pyret koden (i det tilfellet linken ikke fungerer) under:

beside-align("top", rectangle(20, 600, "solid", "gray"),
  overlay-align("left", "top", square(60, "solid", "fire-brick"),
  overlay-align("left", "top", square(70, "solid", "white"),
    overlay-align("left", "bottom", square(60, "solid", "fire-brick"),
    overlay-align("left", "bottom", square(70, "solid", "white"),
        overlay-align("right", "top", rectangle(120, 60, "solid", "fire-brick"),
        overlay-align("right", "top", rectangle(130, 70, "solid", "white"),
            overlay-align("right", "bottom", rectangle(120, 60, "solid", "fire-brick"),
            overlay-align("right", "bottom", rectangle(130, 70, "solid", "white"),
                  rectangle(220, 160, "solid", "midnight-blue"))))))))))

------------------------------------------------------------------------------------------------------------------                  

forklaring:
flagget er konstuert med kun rektangl former og kvadrat former. Fargene brukt er "midnight-blue", "white" og "fir-
e-brick"

første code implementerer en lang rektangel i y-aksen, den er grå for å etterligne en flagg stang, og bruker besi-
de-align("top", til å posisjoners vedsidenav y aksen til selve flagget.

flagget ble bygget opp i rekkefølgen av stor blå rektangel (bakgrunnen) først, deretter mindre hvite former og
enda mindre røde former ved bruk av overlay-align funksjonen (lommene som danner kryssene).

------------------------------------------------------------------------------------------------------------------
