module Ejercicio1(iEntrada,oY);
input [2:0] iEntrada;
output oY;
wire X;
and g1(X,iEntrada[0],iEntrada[1]);
or g2(oY,X,iEntrada[2]);
endmodule