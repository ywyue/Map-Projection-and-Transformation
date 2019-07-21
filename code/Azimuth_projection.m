%% 定义正轴、横轴、斜轴投影中心及偏转角度
ortha = [90 120 0];%正轴
transverse = [0 120 0];%横轴
oblique = [45 120 0];%斜轴
%%  1.等角方位投影
%%    1.1 正轴等角方位投影
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('stereo', 'Frame', 'on', 'Grid', 'on', 'origin', ortha);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('正轴等角方位投影');
tissot;
mdistort;
%%    1.2 横轴等角方位投影
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('stereo', 'Frame', 'on', 'Grid', 'on', 'origin', transverse);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('横轴等角方位投影');
tissot;
mdistort;
%%    1.3 斜轴等角方位投影
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('stereo', 'Frame', 'on', 'Grid', 'on', 'origin', oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('斜轴等角方位投影');
tissot;
mdistort;
%%  2.等面积方位投影
%%    2.1 正轴等面积方位投影
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqaazim', 'Frame', 'on', 'Grid', 'on', 'origin', ortha);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('正轴等面积方位投影');
tissot;
mdistort;
%%    2.2 横轴等面积方位投影
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqaazim', 'Frame', 'on', 'Grid', 'on', 'origin', transverse);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('横轴等面积方位投影');
tissot;
mdistort;
%%    2.3 斜轴等面积方位投影
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqaazim', 'Frame', 'on', 'Grid', 'on', 'origin', oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('斜轴等面积方位投影');
tissot;
mdistort;
%%  3.等距离方位投影
%%    3.1 正轴等距离方位投影
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqdazim', 'Frame', 'on', 'Grid', 'on', 'origin', ortha);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('正轴等距离方位投影');
tissot;
mdistort;
%%    3.2 横轴等距离方位投影
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqdazim', 'Frame', 'on', 'Grid', 'on', 'origin', transverse);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('横轴等距离方位投影');
tissot;
mdistort;
%%    3.3 斜轴等距离方位投影
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqdazim', 'Frame', 'on', 'Grid', 'on', 'origin', oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('斜轴等距离方位投影');
tissot;
mdistort;