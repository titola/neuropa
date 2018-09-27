# Analisi di un attacco elettromagnetico

L'attacco è iniziato l'anno scorso, il 15 Luglio 2017.

La deficienza artificiale coordina le sequenze e la psicologia dei
dialoghi, spesso offensivi, e le interferenze alle normali oscillazioni
neurali che disturbano il sonno con tremori, convulsioni, etc.

Il video seguente mostra una parte del segnale diretto alla mia testa:

![](media/head_945mhz.gif)

[head_945mhz.mp4 (View Raw)](https://raw.githubusercontent.com/titola/neuropa/master/media/head_945mhz.mp4)

[head_945mhz.mp4](https://github.com/titola/neuropa/blob/master/media/head_945mhz.mp4)

In Italia "La libertà personale è inviolabile". [1]

La mia testa è puntata continuamente, probabilmente utilizzando la
tecnologia dei missili deficienti. Questo sistema di tracciamento
insieme ai contatori elettronici sono le fondamenta dell'attacco.

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
senza equivoci (25% dell'attacco complessivo ma scriverò altro e migliorerò
la struttura del documento). Sono un semplice musicista e programmatore.

La decodifica è migliorabile (ho usato un semplice slope detector), ma
se senti una voce nel file audio

[cuba_attack_decoded.ogg (View Raw)](https://raw.githubusercontent.com/titola/neuropa/master/media/cuba_attack_decoded.ogg)

[cuba_attack_decoded.ogg](https://github.com/titola/neuropa/blob/master/media/cuba_attack_decoded.ogg)

anche gli [ambasciatori americani a Cuba](https://en.wikipedia.org/wiki/Embassy_attack_accusations_in_Cuba)
hanno subito inconsapevolmente un'azione offensiva simile, perché quello che
hai appena ascoltato è nascosto in una registrazione pubblicata [2]. Forse il
segnale utilizzato è stato rettificato da un effetto Hall anomalo in qualche
materiale ferromagnetico [3] oppure il responsabile è un contatore elettronico
"smart" utilizzato come arma.

## Indice

- [Segnale privato](#segnale-privato)
- [Codifica della voce](#codifica-della-voce)
- [Segnale pubblico](#segnale-pubblico)
- [Ipotesi sull'attacco subito dagli ambasciatori americani a Cuba](#ipotesi-sullattacco-subito-dagli-ambasciatori-americani-a-cuba)
    - [Metodi per ottenere le voci dalla registrazione audio](#metodi-per-ottenere-le-voci-dalla-registrazione-audio)
- [Altri segnali da analizzare](#altri-segnali-da-analizzare)
    - [Eventi sincronizzati con le voci](#eventi-sincronizzati-con-le-voci)
    - [Contatori elettronici ACEA-ARETI con oscillatore a 939 MHz](#contatori-elettronici-acea-areti-con-oscillatore-a-939-mhz)
- [Riferimenti](#riferimenti)

## Segnale privato

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
separate da circa 1733 Hz, quindi la larghezza di banda è 173.3 kHz.

Un impulso in "pulses B" è la somma di 7 sinusoidi separate da 216.6 Hz
(= 1733/8). I periodi di ripetizione della pulsazione formano il
pattern seguente:

```
A A A A B A A A A B A A A A B ...

A = 0.0461 s = 80 / 1733  => 21.69 Hz
B = 0.0511 s = A + 1/200 = 75 / 1469  => 19.57 Hz
freq_media = 5 / ((A * 4) + B) = 21.23 Hz
```

Questo pattern è particolarmente simpatizzante dell'oscillazione alla
frequenza nominale della rete elettrica tra 49 e 51 Hz:

```
A * 4 = 0.0461 * 4 = 0.184 = 9 cicli a 49 Hz
A * 4 + B = 5 * 0.0461 + 1/(50*4) = 0.235 = 12 cicli a 51 Hz
```

In pratica il pattern è formato da 5 ripetizioni di A più la durata di
un quarto di ciclo a 50 Hz. La prossima figura mostra 10 secondi del
valore assoluto di tre oscillazioni a 49, 50 e 51 Hz, campionate
utilizzando i periodi di questo pattern. La distribuzione e la
modulazione dei picchi ricordano i tremori che percepisco ogni tanto.

![](media/fake_gsm_sampler_49hz50hz51hz.jpg)

Ho simulato il tinnitus prodotto dagli impulsi del segnale ricevuto a
945 MHz in base al demodulatore termo-acustico descritto nella sezione
"Codifica della voce":

[tinnitus_pulses.wav (View Raw)](https://raw.githubusercontent.com/titola/neuropa/master/media/tinnitus_pulses.wav)

[tinnitus_pulses.wav](https://github.com/titola/neuropa/blob/master/media/tinnitus_pulses.wav)

Ho preferito utilizzare un modello sorgente-filtro invece di sintetizzare
le frequenze acustiche, quindi l'onda termo-elastica è approssimata da
un treno d'impulsi con pattern A-A-A-A-B e frequenza media di 21.23 Hz
(gli altri impulsi sono esclusi per semplificare il modello) filtrato
dal filtro di conduzione disegnato in base alla figura 4 in [4].
Questo tipo di segnale interferisce in modo particolare con le
oscillazioni neurali (gli altri impulsi variabili possono modulare
specifiche onde cerebrali con ritmi diversi) prima di raggiungere
l'orecchio interno.

E' possibile calcolare l'ampiezza della pressione indotta utilizzando
la formula ed i fattori di ampiezza della figura 4 in [4]:

```
P(pulse_width) = A*abs(sin(pi*freq*pulse_width)) =

= 572*abs(sin(pi*7800/(216.625*7))) = 2.49e-4 Pa (circa 22 dB SPL)
```

dove 7800 Hz è la frequenza acustica principale.

Il file audio seguente contiene un fastidioso intervallo di sesta
minore tra il tinnitus simulato a 21.2 Hz ed un'oscillazione di circa
35.4 Hz (l'ascolto richiede cuffie decenti):

[tinnitus_plus_6min.wav (View Raw)](https://raw.githubusercontent.com/titola/neuropa/master/media/tinnitus_plus_6min.wav)

[tinnitus_plus_6min.wav](https://github.com/titola/neuropa/blob/master/media/tinnitus_plus_6min.wav)

L'esempio della sesta minore non è casuale ma sono stato ispirato
da alcune registrazioni audio che catturano suoni a bassa frequenza
udibili ed infrasuoni. Il ritaglio seguente è amplificato di 40 dB:

![](media/low_freq_with_6min_for_tinnitus.jpg)

[low_freq_with_6min_for_tinnitus.wav](https://github.com/titola/neuropa/blob/master/media/low_freq_with_6min_for_tinnitus.wav)

I criminali (sotto protezione) usano questi suoni anche per sfruttare
l'interazione con il tinnitus. Aggiungerò una sezione dedicata alle
registrazioni audio notturne contenenti suoni generati tramite interferenze
elettromagnetiche intenzionali: impulsi ripetuti ogni 1.9 secondi,
un segnale continuo con frequenza fondamentale di 7.62 Hz ed altre
frequenze che formano rapporti semplici con 50 Hz, la frequenza
nominale della rete elettrica in Italia [5], per esempio:

```
100 = 50 * 2
66.6 = 50 * 4/3
216.6 = 50 * 13/3
50 = 96 / [periodo di ripetizione dei picchi] = 96 / 1.92
50 = 9 / [durata dell'impulso] = 9 / 0.18

errori "scintillanti" sporadici:
  5415 = 216.6 * 25
  1155 = 216.6 * 16/3
```

Infine, la parte etichettata "misc" nel primo sonogramma comprende
impulsi generati dalla somma di sinusoidi separate da 1469 Hz e da
altre sinusoidi separate ancora da 1469 Hz.

## Codifica della voce

Hanno usato più tecniche.

Una semplice ricetta per ottenere "pulses A" è la seguente:

- Segnale sinusoidale con frequenza 14.5 kHz modulato in frequenza dal suono di una voce.

- Impulso generato ogni volta che l'ampiezza del segnale modulato passa da positiva a negativa

Gli impulsi sono generati da somme di sinusoidi separate da frequenze
che provocano un incessante tinnitus risonante nella mia testa.

Ogni volta che l'energia di un impulso è assorbita dal tessuto
cerebrale, la temperatura sale di 5e-6 °C [6]. La rapida espansione
termica produce un'onda termo-elastica che raggiunge l'orecchio
interno. Quindi i criminali utilizzano questo demodulatore
termo-acustico per inviarmi messaggi vocali tramite ultrasuoni.

Questa informazione disinnesca l'arma psicologica perché elimina
l'effetto suggestivo. Rimane quello puerile "suona il citofono e
scappa" più i fastidiosi effetti collaterali (da descrivere in una
sezione separata).

## Segnale pubblico

Anche i miei vicini di casa ricevono questo tipo di segnale:

![](media/zigzag_a.jpg)

E' nervoso e cerca di offuscare le sue intenzioni. Spesso è
accompagnato da un'imitazione attenuata e distante circa 91.2 kHz:

![](media/zigzag_b.jpg)

Il 18 Luglio 2018 ho contato circa 45 componenti di questo tipo, 5 tra
80 e 88 MHz ed almeno 40 tra 120 e 170 MHz.

L'autocorrelazione dell'inviluppo rivela la firma del mittente:
risonanze multiple di circa 1740 Hz ed impulsi ripetuti con una
frequenza di circa 18 Hz e larghezza di banda inferiore a 1600 Hz.

Esempio: frequenza centrale 138 MHz

![](media/138_env_ac.jpg)

Esempio: frequenza centrale 160 MHz

![](media/160_env_ac.jpg)

Esempio: frequenza centrale 170 MHz

![](media/170_env_ac.jpg)

L'energia degli impulsi di oltre quaranta componenti è assorbita dal tessuto
cerebrale, quindi si abbassa il valore di soglia da raggiungere per generare
l'onda termo-acustica.

## Ipotesi sull'attacco subito dagli ambasciatori americani a Cuba

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

### Metodi per ottenere le voci dalla registrazione audio

-   Filtro FIR per selezionare il contenuto tra 6 e 9 kHz.

-   Alza di un'ottava (facoltativo)

    ```
    # esempio
    rubberband -f2 in.wav out.wav
    ```

-   Slope detector.

    ```
    pseudo-codice: env_follower(diff(input))
    ```

-   Filtro BP per selezionare il contenuto tra 100Hz e 3.5kHz.

[cuba_attack_decoded.ogg (View Raw)](https://raw.githubusercontent.com/titola/neuropa/master/media/cuba_attack_decoded.ogg)

[cuba_attack_decoded.ogg](https://github.com/titola/neuropa/blob/master/media/cuba_attack_decoded.ogg)

Metodo alternativo:

-   Filtro FIR per selezionare il contenuto tra 6 e 9 kHz.

-   Convoluzione tra una serie d'impulsi ed un FIR BP, fmin=100Hz e fmax=3kHz.

    ```
    # pseudo-codice per generare la serie d'impulsi

    d[n] = in[n] - in[n-1]
    if d[n] < 0 and d[n-1] >= 0
        then out[n] = in[n-1]
        else out[n] = 0
    endif
    ```

[cuba_attack_decoded_alt.ogg (View Raw)](https://raw.githubusercontent.com/titola/neuropa/master/media/cuba_attack_decoded_alt.ogg)

[cuba_attack_decoded_alt.ogg](https://github.com/titola/neuropa/blob/master/media/cuba_attack_decoded_alt.ogg)

## Altri segnali da analizzare

### Eventi sincronizzati con le voci

Questo tipo di segnale è sincronizzato con le voci:

![](media/461mhz.jpg)

Ricevuto alle frequenze 173.456 MHz, 173.880 MHz, 173.956 MHz e
460.557 MHz con larghezza di banda pari a 4 kHz.

La curva a forma di uncino ricorda le linee d'induzione PLHR
(Power Line Harmonic Radiation) descritte nell'articolo scientifico
"On the nonlinear triggering of VLF emissions by power line harmonic
radiation" di D. Nunn, J. Manninen, T. Turunen, V. Trakhtengerts e
N. Erokhin.

Un segnale sinusoidale scende dalla frequenza massima a quella
centrale e continua per una durata da 0.072 a 0.076 secondi, poi
prosegue modulato in ampiezza da una sinusoide di 2 kHz (mix di due
sinusoidi laterali) per 0.034 secondi. Inizia una specie di rumore con
LTAS (Long-Term Average Spectrum) quasi uniforme nella banda passante:

![](media/422_733_ltas.jpg)

Il segnale sinusoidale finale dura circa 0.034 secondi.

La durata della parte rumorosa (forse una nuvola di grani sinusoidali)
dipende dalla voce percepita.

Il segnale seguente è simile ma dura 0.178 secondi ed è ripetuto ogni
1.92 secondi

```
# 96 cicli della frequenza nominale della rete elettrica
1.92 = 96 / 50

# 9 cicli
0.18 = 9 / 50
```

e senza segnali sinusoidali isolati:

![](media/422_733mhz.jpg)

Ricevuto alle frequenze 421.684 MHz (bw 5kHz invece di 4kHz) e 422.733 MHz
(bw 3kHz invece di 4kHz).

Nota la durata di 0.178 secondi ed il periodo di ripetizione di 1.92
secondi nelle registrazioni audio che contengono suoni a bassa frequenza
udibili ed infrasuoni:

![](media/low_freq_with_6min_for_tinnitus.jpg)

[low_freq_with_6min_for_tinnitus.wav](https://github.com/titola/neuropa/blob/master/media/low_freq_with_6min_for_tinnitus.wav)

Penso che i criminali intercettano i picchi degli infrasuoni ripetuti ogni
1.92 secondi anche per rilevare la variazione della frequenza nominale, in
modo da poter sintonizzare i segnali, per esempio la durata tra 9/49 (0.183s)
e 9/51 (0.176s).

La formula:

```
y = x^2 * sin(2 pi 1/0.18 t)
```

è una prima approssimazione della funzione di trasferimento per ottenere i
picchi dell'infrasuono dal segnale con frequenza centrale di 422.733 MHz.
La frequenza è 1/0.18 perché il segnale che ho provato è stato demodulato
prima di salvarlo in un file. In realtà la demodulazione avviene nel contatore
elettronico a 169 MHz, 2/5 dell'ingresso, poi il segnale è indotto nel
circuito con oscillatore stranamente impostato a 938.889 MHz (invece di 868 MHz).

```
169 / 0.18 = 938.889 MHz
```

Vedi la sezione "Contatori elettronici ACEA/ARETI con oscillatore a 939 MHz"
per maggiori dettagli.

![](media/calculated_infrasound_peaks.jpg)

Gli altri segnali sono trasformati almeno in oscillazioni a bassa frequenza.

Nota: 421.684 MHz non è presente in una registrazione del 23 Agosto 2018
e la larghezza di banda a 422.733 MHz diventa 5kHz. Il confronto sarà
utile per comprendere meglio la sintesi e la funzione del segnale audio
a bassa frequenza.

La figura seguente mostra l'autocorrelazione dell'inviluppo a 422.733 MHz,
con frequenze principali

```
20 Hz = 50 * 2/5

213.6 Hz vicina a 216.6 Hz analizzata sopra e dipendente dalla
frequenza nominale: 216.6 = 50 * 13/3

2/5 * 422.733 = 169 MHz
(vedi la prossima sezione sui contatori elettronici ACEA/ARETI).

2/5 * 50 = 20 Hz (freq principale dell'inviluppo a 422.733 MHz).

5 * 173.7 = 868 MHz (contatori elettronici).

5 * 42.72 = 213.6 (un'altra frequenza principale dell'inviluppo a 422.733 MHz)
dove 42.72 Hz è -2.8 dB sotto 213.6 Hz.
```

![](media/422_733_env_ac.jpg)

### Contatori elettronici ACEA-ARETI con oscillatore a 939 MHz

I contatori elettronici di ACEA/ARETI, o smart meter per chi ci crede,
dovrebbero comunicare in RF alle frequenze 169 e 868 MHz. Queste
frequenze sono multiple di alcune frequenze utilizzate per l'attacco
(vedi le sezioni precedenti):

```
868 / 5 = 173.6
    => 173.4 e 173.7 MHz sono sincronizzate con le voci.

169 * 5/2 = 422.5
    => 421.684 e 422.7 MHz sono sincronizzati con gli infrasuoni.
```

Dal "Bilancio di Sostenibilità 2017 del Gruppo Acea", pag. 81:

> È stato poi avviato lo sviluppo di un concentratore multiservizio
> per i contatori elettronici di prima generazione adeguatamente
> reingegnerizzato, predisposto per l’acquisizione dei contatori di
> seconda generazione e per essere integrato con una terza unità
> per la comunicazione in RF a 169/868 MHz. Il nuovo concentratore
> multiservizio (CMS) è un apparato di tipo modulare costituito da
> un’unità centrale di controllo ed elaborazione e una o più unità
> aggiuntive ognuna dedicata a un servizio specifico (elettrico,
> idrico, ecc.). A fine dicembre 2017 è stato presentato il
> prototipo che sarà oggetto delle prove e dei collaudi nel corso
> della prima metà del 2018.

Analizzando l'infrasuono descritto nelle sezioni precedenti, ho
scoperto che un oscillatore ha la frequenza impostata a 939 MHz
invece di quella dichiarata di 868 MHz. Puoi notare che i segnali RF
vicini a 939 MHz sono proprio i responsabili del tinnitus.

Perché 1/0.18, l'inverso di 9 cicli della frequenza nominale della
rete elettrica? Gli oscillatori del contatore sono in fase con la
corrente elettrica distribuita, quindi:

```
169 / 868 = 0.19470046
mod(0.19470046, 1/50) = 0.014700472
0.19470046 - 0.014700472 = 0.18 = 9 / 50
169 / 0.18 = 938.889 MHz invece di 868 MHz
```

Se l'oscillatore è regolabile lo è soprattutto per i criminali.
In questo caso, la tabella seguente riassume alcune bande di frequenza
utilizzabili in base alla frequenza del primo oscillatore a 169 MHz ed
al numero dei cicli della frequenza nominale tra 49 e 51 Hz:

| cicli | freq min (MHz) | freq max (MHz) |
|-------|----------------|----------------|
| 50    | 165.4          | 172.4          |
| 49    | 169.0          | 175.9          |
| 48    | 172.5          | 179.6          |
| 47    | 176.2          | 183.4          |
| 46    | 180.0          | 187.4          |
| 45    | 184.0          | 191.5          |
| 44    | 188.2          | 195.9          |
| 43    | 192.6          | 200.4          |
| 42    | 197.2          | 205.2          |
| 41    | 202.0          | 210.2          |
| 40    | 207.0          | 215.5          |
| 39    | 212.3          | 221.0          |
| 38    | 217.9          | 226.8          |
| 37    | 223.8          | 232.9          |
| 36    | 230.0          | 239.4          |
| 35    | 236.6          | 246.2          |
| 34    | 243.5          | 253.5          |
| 33    | 250.9          | 261.2          |
| 32    | 258.8          | 269.3          |
| 31    | 267.1          | 278.0          |
| 30    | 276.0          | 287.3          |
| 29    | 285.5          | 297.2          |
| 28    | 295.7          | 307.8          |
| 27    | 306.7          | 319.2          |
| 26    | 318.5          | 331.5          |
| 25    | 331.2          | 344.7          |
| 24    | 345            | 359.1          |
| 23    | 360.0          | 374.7          |
| 22    | 376.4          | 391.8          |
| 21    | 394.3          | 410.4          |
| 20    | 414            | 430.9          |
| 19    | 435.8          | 453.6          |
| 18    | 460            | 478.8          |
| 17    | 487.1          | 507            |
| 16    | 517.6          | 538.7          |
| 15    | 552            | 574.6          |
| 14    | 591.5          | 615.6          |
| 13    | 637            | 663            |
| 12    | 690.1          | 718.2          |
| 11    | 752.8          | 783.5          |
| 10    | 828.1          | 861.9          |
| 9     | 920.1          | 957.7          |
| 8     | 1035.1         | 1077.4         |
| 7     | 1183           | 1231.3         |
| 6     | 1380.2         | 1436.5         |
| 5     | 1656.2         | 1723.8         |
| 4     | 2070.2         | 2154.7         |


Quindi il segnale che ricevo in testa a 945 MHz (anche 935 MHz e 461
MHz, ma c'è altro) è possibilmente ripetuto dai contatori elettronici
dell'ACEA. Spero di no, ma se i criminali controllano la distribuzione
dei segnali RF di tutti i contatori deficienti, possono mixarli in modo
da indirizzarli verso una zona ben precisa.

## Riferimenti

[1] Costituzione della Repubblica Italiana, articolo 13.

[2] Josh Lederman and Michael Weissenstein. Dangerous sound?
What Americans heard in Cuba attacks. AP News, October 2017.

[3] Hang Chen, Xiaolong Fan, Hengan Zhou, Wenxi Wang, Y. S. Gui,
C.-M. Hu, and Desheng Xue. Spin rectification enabled by anomalous
Hall effect.

[4] N. M. Yitzhak, R. Ruppin, R. Hareuveny. Numerical Analysis of the
Microwave Auditory Effect.

[5] Coincidenze: un contatore trifase rotto l'anno scorso durante
l'inizio dell'attacco ed un contatore dei servizi inutilizzabile
qualche mese fa perché erano stati tirati i fili. Inoltre, se spengo
il contatore dei servizi, l'intensità delle vibrazioni delle torture
notturne diminuisce.

[6] J.A. Elder and C.K. Chou. Auditory Response to Pulsed
Radiofrequency Energy.
