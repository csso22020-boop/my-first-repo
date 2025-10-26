clear all
close all

bus_x = 184;
bus_y = 184;
bus_z = 170;
base = 83.481; %原点からブームの根本までの距離
theta1 = 1.934*pi/180;
boom = 3900;

boom_top = boom+base;

x1 = boom*cos(theta1)

x2 = boom*sin(theta1)
x3 = sqrt((138.21)^2-x2^2);

y = x1-x3;

boom_R = 12.71;
memb_plate = 70;
boom_plate = 46.099;

theta2 =2*pi/180;
high = bus_z+112+33+(memb_plate-boom_plate+boom_R)+boom*sin(theta2); %カメラボックスからブーム前端までの高さ
s  = sqrt(high^2+y^2);
s1 = y/cos(theta2); % カメラボックスからのブーム先端までの距離

forcus = 3.04;% 焦点距離
sensor_size_beside = 3.68;
sensor_size_vertical = 2.76; 
renge_beside  = (sensor_size_beside/forcus)*s
renge_vertical= (sensor_size_vertical/forcus)*s
pixel_beside  = 3280;
pixel_vertical = 2464;

answer_beside = renge_beside/pixel_beside;
answer_vertical = renge_vertical/pixel_vertical;
fprintf("1ピクセルあたりの実寸(横)：%.6f mm/ピクセル\n",answer_beside);
fprintf("1ピクセルあたりの実寸(縦)：%.6f mm/ピクセル\n",answer_vertical);


