landareas = shaperead('landareas.shp','UseGeoCoords',true); %加载地图数据
shanghai = [31.183314,121.436573]; %上海经纬度 
san_francisco = [37.751289,-122.344742]; %旧金山经纬度
gc_aclen = distance('gc',shanghai,san_francisco); %上海至旧金山大圆航线距离（单位为：degrees）
gclen = deg2km(gc_aclen); %degrees转为km
rh_aclen = distance('rh',shanghai,san_francisco); %上海至旧金山等角航线距离（单位为：degrees）
rhlen = deg2km(rh_aclen); %degrees转为km
axesm ('mercator', 'MapLatLimit',[10 60],'MapLonLimit',[100 -90],'Grid', 'on','MeridianLabel','on','ParallelLabel','on'); %选择投影方式并设置经纬度限制
gcpts = track2('gc',shanghai(1),shanghai(2),san_francisco(1),san_francisco(2)); %计算大圆航线上100个点坐标
rhpts = track2('rh',shanghai(1),shanghai(2),san_francisco(1),san_francisco(2)); %计算等角航线上100个点坐标
geoshow(landareas,'FaceColor',[1 1 .5],'EdgeColor',[.6 .6 .6]); %显示地图
geoshow(shanghai(1),shanghai(2),'displaytype','point','markerfacecolor','b','marker','o'); %显示上海坐标点
geoshow(san_francisco(1),san_francisco(2),'displaytype','point','markerfacecolor','g','marker','o'); %显示旧金山坐标点
geoshow(gcpts(:,1),gcpts(:,2),'displaytype','line','color','r','linestyle','--','linewidth',2); %显示大圆航线
geoshow(rhpts(:,1),rhpts(:,2),'displaytype','line','color','m','linestyle','--','linewidth',2); %显示等角航线
disp(['上海至旧金山大圆航线距离：',num2str(gclen),'km']); %输出大圆航线距离
disp(['上海至旧金山等角航线距离：',num2str(rhlen),'km']); %输出等角航线距离