# Notizen Kolloquium

## Einleitung

* Awareness für Suchprobleme schaffen

* Ratespiel: welches Suchproblem effizient lösbar?

* Problematisierung der TFNP-Probleme: Gleiche-Summe-Problem, Primfaktorzerlegung

* Motivation: weitestgehende Leerstelle auf Seiten der Suchprobleme im Verhältnis zu den Entscheidungsproblemem – Meme

* Plan: will die Suchprobleme mal als *first class citizen* betrachten; das war in der MA auch produktiv, denn wir bekommen interessante Zusammenhänge mit dem Pudlákschen Programm (v.a. Beweissysteme) usw.
  
  * Teil A: NP-Suchprobleme und Q
  
  * Teil B: Beweissysteme und Q

## Survey: NP-Suchprobleme

* Definition noch einmal hervorheben; insb. NP/FNP und wie zu einer NP-Menge verschiedene NP-Suchprobleme existieren können.
  
  * an den Bsp. durchgehen welche davon NP-Relationen sind

* hinweisen, dass die Beschränkung auf NP-Entscheidungsprobleme zunächst einmal sinnvoll ist: P-NP-Frage äquivalent als FP-FNP-Frage; search reduces to decision für die NP-Vollständigen (und manchmal auch für die mutmaßlichen NP-Intermediates, vgl. GI, SMALLFACTOR)

* Hier auch darauf hinweisen, dass man in vielen Fällen auf ein natürliches Präfix-Entscheidungsproblem transformieren kann (FACTOR vs. SMALLFACTOR usw.)

* Andererseits auch Grenzen:
  
  * Unter NP-Intermediates scheint search reduces to decision manchmal nicht zuzutreffen (LINDIV?); mit Annahme $\mathrm{P}\neq\mathrm{NP}\cap\mathrm{coNP}$ ist das sogar sicher! (Borodin & Dehmers; Beweis skizzieren!)
  
  * In TFNP ist decision trivial!

* Ausblick: Selbstreduzierbarkeit nach unten; noch sehr viel zu tun, wissen aber schon mal dass FACTOR nicht nach unten selbstreduzierbar ist (Harsha et al.) 

* Levin-Reduzierbarkeit unter verschiedenen Suchproblemen definierbar; haben unsere bekannten Eigenschaften
  
  * Beispiele durchgehen: SAT, CLIQUE sind Levin-vollständig
  
  * offene Frage: gilt das für alle (natürlichen) NP-Suchprobleme; KvL definieren; <mark>ganz stark machen!</mark>
  
  * unter IC gibt es zumindest für jede NP-vollständige Menge L eine FNP-vollständige Relation für L

## NP-Suchprobleme und Q

* Geschichte: Q' äquivalent zur P-Separierbarkeit von coNP-Paaren (Beispiel!), Q die natürliche Verstärkung von Q'

* Klar Q äquivalent zu TFNP=FP, damit direkter Zusammenhang zur Lösbarkeit von totalen Suchproblemen

* neu: können Q als Aussage über Reduzierbarkeiten definieren Proj(A) auf Proj(B) Karp-reduzierbar gdw. A auf B Levin-reduzierbar ist

* Damit Q eine Verstärkung von -KvL; wir können Q und -KvL mittels Beweissystemen und P-(Quasi)-Simulation gegenüberstellen (ggf. nur Teaser, <mark>oder doch stärker machen</mark>?)

## Beweissysteme und Q

* Cut machen: was sind Beweissysteme und wofür sind sie da? Pudláksches Programm als systematische Sortierung der Hypothesen, vgl. bounded arithmetic, ...
  
  * Definition liefern, insb. P-Simulation definieren und der Levin-Reduktion **gegenüberstellen** (<mark>TODO das muss noch irgendwie eingearbeitet werden</mark>)
  
  * Bezug zu NP-Relationen klar: NPTM, ehrliche Beweissysteme und NP-Relationen sind im Wesentlichen äquivalent (<mark>TODO das muss noch irgendwie eingearbeitet werden</mark>)
  
  * Überblick über die Hypothesen und das Forschungsprogramm, speziell der Orakel-Teil

* Aktueller Stand: FFNR und Messner erarbeiten (nichtrelativierend!) eine Beziehung zw. Q und Simulation/P-Simulation von Beweissysteme
  
  * Ich nehme die Perspektive des Pudlákschen Programms ein, reformuliere die Beweise/Ergebnisse neu, insb. relativierbare Beweise

* FFNR bzw. Messner stellen ursprünglich Q mit dem Standardbeweissystem sat gegenüber; **Contribution:** Verallgemeinierung auf beliebige vollständige Relationen (und damit auch relativierbar) 

* Beachtlich ist, dass die Verallgemeinerung der Aussage von FFNR die 'Paddability' bzw. verlängernde Levin-Reduktionen benötigt. Scheint eine natürliche Eigenschaft à la Berman-Hartmanis zu sein, aber Zusammenhang ist unklar

* Fazit: Weitere Charakterisierungen von Q

## Trennungen im Pudlákschen Programm + Orakel

* Ergänze (bildlich) das Diagramm durch meine neuen Hypothesen

* Contribution: die roten Separationen recherchiert, die blauen hinzugefügt

* Skizzierung des Orakels: starte mit P=PSPACE, baue deine Zeugensprachen in ein dünnes Orakel, zeige wie totale NP-Maschinen eine relevante Portion dieses dünnen Orakels rekonstruieren können.,
