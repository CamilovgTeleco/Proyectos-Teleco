function [trama,l,R] = FinalCoding(list,technique)
    symbol_list_sorted=sort(list(1:2:length(list)),'descend');%sorted symbols
    reps_list_sorted=sort(list(2:2:length(list)),'descend');%sorted reps
    SNB=length(dec2bin(symbol_list_sorted(1)))
    RNB=length(dec2bin(reps_list_sorted(1)))
    trama2="";
    power=(SNB>RNB)*SNB+(SNB<RNB)*RNB+(SNB==RNB)*RNB;
    anticipated_byte="";
    if technique==1
        for i=2:2:length(list)
            trama2=trama2+'1'+dec2bin(list(i),power);
            trama2=trama2+'0'+dec2bin(list(i-1),power);
        end
        R=0;
    elseif technique==2
        trama2=trama2+dec2bin((2^power)-1);
        for i=2:2:length(list)
            trama2=trama2+dec2bin(list(i),power);
            trama2=trama2+dec2bin(list(i-1),power);
            trama2=trama2+dec2bin((2^power)-1);  
        end
        R=0;
    elseif technique==3
        for i=2:2:length(list)
            if list(i)>1
                trama2=trama2+dec2bin(list(i),power);
                anticipated_byte=anticipated_byte+'1';
            end
            trama2=trama2+dec2bin(list(i-1),power);
            anticipated_byte=anticipated_byte+'0';
        end
        R=anticipated_byte;
    end
    trama=trama2;
    l=list;
end