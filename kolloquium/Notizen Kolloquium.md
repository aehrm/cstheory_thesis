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

# Skript

## Folie 1: Einleitung

* Worum wird es gehen? Während meiner Recherchen und Arbeit zur MA (die ich viel zu lange gemacht habe) hab ich mir ganz viele verschiedene Bereiche angeschaut, was am Ende aber alles verbunden hat, waren **Suchprobleme**

* Hab in der MA viel zur relativen Komplexität von Suchproblemen gemacht, die Beziehung zu Beweissystemen usw. Das werde ich in diesem Vortrag etwas skizzieren

* Der Vortrag ist daher vor allem eine kleine Schau von Schlaglichtern. Es wird so gut wie keine Beweise geben, dafür aber v.a. Definitionsarbeit

* Wichtigste Ziel des Vortrags: Awareness für Suchprobleme schaffen

## Folie 2: Beispiele für Suchprobleme

* Welche der Suchprobleme ist effizient lösbar? Könnt auch P ≠ NP annehmen

* Damit haben wir schon mal eine intuitive Idee, was Suchprobleme sind

* Beob wie manche Suchprobleme immer eine Lösung haben ("Primfaktor", "größtes Matching")

## Folie 3: State of the Art

* Das Problem: solche Suchprobleme werden in der klassichen Komplexitätstheorie selten betrachtet. Eigentlich ist das paradox, weil die Suchprobleme die 'industrielle Anwendung sind'

* Fakt ist: weitestgehende Leerstelle auf Seiten der Suchprobleme im Verhältnis zu den Entscheidungsproblemem

* Motivation der MA auch, Suchprobleme mal als *first class citizen* betrachten

## Folie 4: State of the Art II

* So ein bisschen betrachtet die KT schon Suchprobleme, oft wird das aber sehr schnell **und sehr vague** als unwichtig weggewischt 

* Damit ihr mir das glaubt, zwei Datenpunkte die ich aus Vorlesungsmaterialien habe

* In meiner MA spekuliere ich auch bisschen, warum das so ist. Das hat meiner Meinung fachgeschichtliche Gründe, und auch ein bisschen pragmatische Gründe. Klar ist, dass Suchprobleme 'die Realität' besser abbilden, gleichzeitig ist KT schon schwer genug. 

* Edmund Weiz (HAW-HH) hat in seiner Vorlesung mal motiviert, warum KT unter polynomielle Unschärfe arbeitet: "ist so auch schon schwer genug [z.B. P-NP-Frage]" 

## Tafel 1: Plan

* Kurz zum Plan: wir werden erst mal eine präzise Definition erarbeiten, und dann genau die Beziehung zu E-Problemen uns anschauen.

* Im zweiten Teil machen wir dann bisschen Einordnungsarbeit und sehen, wie NP-Suchprobleme mit der sog. Hypothese Q zusammenhängen. Das ist eine sehr weitreichende KT-Hypothese. Beides setzen wir dann in Beziehung zu Beweissystemen, und was ich das Pudláksche Programm nenne

* Wenn wir noch Zeit haben, sprechen wir noch bisschen über Orakel

## Tafel 2: Definition

* Wir konzentrieren uns auf Suchprobleme, die NP-Entscheidungsproblemen korrespondieren. Das wird alles ganz ähnlich, wie ihr aus der Theoinf-Einführung kennt

* Darunter fallen viele, aber nicht alle Suchprobleme aus der Einführung. Welche?

* Für eine solche NP-Relation ergeben sich dann auf natürliche weise das algorithmische Suchproblem und Entscheidungsproblem

* Mittels Projektionen erreichen wir genau die Definition von NP

* "Lösbarkeit des Suchproblems" als die Existenz einer Verfeinerung in FP

## Tafel 3 + Folie 5: search reduces to decision bei IS

* Jetzt wo wir eine Definition haben, können wir uns dem widmen was uns die Materialien in der Einleitung versprochen haben: search reduces to decision, oder gegeben Algo für Entscheiden, können wir Algo für Suche angeben.

* Wir gehen das mal beim Problem "Independent Set" durch. Idee: teste für jeden Knoten, ob dieser zwingend Teil des gesuchten IS ist. Falls ja, markieren, falls nein, löschen

* Frage: für welche NP-Relationen gilt das noch?

## Tafel 4: search reduces to decision bei den Vollständigen

* Das was wir eben gesehen haben, ist eher ein Algorithmiker-Beweis, ich mache jetzt mal den Theoretiker-Beweis

* Klar ist, dass wir die Lösungen/IS als einen String codieren (müssen)

* Können dann A def. und mittels Abfragen an A uns den Lösunsstring iterativ aufbauen

* Allg. gilt also search reduces to decision bei den Relationen mit NP-vollständiger Projektion

## Tafel 5: Was wissen wir über die Nicht-Vollständigen.

* Für viele NP-Relationen (z.B. GI) gibt es dennoch eine etwas cleverere Reduktion, ähnlich wie bei IS und Ausnutzen der Graphstruktur

* Bei einigen NP-Relationen ist es unklar, aber man kann diese leicht anders aufschreiben, sodass wieder eine Präfixsuche/binäre Suche möglich ist, wie bei rSMALLFACTOR

* Fakt ist auch, dass das nicht immer geht: theoret. Resultat von Borodin/Dehmers, ist aber keine natürliche Relation.

* bei solchen NP-Suchproblemem, die immer eine Lösung haben (i.e. TFNP) ist Entscheiden trivial, und search-reduces-to-decision = eff. Lösen

* rFACTOR ist ein solches Beispiel, es geht aber auch ohne Zahlentheorie z.B. beim Equal-Subset-Sum-Problem (Totalität folgt aus PHP)

## Tafel 6: dann vielleicht d.s.r. unter TFNP?

* Wenn wir Suche nicht auf Entscheiden in TFNP reduzieren können, können wir dann zuminest Suche auf "kleinere Suche" reduzieren? 

* Präsentiere ein Ergebnis von Harsha/Mitropolsky/Rosen von 2023(!): Faktorsuche ist nicht d.s.r., in dem Sinn dass es wahrscheinlich nicht hilft, nach Faktoren v. Zahlen ≤ n/2 fragen zu dürfen

* Erstaunlicherweise ist das lange nicht untersucht worden: "the study of d.s.r., to date, focuses on the decisional landscape" (2023!)

* Ebenso offen ist, was eigenlich für d.s.r. unter den nicht-totalen NP-Relationen gilt? (Für IS ist das jedenfalls klar, da hier search ≤ decision (kleinerer Inst.) ≤ search (kleinerer Inst.) gilt)

## Tafel 7: Levin-Reduktion

* Jetzt, wo wir uns etwas eingerichtet haben und die Beizehung zw. NP-Suchproblem und NP-Entscheidungsproblem betrachtet haben, können wir uns überlegen, wie wir die Komplexität/Schwierigkeit von *verschiedenen* Suchproblemen ordnen können.

* Idee: wollen many-one-Reduktion auf NP-Suchprobleme übertragen. Dabei soll sich wieder Lösbarkeit nach unten übertragen. 

* Cook/Levin zeigen, dass SATISFIABILITY genau dieser Reduzierbarkeit genügt und vollständig ist. (Dieses Ergebnis kommt tatsächlich relativ häufig in Beweisen der Theoinf vor, wird aber sonst nicht so oft explizit gemacht)

* Ich nehme schon mal vorweg, dass Levin-Vollständigkeit für alle 'natürlichen' NP-vollständigen Suchprobleme zuzutreffen zu scheint

* Offen ist, wie es bei der Unterklasse TFNP aussieht. Pudlák vermutet speziell, dass kein vollständiges TFNP-Suchproblem ex. (Intuition: alle diese unterschiedlichen Suchprobleme müssen nach gewissen math. Prinzipien total sein – PHP, lokales Optimum, ... – es scheint aber kein universelles zu geben)

## Tafel 8: Karp vs Levin

* Die natürlichen vollständigen NP-Suchprobleme (CLIQUE, IS, VC, ...) sind auch Levin-vollständig. Prinzipiell alle nachweisbar, indem die Beweise zur Vollständigkeit ergänzt werden

* Offene Frage: gilt das für alle NP-Relationen, deren Projektion NP-vollständig ist?

* Das ist die vielleicht zentralste Frage dieser Arbeit! **PAUSIEREN UND EINWIRKEN LASSEN**. 

* Wirkt erst mal ganz unscheibar, aber es gibt hierauf offenbar keine Antwort, hab auch nicht gefunden, ob jmd schon davor eine solche Frage formuliert hat. Meine cstheory.so Frage wurde nicht beantwortet :(

* Hypothese wirkt auf mich unplausibel: was folgt denn hieraus? Es folgt, dass alle SAT-Solver / "Beweisschemata" alle im Wesentlichen äquivalent sind.

* Stelle fürs Folgende die pessimistische Antwort als Hypothese auf. Nicht weil ich ernsthaft daran glaube, sondern weil es besser mit den anderen Pudlákschen Hypothesen aussieht. Wir haben so gut wie keine Evidenz, welche für die Korrektheit dieser Hypothese spricht.

## Tafel 9: Teil B – NP-Suchprobleme und Hypothese Q

* Fenner/Fortnow/Naik/Rogers stellen 1996 eine Hypothese Q auf, die auf dem ersten Blick ganz unscheibar wirkt, aber erstaunlich viele Bereiche der KT zusammenhält. 

* Zur Einordnung gehe ich von der Ideenprovienz aus: gestartet hat es damit, dass Fortnow/Rogers sich die Separierbarkeit von coNP-Paaren angeschaut haben (**hier auch skizzieren, was Separierbarkeit bedeutet**)

* Q ist dann eine natürliche Verstärkung. Beachte, dass Q' => Q nicht trivial scheint, weil bei der Präfixsuche der onto-Promise verloren geht.

* Es ergeben sich äquivalente Charakterisierungen, insb. zur Lösbarkeit von totalen NP-Suchproblemen.

* Momentan haben wir extrem wenig Informationen über die Beziehung zw. Q' und Q. Wir wissen nicht einmal, ob sich Q' und Q unter relativierbaren Beweisen trennen lassen können oder nicht (i.e. es fehlt Orakel mit Q' aber nicht Q)

## Tafel 10: Q in meiner MA

* Habe in meiner MA weitere Charakterisierungen von Q erarbeitet, und mit bekannten Hypothesen in Beziehung gesetzt (die werden wir später als Pudláksches Programm noch mal sehen)

* Q => -KvL erarbeitet, der Beweis ist tatsächlich gar nicht mal so groß

* **Tafel stehenlassen und später weiterschreiben!**

## Tafel 11: Beweissysteme

* Muss etwas Definitionsarbeit machen, sodass das für alle erklärbar ist

* zunächst zeigen, dass NP-Relationen gewissermaßen schon "Beweissysteme" sind, und Cook/Reckow das etwas verallgemeinern wollten

* So ist der Standardbws. einer NP-Relation ein Bws. für Proj(R)

## Tafel 12: P-Simulation

* Cook/Reckow waren daran interessiert, ob es Beweissysteme mit kurzen Beweisen gibt, und führen den Begriff der Simulation ein.

* Krajícek/Pudlák verstärken das zur P-Simulation, und erarbeiten damit Beziehungen zur endlichen Widerspruchsfreiheit

* Falls ihr euch fragt, warum euch das ein bisschen an die Levin-Reduktion vom Anfang erinnert: ja, da gibt es Ähnlichkeiten aber auch Unterschiede

* Es ergeben sich einige Fragen aus dieser Def.: ist sat p-optimal? ist überhaupt ein Bws. für SAT p-optimal?

## Zurück zu Tafel 10:

* Q <=> sat ist p-opt. kommt ursprünglich von Messner. Unter Sichtung der Literatur ist mir aufgefallen, dass sich der Beweis vereinfachen lässt, sodass dieser insb. (1) auf die anderen vollständigen Suchprobleme zutrifft, und (2) relativiert. (2) ist insbesondere eine wichtige Eigenschaft, dass Orakelkonstruktionen mit Q umgehen können. Damit auch Q => -SAT

* Beachte, dass die P-Optimalität von sat als "alle SAT-Solver sind 'streng' äquivalent" verstanden werden kann. Denke hier an die Gegenüberstellung von P-Simulation und Levin-Reduktion

* Falls das zu kryptisch ist: es gibt speziell für SAT eine nettere Charakterisierung über NPTMs und deren Umrechenbarkeit

* Diese Perspektive lässt auch zu, Q mit -KvL gegenüberzustellen

* Nur kurzer Ausblick: P-Quasi-Simulation, zwischen Simulation und P-Simulation, Invertierbarkeit überträgt sich nach oben (wie bei P-Simulation)

## Folie 6 + 7: Pudláksches Programms

* Die Hypothesen des Pudlákschen Programms

* Pudlák sortiert diese, und ist insbesondere daran interessiert, eine allgemeine Hypothese zu finden, welche alle diese Hypothesen impliziert, weil diese alle gewissermaßen als Aussage über die Unbeweisbarkeit gewisser Formeln in einfachen Theorien

* Ich hab da noch etwas mehr hinzugefügt, nicht aus der Perspektive der proof complexity, sondern eher um die komplexitätstheoretischen Beziehungen zw. den Hypothesen zu beleuchten

* Und um Q, KvL, SATq einzuordnen

* Aus Orakeln von Titus Dose und David Dingel wissen wir übrigens, dass aus -Q fast nichts folgen kann: eine relativierende Implikation -Q => ... ist durch Orakel ausgeschlossen

* Mein Beitrag war ein weiteres Orakel, woraus folgt, dass -Q auch nicht aus DisjNP und UP folgen kann

* Erreichen damit, dass -Q unter relativierenden Beweisen unabhängig zu den anderen Hypothesen ist (außer dort, wo wir einen Beweis kennen)

## Folie 8: Offene Fragen

* Zu Charakterisierungen: bin gespannt ob sich aus der P-Quasi-Simulation was machen kann

* Zu Orakelkonstruktionen: ist ja ein beliebtes Thema von Christian für Abschlussarbeiten, ggf. findet sich da jmd.

* Allgemein: TFNP ein großes rabbit hole. So eine gemeinsame Vorlesung Christian+Alexander zu TFNP (sowohl algorithmisch als auch theoretisch) wäre doch was... 
