landareas = shaperead('landareas.shp','UseGeoCoords',true); %���ص�ͼ����
shanghai = [31.183314,121.436573]; %�Ϻ���γ�� 
san_francisco = [37.751289,-122.344742]; %�ɽ�ɽ��γ��
gc_aclen = distance('gc',shanghai,san_francisco); %�Ϻ����ɽ�ɽ��Բ���߾��루��λΪ��degrees��
gclen = deg2km(gc_aclen); %degreesתΪkm
rh_aclen = distance('rh',shanghai,san_francisco); %�Ϻ����ɽ�ɽ�ȽǺ��߾��루��λΪ��degrees��
rhlen = deg2km(rh_aclen); %degreesתΪkm
axesm ('mercator', 'MapLatLimit',[10 60],'MapLonLimit',[100 -90],'Grid', 'on','MeridianLabel','on','ParallelLabel','on'); %ѡ��ͶӰ��ʽ�����þ�γ������
gcpts = track2('gc',shanghai(1),shanghai(2),san_francisco(1),san_francisco(2)); %�����Բ������100��������
rhpts = track2('rh',shanghai(1),shanghai(2),san_francisco(1),san_francisco(2)); %����ȽǺ�����100��������
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]); %��ʾ��ͼ
geoshow(shanghai(1),shanghai(2),'displaytype','point','markerfacecolor','b','marker','o'); %��ʾ�Ϻ������
geoshow(san_francisco(1),san_francisco(2),'displaytype','point','markerfacecolor','g','marker','o'); %��ʾ�ɽ�ɽ�����
geoshow(gcpts(:,1),gcpts(:,2),'displaytype','line','color','r','linestyle','--','linewidth',2); %��ʾ��Բ����
geoshow(rhpts(:,1),rhpts(:,2),'displaytype','line','color','m','linestyle','--','linewidth',2); %��ʾ�ȽǺ���
disp(['�Ϻ����ɽ�ɽ��Բ���߾��룺',num2str(gclen),'km']); %�����Բ���߾���
disp(['�Ϻ����ɽ�ɽ�ȽǺ��߾��룺',num2str(rhlen),'km']); %����ȽǺ��߾���