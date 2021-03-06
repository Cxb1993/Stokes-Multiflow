% calcula los terminos de la evolucion de la concentracion de sulfactantes
% en una superficie.
% Basado en Bazhlekov I.B "Boundary Integral Method for Deformable
% Interfaces in the Presence of Insoluble Surfactants" I. Lirkov et al.
% (Eds.): LSSC 2003, LNCS 2907, pp. 355?362, 2004.
% struct: estructura de la geometria de la malla
% u: Velocidad Hidrodinamica en la interfase
% w: Velocidad tangencial arbitraria (Vel Adapt Mesh)
% gamma: campo escalar de concentracion
% pe: numero de Peclet de la concentracion
% surfopt: opciones de surfactants
function [aijmat,matterm1,matterm2,matterm3,matterm4,matterm5] = ...
    solsurf(struct,u,w,pe,Bi,k)


% preproceso de las entradas
numnodes = size(struct.nodes,1);
 
elefield = isfield(struct,'element2node');
if elefield == 0
    % calcule los elementos vecinos al cada nodo
    struct.element2node = element2node(struct.elements);
end

%% Generales

% % Calcule el tensor de proyeccion tangencial en cada nodo
% pjnode = ProjTensor(struct.normal);
% calcule la proyeccion normal del campo de velocidades u
u_nmag = sum(u.*struct.normal,2);
u_n = repmat(u_nmag,[1 3]).*struct.normal;
% calcule el campo de velocidades hidrodinamico tangencial
u_s = u - u_n;

% Calculo de la matriz del primer termino (velt).grad_s(gamma) Bazhelekov
% et al. 2003 eq. (9), el segundo argumento corresponde a la velocidad
% tangencial total.
matterm1 = c_term1mat(struct,w+u_s);
% Calculo de la matriz asociada del segundo termino
matterm2 = c_term2mat(struct,u_s);
% Calculo de la matriz del tercer termino gamma.curv<u,n>
matterm3 = eye(numnodes).*repmat((struct.curv.*u_nmag),[1 numnodes]);
% Calculo de la matriz asociada al cuarto termino lap_s(gamma)
matterm4 = laplacebeltramimat(struct);
% matterm4 = 0;
% Calculo de la matriz asociada al quinto termino
% matterm5 = c_termsolmat(struct);
matterm5 = eye(numnodes).*(Bi*(1+k));
% Calcule la matriz global de la evolucion de surfactantes
aijmat = matterm1 - matterm2 - 2.*matterm3 + (1/pe).*matterm4-matterm5;
aijmat = sparse(aijmat);

% convierta a sparse al resto de matrices
matterm1 = sparse(matterm1);
matterm2 = sparse(matterm2);
matterm3 = sparse(matterm3);
matterm4 = sparse(matterm4);
matterm5 = sparse(matterm5);
