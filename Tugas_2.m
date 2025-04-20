clc
clear

%Nested if
cuaca = input('Masukkan cuaca (1 = dingin, 2 = panas): ');
waktu = input('Masukkan waktu (1 = pagi, 2 = malam): ');
if cuaca == 1 %dingin
    if waktu == 1 %pagi
       disp('Minum kopi angat.');
    elseif waktu == 2 %malam
        disp('Minum coffe latte.');
    else
        disp('Waktu tidak tiketahui.');
    end
elseif cuaca == 2 %2
    disp('Minum goodday dingin');
else
    disp('Minum affogato.');
end

%looping while (mengulangi sampai kondisi yang ditentukan)
i = input('Masukkan nilai awal i: '); %input dari user

while i <= 5
    disp(i);
    i = i + 1;
end 
    