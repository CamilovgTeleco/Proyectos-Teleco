function [trama,list,R] = FinalCoding(list)
    symbol_list_sorted=sort(list(1:2:length(list)),'descend');%sorted symbols
    reps_list_sorted=sort(list(2:2:length(list)),'descend');%sorted reps
    SNB=length(dec2bin(symbol_list_sorted(1)));
    RNB=length(dec2bin(reps_list_sorted(1)));
    trama2="";
    for i=1:length(list)
        if mod(i,2)==1
           trama2=trama2+dec2bin(list(i),SNB);
        else
           trama2=trama2+dec2bin(list(i),RNB);
        end
    end
    trama=trama2;
    number_bits=length(convertStringsToChars(trama));
    if length(find(list(1:2:length(list))>1))==0
        R=((64-number_bits)/(64))*100;
    else
        R=((64*8-number_bits)/(64*8))*100;
    end
    l=list;
end