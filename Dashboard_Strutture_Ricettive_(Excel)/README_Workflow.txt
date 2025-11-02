WORKFLOW

1)Pulizia dati
Prima di impostare la maschera si è resa necesssaria una pulizia e un riordino della tabella "Strutture ricettive". Uno dei problemi principali da risolvere in tal senso è stata la sostituzione di colonna di molti indirizzi mail che risultavano come campi di indirizzi internet e viceversa.
Si è ritenuto maggiormente agevole utilizzare la formattazione condizionale filtrando per "@" ed effettuando le sostituzioni. 
Dopo sono stati divisi in una colonna aggiuntiva (Mail 2) i secondi indirizzi, alcuni dei quali tramite "testo in colonne" con separatore ";".
Si è scelto di eliminare dal campo "Località" tutti le celle coincidenti con "Città" tramite una colonna condizionale come filtro di appoggio.
In "Indirizzo internet" sono stati tolti tutti i www. o gli http:// perchè in alcune celle erano già mancanti, in modo da aumentare la consistenza della formattazione. Si è creata una seconda colonna per le strutture con due siti internet.
Sono stati eliminati evenutali spazi aggiuntivi e modificati i maiuscoli/minuscoli.
Sono stati modificati gli indirizzi della categoria "Sabilimenti balneari" perchè alcuni avevano il numero civico ripetuto.

2)Creazione modello
Dopo aver effettuato le operazioni su power query si è impostato il collegamento tra la tabella  Prezzi e Strutture_Ricettive (1 a *) attraverso il campo Città in Power Pivot, dal quale sono state create diverse tabelle nel foglio PIVOT. 

3)Maschera e foglio interattivo
Assieme alla maschera da compilare in RICERCA sono stati aggiunti degli elementi per creare un foglio interattivo nel quale l'utente può effettuare una prima selezione dal filtro Città, per ricavarne informazioni riguardanti i prezzi medi, il numero e la lista dei nomi delle strutture per città. Infine è possibile ricercare ogni struttura specifica attraverso la maschera, corredata da diverse informazioni e contatti. Per facilitare l'utilizzo della dashboard è stato anche allegato una legenda con le istruzioni per l'utilizzo.
