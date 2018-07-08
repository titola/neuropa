Analisi di un attacco elettromagnetico
======================================

L'attacco è iniziato l'anno scorso, il 15 Luglio 2017.

La deficienza artificiale coordina le sequenze e la psicologia dei
dialoghi, spesso offensivi, e le interferenze alle normali oscillazioni
neurali che disturbano il sonno con tremori, convulsioni, etc.

Il video seguente mostra una parte del segnale diretto alla mia testa:

![](media/head_945mhz.mp4)

In Italia "La libertà personale è inviolabile". [1]

La mia testa è puntata continuamente, probabilmente utilizzando la
tecnologia dei missili deficienti.

I criminali usano la radio senza limiti di frequenza, disturbando
anche le trasmissioni musicali in FM.

Ci sono almeno quattro posizioni fisse degli attaccanti. Le misure
sono state prese a Roma (nord), il 5 Giugno 2018, utilizzando SDR,
un'antenna semplice ed una bussola digitale.

  - NNE 20°
  - NNW 338°
  - tra SW 227° e WSW 251°
  - tra E 92° e SE 127°

Voglio condividere l'analisi di questo attacco per rompere il velo di
mistero, spesso divulgato ignorantemente adoperando la parola "cospirazione".

Ho analizzato la dinamica completa dell'attacco, mi sono informato ed
ho raccolto le prove. Questo documento contiene quello che posso spiegare
senza equivoci (15% dell'attacco complessivo ma scriverò altro e migliorerò
la struttura del documento). Sono un semplice musicista e programmatore.

La decodifica è migliorabile (ho usato un semplice slope detector), ma
se senti una voce nel file audio

![](media/cuba_attack_decoded.ogg)

anche gli [ambasciatori americani a Cuba](https://en.wikipedia.org/wiki/Embassy_attack_accusations_in_Cuba)
hanno subito inconsapevolmente un'azione offensiva simile, perché quello che
hai appena ascoltato è nascosto in una registrazione pubblicata [2]. Forse il
segnale utilizzato è stato rettificato da un effetto Hall anomalo in qualche
materiale ferromagnetico [3]. Quindi gli ambasciatori hanno ascoltato
accidentalmente il risultato di un inseguitore d'inviluppo.

Il sonogramma di una registrazione di una parte del segnale che ho in
testa, con frequenza centrale di circa 945 MHz e frequenza di campionamento
pari a 2 MHz, mette in evidenza le pulsazioni principali:

![](media/sonogram_945mhz.jpg)

Durante la registrazione i criminali infami abbassano il livello delle
voci ed aumentano il rumore. Recentemente il livello delle voci è
molto basso anche quando non registro, comunque l'intensità del
[tinnitus](https://it.wikipedia.org/wiki/Acufene) indotto rimane
invariato.

Un impulso in "pulses A" è generato dalla somma di 100 sinusoidi
separate da circa 1733 Hz, quindi la larghezza di banda è 173.3 KHz.

Un impulso in "pulses B" è la somma di 7 sinusoidi separate da 216.6
Hz (= 1733/8). I periodi di ripetizione della pulsazione formano il
pattern seguente:

```
A A A A B A A A A B A A A A B ...

A = 0.0461 s = 80 / 1733  => 21.69 Hz
B = 0.0511 s = 75 / 1469  => 19.57 Hz
freq_media = 5 / ((A * 4) + B) = 21.23 Hz
```

Questo segnale è molto importante. Ho un'idea ma devo ancora
svilupparla, quindi evito commenti superficiali.

La parte etichettata "misc" comprende impulsi generati dalla somma di
sinusoidi separate da 1469 Hz e da altre sinusoidi separate ancora da
1469 Hz.

Codifica della voce
-------------------

Hanno usato più tecniche.

Una semplice ricetta per ottenere "pulses A" è la seguente:

- Segnale sinusoidale con frequenza 14.5 KHz modulato in frequenza dal suono di una voce.

- Impulso generato ogni volta che l'ampiezza del segnale modulato passa da positiva a negativa

Gli impulsi sono generati da somme di sinusoidi separate da frequenze
che provocano un incessante tinnitus risonante nella mia testa.

Ogni volta che un impulso di un segnale RF è assorbito dal tessuto
cerebrale, la temperatura sale di 5e-6 °C [4]. La rapida espansione
termica produce un'onda termo-elastica che raggiunge l'orecchio
interno. Quindi i criminali utilizzano questo demodulatore
termo-acustico per inviarmi messaggi vocali tramite ultrasuoni.

Questa informazione disinnesca l'arma psicologica perché elimina
l'effetto suggestivo. Rimane quello puerile "suona il citofono e
scappa".

Ipotesi sull'attacco subito dagli ambasciatori americani a Cuba
---------------------------------------------------------------

Il suono registrato a Cuba ha caratteristiche simili al segnale di
945MHz che ricevo in testa. La differenza fondamentale è la distanza
in frequenza tra le sinusoidi che formano gli impulsi. Nel mio caso:

- Impulsi con sinusoidi separate da 216.6 Hz e periodo di ripetizione delle pulsazioni con pattern A-A-A-A-B (vedi sopra).

- Impulsi con sinusoidi separate da 1733 Hz e periodo di ripetizione delle pulsazioni variabile.

Nel caso cubano, la frequenza di separazione è sempre circa 180 Hz ma
il clock di circa 21 Hz è lo stesso.

Le ampiezze del sonogramma seguente sono espresse in dB per
evidenziare la parte filtrata dal registratore o dall'editor:

![](media/cuba_clock.jpg)

Il prossimo sonogramma mostra invece il clock che ho in testa
(ampiezza lineare) sotto 1733 Hz (visibile in alto), demodulato,
sotto-campionato e registrato in un file audio:

![](media/945mhz_clock.jpg)

Ci sono due tipi di impulso:

- Impulsi con sinusoidi separate da 180 Hz, larghezza di banda complessiva di 3960 Hz e frequenza di pulsazione di circa 21 Hz.

- Impulsi con sinusoidi separate da 180 Hz e periodo di ripetizione variabile.

### Metodo per ottenere le voci dalla registrazione audio

-   Filtro FIR per selezionare il contenuto tra 6 e 9 KHz.

-   Alza di un'ottava (facoltativo)

    ```
    # esempio
    rubberband -f2 in.wav out.wav
    ```

-   Slope detector.

    ```
    pseudo-codice: env_follower(diff(input))
    ```

-   Filtro BP per selezionare il contenuto tra 100Hz e 3.5KHz.

![](media/cuba_attack_decoded.ogg)

Altri segnali da analizzare
---------------------------

Questo tipo di segnale è sincronizzato con le voci:

![](media/461mhz.jpg)

Ricevuto alle frequenze 173.456 MHz, 173.880 MHz, 173.956 MHz e
460.557 MHz con larghezza di banda pari a 4 KHz.

Un segnale sinusoidale scende dalla frequenza massima a quella
centrale e continua per una durata da 0.072 a 0.076 secondi, poi
prosegue modulato in ampiezza da una sinusoide di 2 KHz (mix di due
sinusoidi laterali) per 0.034 secondi. Inizia una specie di rumore con
LTAS (Long-Term Average Spectrum) quasi uniforme nella banda passante:

![](media/422_733_ltas.jpg)

Il segnale sinusoidale finale dura circa 0.034 secondi.

La durata della parte rumorosa (forse una nuvola di grani sinusoidali)
dipende dalla voce percepita.

Il segnale seguente è simile ma con durata di 0.178 secondi, periodo
costante di 1.92 secondi

```
# quantizzato a 20.83 Hz
1.92 = 0.048 * 40
```

e senza segnali sinusoidali isolati:

![](media/422_733mhz.jpg)

Ricevuto alle frequenze 421.684 MHz (bw 5KHz invece di 4KHz) e 422.733
MHz (bw 3KHz invece di 4KHz).

Riferimenti
-----------

[1] Costituzione della Repubblica Italiana, articolo 13.

[2] Josh Lederman and Michael Weissenstein. Dangerous sound? What Americans heard in Cuba attacks. AP News, October 2017.

[3] Hang Chen, Xiaolong Fan, Hengan Zhou, Wenxi Wang, Y. S. Gui, C.-M. Hu, and Desheng Xue. Spin rectification enabled by anomalous Hall effect.

[4] J.A. Elder and C.K. Chou. Auditory Response to Pulsed Radiofrequency Energy.
