syms z

vs = 30 * exp(-1i * 0.8 * pi * z) * (1 + (-0.82243738 + 0.15047668i) * exp(-2i * 0.8 * pi * (3 - z)));
abs_vs = abs(vs);

figure(1);
fplot(abs_vs, [0, 3]);
title('Absolute value of voltage along transmission line');
xlabel('z');
ylabel('|vs|');

Is = (30/100)*exp(-1i * 0.8 * pi * z) * (1 + (-0.82243738 + 0.15047668i) * exp(-2i * 0.8 * pi * (3 - z)));
abs_Is = abs(Is);

figure(2);
fplot(abs_Is, [0, 3]);
title('Absolute value of current along transmission line');
xlabel('z');
ylabel('|Is|');

zin = 100*((9+9i+i*100*tan(0.8*pi*(3-z)))/(100+i*(9+9i)*tan(0.8*pi*(3-z))));
abs_zin = abs(zin);

figure(3);
fplot(abs_zin, [0, 3]);
title('Magnitude of input impedance along transmission line');
xlabel('z');
ylabel('|Zin|');
