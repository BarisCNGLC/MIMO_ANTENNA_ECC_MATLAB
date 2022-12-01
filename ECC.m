format long

load('s11.txt');
load('s12.txt');
load('s22.txt');
load('s21.txt');

S11 = s11(:,2)+i*s11(:,3);
S12 = s12(:,2)+i*s12(:,3);
S22 = s22(:,2)+i*s22(:,3);
S21 = s21(:,2)+i*s21(:,3);

s11_c=conj(S11); % S11 conjuge aldým
s21_c=conj(S21); % S21 conjuge aldým

S11_Abs_Sqr=((abs(S11)).^2); 
S12_Abs_Sqr=((abs(S12)).^2);
S22_Abs_Sqr=((abs(S22)).^2);
S21_Abs_Sqr=((abs(S21)).^2);

formulUp1=(s11_c.*(S12));
formulUp2=(s21_c.*(S22));
formulUp=formulUp1+formulUp2;
formulUpAbs=abs(formulUp);
formulUpAbsSqr=formulUpAbs.^2;

formulDown1=(1-(S11_Abs_Sqr)-(S21_Abs_Sqr));
formulDown2=(1-(S22_Abs_Sqr)-(S12_Abs_Sqr));
formulDown=formulDown1.*formulDown2;
p=formulUpAbsSqr./formulDown;

plot(s11(:,1),p);


