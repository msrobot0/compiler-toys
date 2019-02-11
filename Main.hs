import Euterpea



main = do
    let m1a = instrument Violin $ line [e 4 qn, f 3 qn,b 5 qn,a 4 qn,d 4 hn,e 1 qn,b 3 qn,c 3 qn,a 4 qn,d 4 qn]
        m1b = instrument Clarinet $ line [e 5 qn,f 3 qn,a 6 qn,f 6 qn,e 7 qn,b 5 qn,d 6 qn,d 4 hn,b 8 qn,d 7 qn]

        m2a = instrument Flute $ line [f 3 qn]
        m2b = instrument Piccolo $ line [f 3 qn] 

        m3a = instrument OrchestralHarp $ line [b 5 qn]
        m3b = instrument Clarinet $ line [a 6 qn]

        m4a = instrument OrchestralHarp $ line [a 4 qn] 
        m4b = instrument Piccolo $ line [f 6 qn]

        m5a = instrument Tuba $ line [d 4 hn] 
        m5b = instrument ChoirAahs $ line [e 7 qn] 

        m6a = instrument Trumpet $ line [e 1 qn] 
        m6b = instrument Clarinet $ line [b 5 qn] 

        m7a = instrument OrchestralHarp $ line [b 3 qn] 
        m7b = instrument Clarinet $ line [d 6 qn]

        m8a = instrument Violin $ line [c 3 qn]
        m8b = instrument Tuba $ line [d 4 hn]

        m9a = instrument Violin $ line [a 4 qn]
        m9b = instrument Piccolo $ line [b 8 qn] 

        m10a = instrument Violin $ line [d 4 qn]
        m10b = instrument Piccolo $ line [d 7 qn]

    play $ chord[m1a,m1b]
    play $ chord[m1a,m2a,m2b]
    play $ chord[m1b,m3a,m3b]
    play $ chord[m1b,m4a,m4b]
    play $ chord[m1b,m5a,m5b]
    play $ chord[m6a,m6b]
    play $ chord[m7a,m7b]
    play $ chord[m8a,m8b,m1a,m1b]
    play $ chord[m9a,m9b]
    play $ chord[m10a,m10b]
