ellipsoid = referenceEllipsoid('wgs84','km');
angleUnits = 'degrees';
latitude = 0:10:90;
latitude1 = 0:pi/18:(4/9)*pi;
latitude2 = latitude1 + pi/18;
lat_range = {'0~10','10~20','20~30','30~40','40~50','50~60','60~70','70~80','80~90'};
M = rcurve('meridian',ellipsoid,latitude,angleUnits);%子午圈曲率半径M
N = rcurve('transverse',ellipsoid,latitude,angleUnits);%卯酉圈曲率半径N
A = sqrt(M.*N);%平均曲率半径A
r = rcurve('parallel',ellipsoid,latitude,angleUnits);%纬线圈半径r
meridian = meridianarc(latitude1,latitude2,ellipsoid);%子午线弧长meridian
area = areaquad(latitude1,latitude1,latitude2,latitude2,ellipsoid,'radians');%球面梯形面积area
filename='D:\data.xlsx';
xlswrite(filename,{'纬度/°'},1,'A1');
xlswrite(filename,latitude,1,'B1');
xlswrite(filename,{'子午圈曲率半径M/km'},1,'A2');
xlswrite(filename,M,1,'B2');
xlswrite(filename,{'卯酉圈曲率半径N/km'},1,'A3');
xlswrite(filename,N,1,'B3');
xlswrite(filename,{'平均曲率半径A/km'},1,'A4');
xlswrite(filename,A,1,'B4');
xlswrite(filename,{'纬线圈半径r/km'},1,'A5');
xlswrite(filename,r,1,'B5');
xlswrite(filename,{'纬度范围/°'},1,'A7');
xlswrite(filename,lat_range,1,'B7');
xlswrite(filename,{'子午线弧长meridian/km'},1,'A8');
xlswrite(filename,meridian,1,'B8');
xlswrite(filename,{'球面梯形面积area/km2(经度每隔10°)'},1,'A9');
xlswrite(filename,area,1,'B9');
disp(M);
disp(N);
disp(A);
disp(r);
disp(meridian);
disp(area);
