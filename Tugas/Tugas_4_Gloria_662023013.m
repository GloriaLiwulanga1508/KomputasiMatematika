% 1. Tabung Bergelombang
[theta, z] = meshgrid(linspace(0, 2*pi, 100), linspace(0, 5, 100));
r = 1 + 0.3*sin(5*theta + 2*z);
x = r .* cos(theta);
y = r .* sin(theta);
surf(x, y, z)
shading interp
colormap(jet)
axis equal
title('1.Tabung Bergelombang')

% 2. Grafik figure 2
figure(1);
[x,y] = meshgrid(-10:0.1:10); 
t = sqrt(x.^2+y.^2);
z =(10*sin(t));
mesh(x,y,z)
title('2. figure(1)')

% 3. Grafik 3D Donat
figure(2);
[u,v] = meshgrid(linspace(0,2*pi,100), linspace(0,2*pi,100));
R = 2; r = 0.6 + 0.2*cos(5*v);
x = (R + r.*cos(v)) .* cos(u);
y = (R + r.*cos(v)) .* sin(u);
z = r.*sin(v);
surf(x,y,z); shading interp; axis equal;
title('3.Grafik 3D Donat')

% 4.Permukaan Gabungan Sinus-kubah
[x, y] = meshgrid(-3:0.1:3);
z = exp(-x.^2 - y.^2) .* sin(5*(x.^2 + y.^2));
surf(x, y, z)
shading interp
colormap(cool)
title('4.Permukaan Gabungan Sinus-Kubah')


% 5.Grafik 3D Globe
figure(3);
[theta,phi] = meshgrid(linspace(0,2*pi,50), linspace(0,pi,50));
x = sin(phi).*cos(theta);
y = sin(phi).*sin(theta);
z = cos(phi);
mesh(x,y,z); 
axis equal;
title('5. Grafik 3D Globe')

% 6.Pita Mobius
u = linspace(0, 2*pi, 100);
v = linspace(-0.5, 0.5, 20);
[U, V] = meshgrid(u, v);
x = (1 + V.*cos(U/2)) .* cos(U);
y = (1 + V.*cos(U/2)) .* sin(U);
z = V .* sin(U/2);
surf(x, y, z)
shading interp
title('6. Pita Mobius')

% 7.Grafik 3D Starfruit
figure(4);
[theta, phi] = meshgrid(linspace(0, 2*pi, 100), linspace(0, pi, 100));
r = 1 + 0.4 * cos(5*theta) .* sin(3*phi); % untuk bentuk seperti belimbing

x = r .* sin(phi) .* cos(theta);
y = r .* sin(phi) .* sin(theta);
z = r .* cos(phi);

surf(x, y, z)
shading interp
colormap(jet)
axis equal
title('7.Grafik 3D Starfruit')

% 8. Grafik Bunga 
figure(5);
% Parameter
theta = linspace(0, 2*pi, 100);
phi = linspace(0, pi, 50);
[THETA, PHI] = meshgrid(theta, phi);

% Parameter Bunga Mawar
k = 4;  % Jumlah kelopak (ubah untuk bentuk yang berbeda)
a = 5;  % Skala ukuran keseluruhan
% Radius sebagai fungsi sudut (bunga mawar 3D)
R = a * (cos(k * THETA) .* sin(PHI)).^2 + 1;

% Koordinat Kartesius
X = R .* sin(PHI) .* cos(THETA);
Y = R .* sin(PHI) .* sin(THETA);
Z = R .* cos(PHI);

% Plot
surf(X, Y, Z, R, 'FaceAlpha', 0.9, 'EdgeColor', 'none');
colormap(jet)
colorbar
axis equal
xlabel('X')
ylabel('Y')
zlabel('Z')
title('8.Bunga')

% Pencahayaan dan tampilan
camlight headlight
lighting gouraud
view(45, 30)
grid on

% 9. Grafik 3D Bentuk Kerang 
figure(6);
% Parameter sudut
theta = linspace(0, 4*pi, 200);     % Sudut spiral
u = linspace(0, 2*pi, 60);          % Sudut melingkar untuk profil kerang
[Theta, U] = meshgrid(theta, u);

% Parameter kerang
a = 0.2;           % Skala diameter kerang
b = 0.10;          % Kontrol tinggi gelombang spiral
c = 0.1;           % Kontrol lebar gelombang spiral
d = 0.5;           % Pertumbuhan radius spiral

% Fungsi radius spiral dengan gelombang untuk bentuk kerang
R = a * exp(b * Theta) .* (1 + c * sin(5 * U));

% Koordinat Kartesius menggunakan parameter parametrik kerang
X = R .* cos(U);
Y = R .* sin(U);
Z = d * Theta;

% Membuat grafik permukaan kerang
surf(X, Y, Z, Theta, 'EdgeColor', 'none', 'FaceAlpha', 0.95);
colormap(jet)
colorbar
xlabel('X')
ylabel('Y')
zlabel('Z')
title('9. Kerang')
axis equal
grid on

% Pencahayaan untuk efek visual
camlight headlight
lighting gouraud
view(45, 30)

% 10. Grafik 3D Pita bergelombang
figure(7);
% Parameter
t = linspace(0, 6*pi, 500);  % Parameter sepanjang pita
w = linspace(-0.5, 0.5, 40); % Lebar pita

[T, W] = meshgrid(t, w);
% Koordinat 3D pita berkelok
X = T;
Y = sin(T) + W .* cos(3*T);
Z = cos(T) + W .* sin(5*T);

% Plot permukaan pita dengan warna 
surf(X, Y, Z, T, 'EdgeColor', 'none', 'FaceAlpha', 0.95);

% Menggunakan colormap dengan warna terang
colormap(cool)   
colorbar

xlabel('X')
ylabel('Y')
zlabel('Z')
title('10. Pita Bergelombang')
axis tight
grid on
view(45, 20)

% Pencahayaan untuk efek visual 
camlight left
lighting phong
material shiny

% 11. Grafik 3D Bentuk Planet Saturnus 
figure(8);
% Membuat bola sebagai tubuh planet Saturnus
[XS, YS, ZS] = sphere(100);
radius_planet = 5;
XS = radius_planet * XS;
YS = radius_planet * YS;
ZS = radius_planet * ZS;

% Membuat cincin Saturnus menggunakan parameter torus
theta = linspace(0, 2*pi, 150);
phi = linspace(0, 2*pi, 50);
[THETA, PHI] = meshgrid(theta, phi);

ring_inner_radius = radius_planet * 1.2;
ring_outer_radius = radius_planet * 2.5;
ring_thickness = 0.5;

% Parameter cincin
Xr = (ring_inner_radius + ring_thickness * cos(PHI)) .* cos(THETA);
Yr = (ring_inner_radius + ring_thickness * cos(PHI)) .* sin(THETA);
Zr = ring_thickness * sin(PHI);

% Membuat figure
hold on
axis equal

% Plot tubuh planet
hPlanet = surf(XS, YS, ZS, 'FaceColor', [1 0.8 0.2], 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
% Pewarnaan kekuningan khas Saturnus

% Plot cincin
hRing = surf(Xr, Yr, Zr, 'FaceColor', [0.8 0.8 0.7], 'EdgeColor', 'none', 'FaceLighting', 'gouraud', 'FaceAlpha', 0.7);

% Setting pencahayaan dan tampilan
camlight('headlight')
lighting phong

xlabel('X')
ylabel('Y')
zlabel('Z')
title('11. Planet Saturnus')

grid on
view(45, 30)
hold off

% 12. Grafik 3D bentuk bintang laut
figure(9);
% Parameter sudut
theta = linspace(0, 2*pi, 500);  % Keliling bintang
r = linspace(0, 1, 100);         % Radius dari pusat ke tepi
[R, T] = meshgrid(r, theta);

% Membuat bentuk bintang laut dengan 5 cabang menggunakan fungsi sinus
n = 5; % jumlah cabang bintang laut
r_star = 0.5 + 0.5 * cos(n * T);

% Parameter Z sebagai pelebaran dan lekukan alami bentuk bintang laut
Z = 0.1 * sin(5 * T) .* (1 - R);

% Koordinat Kartesius berdasarkan radius bercabang dan parameter r
X = R .* r_star .* cos(T);
Y = R .* r_star .* sin(T);

% Membuat grafik permukaan bintang laut
hSurf = surf(X, Y, Z, R, 'EdgeColor', 'none', 'FaceAlpha', 0.9);

% Membuat colormap biru laut manual
blueSeaMap = [linspace(0, 0, 64)', linspace(0.4, 1, 64)', linspace(0.7, 1, 64)'];
colormap(blueSeaMap)
colorbar

title('12. Bintang Laut')
xlabel('X')
ylabel('Y')
zlabel('Z')
axis equal
grid on
view(45, 30)
% Pencahayaan untuk efek visual 
camlight left
lighting gouraud
material shiny

% 13. Grafik 3D Topi Fedora 
% Parameter mahkota topi (crown)
radius_crown = 4;
height_crown = 3;
n = 100;
theta = linspace(0, 2*pi, n);
z_crown = linspace(0, height_crown, 2);

[Theta_crown, Z_crown] = meshgrid(theta, z_crown);
X_crown = radius_crown * cos(Theta_crown);
Y_crown = radius_crown * sin(Theta_crown);
Z_crown = Z_crown;

% Parameter brim topi (tepian)
radius_brim_inner = radius_crown + 0.2;
radius_brim_outer = radius_crown + 3;
thickness_brim = 0.5;
z_brim = linspace(-thickness_brim, 0, 2);
[Theta_brim, Z_brim] = meshgrid(theta, z_brim);

X_brim_outer = radius_brim_outer * cos(Theta_brim);
Y_brim_outer = radius_brim_outer * sin(Theta_brim);
X_brim_inner = radius_brim_inner * cos(Theta_brim);
Y_brim_inner = radius_brim_inner * sin(Theta_brim);
Z_brim = Z_brim;

% Membuat figur
figure('Color', 'w');
hold on;

% Plot mahkota topi
surf(X_crown, Y_crown, Z_crown, 'FaceColor', [0.36 0.25 0.20], 'EdgeColor', 'none');

% Tutup atas mahkota
fill3(X_crown(2,:), Y_crown(2,:), Z_crown(2,:), [0.36 0.25 0.20],'EdgeColor','none');

% Plot brim luar dan dalam
surf(X_brim_outer, Y_brim_outer, Z_brim, 'FaceColor', [0.76 0.60 0.42], 'EdgeColor', 'none');
surf(X_brim_inner, Y_brim_inner, Z_brim, 'FaceColor', [0.76 0.60 0.42], 'EdgeColor', 'none');

% Tutup brim atas dan bawah
fill3(X_brim_outer(1,:), Y_brim_outer(1,:), Z_brim(1,:), [0.76 0.60 0.42], 'EdgeColor', 'none');
fill3(X_brim_outer(2,:), Y_brim_outer(2,:), Z_brim(2,:), [0.76 0.60 0.42], 'EdgeColor', 'none');
fill3(X_brim_inner(1,:), Y_brim_inner(1,:), Z_brim(1,:), [1 1 1]*0.9, 'EdgeColor', 'none');
fill3(X_brim_inner(2,:), Y_brim_inner(2,:), Z_brim(2,:), [1 1 1]*0.9, 'EdgeColor', 'none');

% Sisi samping brim
for i=1:n-1
    % sisi luar brim
    fill3([X_brim_outer(1,i) X_brim_outer(1,i+1) X_brim_outer(2,i+1) X_brim_outer(2,i)], ...
          [Y_brim_outer(1,i) Y_brim_outer(1,i+1) Y_brim_outer(2,i+1) Y_brim_outer(2,i)], ...
          [Z_brim(1) Z_brim(1) Z_brim(2) Z_brim(2)], ...
          [0.76 0.60 0.42], 'EdgeColor', 'none');

    % sisi dalam brim
    fill3([X_brim_inner(1,i) X_brim_inner(1,i+1) X_brim_inner(2,i+1) X_brim_inner(2,i)], ...
          [Y_brim_inner(1,i) Y_brim_inner(1,i+1) Y_brim_inner(2,i+1) Y_brim_inner(2,i)], ...
          [Z_brim(1) Z_brim(1) Z_brim(2) Z_brim(2)], ...
          [0.9 0.9 0.9], 'EdgeColor', 'none');
end

% Pengaturan figure
axis equal
xlabel('X')
ylabel('Y')
zlabel('Z')
title('13.Topi Fedora')
view(40, 30)
camlight headlight
lighting gouraud
material dull
hold off

% 14.Topi Meksiko
[x, y] = meshgrid(-8:0.2:8);
r = sqrt(x.^2 + y.^2) + eps;
z = sin(r) ./ r;
surf(x, y, z)
shading interp
colormap(jet)
title('14.Topi Meksiko 3D')


%15.Gelombang
[x, y] = meshgrid(-5:0.2:5);
z = sin(x) + sin(y);
surf(x, y, z)
colormap(cool)
shading interp
title('15.Gelombang')


%16.Permukaan rak telur
[x, y] = meshgrid(-2*pi:0.2:2*pi);
z = sin(x).*sin(y);

figure('Color','w');
surf(x, y, z)
shading interp

% Membuat colormap warna coklat
brown_rak_telur = [linspace(0.6,0.9,64)', linspace(0.3,0.55,64)', linspace(0.1,0.15,64)'];
colormap(brown_rak_telur)

title('16.Permukaan Rak Telur')
axis tight
axis equal