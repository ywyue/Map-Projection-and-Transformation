%% �������ᡢ���ᡢб��ͶӰ���ļ�ƫת�Ƕ�
ortha = [90 120 0];%����
transverse = [0 120 0];%����
oblique = [45 120 0];%б��
%%  1.�ȽǷ�λͶӰ
%%    1.1 ����ȽǷ�λͶӰ
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('stereo', 'Frame', 'on', 'Grid', 'on', 'origin', ortha);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('����ȽǷ�λͶӰ');
tissot;
mdistort;
%%    1.2 ����ȽǷ�λͶӰ
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('stereo', 'Frame', 'on', 'Grid', 'on', 'origin', transverse);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('����ȽǷ�λͶӰ');
tissot;
mdistort;
%%    1.3 б��ȽǷ�λͶӰ
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('stereo', 'Frame', 'on', 'Grid', 'on', 'origin', oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('б��ȽǷ�λͶӰ');
tissot;
mdistort;
%%  2.�������λͶӰ
%%    2.1 ����������λͶӰ
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqaazim', 'Frame', 'on', 'Grid', 'on', 'origin', ortha);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('����������λͶӰ');
tissot;
mdistort;
%%    2.2 ����������λͶӰ
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqaazim', 'Frame', 'on', 'Grid', 'on', 'origin', transverse);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('����������λͶӰ');
tissot;
mdistort;
%%    2.3 б��������λͶӰ
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqaazim', 'Frame', 'on', 'Grid', 'on', 'origin', oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('б��������λͶӰ');
tissot;
mdistort;
%%  3.�Ⱦ��뷽λͶӰ
%%    3.1 ����Ⱦ��뷽λͶӰ
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqdazim', 'Frame', 'on', 'Grid', 'on', 'origin', ortha);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('����Ⱦ��뷽λͶӰ');
tissot;
mdistort;
%%    3.2 ����Ⱦ��뷽λͶӰ
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqdazim', 'Frame', 'on', 'Grid', 'on', 'origin', transverse);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('����Ⱦ��뷽λͶӰ');
tissot;
mdistort;
%%    3.3 б��Ⱦ��뷽λͶӰ
landareas = shaperead('landareas.shp','UseGeoCoords',true);
axesm ('eqdazim', 'Frame', 'on', 'Grid', 'on', 'origin', oblique);
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]);
title('б��Ⱦ��뷽λͶӰ');
tissot;
mdistort;