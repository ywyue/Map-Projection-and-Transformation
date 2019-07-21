shandong = shaperead('D:\china_shp\province_2004.shp','UseGeoCoords',true);
axesm ('lambert', 'Frame', 'on','maplatlim',[34.38 38.4],'maplonlim',[114.7 123],'mapparallels',[35.2 37], ...
'meridianlabel','on','parallellabel','on','mlabellocation',1,'plabellocation',1);
geoshow(shandong,'FaceColor',[1 1 .5],'EdgeColor',[0 0 0]);
tightmap;
tissot([1 1 .004 20]);
mdistort('area',-1:0.02:1);



