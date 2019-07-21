ellipsoid = referenceEllipsoid('wgs84','km');
angleUnits = 'degrees';
latitude = 0:10:90;
latitude1 = 0:pi/18:(4/9)*pi;
latitude2 = latitude1 + pi/18;
lat_range = {'0~10','10~20','20~30','30~40','40~50','50~60','60~70','70~80','80~90'};
M = rcurve('meridian',ellipsoid,latitude,angleUnits);%����Ȧ���ʰ뾶M
N = rcurve('transverse',ellipsoid,latitude,angleUnits);%î��Ȧ���ʰ뾶N
A = sqrt(M.*N);%ƽ�����ʰ뾶A
r = rcurve('parallel',ellipsoid,latitude,angleUnits);%γ��Ȧ�뾶r
meridian = meridianarc(latitude1,latitude2,ellipsoid);%�����߻���meridian
area = areaquad(latitude1,latitude1,latitude2,latitude2,ellipsoid,'radians');%�����������area
filename='D:\data.xlsx';
xlswrite(filename,{'γ��/��'},1,'A1');
xlswrite(filename,latitude,1,'B1');
xlswrite(filename,{'����Ȧ���ʰ뾶M/km'},1,'A2');
xlswrite(filename,M,1,'B2');
xlswrite(filename,{'î��Ȧ���ʰ뾶N/km'},1,'A3');
xlswrite(filename,N,1,'B3');
xlswrite(filename,{'ƽ�����ʰ뾶A/km'},1,'A4');
xlswrite(filename,A,1,'B4');
xlswrite(filename,{'γ��Ȧ�뾶r/km'},1,'A5');
xlswrite(filename,r,1,'B5');
xlswrite(filename,{'γ�ȷ�Χ/��'},1,'A7');
xlswrite(filename,lat_range,1,'B7');
xlswrite(filename,{'�����߻���meridian/km'},1,'A8');
xlswrite(filename,meridian,1,'B8');
xlswrite(filename,{'�����������area/km2(����ÿ��10��)'},1,'A9');
xlswrite(filename,area,1,'B9');
disp(M);
disp(N);
disp(A);
disp(r);
disp(meridian);
disp(area);
