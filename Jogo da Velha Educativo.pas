Program JogoDaVelha;


VAR
enter,op_login,op_voltar:char;
i,jogada,pAleatoria,continua:integer;
usuario,senha,user,pass,r_pass,ganhador,vez,resposta:string;
valeu,win,certoerrado:boolean;
xy:array[1..9] of string;
jogador:array[1..2] of string;
perguntas:array[1..20,1..6] of string;
pFeitas:array[1..20] of string;

  Procedure  telalogincadastro;
  
  Var
  i:integer;
  
  Begin
    
    gotoxy(28,3);
    writeln(#178 ,' VELHA EDUCATIVA // BIOLOGIA');
    gotoxy(24,4);
    writeln(#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196);
    gotoxy(5,9);
    writeln(#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250);
    for i:=10 to 21 do
    Begin
      gotoxy(5,i);
      write(#250);
    End;
    writeln(#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250);
    for i:=10 to 20 do
    Begin
      gotoxy(35,i);
      write(#250);
    End;
    gotoxy(37,9);
    writeln(#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250);
    for i:=10 to 21 do
    Begin
      gotoxy(37,i);
      write(#250);
    End;
    gotoxy(37,21);
    writeln(#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250,#250);
    for i:=10 to 20 do
    Begin
      gotoxy(75,i);
      write(#250);
    End;
    
  End;

  procedure jogadores;
  
  Begin
    
    i:=0;
    
    clrscr;
    telalogincadastro;
    
    gotoxy(32,7);
    writeln('CADASTRO DE JOGADORES:');
    textcolor(blue);
    gotoxy(13,14);
    write('FAÇA O CADASTRO');
    gotoxy(14,16);
    write('DOS JOGADORES:');
    textcolor(0);
    
    gotoxy(39,11);
    write(#254 ,' JOGADORES');
    gotoxy(39,13);
    write('Jogador X: ');
    gotoxy(39,15);
    write('jogador O: ');
    gotoxy(39,19);
    write('<ENTER> para continuar');
    
    
    gotoxy(50, 13);
    read(jogador[1]);
    gotoxy(50, 15);
    read(jogador[2]);
    
  End;

  procedure pergunta;
  
  Begin
    randomize;
    
    clrscr;
    
    continua:=0;
    
    while continua <> 20 do
    Begin
      
      pAleatoria:=0;
      pAleatoria:=(random(20)+1);
      
      for i:=1 to 20 do
      Begin
        
        if (pFeitas[i] = perguntas[pAleatoria,1]) then
        Begin
          
          i:=21;
          continua:=0;
          
        End else
        Begin
          
          inc(continua);
          
        End;
        
      End;
      
    End;
    
    continua:=0;
    
    for i:= 1 to 20 do
    Begin
      
      if(pFeitas[i]='') then
      Begin
        
        pFeitas[i]:=perguntas[pAleatoria,1];
        i:=21;
        
      End;
      
    End;
    
    writeln;
    
    for i:=1 to 5 do
    Begin
      
      writeln(perguntas[pAleatoria,i]);
      writeln;
      
    End;
    
    gotoxy(3,12);
    read(resposta);
    resposta:=upcase(resposta);
      writeln;
      
      if (resposta = perguntas[pAleatoria,6]) then
      Begin
        
        certoerrado:=true;
        textcolor(blue);
        writeln('  RESPOSTA CORRETA');
        delay(800);
        textcolor(0);
      End
      
      Else Begin
        
        certoerrado:=false;
        textcolor(red);
        writeln('  RESPOSTA ERRADA');
        delay(800);
        textcolor(0);
        
      End;
      
    End;
    
    // MENUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
    
      procedure MENU;
      
      Var
      op_menu:char;
      
        procedure JOGO;
        
          procedure tabuleiro;
          begin
            
            clrscr ;
            gotoxy(36,3);
            writeln('JOGO DA VELHA');
            gotoxy(22,4);
            writeln(#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196);
            
            for i:=32 to 52 do
            Begin
              gotoxy(i,11);
              write(#250);
            End;
            
            for i:=32 to 52 do
            Begin
              gotoxy(i,15);
              write(#250);
            End;
            
            
            for i:=07 to 19 do
            Begin
              gotoxy(39,i);
              write(#250);
            End;
            
            for i:=07 to 19 do
            Begin
              gotoxy(45,i);
              write(#250);
            End;
            
            
            if (xy[1] = 'X') then
            Begin
              textcolor(red);
            End;
            
            if (xy[1] = 'O') then
            Begin
              textcolor(blue);
            End;
            
            if (xy[1] <> 'X') and (xy[1] <> 'O') then
            Begin
              textcolor(0);
            End;
            
            gotoxy(36,09);
            write(xy[1]);
            
            if (xy[2] = 'X') then
            Begin
              textcolor(red);
            End;
            
            if (xy[2] = 'O') then
            Begin
              textcolor(blue);
            End;
            
            if (xy[2] <> 'X') and (xy[2] <> 'O') then
            Begin
              textcolor(0);
            End;
            
            gotoxy(42,09);
            write(xy[2]);
            
            if (xy[3] = 'X') then
            Begin
              textcolor(red);
            End;
            
            if (xy[3] = 'O') then
            Begin
              textcolor(blue);
            End;
            
            if (xy[3] <> 'X') and (xy[3] <> 'O') then
            Begin
              textcolor(0);
            End;
            
            gotoxy(48,09);
            write(xy[3]);
            
            if (xy[4] = 'X') then
            Begin
              textcolor(red);
            End;
            
            if (xy[4] = 'O') then
            Begin
              textcolor(blue);
            End;
            
            if (xy[4] <> 'X') and (xy[4] <> 'O') then
            Begin
              textcolor(0);
            End;
            
            gotoxy(36,13);
            write(xy[4]);
            
            if (xy[5] = 'X') then
            Begin
              textcolor(red);
            End;
            
            if (xy[5] = 'O') then
            Begin
              textcolor(blue);
            End;
            
            if (xy[5] <> 'X') and( xy[5] <> 'O') then
            Begin
              textcolor(0);
            End;
            
            gotoxy(42,13);
            write(xy[5]);
            
            if (xy[6] = 'X') then
            Begin
              textcolor(red);
            End;
            
            if (xy[6] = 'O') then
            Begin
              textcolor(blue);
            End;
            
            if (xy[6] <> 'X') and (xy[6] <> 'O') then
            Begin
              textcolor(0);
            End;
            
            gotoxy(48,13);
            write(xy[6]);
            
            if (xy[7] = 'X') then
            Begin
              textcolor(red);
            End;
            
            if (xy[7] = 'O') then
            Begin
              textcolor(blue);
            End;
            
            if (xy[7] <> 'X') and (xy[7] <> 'O') then
            Begin
              textcolor(0);
            End;
            
            gotoxy(36,17);
            write(xy[7]);
            
            if (xy[8] = 'X') then
            Begin
              textcolor(red);
            End;
            
            if (xy[8] = 'O') then
            Begin
              textcolor(blue);
            End;
            
            if (xy[8] <> 'X') and (xy[8] <> 'O') then
            Begin
              textcolor(0);
            End;
            
            gotoxy(42,17);
            write(xy[8]);
            
            if (xy[9] = 'X') then
            Begin
              textcolor(red);
            End;
            
            if (xy[9] = 'O') then
            Begin
              textcolor(blue);
            End;
            
            if (xy[9] <> 'X') and (xy[9] <> 'O') then
            Begin
              textcolor(0);
            End;
            gotoxy(48,17);
            write(xy[9]);
            
            textcolor(0);
            
            writeln;
            writeln;
            writeln;
            
          end;
          
            procedure teste;
            begin
              
              //Testa se X ganhou
              
              if ( xy[1]+xy[2]+xy[3] = 'XXX' ) or ( xy[4]+xy[5]+xy[6] = 'XXX' ) or ( xy[7]+xy[8]+xy[9] = 'XXX' ) or ( xy[1]+xy[4]+xy[7] = 'XXX' ) or ( xy[2]+xy[5]+xy[8] = 'XXX' ) or ( xy[3]+xy[6]+xy[9] = 'XXX' ) or ( xy[7]+xy[5]+xy[3] = 'XXX' ) or ( xy[1]+xy[5]+xy[9] = 'XXX' ) then
              begin
                ganhador:= 'X';
              end;
              //Testa se X ganhou
              
              //Testa se O ganhou
              
              if ( xy[1]+xy[2]+xy[3] = 'OOO' ) or ( xy[4]+xy[5]+xy[6] = 'OOO' ) or ( xy[7]+xy[8]+xy[9] = 'OOO' ) or ( xy[1]+xy[4]+xy[7] = 'OOO' ) or ( xy[2]+xy[5]+xy[8] = 'OOO' ) or ( xy[3]+xy[6]+xy[9] = 'OOO' ) or ( xy[7]+xy[5]+xy[3] = 'OOO' ) or ( xy[1]+xy[5]+xy[9] = 'OOO' ) then
              begin
                ganhador:= 'O';
              end;
              
              //Testa se O ganhou
              
              //Imprime empate na tela
              
              // tentativa de arrumar o empate
              //  if (l = 9) and (ganhador=' ') then
              // if (xy[1] <> 'X') and (xy[1] <> '0') and (xy[2] <> 'X') and (xy[2] <> '0') and (xy[3] <> 'X') and (xy[3] <> '0') and (xy[4] <> 'X') and (xy[4] <> '0') and (xy[5] <> 'X') and (xy[5] <> '0') and (xy[6] <> 'X') and (xy[6] <> '0') and (xy[7] <> 'X') and (xy[7] <> '0') and (xy[8] <> 'X') and (xy[8] <> '0') and (xy[9] <> 'X') and (xy[9] <> '0')  and (ganhador= ' ') then
              
              if (ganhador=' ') and (xy[1] <> '1') and (xy[2] <> '2') and (xy[3] <> '3') and (xy[4] <> '4') and (xy[5] <> '5') and (xy[6] <> '6') and (xy[7] <> '7') and (xy[8] <> '8') and (xy[9] <> '9') then
              begin
                tabuleiro;
                writeln('  Deu velha.');
                win := true;
              end;
              
              //Imprime empate na tela
              
              
              //Imprime Vencedor na tela
              
              if ganhador <> ' ' then
              begin
                tabuleiro;
                if ( ganhador='X' ) then
                begin
                  write('  Parabéns ',jogador[1],' venceu!');
                end
                else
                begin
                  write('  Parabéns ',jogador[2],' venceu!');
                end;
                win := true;
                
              end;
              
              //Imprime Vencedor na tela
              
            end;
            
            begin
              
              pFeitas[1]:='';
              pFeitas[2]:='';
              pFeitas[3]:='';
              pFeitas[4]:='';
              pFeitas[5]:='';
              pFeitas[6]:='';
              pFeitas[7]:='';
              pFeitas[8]:='';
              pFeitas[9]:='';
              pFeitas[10]:='';
              pFeitas[11]:='';
              pFeitas[12]:='';
              pFeitas[13]:='';
              pFeitas[14]:='';
              pFeitas[15]:='';
              pFeitas[16]:='';
              pFeitas[17]:='';
              pFeitas[18]:='';
              pFeitas[19]:='';
              pFeitas[20]:='';
              
              clrscr;
              
              ganhador:= ' ';
              
              //Popula tabuleiro com string de 1~9 usando tabela asc 49=1 ...
              
              for i:=1 to 9 do
              begin
                xy[i]:=chr(i+48);
              end;
              
              //Popula tabuleiro com string de 1~9 usando tabela asc 49=1 ...
              
              win:= false;
              vez:='O';
              i:=0;
              while win <> true do
              begin
                inc(i);//incrementa o i = i:=i+1;
                
                //Controla Vez
                
                if vez = 'X' then
                begin
                  vez := 'O'
                end
                else
                begin
                  vez := 'X';
                end;
                
                //Controla Vez
                
                tabuleiro;
                jogada:=0;
                while (jogada = 0) and (win <> true) do
                begin
                  valeu:=false;
                  repeat
                    
                    //Controla Jogador
                    
                    if ( vez='X' ) then
                    begin
                      writeln;
                      write('  ',jogador[1],'  (',vez,'): ')
                    end
                    else
                    begin
                      writeln;
                      write('  ',jogador[2],'  (',vez,'): ');
                    end;
                    
                    //Controla Jogador
                    
                    readln(jogada) ;
                    
                    //Testa se a joga pode ser realizada
                    
                    if (jogada>= 1) and (jogada<=9 ) and (xy[jogada]=chr(jogada+48) ) then
                    begin
                      valeu:=true;
                    end
                    else
                    begin
                      clrscr ;
                      tabuleiro; //caso a joga nao possa ser realizada limpa tela e chama novamente o tabuleiro
                    end;
                  until(valeu=true);
                  
                  //Testa se a joga pode ser realizada
                  
                  pergunta;
                  
                  if certoerrado=true then
                  Begin
                    
                    if jogada = 0 then
                    begin
                      win:=true;
                    end;
                    
                    if (xy[jogada] = chr(jogada+48)) then
                    begin
                      xy[jogada]:=vez;
                    end
                    else
                    begin
                      jogada:=0;
                    end;
                    
                  End;
                  
                end;
                teste;
              end;
              writeln;
              writeln;
              i:=0; // ZERA E RE-VALIDA OP_VOLTAR
              
              
              
              
              writeln('  <J> - Jogar novamente <M> - Voltar ao menu - Sair');
              writeln;
              while i<1 do
              Begin
                
                
                op_voltar:=readkey;
                op_voltar:=upcase(op_voltar);
                  
                  
                  case op_voltar of
                    
                    'M' : Begin
                      i:=1;
                      menu;
                    End;
                    
                    'J' : Begin
                      i:=1;
                      jogo;
                      
                    End;
                    
                    
                    'S' : Begin
                      i:=1;
                      writeln('  Pressione <ENTER> para sair');
                      
                    End;  // FIM CASE
                      
                    End;  // FIM WHILE
                    
                    
                  end;
                  
                end;  // FIM JOGO
                
                  procedure voltar_menu;
                  
                  Begin
                    
                    i:=0; // ZERA E RE-VALIDA OP_VOLTAR
                    
                    gotoxy(29, 24);
                    writeln(#254 ,' Pressione <M>enu ou <J>ogar');
                    gotoxy(29,25);
                    
                    while i<1 do
                    Begin
                      
                      op_voltar:=readkey;
                      op_voltar:=upcase(op_voltar);
                        
                        
                        case op_voltar of
                          
                          'M' : Begin
                            i:=1;
                            menu;
                          End;
                          
                          'J' : Begin
                            i:=1;
                            jogo;
                          End;
                          
                        End;  // FIM CASE
                          
                        End;  // FIM WHILE
                        
                      End;    // FIM VOLTAR_MENU
                      
                      Begin
                        
                        
                        
                        clrscr;
                        
                        
                        
                        gotoxy(28,3);
                        writeln(#178 ,' VELHA EDUCATIVA // MENU');
                        gotoxy(22,4);
                        writeln(#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196);
                        
                        
                        for i:=5 to 76 do
                        Begin
                          gotoxy(i,08);
                          write(#250);
                        End;
                        
                        for i:=5 to 76 do
                        Begin
                          gotoxy(i,12);
                          write(#250);
                        End;
                        
                        for i:=5 to 76 do
                        Begin
                          gotoxy(i,16);
                          write(#250);
                        End;
                        
                        for i:=5 to 76 do
                        Begin
                          gotoxy(i,20);
                          write(#250);
                        End;
                        
                        for i:=09 to 15 do
                        Begin
                          gotoxy(41,i);
                          write(#250);
                        End;
                    
                    
                        gotoxy(18,10);
                        write('(1) - JOGAR');
                        gotoxy(52,10);
                        write('(2) - INSTRUÇÕES');
                        
                        
                        gotoxy(11,14);
                        write('(3) - MATERIAL DE ESTUDO');
                        
                        
                        gotoxy(49,14);
                        write('(4) - MUDAR JOGADORES');
                        
                        gotoxy(35,18);
                        write('(5) - SAIR');
                        
                        
                        i:=0;  //  ZERA J PARA VALIDAR O MENU VARIAS VEZES
                        op_menu:=' ';
                        
                        
                        while i<1 do
                        Begin
                          
                          op_menu:=readkey;
                          op_menu:=upcase(op_menu);
                          
                          case op_menu of     // OPÇÃO MENU
                            '1' : Begin  // INICIAR
                              
                              i:=1; // ENCERRA WHILE
                              
                              clrscr;
                              
                              JOGO;    // EXECUTA O JOGO
                              
                              
                            End;  // FIM INICIAR
                            
                            '2' : BEGIN // INSTRUÇÕES
                              
                              i:=1; // ENCERRA WHILE
                              
                              clrscr;
                              
                              
                              gotoxy(25,3);
                              writeln(#178 ,' VELHA EDUCATIVA // INSTRUÇÕES');
                              gotoxy(22,4);
                              writeln(#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196,#196);
                              
                              
                              
                              gotoxy(2, 7);
                              writeln(#176, '  Duas pessoas jogam.');
                              gotoxy(2, 9);
                              writeln(#176, '  Um jogador joga com o círculo (O) e outro com os xis (X).');
                              gotoxy(2, 11);
                              writeln(#176 ,'  Cada  jogador, na sua vez, escolhe uma lacuna que esteja vazia.');
                              gotoxy(2, 13);
                              writeln(#176 ,'  Caso o jogador responda corretamente a pergunta da lacuna escolhida,');
                              gotoxy(5, 14);
                              writeln('a mesma é marcada a seu favor. ');
                              gotoxy(2, 16);
                              writeln(#176, '  O primeiro a fazer uma sequencia de tres simbolos iguais,');
                              gotoxy(5, 17);
                              writeln('seja em uma linha, coluna ou diagonal vence.');
                              gotoxy(2, 19);
                              writeln(#176 ,'  Se nenhum dos dois jogadores fizerem uma sequência valida');
                              gotoxy(5, 20);
                              writeln('da empate, ou seja, velha.');
                                                
                              voltar_menu;
                              
                            END; // FIM INSTRUÇÕES
                            
                            '3' : BEGIN // MATERIAL DE ESTUDO
                              
                              i:=1; // ENCERRA WHILE
                              clrscr;
                              
                              
                              gotoxy(28,3);
                              writeln('      MATERIAL DE ESTUDO     ');
                              
                              gotoxy(4, 7);
                              writeln('A água substância mais abundante nos seres vivos.');
                              gotoxy(4, 9);
                              writeln('Sua proporção varia conforme sua espécie, tecido, idade e sexo.');
                              gotoxy(4, 11);
                              writeln('Ela e responsável pelo metabolismo, regulador térmico, ');
                              gotoxy(4, 12);
                              writeln('solvente e formação de líquidos corporais.');
                              gotoxy(4, 15);
                              writeln('Os sais minerais são essenciais em pequenas concentrações.');
                              gotoxy(4, 17);
                              writeln('Existe a forma molecular, presente em estrutura e a iônica,');
                              gotoxy(4, 18);
                              writeln('que são elementos que apresentam carga elétrica.');
                         
                              
                              REPEAT
                                enter:=' ';
                                gotoxy(4,23);
                                writeln('PRESSIONE <ENTER> PARA CONTINUAR');
                                gotoxy(4,24);;
                                enter := readkey;
                                
                              UNTIL enter = #13;
                              
                              clrscr;
                              
                              gotoxy(28,3);
                              writeln('      MATERIAL DE ESTUDO     ');
                              
                              
                              gotoxy(4, 6);
                              writeln('Existem vários sais minerais, tais como:');
                              
                              gotoxy(4, 9);
                              writeln('O cálcio atua na formação de ossos e dentes, coagulação sanguínea e na');
                              gotoxy(4, 10);
                              writeln('contração muscular.');
                              gotoxy(4, 11);
                              writeln(' Exemplos: queijo, leite, cereais integrais.');
                              
                              gotoxy(4, 13);
                              writeln('O Fósforo atua na formação de ossos e dentes, dos ácidos nucleicos');
                              gotoxy(4, 14);
                              writeln('e das moléculas energéticas.');
                              
                              
                              gotoxy(4, 16);
                              writeln('O Ferro é indispensável na formação da hemoglobina.');
                              gotoxy(4, 17);
                              writeln(' Exemplos: fígado, feijão, beterraba.');
                              
                              gotoxy(4, 19);
                              writeln('O Iodo atua na formação dos hormônios da glândula tireóidea.');
                              gotoxy(4, 20);
                              writeln('Adicionado ao sal de cozinha.');
                              
                              
                              REPEAT
                                enter:=' ';
                                gotoxy(4,23);
                                writeln('PRESSIONE <ENTER> PARA CONTINUAR');
                                gotoxy(4,24);;
                                enter := readkey;
                                
                              UNTIL enter = #13;
                              
                              clrscr;
                              
                              
                              gotoxy(28,3);
                              writeln('      MATERIAL DE ESTUDO     ');
                              
                                                          
                              gotoxy(4, 6);
                              writeln('O Magnésio atua no relaxamento muscular e na formação de ossos e dentes.');
                              
                              
                              gotoxy(4,8);
                              writeln('O Potássio e o sódio determinaram a passagem de impulsos nervosos,');
                              gotoxy(4,9);
                              writeln('a contração muscular e o equilíbrio hídrico da célula.');
                              
                              gotoxy(4,11);
                              writeln('O Cloro atua no equilíbrio hídrico da célula.');
                              
                              gotoxy(4,13);
                              writeln('O Flúor atua na formação óssea e dentária.');
                              
                              gotoxy(4,15);
                              writeln('Os carboidratos são produzidos pela fotossíntese');
                              gotoxy(4,17);
                              writeln('CO2+H2O luz alimento O2CH2O -> fórmula geral.');
                              gotoxy(4,19);
                              writeln('Existem três grupos de carboidratos, são eles:');
                              
                              
                              REPEAT
                                enter:=' ';
                                gotoxy(4,23);
                                writeln('PRESSIONE <ENTER> PARA CONTINUAR');
                                gotoxy(4,24);;
                                enter := readkey;
                                
                              UNTIL enter = #13;
                              
                              clrscr;
                              
                              
                              gotoxy(28,3);
                              writeln('      MATERIAL DE ESTUDO     ');
                              
                              gotoxy(4, 6);
                              writeln('Monossacarídeos possuem uma molécula de açúcar.');
                              gotoxy(4,7);
                              writeln(' Exemplo: Glicose, Frutose, Galactose.');
                              
                              gotoxy(4, 9);
                              writeln('Dissacarídeos é a união de 2 monossacarídeos.');
                              gotoxy(4,10);
                              writeln(' Exemplo: Sacarose, Lactose, Maltose.');
                              
                              gotoxy(4, 12);
                              writeln('Polissacarídeos é  a união de vários monossacarídeos.');
                              gotoxy(4,13);
                              writeln(' Exemplo: Amido, Celulose, Quitina.');
                              
                              
                              voltar_menu;
                              
                              
                            END; // FIM MATERIAL DE ESTUDO
          
                            
                            
                            '4' : BEGIN   // JOGADORES
                              
                              jogadores;
                              
                              menu;
                              
                              i:=1; // ENCERRA WHILE
                              
                              clrscr;
                              
                              
                            END;   // JOGADORES
                        
                              
					   '5' : Begin
                              
                              gotoxy(27,22);
                              writeln('Pressione <ENTER> para sair.');
                              
                              i:=1;
                              
                            end;
                            
                            
                          End;  // FIM CASE OPÇÃO MENU
                            
                          End; // FIM WHILE
                          
                        End;   // FIM MENU
                        
                        
                        // MENUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
                        
                        
                          procedure logcad;
                          
                          Begin
                            
                            
                            telalogincadastro;
                            
                            
                            
                            gotoxy(20,7);
                            writeln('Pressione <L> para login ou <C> para cadastro');
                            
                            
                            gotoxy(7,11);
                            write(#254 ,' LOGIN');
                            gotoxy(7,13);
                            write('Usúario: ');
                            gotoxy(7,15);
                            write('Senha: ');
                            gotoxy(7,19);
                            write('<ENTER> para continuar');
                            
                            
                            
                            gotoxy(39,11);
                            write(#254 ,' CADASTRO');
                            gotoxy(39,13);
                            write('Usúario: ');
                            gotoxy(39,15);
                            write('Senha: ');
                            gotoxy(39,17);
                            write('Confirmação de senha: ');
                            gotoxy(39,19);
                            write('<ENTER> para continuar');
                            
                            gotoxy(65,7);
                            i:=0;
                            
                            
                            while i<1 do
                            Begin
                              
                              
                              op_login:=readkey;
                              op_login:=upcase(op_login);
                                
                                case op_login of     // OPÇÃO LOGIN
                                  
                                  'L' : Begin  // LOGIN
                                    
                                    i:=1; // ENCERRA WHILE
                                    gotoxy(16, 13);
                                    read(user);
                                    gotoxy(16, 15);
                                    read(pass);
                                    
                                    while (user<>usuario) or (senha<>pass) do
                                    Begin
                                      
                                      clrscr;
                                      gotoxy(12,23);
                                      textcolor(red);
                                      writeln('Usúario ou senha incorretos, seleciona uma opção novamente.');
                                      textcolor(0);
                                      logcad;
                                      
                                    End;   // FIM WHILE USUARIO E SENHA
                                    
                                    jogadores;
                                    
                                    menu;
                                    
                                    
                                  End;  // FIM LOGIN
                                  
                                  'C' : BEGIN // OPÇÃO CADASTRO
                                    
                                    i:=1; // ENCERRA WHILE
                                    gotoxy(48, 13);
                                    read(user);
                                    gotoxy(46, 15);
                                    read(pass);
                                    gotoxy(61, 17);
                                    read(r_pass);
                                    
                                    while (pass<>r_pass) do
                                    Begin
                                      
                                      clrscr;
                                      telalogincadastro;
                                      
                                      textcolor(red);
                                      gotoxy(8,14);
                                      write('AS SENHAS NÃO CONHECIDEM');
                                      gotoxy(13,16);
                                      write('TENTE NOVAMENTE');
                                      textcolor(0);
                                      
                                      gotoxy(39,11);
                                      write(#254 ,' CADASTRO');
                                      gotoxy(39,13);
                                      write('Senha: ');
                                      gotoxy(39,15);
                                      write('Confirmação de Senha: ');
                                      gotoxy(39,19);
                                      write('<ENTER> para continuar');
                                      gotoxy(46, 13);
                                      read(pass);
                                      gotoxy(61, 15);
                                      read(r_pass);
                                      
                                      
                                    End;  // FIM WHILE SENHAS IGUAIS
                                    
                                    usuario:=user;
                                    senha:=pass;
                                    
                                    clrscr;
                                    telalogincadastro;
                                    
                                    textcolor(blue);
                                    gotoxy(11,14);
                                    write('CADASTRO CONCLUIDO');
                                    gotoxy(13,16);
                                    write('FAÇA SEU LOGIN');
                                    textcolor(0);
                                    
                                    gotoxy(39,11);
                                    write(#254 ,' LOGIN');
                                    gotoxy(39,13);
                                    write('Usúario: ');
                                    gotoxy(39,15);
                                    write('Senha: ');
                                    gotoxy(39,19);
                                    write('<ENTER> para continuar');
                                    gotoxy(48, 13);
                                    read(user);
                                    gotoxy(48, 15);
                                    read(pass);
                                    
                                    
                                    while (user<>usuario) or (pass<>senha) do
                                    Begin
                                      
                                      clrscr;
                                      telalogincadastro;
                                      
                                      textcolor(red);
                                      gotoxy(8,14);
                                      write('USÚARIO OU SENHA INCORETOS');
                                      gotoxy(13,16);
                                      write('TENTE NOVAMENTE');
                                      textcolor(0);
                                      
                                      gotoxy(39,11);
                                      write(#254 ,' LOGIN');
                                      gotoxy(39,13);
                                      write('Usúario: ');
                                      gotoxy(39,15);
                                      write('Senha: ');
                                      gotoxy(39,19);
                                      write('<ENTER> para continuar');
                                      gotoxy(48, 13);
                                      read(user);
                                      gotoxy(48, 15);
                                      read(pass);
                                      
                                      
                                      
                                    End;   // FIM WHILE USUARIO E SENHA
                                    
                                    jogadores;
                                    
                                    menu;
                                    
                                  End; //  FIM CADASTRO
                                  
                                  
                                End;
                                
                              End;
                                                            
                              
                              End; // FIM PROCEDURE
                              

                              Begin
                                
                                usuario:='admin';
                                senha:='admin';
                                
                                
                                textbackground(white);
                                
                                clrscr;
                                  
                                perguntas[1,1]:='  Qual a função dos cerídeos:';
                                perguntas[1,2]:='  A - Dar pigmento (vermelho e laranja).';
                                perguntas[1,3]:='  B - Permitir reações químicas.';
                                perguntas[1,4]:='  C - São proteínas catalizadoras.';
                                perguntas[1,5]:='  D - É um impermeabilizante (folhas e frutos).';
                                perguntas[1,6]:='D';
                                
                                perguntas[2,1]:='  Qual das alternativas abaixo é fonte de Iodo:';
                              perguntas[2,2]:='  A - Amendoim.';
                              perguntas[2,3]:='  B - Alho.';
                              perguntas[2,4]:='  C - Algas.';
                              perguntas[2,5]:='  D - Aveias.';
                              perguntas[2,6]:='B';
                              
                              perguntas[3,1]:='  Qual a função do cloro:';
                              perguntas[3,2]:='  A - Atua no equilíbrio hídrico da célula.';
                              perguntas[3,3]:='  B - Atua na formação de ossos e dentes.';
                              perguntas[3,4]:='  C - Entra em constituição com a membrana.';
                              perguntas[3,5]:='  D - Atua na coagulação sanguínea.';
                              perguntas[3,6]:='A';
                              
                              perguntas[4,1]:='  Qual a consequência da carência de ferro:';
                              perguntas[4,2]:='  A - Deformação nos ossos.';
                              perguntas[4,3]:='  B - Extrema sensibilidade ao calor.';
                              perguntas[4,4]:='  C - Fraqueza/palidez.';
                              perguntas[4,5]:='  D - Distúrbio do sistema nervoso.';
                              perguntas[4,6]:='C';
                              
                              perguntas[5,1]:='  Diversos íons atuam em nosso corpo, entre eles está o cálcio, que:';
                              perguntas[5,2]:='  A - Atua na formação de ossos e dentes.';
                              perguntas[5,3]:='  B - Está presente na composição de hormônios da tireoide.';
                              perguntas[5,4]:='  C - Atua na digestão.';
                              perguntas[5,5]:='  D - É um componente extremamente importante das hemácias.';
                              perguntas[5,6]:='A';
                              
                              perguntas[6,1]:='  Quais são as propriedades em comum dos lipídeos:';
                              perguntas[6,2]:='  A - Moléculas formadas por aminoácidos.';
                              perguntas[6,3]:='  B - Produzidos através da fotossíntese.';
                              perguntas[6,4]:='  C - Substancia mais abundante nos seres vivos.';
                              perguntas[6,5]:='  D - Insalubridade em agua.';
                              perguntas[6,6]:='D';
                              
                              perguntas[7,1]:='  A água é importante para o ser humano, exceto para:';
                              perguntas[7,2]:='  A - Metabolismo.';
                              perguntas[7,3]:='  B - Solvente.';
                              perguntas[7,4]:='  C - Regulador térmico.';
                              perguntas[7,5]:='  D - Fornecer energia.';
                              perguntas[7,6]:='D';
                              
                              perguntas[8,1]:='  Os carboidratos podem ser chamados exceto de:';
                              perguntas[8,2]:='  A - Glicídio.';
                              perguntas[8,3]:='  B - Açúcar.';
                              perguntas[8,4]:='  C - Carbonato.';
                              perguntas[8,5]:='  D - Hidrato de carbono.';
                              perguntas[8,6]:='C';
                              
                              perguntas[9,1]:='  Quais das opções abaixo não é um monossacarídeo:';
                              perguntas[9,2]:='  A - Maltose.';
                              perguntas[9,3]:='  B - Frutose.';
                              perguntas[9,4]:='  C - Galactose.';
                              perguntas[9,5]:='  D - Sacarose.';
                              perguntas[9,6]:='A';
                              
                              perguntas[10,1]:='  A sacarose se da pela junção de:';
                              perguntas[10,2]:='  A - Glicose + sacaritina.';
                              perguntas[10,3]:='  B - Glicose + glicose.';
                              perguntas[10,4]:='  C - Glicose + frutose.';
                              perguntas[10,5]:='  D - Glicose + galactose.';
                              perguntas[10,6]:='C';
                              
                              perguntas[11,1]:='  Quais moléculas formam as proteínas:';
                              perguntas[11,2]:='  A - Moléculas de aminoácidos.';
                              perguntas[11,3]:='  B - Moléculas de glicose.';
                              perguntas[11,4]:='  C - Moléculas de polissacarídeos.';
                              perguntas[11,5]:='  D - Moléculas de quitina.';
                              perguntas[11,6]:='A';
                              
                              perguntas[12,1]:='  Quimicamente, o colágeno pertence ao grupo de:';
                              perguntas[12,2]:='  A - Proteínas.';
                              perguntas[12,3]:='  B - Carboidratos.';
                              perguntas[12,4]:='  C - Lipídeos.';
                              perguntas[12,5]:='  D - Glicídeos.';
                              perguntas[12,6]:='A';
                              
                              perguntas[13,1]:='  São funções das proteínas exceto:';
                              perguntas[13,2]:='  A - Energética.';
                              perguntas[13,3]:='  B - Genética.';
                              perguntas[13,4]:='  C - Imunitária.';
                              perguntas[13,5]:='  D - Enzimática.';
                              perguntas[13,6]:='B';
                              
                              perguntas[14,1]:='  São alimentos ricos em proteínas:';
                              perguntas[14,2]:='  A - Leite, ovo e farinha de milho.';
                              perguntas[14,3]:='  B - Leite, carne e mandioca.';
                              perguntas[14,4]:='  C - Leite, carne e soja.';
                              perguntas[14,5]:='  D - Leite, café e banana.';
                              perguntas[14,6]:='C';
                              
                              perguntas[15,1]:='  Os aminoácidos essenciais são os aminoácidos que:';
                              perguntas[15,2]:='  A - É indispensável ao metabolismo energético.';
                              perguntas[15,3]:='  B - Só existe em determinados vegetais.';
                              perguntas[15,4]:='  C - É sintetizado em qualquer organismo animal.';
                              perguntas[15,5]:='  D - Não é sintetizado no organismo humano.';
                              perguntas[15,6]:='D';
                              
                              perguntas[16,1]:='  A mandioca, a batata e o trigo possuem grande quantidade de:';
                              perguntas[16,2]:='  A - Glicogênio.';
                              perguntas[16,3]:='  B - Maltose.';
                              perguntas[16,4]:='  C - Amido.';
                              perguntas[16,5]:='  D - Galactose.';
                              perguntas[16,6]:='C';
                              
                              perguntas[17,1]:='  A carapaça que envolve e protege o corpo de um camarão é formada por:';
                              perguntas[17,2]:='  A - Amido.';
                              perguntas[17,3]:='  B - Quitina.';
                              perguntas[17,4]:='  C - Sacarose.';
                              perguntas[17,5]:='  D - Celulose.';
                              perguntas[17,6]:='B';
                              
                              perguntas[18,1]:='  O quê é uma ligação peptídica:';
                              perguntas[18,2]:='  A - Junção de dois ou mais sais minerais.';
                              perguntas[18,3]:='  B - Grupo de carboidratos.';
                              perguntas[18,4]:='  C - Relação enzimatica.';
                              perguntas[18,5]:='  D - União entre dois aminoacidos.';
                              perguntas[18,6]:='D';
                              
                              perguntas[19,1]:='  Carboidratos que possuem função energética:';
                              perguntas[19,2]:='  A - Polissacarídes e Dissacarídeos.';
                              perguntas[19,3]:='  B - Monossacarídeos e Dissacarídeos.';
                              perguntas[19,4]:='  C - Monossacarídeos e Polissacarídeos.';
                              perguntas[19,5]:='  D - Monossacarídeos, Dissacarídeos e Polissacarídeos.';
                              perguntas[19,6]:='B';
                              
                              perguntas[20,1]:='  De qual maneira os carboidratos são formados:';
                              perguntas[20,2]:='  A - Biossíntese.';
                              perguntas[20,3]:='  B - Pela injestão de proteínas.';
                              perguntas[20,4]:='  C - Fotossíntese.';
                              perguntas[20,5]:='  D - Formação de aminoácidos.';
                              perguntas[20,6]:='C';
                              
                              
                              textcolor(9); // AZUL
                              writeln;
                              writeln;
                              writeln('   -');
                              writeln('   ---');
                              writeln('   -------');
                              writeln('   ----------');
                              writeln('   -------------');
                              writeln('   ---------------');
                              writeln('   ---------------');
                              writeln('   ---------------');
                              writeln('   ---------------');
                              writeln('   ---------------');
                              writeln('   ---------------');
                              writeln('   ---------------');
                              writeln('      ------------');
                              writeln('        ----------');
                              writeln('           -------');
                              writeln('               ---');
                              writeln('                 -');
                              
                              
                              textcolor(0);
                              
                              writeln;
                              writeln;
                              writeln;
                              writeln('            ETEP FACULADADES');
                              
                              textcolor(12);      // 'LARANJA'
                              
                              gotoxy(20, 5);
                              writeln('              -');
                              gotoxy(20, 6);
                              writeln('            ---');
                              gotoxy(20, 7);
                              writeln('        -------');
                              gotoxy(20, 8);
                              writeln('     ----------');
                              gotoxy(20, 9);
                              writeln('  -------------');
                              gotoxy(20, 10);
                              writeln('---------------');
                              gotoxy(20, 11);
                              writeln('---------------');
                              gotoxy(20, 12);
                              writeln('---------------');
                              gotoxy(20, 13);
                              writeln('---------------');
                              gotoxy(20, 14);
                              writeln('---------------');
                              gotoxy(20, 15);
                              writeln('---------------');
                              gotoxy(20, 16);
                              writeln('---------------');
                              gotoxy(20, 17);
                              writeln('-------------  ');
                              gotoxy(20, 18);
                              writeln('----------     ');
                              gotoxy(20, 19);
                              writeln('-------        ');
                              gotoxy(20, 20);
                              writeln('---            ');
                              gotoxy(20, 21);
                              writeln('-              ');
                              
                              
                              textcolor(0);
                              
                              gotoxy(43,10);
                              writeln('BIOLOGIA // PRIMEIRO SEMESTRE');
                              
                              REPEAT
                                
                                gotoxy(41,14);
                                writeln('PRESSIONE <ENTER> PARA CONTINUAR');
                                gotoxy(41,15);;
                                enter := readkey;
                                
                              UNTIL enter = #13;
                              
                              clrscr;
                              
                              // FIM TELA LOGIN
                                                         
                              logcad;
                              
                            End.
