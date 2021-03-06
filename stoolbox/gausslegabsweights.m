%% gauss legedre weights w abcisas z.
% Input n point formula

function [z,w] = gausslegabsweights(n)

z = zeros(1,n);
w = zeros(1,n);

if n == 1 

    z(1) = 0.0;
    
    w(1) = 2.0;

elseif n == 2 

    z(1) = -0.57735026918962576450;
    z(2) = -z(1);

    w(1) = 1.0;
    w(2) = 1.0;

elseif n == 3 

    z(1) = -0.77459666924148337703;
    z(2) =  0.0;
    z(3) = -z(1);

    w(1) = 0.555555555555555555555;
    w(2) = 0.888888888888888888888;
    w(3) = 0.555555555555555555555;

elseif n == 4 

    z(1) = -0.86113631159405257522;
    z(2) = -0.33998104358485626480;
    z(3) = -z(2);
    z(4) = -z(1);

    w(1) = 0.34785484513745385737;
    w(2) = 0.65214515486254614262;
    w(3) = w(2);
    w(4) = w(1);

elseif n == 5 

    z(1) = -0.90617984593866399279;
    z(2) = -0.53846931010568309103;
    z(3) =  0.0;
    z(4) = -z(2);
    z(5) = -z(1);

    w(1) = 0.23692688505618908751;
    w(2) = 0.47862867049936646804;
    w(3) = 0.56888888888888888889;
    w(4) = w(2);
    w(5) = w(1);

elseif n == 6 

    z(1) = -0.932469514203152;
    z(2) = -0.661209386466265;
    z(3) = -0.238619186083197;

    z(4) = -z(3);
    z(5) = -z(2);
    z(6) = -z(1);

    w(1) = 0.171324492379170;
    w(2) = 0.360761573048139;
    w(3) = 0.467913934572691;

    w(4) = w(3);
    w(5) = w(2);
    w(6) = w(1);

elseif n == 8 


    z(1) = -0.96028985649753623168;
    z(2) = -0.79666647741362673959;
    z(3) = -0.52553240991632898581;
    z(4) = -0.18343464249564980493;

    z(5) = -z(4);
    z(6) = -z(3);
    z(7) = -z(2);
    z(8) = -z(1);

    w(1) = 0.10122853629037625915;
    w(2) = 0.22238103445337447054;
    w(3) = 0.31370664587788728733;
    w(4) = 0.36268378337836198296;

    w(5) = w(4);
    w(6) = w(3);
    w(7) = w(2);
    w(8) = w(1);

elseif n == 12 

    z(1) = -0.981560634246719;
    z(2) = -0.904117256370475;
    z(3) = -0.769902674194305;
    z(4) = -0.587317954286617;
    z(5) = -0.367831498998180;
    z(6) = -0.125233408511469;

    z(7) = -z(6);
    z(8) = -z(5);
    z(9) = -z(4);
    z(10)= -z(3);
    z(11)= -z(2);
    z(12)= -z(1);

    w(1) = 0.047175336386512;
    w(2) = 0.106939325995318;
    w(3) = 0.160078328543346;
    w(4) = 0.203167426723066;
    w(5) = 0.233492536538355;
    w(6) = 0.249147045813403;

    w(7) = w(6);
    w(8) = w(5);
    w(9) = w(4);
    w(10)= w(3);
    w(11)= w(2);
    w(12)= w(1);

elseif  n == 20 

    z(1) = -0.993128599185094924786;
    z(2) = -0.963971927277913791268;
    z(3) = -0.912234428251325905868;
    z(4) = -0.839116971822218823395;
    z(5) = -0.746331906460150792614;
    z(6) = -0.636053680726515025453;
    z(7) = -0.51086700190827098004;
    z(8) = -0.373706088715419560673;
    z(9) = -0.227785851141645078080;
    z(10)= -0.076526521133497333755;

    z(11) = -z(10);
    z(12) = -z(9);
    z(13) = -z(8);
    z(14) = -z(7);
    z(15) = -z(6);
    z(16) = -z(5);
    z(17) = -z(4);
    z(18) = -z(3);
    z(19) = -z(2);
    z(20) = -z(1);

    w(1) = 0.017614007139152118312;
    w(2) = 0.040601429800386941331;
    w(3) = 0.062672048334109063570;
    w(4) = 0.083276741576704748725;
    w(5) = 0.101930119817240435037;
    w(6) = 0.118194531961518417312;
    w(7) = 0.131688638449176626898;
    w(8) = 0.142096109318382051329;
    w(9) = 0.149172986472603746788;
    w(10)= 0.152753387130725850698;

    w(11) = w(10);
    w(12) = w(9);
    w(13) = w(8);
    w(14) = w(7);
    w(15) = w(6);
    w(16) = w(5);
    w(17) = w(4);
    w(18) = w(3);
    w(19) = w(2);
    w(20) = w(1);

end

 