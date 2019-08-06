program farmacia;
uses crt;

type arquivo = record
             rua, nome: string[40];
             cep, cpf, rg, id: string[15];
             sexo, estado, cidade: string[2];
             numero: integer;
             end;


 var reg: arquivo;
 i, op, op3: integer;
 arq: file of arquivo;
 nm, ind, principio: string;
 rem: real;
 cont: char;

 procedure cadastro();
 begin
 textcolor (30);
 clrscr;
 assign(arq,'teste.bin');
 reset(arq);
 seek(arq, filesize(arq));
 cont:= 's';

 while (cont = 's') and (filesize(arq) <50) do
 begin
 writeln('Cadastro do Cliente');
 writeln('Registro n¯: ', filesize(arq) + 1);
 writeln('Entre com seu nome:');
 readln(reg.nome);
 writeln('Sexo:');
 readln(reg.sexo);
 writeln('Idade:');
 readln(reg.id);
 writeln('Digite seu CPF:');
 readln(reg.cpf);
 writeln('RG:');
 readln(reg.rg);
 writeln('Endereáo:');
 readln(reg.rua);
 writeln('Numero da Casa:');
 readln(reg.numero);
 writeln('CEP:');
 readln(reg.cep);
 writeln('Cidade:');
 readln(reg.cidade);
 writeln('Estado:');
 readln(reg.estado);

 write(arq,reg);
 writeln('Vocà deseja fazer um novo cadastro? (S/N) ');
 readln(cont);
 if (filesize(arq) >50 ) then
 begin
 writeln('Vocà atingiu o limite de cadastro!');
 break;
 readkey;
 end;
end;
 close(arq);
 writeln;
 writeln;

 textcolor(12);
 writeln('Use o CPF para desconto de 10% em compras futuras.');

 readkey;
 end;

 procedure consulta();
 var nm: string [20];
 i : integer;
 fab,cat,tipo, receita, dosagem: string;
 begin
 i := 0;
  while (i<=10) do
 begin
 clrscr;
 textcolor(10);
 gotoxy(1,1);
 writeln('_____________________________________');
 writeln('### CONSULTAS: FARMµCIA M1L GR4U ###');
 writeln('_____________________________________');
 writeln;
 textcolor(12);
 writeln('Entre com uma opá∆o  [  ]');
 writeln;
 writeln('1 - Consulta por medicamento.');
 writeln('2 - Consulta de cadastro.');
 writeln('3 - Consulta por preáo.');
 writeln('4 - Consultar medicaá∆o por indicaá∆o.');
 writeln('5 - Consulta por Principio ativo.');
 writeln('6 - Consulta por fabricante');
 writeln('7 - Consulta por categoria de remÇdio');
 writeln('8 - Consulta por tipo de remÇdio');
 writeln('9 - Consulta por receita mÇdica');
 writeln('10 - Consulta por dosagem de medicamento');
 writeln;
 writeln(' Aperte qualquer n£mero acima de 10 para voltar ao menu anterior...');
 writeln('______________________________________');
 textbackground(80);
 gotoxy(23,5);
 readln(i);
 clrscr;


 if (i=1) then
 begin
  writeln(' ### Consulta de medicamento ###');
 writeln('Nome do medicamento:');
 readln(nm);

 if (nm = 'paracetamol') then
 begin
 textcolor(11);
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Febre;');
 writeln('Dor de cabeáa;');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dor nas costas');
 textcolor(12);
 writeln;
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Paracetamol');
 writeln;
 writeln('Fabricante: EMS');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln('Dosagem: 500 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 writeln;
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('1,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end;

 if (nm = 'dipirona') then
 begin
 textcolor(11);
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dor de cabeáa');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 writeln;
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Dipirona');
 writeln;
 writeln('Fabricante: Sobral');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
 writeln;
 writeln('Dosagem: 1 ml = 20 gotas');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('1,50');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end;


 if (nm = 'advil') then
 begin
 textcolor(11);
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dores musculares');
 writeln('Dor de cabeáa');
 writeln('C¢lica menstrual');
 writeln('Dor de dente');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 writeln('A dor apresente piora, ou persista mais por mais de 3 dias');
 writeln('Menores de 12 anos e mulheres gravidas ');
 writeln;
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Ibuprofeno');
 writeln;
  writeln('Fabricante: pfizer');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: referància');
 writeln;
 writeln('Dosagem: 400 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('2,00');

 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');

 readkey;
 end;

  if (nm = 'amoxilina') then
 begin
 textcolor(11);
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Amigdalite;');
 writeln('Sinusites;');
 writeln('Infecá‰es respirat¢rias;');
 writeln('Pneumonia');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Hipersensibilidade Ös penicilinas;');
 writeln('Infecá‰es por estafilococus;');
 writeln;
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('amoxicilina');
 writeln;
  writeln('Fabricante: Medley');
 writeln;
 writeln('Categoria:');
 writeln('Antibi¢tico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 250 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Necessita de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('9,00');
 readln(rem);
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end;

  if (nm = 'polaramine') then
 begin
 textcolor(11);
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Tratamento de alergias');
 writeln('Asma');
 writeln('Bronquite');
 writeln('Rinite alÇrgica');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Crianáas com menos de 2 anos;');
 writeln('Durante a gravidez e amamentaá∆o;');
 writeln('Pacientes em tratamento de hipertens∆o grave.');
 writeln;
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Maleato de dexclorfemiramina');
 writeln;
   writeln('Fabricante: Mantercorp');
 writeln;
 writeln('Categoria:');
 writeln('AntialÇrgico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 2 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('13,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');

 readkey;
 end;
end;


  if (i=2) then
  begin
   assign(arq, 'teste.bin');
   reset(arq);
   writeln(' ### Consulta de Cadastro ###');
   writeln('______________________________');
   writeln;
   writeln;
   while (not eof(arq)) do
   begin
   read(arq, reg);
   writeln(filepos(arq), ' . ', reg.nome, ' - ', reg.cpf);
end;
writeln;
  textcolor(19);
  write('Digite o numero do cadastro que vocà deseja consultar com detalhes: ');
  readln(op3);

  op3:= op3 - 1;
  seek(arq, op3);
  read(arq, reg);



   writeln;
textcolor(6);
writeln;
writeln('1. Nome: ' ,reg.nome);
writeln('2. Sexo: ' ,reg.sexo);
writeln('3. Idade: ',reg.id);
writeln('4. CPF: ',reg.cpf, ' 5. RG: ',reg.rg);
writeln('6. Endereáo: ', reg.rua, ' 7.Numero da casa: ',reg.numero);
writeln('8. CEP: ',reg.cep, ' 9. Cidade: ',reg.cidade, ' 10. Estado: ',reg.estado);

close(arq);


   readkey;
  end;

  if (i = 3) then
  begin
  clrscr;
  writeln(' ###  Consulta de preáo  ###');
  writeln('Digite um preáo: ');
 readln(rem);

   if (rem >=1.00)  then
   begin
  textcolor(11);
 writeln('dipirona');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dor de cabeáa');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Dipirona');
 writeln;
 writeln('Fabricante: Sobral');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 1 ml = 20 gotas');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('1,50');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 readkey;
 clrscr;
 writeln;
 textcolor(11);
 writeln('paracetamol');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Febre;');
 writeln('Dor de cabeáa;');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dor nas costas');
  textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Paracetamol');
 writeln;
  writeln;
 writeln('Fabricante: EMS');
 writeln;
  writeln('Dosagem: 500 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('1,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
  writeln;
  writeln;
  readkey;
  clrscr;
  textcolor(11);
 writeln('advil');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dores musculares');
 writeln('Enxaqueca');
 writeln('C¢lica menstrual');
 writeln('Dor de dente');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 writeln('A dor apresente piora, ou persista mais por mais de 3 dias');
 writeln('Menores de 12 anos e mulheres gravidas ');
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Ibuprofeno');
 writeln;
  writeln('Fabricante: pfizer');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 400 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('2,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 writeln;
 readkey;
 end
 else
 if (rem = 9.00) then
   begin
 textcolor(11);
 writeln('amoxilina');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Amigdalite;');
 writeln('Sinusites;');
 writeln('Infecá‰es respirat¢rias;');
 writeln('Pneumonia');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Hipersensibilidade Ös penicilinas;');
 writeln('Infecá‰es por estafilococus;');
 writeln;
 writeln('Principio ativo:');
 textcolor(7);
 writeln('amoxicilina');
 writeln;
   writeln('Fabricante: Medley');
 writeln;
 writeln('Categoria:');
 writeln('Antibi¢tico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
  writeln('Dosagem: 250 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Necessita de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('9,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end
else
 if (rem = 13.00) then
 begin
 textcolor(11);
 writeln('polaramine');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Tratamento de alergias');
 writeln('Asma');
 writeln('Bronquite');
 writeln('Rinite alÇrgica');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Crianáas com menos de 2 anos;');
 writeln('Durante a gravidez e amamentaá∆o;');
 writeln('Pacientes em tratamento de hipertens∆o grave.');
  writeln('Principio ativo:');
 textcolor(7);
 writeln('Maleato de dexclorfemiramina');
 writeln;
    writeln('Fabricante: Mantercorp');
 writeln;
 writeln('Categoria:');
  writeln;
 writeln('AntialÇrgico');
 writeln;
 writeln('Tipo: referància');
 writeln('Dosagem: 2 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('13,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end;
end;

 if (i = 4) then
 begin
 clrscr;
 writeln(' ### Consultar medicaá∆o por indicaá∆o ###');
 writeln('RemÇdio indicado para: ');
 readln(ind);

 if (ind = 'dor de cabeáa') then
 begin
  textcolor(11);
  writeln('dipirona');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dor de cabeáa');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Dipirona');
 writeln;
  writeln('Fabricante: Sobral');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 1 ml = 20 gotas');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('1,50');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 writeln;
 textcolor(11);
 writeln('advil');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dores musculares');
 writeln('Enxaqueca');
 writeln('C¢lica menstrual');
 writeln('Dor de dente');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 writeln('A dor apresente piora, ou persista mais por mais de 3 dias');
 writeln('Menores de 12 anos e mulheres gravidas ');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Ibuprofeno');
 writeln;
  writeln('Fabricante: pfizer');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 400 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('2,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 writeln;
 textcolor(11);
 writeln('paracetamol');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Febre;');
 writeln('Dor de cabeáa;');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dor nas costas');
  textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Paracetamol');
 writeln;
 writeln('Fabricante: EMS');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
 textcolor(12);
 writeln;
 writeln('Miligrama: 500 mg');
 writeln;
 writeln('Tipo de receita: ');
  writeln;
 writeln('Isento de prescriá∆o mÇdica.');
 writeln;
 writeln('VALOR R$: ');
 writeln('1,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end;

 if (ind = 'alergia') then
 begin
  textcolor(11);
 writeln('polaramine');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Tratamento de alergias');
 writeln('Asma');
 writeln('Bronquite');
 writeln('Rinite alÇrgica');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Crianáas com menos de 2 anos;');
 writeln('Durante a gravidez e amamentaá∆o;');
 writeln('Pacientes em tratamento de hipertens∆o grave.');
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Maleato de dexclorfemiramina');
 writeln;
    writeln('Fabricante: Mantercorp');
 writeln;
 writeln('Categoria:');
 writeln('AntialÇrgico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 2 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('13,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end;

 if (ind = 'amigdalite') then
 begin
 textcolor(11);
 writeln('amoxilina');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Amigdalite;');
 writeln('Sinusites;');
 writeln('Infecá‰es respirat¢rias;');
 writeln('Pneumonia');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Hipersensibilidade Ös penicilinas;');
 writeln('Infecá‰es por estafilococus;');
 writeln;
 writeln('Principio ativo:');
 textcolor(7);
 writeln('amoxicilina');
 writeln;
   writeln('Fabricante: Medley');
 writeln;
 writeln('Categoria:');

 writeln('Antibi¢tico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 250 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Necessita de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('9,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end;
 end;

 if (i = 5) then
 begin
 clrscr;
 writeln('### Consulta de medicaá∆o por principio ativo ###');
 writeln('Digite o principio ativo do remedio: ');
 readln(principio);

 if ( principio = 'paracetamol') then
 begin
 textcolor(11);
 writeln('paracetamol');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Febre;');
 writeln('Dor de cabeáa;');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dor nas costas');
  textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Paracetamol');
 writeln;
  writeln;
 writeln('Fabricante: EMS');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Miligrama: 500 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 writeln;
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('1,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end
else
 if (principio = 'dipirona') then
 begin
 textcolor(11);
  writeln('dipirona');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dor de cabeáa');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Dipirona');
 writeln;
  writeln('Fabricante: Sobral');
 writeln;
 writeln('Categoria:');
  writeln;
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
 writeln('Dosagem: 1 ml = 20 gotas');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('1,50');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 end
 else
 if (principio = 'ibuprofeno') then
 begin
 textcolor(11);
 writeln('advil');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dores musculares');
 writeln('Enxaqueca');
 writeln('C¢lica menstrual');
 writeln('Dor de dente');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 writeln('A dor apresente piora, ou persista mais por mais de 3 dias');
 writeln('Menores de 12 anos e mulheres gravidas ');
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Ibuprofeno');
 writeln;
  writeln('Fabricante: pfizer');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: referància');
  writeln;
  writeln('Dosagem: 400 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('2,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 end
 else
 if (principio = 'amoxilina') then
 begin
 textcolor(11);
 writeln('amoxilina');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Amigdalite;');
 writeln('Sinusites;');
 writeln('Infecá‰es respirat¢rias;');
 writeln('Pneumonia');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Hipersensibilidade Ös penicilinas;');
 writeln('Infecá‰es por estafilococus;');
 writeln;
 writeln('Principio ativo:');
 textcolor(7);
 writeln('amoxicilina');
 writeln;
   writeln('Fabricante: Medley');
 writeln;
 writeln('Categoria:');
 writeln('Antibi¢tico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 250 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Necessita de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('9,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end
 else
 if (principio = 'maleato de dexclorfemiramina') then
 begin
  textcolor(11);
 writeln('polaramine');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Tratamento de alergias');
 writeln('Asma');
 writeln('Bronquite');
 writeln('Rinite alÇrgica');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Crianáas com menos de 2 anos;');
 writeln('Durante a gravidez e amamentaá∆o;');
 writeln('Pacientes em tratamento de hipertens∆o grave.');
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Maleato de dexclorfemiramina');
 writeln;
 writeln('Fabricante: Mantercorp');
 writeln;
 writeln('Categoria:');
 writeln('AntialÇrgico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 2 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('13,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 end;
 end;


 if (i=6) then
 begin
 clrscr;
 writeln('### Consulta por fabricante ###');
 writeln;
 writeln('Digite o nome do fabricante:');
readln(fab);
if (fab= 'pfizer') then
begin
 textcolor(11);
 writeln('advil');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dores musculares');
 writeln('Enxaqueca');
 writeln('C¢lica menstrual');
 writeln('Dor de dente');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 writeln('A dor apresente piora, ou persista mais por mais de 3 dias');
 writeln('Menores de 12 anos e mulheres gravidas ');
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Ibuprofeno');
 writeln;
  writeln('Fabricante: pfizer');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 400 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('2,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 writeln;
 end
 else
 if (fab = 'ems') then
 begin
  textcolor(11);
 writeln('paracetamol');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Febre;');
 writeln('Dor de cabeáa;');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dor nas costas');
  textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Paracetamol');
 writeln;
 writeln('Fabricante: EMS');
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Miligrama: 500 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 writeln;
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('1,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end;



 if (fab = 'medley') then
  begin
  textcolor(11);
 writeln('amoxilina');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Amigdalite;');
 writeln('Sinusites;');
 writeln('Infecá‰es respirat¢rias;');
 writeln('Pneumonia');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Hipersensibilidade Ös penicilinas;');
 writeln('Infecá‰es por estafilococus;');
 writeln;
 writeln('Principio ativo:');
 textcolor(7);
 writeln('amoxicilina');
 writeln;
   writeln('Fabricante: Medley');
 writeln;
 writeln('Categoria:');
 writeln('Antibi¢tico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 250 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Necessita de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('9,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end;

 if (fab = 'mantercorp') then
 begin
  textcolor(11);
 writeln('polaramine');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Tratamento de alergias');
 writeln('Asma');
 writeln('Bronquite');
 writeln('Rinite alÇrgica');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Crianáas com menos de 2 anos;');
 writeln('Durante a gravidez e amamentaá∆o;');
 writeln('Pacientes em tratamento de hipertens∆o grave.');
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Maleato de dexclorfemiramina');
 writeln;
    writeln('Fabricante: Mantercorp');
 writeln;
 writeln('Categoria:');
 writeln('AntialÇrgico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 2 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('13,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 end
 else
 if (fab= 'sobral') then
 begin
  textcolor(11);
  writeln('dipirona');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dor de cabeáa');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Dipirona');
 writeln;
  writeln('Fabricante: Sobral');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 1 ml = 20 gotas');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('1,50');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 end;
 end;
 if ( i= 7) then
 begin
 writeln('### Consulta por categoria de remÇdio ###');
 writeln;
 writeln('Digite a categoria do remÇdio que deseja: ');
 readln(cat);
 if (cat = 'analgesico') then
 begin
  textcolor(11);
 writeln('dipirona');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dor de cabeáa');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Dipirona');
 writeln;
 writeln('Fabricante: Sobral');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 1 ml = 20 gotas');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('1,50');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 readkey;
 clrscr;
 textcolor(11);
 writeln('advil');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dores musculares');
 writeln('Enxaqueca');
 writeln('C¢lica menstrual');
 writeln('Dor de dente');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 writeln('A dor apresente piora, ou persista mais por mais de 3 dias');
 writeln('Menores de 12 anos e mulheres gravidas ');
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Ibuprofeno');
 writeln;
  writeln('Fabricante: pfizer');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 400 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('2,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 writeln;
 textcolor(11);
 writeln('paracetamol');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Febre;');
 writeln('Dor de cabeáa;');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dor nas costas');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Paracetamol');
 writeln;
 writeln;
 writeln('Fabricante: EMS');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 500 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 writeln;
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('1,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
  writeln;
  readkey;
  end
else
if (cat = 'antibiotico') then
   begin
 textcolor(11);
 writeln('amoxilina');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Amigdalite;');
 writeln('Sinusites;');
 writeln('Infecá‰es respirat¢rias;');
 writeln('Pneumonia');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Hipersensibilidade Ös penicilinas;');
 writeln('Infecá‰es por estafilococus;');
 writeln;
 writeln('Principio ativo:');
 textcolor(7);
 writeln('amoxicilina');
 writeln;
   writeln('Fabricante: Medley');
 writeln;
 writeln('Categoria:');
 writeln('Antibi¢tico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 250 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Necessita de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('9,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 readkey;
 end
else
 if (cat ='antialergico') then
 begin
 textcolor(11);
 writeln('polaramine');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Tratamento de alergias');
 writeln('Asma');
 writeln('Bronquite');
 writeln('Rinite alÇrgica');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Crianáas com menos de 2 anos;');
 writeln('Durante a gravidez e amamentaá∆o;');
 writeln('Pacientes em tratamento de hipertens∆o grave.');
  writeln('Principio ativo:');
 textcolor(7);
 writeln('Maleato de dexclorfemiramina');
 writeln;
    writeln('Fabricante: Mantercorp');
 writeln;
 writeln('Categoria:');
 writeln('AntialÇrgico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 2 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('13,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 readkey;
 end;
end;
  if( i=8) then
  begin
  writeln('### Consulta por tipo de remÇdio ###');
  writeln;
  writeln('Digite o tipo de remÇdio desejado: ');
  readln(tipo);
   if (tipo= 'referencia') then

   begin
    textcolor(11);
 writeln('polaramine');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Tratamento de alergias');
 writeln('Asma');
 writeln('Bronquite');
 writeln('Rinite alÇrgica');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Crianáas com menos de 2 anos;');
 writeln('Durante a gravidez e amamentaá∆o;');
 writeln('Pacientes em tratamento de hipertens∆o grave.');
  writeln('Principio ativo:');
 textcolor(7);
 writeln('Maleato de dexclorfemiramina');
 writeln;
    writeln('Fabricante: Mantercorp');
 writeln;
 writeln('Categoria:');
 writeln('AntialÇrgico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 2 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('13,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
  textcolor(11);
 writeln('advil');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dores musculares');
 writeln('Enxaqueca');
 writeln('C¢lica menstrual');
 writeln('Dor de dente');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 writeln('A dor apresente piora, ou persista mais por mais de 3 dias');
 writeln('Menores de 12 anos e mulheres gravidas ');
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Ibuprofeno');
 writeln;
  writeln('Fabricante: pfizer');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 400 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('2,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 end
 else
 if (tipo= 'generico') then
 begin
  textcolor(11);
 writeln('amoxilina');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Amigdalite;');
 writeln('Sinusites;');
 writeln('Infecá‰es respirat¢rias;');
 writeln('Pneumonia');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Hipersensibilidade Ös penicilinas;');
 writeln('Infecá‰es por estafilococus;');
 writeln;
 writeln('Principio ativo:');
 textcolor(7);
 writeln('amoxicilina');
 writeln;
   writeln('Fabricante: Medley');
 writeln;
 writeln('Categoria:');
 writeln('Antibi¢tico');
 writeln;
 writeln('Tipo: genÇrico');
 writeln;
 writeln('Dosagem: 250 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Necessita de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('9,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 readkey;
 clrscr;
 textcolor(11);
 writeln('dipirona');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dor de cabeáa');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Dipirona');
 writeln;
 writeln('Fabricante: Sobral');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 1 ml = 20 gotas');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('1,50');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 textcolor(11);
 writeln;
 writeln('paracetamol');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Febre;');
 writeln('Dor de cabeáa;');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dor nas costas');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Paracetamol');
 writeln;
 writeln;
 writeln('Fabricante: EMS');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
  writeln('Miligrama: 500 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 writeln;
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('1,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end;
 end;


  if (i = 9) then
 begin
 clrscr;
 writeln(' ### Consultar medicaá∆o por receita ###');
 writeln('O remedio necessita de receita? (sim/nao) ');
 readln(receita);
  if (receita = 'sim') then
  begin
  writeln;
  textcolor(11);
 writeln('amoxilina');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Amigdalite;');
 writeln('Sinusites;');
 writeln('Infecá‰es respirat¢rias;');
 writeln('Pneumonia');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Hipersensibilidade Ös penicilinas;');
 writeln('Infecá‰es por estafilococus;');
 writeln;
 writeln('Principio ativo:');
 textcolor(7);
 writeln('amoxicilina');
 writeln;
   writeln('Fabricante: Medley');
 writeln;
 writeln('Categoria:');
 writeln('Antibi¢tico');
 writeln;
 writeln('Tipo: genÇrico');
 writeln;
 writeln('Dosagem: 250 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Necessita de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('9,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 readkey;
 end;

 if (receita = 'nao') then
 begin
  textcolor(11);
  writeln('dipirona');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dor de cabeáa');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Dipirona');
 writeln;
  writeln('Fabricante: Sobral');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 1 ml = 20 gotas');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('1,50');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 writeln;
 readkey;
 clrscr;
 textcolor(11);
 writeln('advil');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dores musculares');
 writeln('Enxaqueca');
 writeln('C¢lica menstrual');
 writeln('Dor de dente');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 writeln('A dor apresente piora, ou persista mais por mais de 3 dias');
 writeln('Menores de 12 anos e mulheres gravidas ');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Ibuprofeno');
 writeln;
  writeln('Fabricante: pfizer');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 400 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('2,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 readkey;
 clrscr;
 textcolor(11);
 writeln('paracetamol');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Febre;');
 writeln('Dor de cabeáa;');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dor nas costas');
  textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Paracetamol');
 writeln;
 writeln('Fabricante: EMS');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
 textcolor(12);
 writeln;
 writeln('Dosagem: 500 mg');
 writeln;
 writeln('Tipo de receita: ');
  writeln;
 writeln('Isento de prescriá∆o mÇdica.');
 writeln;
 writeln('VALOR R$: ');
 writeln('1,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 writeln;
 readkey;
 clrscr;
  textcolor(11);
 writeln('polaramine');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Tratamento de alergias');
 writeln('Asma');
 writeln('Bronquite');
 writeln('Rinite alÇrgica');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Crianáas com menos de 2 anos;');
 writeln('Durante a gravidez e amamentaá∆o;');
 writeln('Pacientes em tratamento de hipertens∆o grave.');
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Maleato de dexclorfemiramina');
 writeln;
    writeln('Fabricante: Mantercorp');
 writeln;
 writeln('Categoria:');
 writeln('AntialÇrgico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 2 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('13,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end;
 end;
  if (i = 10 ) then
 begin
 clrscr;
  writeln(' ### Consultar por dosagem de medicamento ###');
 writeln('Qual a dosagem do medicamento? ');
 readln(dosagem);

 if (dosagem = '500') then
 begin
  textcolor(11);
 writeln('paracetamol');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Febre;');
 writeln('Dor de cabeáa;');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dor nas costas');
  textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Paracetamol');
 writeln;
 writeln('Fabricante: EMS');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
 textcolor(12);
 writeln;
 writeln('Dosagem: 500 mg');
 writeln;
 writeln('Tipo de receita: ');
  writeln;
 writeln('Isento de prescriá∆o mÇdica.');
 writeln;
 writeln('VALOR R$: ');
 writeln('1,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end
 else
 if (dosagem = '1' ) then
 begin
  textcolor(11);
  writeln('dipirona');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dor de cabeáa');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Dipirona');
 writeln;
  writeln('Fabricante: Sobral');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: genÇrico');
  writeln;
 writeln('Dosagem: 1 ml = 20 gotas');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('1,50');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end
 else
 if (dosagem = '400') then
 begin
 textcolor(11);
 writeln('advil');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Dores musculares');
 writeln('Enxaqueca');
 writeln('C¢lica menstrual');
 writeln('Dor de dente');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Dengue');
 writeln('A dor apresente piora, ou persista mais por mais de 3 dias');
 writeln('Menores de 12 anos e mulheres gravidas ');
 textcolor(11);
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Ibuprofeno');
 writeln;
  writeln('Fabricante: pfizer');
 writeln;
 writeln('Categoria:');
 writeln('AnalgÇsico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 400 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('2,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end
 else
 if (dosagem = '250') then
 begin
  textcolor(11);
 writeln('amoxilina');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Amigdalite;');
 writeln('Sinusites;');
 writeln('Infecá‰es respirat¢rias;');
 writeln('Pneumonia');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Hipersensibilidade Ös penicilinas;');
 writeln('Infecá‰es por estafilococus;');
 writeln;
 writeln('Principio ativo:');
 textcolor(7);
 writeln('amoxicilina');
 writeln;
   writeln('Fabricante: Medley');
 writeln;
 writeln('Categoria:');
 writeln('Antibi¢tico');
 writeln;
 writeln('Tipo: genÇrico');
 writeln;
 writeln('Dosagem: 250 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Necessita de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
 writeln('VALOR R$: ');
 writeln('9,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 writeln;
 readkey;
 end
 else
 if (dosagem = '2') then
 begin
   textcolor(11);
 writeln('polaramine');
 writeln('Indicado para:');
 textcolor(7);
 writeln;
 writeln('Tratamento de alergias');
 writeln('Asma');
 writeln('Bronquite');
 writeln('Rinite alÇrgica');
 writeln;
 writeln('Contra indicaá‰es:');
 writeln;
 writeln('Crianáas com menos de 2 anos;');
 writeln('Durante a gravidez e amamentaá∆o;');
 writeln('Pacientes em tratamento de hipertens∆o grave.');
 writeln('Principio ativo:');
 textcolor(7);
 writeln('Maleato de dexclorfemiramina');
 writeln;
    writeln('Fabricante: Mantercorp');
 writeln;
 writeln('Categoria:');
 writeln('AntialÇrgico');
 writeln;
 writeln('Tipo: referància');
  writeln;
 writeln('Dosagem: 2 mg');
 writeln;
 writeln('Tipo de receita: ');
 writeln('Isento de prescriá∆o mÇdica.');
 textcolor(12);
 writeln;
  writeln('VALOR R$: ');
 writeln('13,00');
 writeln;
 write('SE PERSISTIREM OS SINTOMAS UM MêDICO DEVERµ SER CONSULTADO.');
 readkey;
 end;










   end;

 end;
  writeln('Vocà retornar† ao menu  principal ...');
  delay(3000);
end;



procedure alteracao();
var op4, op5: integer;
reg2: arquivo;
arq_temp: file of arquivo;
tam: integer;
begin
assign(arq, 'teste.bin');
reset(arq);
textcolor(7);
CLrscr;
 writeln('Exclus∆o de cadastro');
 while (not eof(arq)) do
   begin
  read(arq, reg);
   writeln(filepos(arq), ' . ', reg.nome);
end;
 write('Digite o numero do cadastro que vocÍ deseja alterar: ');
  readln(op4);

  op4:= op4 - 1;
  seek(arq, op4);
  read(arq, reg);

writeln('1. Nome: ' ,reg.nome);
writeln('2. Sexo: ' ,reg.sexo);
writeln('3. Idade: ',reg.id);
writeln('4. CPF: ',reg.cpf, '  5. RG: ',reg.rg);
writeln('6. Endereáo: ', reg.rua, '  7.Numero da casa: ',reg.numero);
writeln('8. CEP: ',reg.cep, '  9. Cidade: ',reg.cidade, '  10. Estado: ',reg.estado);
writeln;
writeln('Digite o numero da informaÁ„o que vocÍ deseja alterar: ');
readln(op5);

 writeln;
 if(op5 = 1) then
 begin
   write('Novo nome: ');
   readln(reg2.nome);
 end
 else
   reg2.nome := reg.nome;

 if(op5 = 2) then
 begin
   write('Novo sexo: ');
   readln(reg2.sexo);
 end
 else
   reg2.sexo := reg.sexo;

 if(op5 = 3) then
 begin
   write('Nova idade: ');
   readln(reg2.id);
 end
 else
   reg2.id := reg.id;

 if(op5 = 4) then
 begin
   write('Novo cpf: ');
   readln(reg2.cpf);
 end
else
   reg2.cpf := reg.cpf;

 if(op5 = 5) then
begin
   write('Novo RG: ');
   readln(reg2.rg);
 end
 else
   reg2.rg := reg.rg;

 if(op5 = 6) then
 begin
   write('Novo EndereÁo: ');
   readln(reg2.rua);
 end
 else
   reg2.rua := reg.rua;

  if(op5 = 7) then
 begin
   write('Novo numero de casa: ');
   readln(reg2.numero);
 end
 else
   reg2.numero := reg.numero;

   if(op5 = 8) then

 begin
 write('Novo CEP: ');
   readln(reg2.cep);
 end
 else
   reg2.cep := reg.cep;

   if(op5 = 9) then
 begin
 write('Nova Cidade: ');
   readln(reg2.cidade);
 end
 else
   reg2.cidade := reg.cidade;

   if(op5 = 10) then
begin
   write('Novo Estado: ');
   readln(reg2.estado);
 end
 else
   reg2.estado := reg.estado;

 tam := filesize(arq)-1;

 assign(arq_temp, 'teste_temporario.bin');
 rewrite(arq_temp);
 seek(arq_temp, 0);
 seek(arq, 0);
 for i:=0 to tam do
 begin
  if(filepos(arq) = op4) then
    begin
     seek(arq, i+1);
     write(arq_temp, reg2);
    end
else
  begin
   read(arq, reg);
   write(arq_temp, reg);
  end;
end;

 close(arq); close(arq_temp);
 erase(arq);        // exclui o arq antigo
 rename(arq_temp, 'teste.bin');  //renomeia o novo para														//para o msm nome do antigo

 writeln('Alteracao feita com sucesso!');
end;

procedure exclusao();
var pos, i, tam, cont, op: integer;
arq_temp: file of arquivo;
begin
i:=1;
clrscr;
writeln('Exclus∆o de cadastro.');
writeln;
assign(arq, 'teste.bin');
reset(arq);
while not eof(arq) do
begin
 read(arq, reg);
 writeln(filepos(arq), '. ', reg.nome, ' - ', reg.cpf);
end;

 write('Digite o numero de qual cadastro vocà deseja excluir?: ');
 readln(op);

 tam := filesize(arq)-1;

 assign(arq_temp, 'teste_temporario.bin');
 rewrite(arq_temp);
 seek(arq_temp, 0);
 seek(arq, 0);

 op := op - 1;

 for cont:=0 to tam do
 begin
  if(filepos(arq) = op) then
  begin
   seek(arq, cont+1); // arq avanca uma casa mas arq_temp continua na mesma
  end
  else
  begin
   read(arq, reg);       //copia de um arquivo pro outro
   write(arq_temp, reg);
  end;
 end;

 close(arq); close(arq_temp);
 erase(arq);        // exclui o arq antigo
 rename(arq_temp, 'teste.bin');  //renomeia o novo para														//para o msm nome do antigo

 writeln('Alteracao feita com sucesso!');

readkey;
end;

 begin
 while (op<>5) do
 begin
 op:=0;
 clrscr;
 textcolor(15);
 writeln('________________________________');
 writeln(' -> FARMµCIA M1L GR4U <- ');
 writeln('________________________________');
 textcolor(12);
 writeln;
 writeln;
 writeln('Entre com uma opá∆o v†lida [ ]');
 writeln('   1 - Cadastro');
 writeln('   2 - Consulta');
 writeln('   3 - Alteraá∆o');
 writeln('   4 - Exclus∆o');
 writeln('   5 - Sair');
 writeln('________________________________');
 writeln('________________________________');
 writeln('');
 textbackground(80);
 gotoxy(29,6);
 readln(op);
 clrscr;
 if (op=1) then
 cadastro;
 if (op=2) then
 consulta;
 if (op=3) then
 alteracao;
 if (op=4) then
 exclusao;
 end;
 writeln (' Vocà escolheu sair do sistema!');
 writeln('Obrigado!');
 delay(3000);
 end.






