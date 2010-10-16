% Calcula el deltaf debido a la interaccion electroestatica entre la vesicula y
% el vidrio.
function rdeltafelestat = deltafelestatic(geom,parms)

gamma = parms.rkelestat;
l = parms.elestat.l;
psi1 = parms.elestat.psi1;
psi2 = parms.elestat.psi2;
h = centroide(geom);
h = h(3);


fuerza = gamma*...
   ((2*psi1*psi2*exp(-l*h)+(psi1^2+psi1^2)*exp(-2*l*h))/(1-exp(-2*l*h)))*0.08;

rdeltafelestat = zeros(geom.numnodes,1);

rdeltafelestat(:) = fuerza/geom.s;