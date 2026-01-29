clc
clear

% MEMBACA DATA EXCEL
%[~,~,data] = xlsread('data.xlsx')

% MENGGAMBAR
% Plotting 2D
%x = [0:10:100]
%y = x;
%    plot(x,y);

% Plot Arrays
%X = [16, 2, 3,13, 5];
%Y = [1, 3, 5, 7, 20];
%   plot(X, Y);

% Plot Vectors
%X = [1, 2, 3]; 
%Y = [1, 1, 1]; 
%U = [2, -1, 3]; 
%V = [3, 1, -2]; 

%quiver(X, Y, U, V);
%xlabel('X-axis');
%ylabel('Y-axis');
%title('Arrow Plot using quiver');

% Plotting 3D
% r = 1; 
% h = 1; 
% t = 0:0.1:10*pi;  
% 
% x = r * cos(t);
% y = r * sin(t);
% z = h * t;
% 
% plot3(x, y, Z);
% xlabel('X-axis');
% ylabel('Y-axis');
% title('Arrow Plot using quiver');

% Plot 3D Contour
% [X, Y] = meshgrid(-2:0.1:2, -2:0.1:2);
% Z = sin(X) + cos(Y);
% contour3(X, Y, Z);
% xlabel('X-axis');
% ylabel('Y-axis');
% title('Arrow Plot using quiver');

% Scatter Plot
% x = rand(1, 100);
% y = rand(1, 100);
% scatter(x, y);

% Plot Mesh Surface
% x = -2:0.1:2;
% y = -2:0.1:2;
% [X, Y] = meshgrid(x, y);
% Z = peaks(X, Y);
% mesh(X, Y, Z);

% Fungsi Kuadratik
% x = [1 2 3 4 5 6 7 8 9 10];
% x = [-1:0.1:1];
% y = x.^2
% plot(x,y)

% Equal Maxima (memaksimumkan fungsi,2D)
% x = [0:0.001:1];
% y = (sin(5*pi*x)).^6;
% plot(x,y,'-b')

%Decreasing (meminimumkan fungsi,2D)
% x = [0:0.001:1];
% y = exp(-2*log(2)*((x-0.1)/0.8).^2).*(sin(5*pi*x)).^6;
% plot(x,y,'-b')

% Second Minima (ada 2 titik minimum)
% x = -4:0.1:4;
% y = -4:0.1:4;
% [X,Y] = meshgrid(x,y); 
% f = (0.5*(X.^4 -16*X.^2 + 5*X) + 0.5*(Y.^4 - 16*Y.^2 + 5*Y));
% axis = ([-4 4 -4 4]); %ukuran hasil akhir
% figure (1)
% contour(X,Y,f);
% figure (2)
% contour3(X,Y,f);
% figure (3)
% surf(X,Y,f);
% figure (4)
% meshc(X,Y,f);
% title('second minima')
% xlabel ('X')
% ylabel ('Y')
% zlabel ('f(x)')

% Six Ham (ada 6 titik minimum)
% x = -1.9:0.1:1.9;
% y = -1.1:0.1:1.1;
% [X,Y] = meshgrid(x,y);
% f = (4 -2.1*X.^2 + X.^4/3).*X.^2 + X.*Y + 4*(-1 + Y.^2).*Y.^2;
% figure (1)
% contour3(X,Y,f)
% figure(2)
% surfc(X,Y,f)
% figure(3)
% meshc(X,Y,f)
% title('six ham')
% xlabel ('X')
% ylabel ('Y')
% zlabel ('f(x)')

%  Bird (16 titik minimum dan 24 maksimum)
x = -10:0.1:10;
y = -10:0.1:10;
[X,Y] = meshgrid(x,y);
f = sin(X).*exp((1-cos(Y)).^2)+cos(Y).*exp((1-sin(X)).^2)+(X-Y).^2;
axis = ([-10 10 -10 10]);
figure(1)
contour3(X,Y,f)
figure(2)
surf(X,Y,f)
figure(3)
meshc(X,Y,f)
title('fungsi secondminima')
xlabel ('X')
ylabel ('Y')
zlabel ('f(x)')