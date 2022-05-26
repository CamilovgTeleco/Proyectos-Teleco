function vector = RandomValues(numInf,numSup,minDiff,maxDiff)
    %el usuario me dice de donde a donde va a manejar los valores
    %y la diferencia mínima y máxima que habrá
    list=zeros(1,100);
    list(1)=randi([numInf,numSup-maxDiff],1);
    expo=[1,2,2];
    %list in which one hundred values are stored
    if numSup>maxDiff && numSup>numInf && maxDiff>minDiff
        difference=minDiff:maxDiff;
        for j=2:100
            position=randi([1,length(difference)],1);
            PoN=randi([1,3],1);
            value=list(j-1)+difference(position)*((-1)^expo(PoN));
            if value<=numSup
               list(j)=abs(value);
            else
               list(j)=abs(list(j-1)-maxDiff);
            end
            if (list(j)-list(j-1))<0 
                if minDiff>0
                    condicion=0;
                    while condicion==0
                        if(list(j)-list(j-1))>(minDiff*(-1))
                            list(j)=list(j)-1;
                        else
                            condicion=1;
                        end
                    end
                else
                    condicion=0;
                    while condicion==0
                        if(list(j)-list(j-1))>minDiff
                            list(j)=list(j)-1;
                        else
                            condicion=1;
                        end
                    end
                end
            elseif (list(j)-list(j-1))>=0
                if minDiff>0
                    condicion=0;
                    while condicion==0
                       if (list(j)-list(j-1))<minDiff
                           list(j)=list(j)+1;
                       else
                           condicion=1;
                       end
                    end
                end
            end
        end
    end
    %I have to copy until here
    vector=list;
end