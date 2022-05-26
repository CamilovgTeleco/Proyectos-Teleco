function array_sorted= sort_array(prob)
        for i=1:length(prob)
            for j=1:length(prob)
                variable=zeros(2,1);
                variable2=zeros(2,1);
                if i<j
                    if prob(1,i)<prob(1,j)
                       variable=prob(:,i);
                       variable2=prob(:,j);
                       prob(:,j)=variable;
                       prob(:,i)=variable2;
                    elseif prob(1,i)==prob(1,j)
                       if prob(2,i)<prob(2,j)
                            variable=prob(:,i);
                            variable2=prob(:,j);
                            prob(:,i)=variable2;
                            prob(:,j)=variable;
                       end
                    end 
                elseif i>j
                    if prob(1,i)>prob(1,j)
                       variable=prob(:,i);
                       variable2=prob(:,j);
                       prob(:,j)=variable;
                       prob(:,i)=variable2;
                    elseif prob(1,i)==prob(1,j)
                       if prob(2,i)<prob(2,j)
                            variable=prob(:,i);
                            variable2=prob(:,j);
                            prob(:,i)=variable2;
                            prob(:,j)=variable;
                       end
                    end 
                end
            end
        end

        for i=1:length(prob)
            for j=1:length(prob)
                if prob(1,i)== prob(1,j) && prob(2,i)>prob(2,j) && i<j
                    variable=prob(:,i);
                    variable2=prob(:,j);
                    prob(:,j)=variable;
                    prob(:,i)=variable2;
                end
            end
        end
        array_sorted=prob; 
end

