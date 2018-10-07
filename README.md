[Traduzione italiana](LEGGIMI.md)

# Analysis of an electromagnetic attack

I noticed the attack voice-to-skull the last year, July 15th 2017.

The artificial and natural deficiency coordinates the sequences and the
psychology of the dialogues, often offensive, and the interferences to
the normal neural oscillations that disturb the sleep with tremors,
convulsions, etc.

The following video shows a part of the signal directed to my head:

![](media/head_945mhz.gif)

[head_945mhz.mp4 (View Raw)](https://raw.githubusercontent.com/titola/neuropa/master/media/head_945mhz.mp4)

[head_945mhz.mp4](https://github.com/titola/neuropa/blob/master/media/head_945mhz.mp4)

In Italy "The personal freedom is inviolable." [1]

My head is continually tracked, probably using the technology of the
deficient missiles. Sporadic sounds, that are not directional but
audible by all and based on my location, suggest to me the use of the
plasma. That tracking system and the electric meters are the basis of
the attack.

The criminals use the radio without limits of frequency, disturbing
also the musical transmissions in FM.

There are at least four fixed positions of the attackers. The measures
have been taken in Rome (north), June 5th 2018, by using SDR, a simple
antenna and a digital compass.

-   NNE 20°
-   NNW 338°
-   between SW 227° and WSW 251°
-   between E 92° and SE 127°

I want to share the analysis of this attack to break the veil of
mystery, often ignorantly divulged by using the word "conspiracy".

I have analyzed the complete dynamics of the attack. This document
contains what I can unequivocally explain (25% of the overall attack
but I will write other and I will improve the structure of this
document). I am a musician and programmer.

The decoding is improvable (I have used a simple slope detector), but
if you hear a voice in the audio file

[cuba_attack_decoded.ogg (View Raw)](https://raw.githubusercontent.com/titola/neuropa/master/media/cuba_attack_decoded.ogg)

[cuba_attack_decoded.ogg](https://github.com/titola/neuropa/blob/master/media/cuba_attack_decoded.ogg)

also the [US embassy in Cuba](https://en.wikipedia.org/wiki/Embassy_attack_accusations_in_Cuba)
unconsciously suffered a similar offensive action, because what you
have just listened is hidden in a published recording [2]. Perhaps the
used signal was rectified by an anomalous Hall effect in some ferromagnetic
material [3] or the responsible is a smart electric meter used as weapon.

## Table of Contents

- [Signal directed to the head](#signal-directed-to-the-head)
- [Voice encoding](#voice-encoding)
- [Harmonics of 50 Hz from the mix of the amplitude modulations](#harmonics-of-50-hz-from-the-mix-of-the-amplitude-modulations)
- [Hypothesis about the US embassy attack in Cuba](#hypothesis-about-the-us-embassy-attack-in-cuba)
    - [Methods to get the voices from the audio recording](#methods-to-get-the-voices-from-the-audio-recording)
- [Other signals to analyse](#other-signals-to-analyse)
    - [Events synchronized with the voices](#events-synchronized-with-the-voices)
    - [Electric meters ACEA-ARETI with oscillator at 939 MHz](#electric-meters-acea-areti-with-oscillator-at-939-mhz)
- [References](#references)

## Signal directed to the head

The sonogram of a recording of the signal, with center frequency of
945 MHz and sampling rate of 2 MHz, highlights the main pulses:

![](media/sonogram_945mhz.jpg)

During the recording, the infamous criminals lower the level of the
voices and increase the noise. Recently, the level of the voices is
also very low if I don't record, however the intensity of the
induced [tinnitus](https://en.wikipedia.org/wiki/Tinnitus) is
unchanged.

A pulse "A" is the sum of 100 sinusoids separated by 1733 Hz, so the
bandwidth is 173.3 kHz.

```
1733.33 = 5200 / 3 = 50 * 8 * 13/3 = 650 * 8/3
```

A pulse "B" is the sum of 7 sinusoids separated by 216.6 Hz.

```
216.66667 = 650 / 3 = 5200 / 24 = 1733.33 / 8
```

Note: the frequencies 1733.33 Hz and 216.67 Hz can be mixed with the
harmonics of 50 Hz to get other harmonics of 50 Hz. It is important
because the whole attack exploits the electric current with nominal
frequency of 50 Hz.

```
sin(x+y) = sin(x)*cos(y) + cos(x)*sin(x)
sin(x-y) = sin(x)*cos(y) - cos(x)*sin(x)
sin(3*(x+y)) = 3 sin(x+y) - 4 (sin(x+y))^3

Examples:

sin(50) = sin(3*(650/3 - 200)) = 3 * sin(650/3 - 200) - 4 * (sin(650/3 - 200))^3

sin(100) = sin(3*(250 - 650/3)) = 3 * sin(250 - 650/3) - 4 * (sin(250 - 650/3))^3
```

The pattern of the the pulse repetition periods is

```
A A A A B A A A A B A A A A B ...

A = 0.0461 s = 80 / 1733  => 21.69 Hz
B = 0.0511 s = A + 1/200 = 75 / 1469  => 19.57 Hz
freq_average = 5 / ((A * 4) + B) = 21.23 Hz
```

This pattern is particularly sympathizing with the oscillation at the
nominal frequency of the electrical grid between 49 and 51 Hz:

```
A * 4 = 0.0461 * 4 = 0.184 = 9 cycles at 49 Hz
A * 4 + B = 5 * 0.0461 + 1/(50*4) = 0.235 = 12 cycles at 51 Hz
```

In practice, the pattern is made by 5 repetitions of A plus the
duration of a quarter cycle at 50 Hz. The next figure shows 10 seconds
of the absolute value of three oscillations at 49, 50 and 51 Hz
respectively, sampled by using the periods of that pattern.
The distribution and the modulation of the peaks remind the tremors
that I sometimes perceive.

![](media/fake_gsm_sampler_49hz50hz51hz.jpg)

I have simulated the tinnitus produced by the pulses of the signal
received at 945 MHz by approximating the termo-acoustic demodulator
described in the section "Voice encoding":

[tinnitus_pulses.wav (View Raw)](https://raw.githubusercontent.com/titola/neuropa/master/media/tinnitus_pulses.wav)

[tinnitus_pulses.wav](https://github.com/titola/neuropa/blob/master/media/tinnitus_pulses.wav)

I have preferred to use a source-filter model instead of synthesizing
the acoustic frequencies, therefore the thermoelastic wave is approximated
by a pulse train with pattern A-A-A-A-B and average frequency of 21.23 Hz
(the other pulses are excluded to simplify the model) filtered by the
conduction filter based on the figure 4 in [4]. This type of signal
interferes in particular way with the neural oscillations (the other
variable pulses can modulate specific brain waves with different rhythms)
before to reach the inner ear.

It is possible to compute the induced pressure amplitude by using the
formula and the amplitude factors of the figure 4 in [4]:

```
P(pulse_width) = A*abs(sin(pi*freq*pulse_width)) =

= 572*abs(sin(pi*7800/(216.625*7))) = 2.49e-4 Pa (about 22 dB SPL)
```

where 7800 Hz is the main acoustic frequency.

The following audio file contains an annoying interval of minor sixth
between the simulated tinnitus at 21.2 Hz and an oscillation around 35.4 Hz
(the listening requires decent headphones):

[tinnitus_plus_6min.wav (View Raw)](https://raw.githubusercontent.com/titola/neuropa/master/media/tinnitus_plus_6min.wav)

[tinnitus_plus_6min.wav](https://github.com/titola/neuropa/blob/master/media/tinnitus_plus_6min.wav)

The example of the minor sixth is not casual but inspired by
some audio recordings that capture low frequency sounds and
infrasounds. The next clip is amplified by 40 dB:

![](media/low_freq_with_6min_for_tinnitus.jpg)

[low_freq_with_6min_for_tinnitus.wav](https://github.com/titola/neuropa/blob/master/media/low_freq_with_6min_for_tinnitus.wav)

The (protected) criminals use these sounds also to exploit the
interaction with the tinnitus. I will add a section for the nightly
audio recordings that contain the sounds produced through intentional
electromagnetic interferences: pulses repeated every 1.9 seconds,
a continuous signal with fundamental frequency of 7.62 Hz and other
frequencies that form simple ratios with 50 Hz, the nominal frequency
of the electrical grid in Italy [5], for example:

```
100 = 50 * 2
66.6 = 50 * 4/3
216.6 = 50 * 13/3
50 = 96 / [repetition period of the peaks] = 96 / 1.92
50 = 9 / [pulse duration] = 9 / 0.18

sporadic "scintillant" errors:
  5415 = 216.6 * 25
  1155 = 216.6 * 16/3
```

Finally, the part labeled "misc" in the first sonogram contains pulses
produced by the sum of sinusoids separated by 1469 Hz and other
sinusoids also separated by 1469 Hz.

If I apply an envelope follower to the recorded I/Q, the result
contains again the harmonics of 1733 Hz:

![](media/945mhz_env.jpg)

I continue to receive that and other malicious signals (at least)
from July 2017 thanks to the negligence of the Italian security forces
and Ministero della Difesa that should control the use of the radio
frequencies. Unfortunately, there aren't real professionals in North Rome.
If the attack is caused by foreign agencies and it is difficult to
stop for various reasons, the citizens should be informed. From the
Costituzione della Repubblica Italiana, articolo 28:

> I funzionari e i dipendenti dello Stato e degli enti pubblici sono
> direttamente responsabili, secondo le leggi penali, civili e
> amministrative, degli atti compiuti in violazione di diritti. In
> tali casi la responsabilità civile si estende allo Stato e agli enti
> pubblici.

Let me know if the Costituzione italiana that I have always respected
is still valid. Meanwhile, I have learned to humiliate these fanatic
idiots by controlling their sophisticated movements through a simple
game of mirrors.

## Voice encoding

The criminals use more techniques.

A simple recipe to get the pulses A is the following:

-   Sinusoidal signal with frequency 14.5 kHz, frequency modulated by a vocal sound.

-   Pulse generated each time the amplitude of the modulated signal goes from positive to negative.

The pulses are generated by the sum of sinusoids separated by the
frequencies that cause an unceasing resonant tinnitus in my head.

Any time the energy of a RF pulse is absorbed by the cerebral tissue,
the temperature rises of 5e-6 °C [6]. The rapid thermal expansion produces
a thermoelastic wave that travels to the inner ear. Therefore the
criminals use that thermo-acoustic demodulator to send vocal messages
to me through ultrasounds.

This information defuses the psychologic weapon because it cancels the
suggestive effect. The childish effect "play the entryphone and run
away" and the annoying side effects (to describe in a separate section)
persist.

I still have to analyze another technique that use the plasma and the
electric current.

## Harmonics of 50 Hz from the mix of the amplitude modulations

Also my neighbors receive this type of signal:

![](media/zigzag_a.jpg)

It is nervous and tries to obscure its intentions. Often, it is
coupled with an attenuated imitation about 91.2 kHz apart.

![](media/zigzag_b.jpg)

On July 18th 2018, I have counted about 45 components of this type,
5 between 80 and 88 MHz and at least 40 between 120 and 170 MHz.

The autocorrelation of the envelope reveals the signature of the sender:
resonances multiple of about 1740 Hz and a pulse train with frequency of
about 18 Hz and bandwidth less than 1600 Hz. The envelope also contains
a strong isolated oscillation with frequency around 20 kHz.

Example: center frequency of 138 MHz

![](media/138_env_ac.jpg)

Other examples:

[fc 160 MHz](https://github.com/titola/neuropa/blob/master/media/160_env_ac.jpg)

[fc 170 MHz](https://github.com/titola/neuropa/blob/master/media/170_env_ac.jpg)

I have analyzed the whole envelope of the recorded I/Q with sampling
rate of 2.4 MHz, considering all the carrier frequencies within the
band of 1.2 MHz and the result is surprising:

![](media/138mhz_bw1200khz.jpg)

The oscillations are multiple of the nominal frequency of 50 Hz and
the highest harmonic is of 100 Hz. I have repeated the measure by
applying a high pass filter to remove the first 50 kHz and the result
is the same.

The autocorrelation highlights the harmonics:

![](media/138mhz_bw1200khz_ac.jpg)

Therefore there are hundreds of carrier frequencies with modulations
that hide their intent: harmonic frequencies of 50 Hz resulting from
the mix of the amplitude modulations. The related currents induced
into the circuits that pass through a rectifier and an amplifier,
particularly the radio modules of the smart electric meters, dirty
the electric current in a particular and possibly controlled way.

## Hypothesis about the US embassy attack in Cuba

The recording of what some US embassy workers heard in Havana has
characteristics similar to the signal at 945MHz that I receive in my
head. The main difference is the distance in frequency between the
sinusoids that generate the pulses. In my case:

-   Pulses with sinusoids separated by 216.6 Hz and pulse repetition periods with A-A-A-A-B (see above).

-   Pulses with sinusoids separated by 1733 Hz and variable pulse repetition period.

In the Cuban case, the sinusoids are always separated by 180 Hz but
the 21 Hz clock is the same.

The amplitudes of the following sonogram are in dB to highlight the
part filtered by the recorder or by the editor:

![](media/cuba_clock.jpg)

Instead, the next sonogram shows the clock in my head (linear amplitude)
under 1733 Hz, demodulated, under-sampled and recorded to a sound file:

![](media/945mhz_clock.jpg)

There are two types of pulse:

-   Pulses with sinusoids separated by 180 Hz, bandwidth of 3960 Hz and pulse frequency of 21 Hz.

-   Pulses with sinusoids separated by 180 Hz and variable pulse repetition period.

### Methods to get the voices from the audio recording

-   FIR filter to select the content between 6 and 9 kHz.

-   Pitch 1 octave up (optional).

    ```
    # example
    rubberband -f2 in.wav out.wav
    ```

-   Slope detector.

    ```
    pseudo-code: env_follower(diff(input))
    ```

-   BP filter to select the content between 100Hz and 3.5kHz.

[cuba_attack_decoded.ogg (View Raw)](https://raw.githubusercontent.com/titola/neuropa/master/media/cuba_attack_decoded.ogg)

[cuba_attack_decoded.ogg](https://github.com/titola/neuropa/blob/master/media/cuba_attack_decoded.ogg)

Alternative method:

-   FIR filter to select the content between 6 and 9 kHz.

-   Convolution of a set of impulses with a FIR BP, fmin=100Hz and fmax=3kHz.

    ```
    # pseudo-code to generate the set of impulses

    d[n] = in[n] - in[n-1]
    if d[n] < 0 and d[n-1] >= 0
        then out[n] = in[n-1]
        else out[n] = 0
    endif
    ```

[cuba_attack_decoded_alt.ogg (View Raw)](https://raw.githubusercontent.com/titola/neuropa/master/media/cuba_attack_decoded_alt.ogg)

[cuba_attack_decoded_alt.ogg](https://github.com/titola/neuropa/blob/master/media/cuba_attack_decoded_alt.ogg)

## Other signals to analyse

### Events synchronized with the voices

This type of signal is synchronized with the voices:

![](media/461mhz.jpg)

Received at the frequencies 173.456 MHz, 173.880 MHz, 173.956 MHz and
460.557 MHz with bandwidth of 4 kHz.

The hook shaped curve remembers the PLHR (Power Line Harmonic Radiation)
induction lines described in the paper "On the nonlinear triggering of
VLF emissions by power line harmonic radiation" by D. Nunn, J. Manninen,
T. Turunen, V. Trakhtengerts and N. Erokhin.

A sinusoidal signal goes down from the maximum to the central
frequency and continues with duration between 0.072 and 0.076 seconds,
then it is amplitude modulated by a sinusoid of 2 kHz (mix of two side
sinusoids) for 0.034 seconds. The middle part is a kind of noise with
LTAS (Long-Term Average Spectrum) almost uniform in bandwidth:

![](media/422_733_ltas.jpg)

The duration of the final sinusoidal signal is about 0.034 seconds.

The duration of the noisy part (maybe a cloud of sinusoidal gains)
depends on the perceived voice.

The following signal is similar but with duration of 0.178 seconds,
repeated every 1.92 seconds

```
# 96 cycles of the nominal frequency of the electrical grid
1.92 = 96 / 50

# 9 cycles
0.18 = 9 / 50
```

and without isolated sinusoidal signals:

![](media/422_733mhz.jpg)

Received at the frequencies 421.684 MHz (bw 5kHz instead of 4kHz) and
422.733 MHz (bw 3kHz instead of 4kHz).

Note the duration of 0.178 seconds and the repetition period of 1.92
seconds in the audio recordings that contain low frequency sounds
and infrasounds:

![](media/low_freq_with_6min_for_tinnitus.jpg)

[low_freq_with_6min_for_tinnitus.wav](https://github.com/titola/neuropa/blob/master/media/low_freq_with_6min_for_tinnitus.wav)

I think the thugs monitor the peaks of the infrasounds repeated every
1.92 seconds also to take the variation of the nominal frequency to
tune the signals, for example the duration between 9/49 (0.183s) and
9/51 (0.176s).

The formula:

```
y = x^2 * sin(2 pi 1/0.18 t)
```

is a first approximation of the transfer function to get the peaks of the
infrasound from the signal at 422.733 MHz. The frequency is 1/0.18 because
the tested signal was demodulated before to save it to a file. In fact,
the demodulation occurs within the smart electric meter, 2/5 of the input,
then the signal is induced into the circuit with the oscillator strangely
set to 938.889 MHz (instead of 868 MHz).

```
169 / 0.18 = 938.889 MHz
```

See the section "Electric meters ACEA-ARETI with oscillator at 939 MHz"
for more details.

![](media/calculated_infrasound_peaks.jpg)

The other signals are transformed at least in low frequency oscillations.

Note: 421.684 MHz is not present in a recording on August 23th 2018,
and the bandwidth at 422.733 MHz becomes 5kHz. The comparison will be
useful to understand better the synthesis and the function of the low
frequency audio signal.

The following figure displays the autocorrelation of the envelope at
422.733 MHz, with the main frequencies:

```
20 Hz = 50 * 2/5

213.6 Hz near 216.6 Hz previously analyzed and dependent on the
nominal frequency: 216.6 = 50 * 13/3

2/5 * 422.733 = 169 MHz
(see the next section about the electric meters ACEA/ARETI).

2/5 * 50 = 20 Hz (main freq of the envelope at 422.733 MHz).

5 * 173.7 = 868 MHz (electric meters).

5 * 42.72 = 213.6 (another main freq of the envelope at 422.733 MHz).
where 42.72 Hz is -2.8 dB under 213.6 Hz.
```

![](media/422_733_env_ac.jpg)

### Electric meters ACEA-ARETI with oscillator at 939 MHz

The smart electric meters of ACEA/ARETI should communicate in RF
at the frequencies 169 and 868 MHz. These frequencies are multiple of
some frequencies used for the attack (see the previous section):

```
868 / 5 = 173.6
    => 173.4 and 173.7 MHz are synchronized to the voices.

169 * 5/2 = 422.5
    => 421.684 and 422.7 MHz are synchronized to the infrasounds.
```

From "Bilancio di Sostenibilità 2017 del Gruppo Acea", pag. 81:

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

By analysing the infrasound described in the prior sections, I have
discovered that an oscillator has the frequency set at 939 MHz instead
of the declared 868 MHz. You can notice that the RF signals near 939 MHz
are really the responsables of the tinnitus.

Why 1/0.18, the reciprocal of 9 cycles of the nominal frequency of the
electrical grid? The oscillators of the smart meter are in phase
with the provided electric current, therefore:

```
169 / 868 = 0.19470046
mod(0.19470046, 1/50) = 0.014700472
0.19470046 - 0.014700472 = 0.18 = 9 / 50
169 / 0.18 = 938.889 MHz instead of 868 MHz
```

If the oscillator is settable, it is so especially for the thugs.
In this case, the following table lists some frequency bands usable
based on the frequency of the first oscillator at 169 MHz and the
number of the cycles of the nominal frequency between 49 and 51 Hz:

| cycles | freq min (MHz) | freq max (MHz) |
|--------|----------------|----------------|
| 50     | 165.4          | 172.4          |
| 49     | 169.0          | 175.9          |
| 48     | 172.5          | 179.6          |
| 47     | 176.2          | 183.4          |
| 46     | 180.0          | 187.4          |
| 45     | 184.0          | 191.5          |
| 44     | 188.2          | 195.9          |
| 43     | 192.6          | 200.4          |
| 42     | 197.2          | 205.2          |
| 41     | 202.0          | 210.2          |
| 40     | 207.0          | 215.5          |
| 39     | 212.3          | 221.0          |
| 38     | 217.9          | 226.8          |
| 37     | 223.8          | 232.9          |
| 36     | 230.0          | 239.4          |
| 35     | 236.6          | 246.2          |
| 34     | 243.5          | 253.5          |
| 33     | 250.9          | 261.2          |
| 32     | 258.8          | 269.3          |
| 31     | 267.1          | 278.0          |
| 30     | 276.0          | 287.3          |
| 29     | 285.5          | 297.2          |
| 28     | 295.7          | 307.8          |
| 27     | 306.7          | 319.2          |
| 26     | 318.5          | 331.5          |
| 25     | 331.2          | 344.7          |
| 24     | 345            | 359.1          |
| 23     | 360.0          | 374.7          |
| 22     | 376.4          | 391.8          |
| 21     | 394.3          | 410.4          |
| 20     | 414            | 430.9          |
| 19     | 435.8          | 453.6          |
| 18     | 460            | 478.8          |
| 17     | 487.1          | 507            |
| 16     | 517.6          | 538.7          |
| 15     | 552            | 574.6          |
| 14     | 591.5          | 615.6          |
| 13     | 637            | 663            |
| 12     | 690.1          | 718.2          |
| 11     | 752.8          | 783.5          |
| 10     | 828.1          | 861.9          |
| 9      | 920.1          | 957.7          |
| 8      | 1035.1         | 1077.4         |
| 7      | 1183           | 1231.3         |
| 6      | 1380.2         | 1436.5         |
| 5      | 1656.2         | 1723.8         |
| 4      | 2070.2         | 2154.7         |


Therefore the signal directed to my head at 945 MHz (also 935 MHz and
461 MHz, but there is other) is possibly repeated by the ACEA's smart
meters. I hope no, but if the thugs control the distribution of the
RF signals of all the deficient meters, they can mix and direct them to
a specific zone.

## References

[1] Costituzione della Repubblica Italiana, articolo 13.

[2] Josh Lederman and Michael Weissenstein. Dangerous sound?
What Americans heard in Cuba attacks. AP News, October 2017.

[3] Hang Chen, Xiaolong Fan, Hengan Zhou, Wenxi Wang, Y. S. Gui,
C.-M. Hu, and Desheng Xue. Spin rectification enabled by anomalous
Hall effect.

[4] N. M. Yitzhak, R. Ruppin, R. Hareuveny. Numerical Analysis of the
Microwave Auditory Effect.

[5] Coincidences: a three phase meter broken the last year during the
first attack and another electric meter unusable a few months ago
(pulled wires). Besides, if I switch off an electric meter, the intensity
of the body vibrations of the nightly tortures decreases.

[6] J.A. Elder and C.K. Chou. Auditory Response to Pulsed
Radiofrequency Energy.
