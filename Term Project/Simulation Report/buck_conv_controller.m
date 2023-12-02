R_out = 0.1;
C_out = 10^-5;
L = 1500*10^-6;
V_in = 30;

buck_converter = tf([V_in/(L*C_out)], [1 1/(R_out*C_out) 1/(C_out*L)]);
bode(buck_converter) 

controller = pidtune(buck_converter,'PI'); 
