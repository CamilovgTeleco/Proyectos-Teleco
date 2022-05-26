function bin = BinaryRounding(n_dec)
% if n_dec<1 && n_dec>0
%     out = "0.";
% else
%     out =strcat(dec2bin(n_dec - mod(n_dec,1))," + 0.");
%     n_dec = mod(n_dec,1);
% end

n = 1;
val = n_dec;
it = -1;
comp = 0;
while n~=0
    val = val * 2;
    int = floor(val);
    out = strcat(out,num2str(int));
    temp = (2^it) * int;
    comp = comp + temp;
    if int == 1
        val = val-1;
    end
    if round(comp,4) == round(n_dec,4)
        n = 0;
    else
        it = it-1;
    end
end
bin = out;
end

