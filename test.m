clear all
close all

bus_x = 184;
bus_y = 184;
bus_z = 170;
base = 83.481;
theta1 = 1.9*pi/180;
boom_top = 3900+base;
boom_clear = 130.108;
A = boom_top-boom_clear;
x = A/cos(theta1);

theta2 =2.525*pi/180;
s  = sqrt(bus_z^2+x^2);
s1 = x/cos(theta2); % カメラボックスからのブーム先端までの距離

forcus = 3.04;
sensor_size_beside = 3.68;
sensor_size_vertical = 2.76; 
renge_beside  = (sensor_size_beside/forcus)*s;
renge_vertical= (sensor_size_vertical/forcus)*s;
pixel_beside  = 3280;
pixel_vertical = 2464;

answer_beside = renge_beside/pixel_beside;
answer_vertical = renge_vertical/pixel_vertical;
fprintf("1ピクセルあたりの実寸(横)：%.6f mm/ピクセル\n",answer_beside);
fprintf("1ピクセルあたりの実寸(縦)：%.6f mm/ピクセル\n",answer_vertical);


