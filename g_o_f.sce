function [mat]=g_o_f(n, rep)
        mat= zeros(n,n)
    for i = 1:n
        for j = 1:n
            mat(i,j)= round(rand())   //creation matrice etudie
        end
    end
    mat_tempo = mat     //matrice qui contiendra les changements
    for o = 1:rep          //itteration du jeu
    for i= 1:n
        for j = 1:n   //etude voisinage element de la matrice                              
                voisins = 0
                if( i == 1 & j == 1)                  //angle 1
                    for k=1:(i+1)
                        for l=1:(j+1)
                            if mat(k,l) ==1
                                voisins = voisins +1
                            end
                        end
                    end
                else if (i == n & j == n)            //angle 3
                     for k=(n-1):n
                        for l=(n-1):n
                            if mat(k,l) ==1
                                voisins = voisins +1
                            end
                        end
                    end
                else if (i == n & j == 1)           //angle 4
                    for k=(n-1):n
                        for l=1:(j+1)
                            if mat(k,l) ==1
                                voisins = voisins +1
                            end
                        end
                    end
                else if (i == 1 & j == n)             //angle 2
                    for k=1:(i+1)
                        for l=(n-1):n
                            if mat(k,l) ==1
                                voisins = voisins +1
                            end
                        end
                    end
                else if (i == 1 & j~=(1&n))          //colonne 1
                     for k=1:(i+1)
                        for l=(j-1):(j+1)
                            if mat(k,l) ==1
                                voisins = voisins +1
                            end
                        end
                    end
                else if (i == n & j~=(1&n))           //colone n
                    for k=(n-1):n
                        for l=(j-1):(j+1)
                            if mat(k,l) ==1
                                voisins = voisins +1
                            end
                        end
                    end
                else if (j == n & i~=(1&n))           //ligne n
                    for k=(i-1):(i+1)
                        for l=(n-1):n
                            if mat(k,l) ==1
                                voisins = voisins +1
                            end
                        end
                    end
                else if (j == 1 & i~=(1&n))          //ligne 1
                    for k=(i-1):(i+1)
                        for l=i:(j+1)
                            if mat(k,l) ==1
                                voisins = voisins +1
                            end
                        end
                    end
                else                                  //corps
                for k =(i-1):(i+1)
                    for l = (j-1):(j+1)
                        if mat(k,l) == 1
                            voisins = voisins + 1
                        end
                    end
                end
                end
                end
                end
                end
                end
                end
                end
                end
                //ne pas conter un meme element comme son voisin
                //implementation matrice temporaire
                if mat(i,j) == 1
                    voisins = voisins -1
                end
                //regle du jeu
                if voisins == 3 
                    mat_tempo(i,j)=  1
                else if voisins == 2 & mat_tempo(i,j) == 1
                    mat_tempo(i,j)=1
                else
                    mat_tempo(i,j)=0
                end
                end
         end
    end
    clf
    mat = mat_tempo   //la matrice devien la matrice temporaire
    c=addcolor(name2rgb('green')/255)
    Matplot(mat*4)
    sleep(230)
   // disp(string(mat_))
    end 
endfunction
