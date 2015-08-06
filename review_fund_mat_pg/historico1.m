%-- Unknown date --%

%-- 04/04/2014 09:56 --%
cd c:\matlab' files'\detecao' de moscas'\
dir
x0 = imread('IR_24400.jpg');
x = imcrop(rgb2gray(x0))
dir *.mm
dir *.m
edit teste_escala
teste_escala
hi
[mm, rad] = max (hi);
rad
plot(hi)
shg
sin = sum(u>0, 3);
size(sin)
max(sin(:))
sinal = sum(u>0, 3);
%
% pixels that are increasing in at least a fraction Tsin of radii
%
Tsin = .8;
sinal = (sinal > Tsin*radmax);
imshow(sinal)
shg
Tsin = .9;
sinal = (sinal > Tsin*radmax);
%
imshow(sinal)
shg
sinal = sum(u>0, 3);
%
% pixels that are increasing in at least a fraction Tsin of radii
%
Tsin = .9;
sinal = (sinal > Tsin*radmax);
%
imshow(sinal)
shg
imshow((uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0)) )
imshow((uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0))))
imshow((uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0)))
imshow((uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0))))
shg
figure,imshow(x)
imshow((uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0)))
shg
imshow((uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))))
shg
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0)).*(ind > rad - 1).*(ind < rad + 1);
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*(ind > rad - 1).*(ind < rad + 1);
imshow(bin)
shg
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*(ind >= rad - 1).*(ind <= rad + 1);
shg
u = diff(w,1,3);
%
% Computes the mean of differences: local minima tend to present high
% values
%
[uu, ind] = max(u,[],3); % maximum of 1st derivative
%
% differente between largest and smallest
%
z = w(:,:,end)-w(:,:,1);
%
% finds the radius where highest transitions occured
%
hi = hist(ind(uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0)) ));
[mm, rad] = max (hi);
%
% Finds candidates that present mostly increasing behavior, and for which
% local maxima is around rad
%
sinal = sum(u>0, 3);
%
% pixels that are increasing in at least a fraction Tsin of radii
%
Tsin = .9;
sinal = (sinal > Tsin*radmax);
%
% Picks larger local maxima
%
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*(ind >= rad - 1).*(ind <= rad + 1);
imshow(bin)
shg
figure,imshow(x)
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*(ind >= rad - 1).*(ind <= rad + 1);
markers = imclose(bin, ones(3));
imshow(markers);
shg
max(uu(:))
imshow(uu/6)
shg
dir *.m
edit refine_minima2
edit acha_moscas2.m
bin = imregionalmax(uu).*(ind >= rad - 1).*(ind <= rad + 1);
markers = imclose(bin, ones(3));
imshow(markers);
imshow(bin)
figure,imshow(x)
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - 1).*(ind <= rad + 1);
markers = imclose(bin, ones(3));
imshow(markers);
figure,imshow(x)
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*(ind >= rad - 1).*(ind <= rad + 1);
%bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - 1).*(ind <= rad + 1);
markers = imclose(bin, ones(3));
imshow(markers);
imshow(bin)
mm = imregionalmax(uu);
figure,imshow(mm);
teste_escala
figure,imshow(markers)
figure,imshow(bin)
close all
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - 1).*(ind <= rad + 1);
figure,imshow(bin)
shg
figure,imshow(markers)
imshow(markers.*mm)
imshow(mm)
shg
size(mm)
mm = imregionalmax(uu);
imshow(mm)
imshow(markers.*mm)
shg
imshow(uu);
imshow(uu/10);
figure,imshow(mm)
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - 1).*(ind <= rad + 1);
figure,imshow(bin)
imshow(x);figure,imshow(bin)
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx)
imshow(x)
shg
x0 = imread('IR_24401.jpg');
x = imcrop(rgb2gray(x0))
dir *.m
teste_escala
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - 1).*(ind <= rad + 1);
%markers = imclose(bin, ones(3));
%imshow(markers);
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx)
rad
bin = (uu > mean(uu(uu~=0)) + 1*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - 1).*(ind <= rad + 1);
%markers = imclose(bin, ones(3));
%imshow(markers);
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx)
max(uu(:))
imshow(uu/14)
shg
max(z(:))
imshow(z/144)
shg
figure,imsho(uu/14)
figure,imshow(uu/14)
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0)))
figure,imshow(bin)
shg
bin2 = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*(ind >= rad - 1).*(ind <= rad + 1);*
bin2 = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*(ind >= rad - 1).*(ind <= rad + 1);
figure,imshow(bin2)
figure,imshow(bin)
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx)
figure
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - 1).*(ind <= rad + 1);
%markers = imclose(bin, ones(3));
%imshow(markers);
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx)
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - 1).*(ind <= rad + 1);
%markers = imclose(bin, ones(3));
%imshow(markers);
bin = imdilate(bin, ones(3));
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx)
%bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*(ind >= rad - 1).*(ind <= rad + 1);
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*(ind >= rad - 1).*(ind <= rad + 1);
figure
bin = imdilate(bin, ones(3));
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx)
close all
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu); %.*(ind >= rad - 1).*(ind <= rad + 1);
%markers = imclose(bin, ones(3));
%imshow(markers);
bin = imdilate(bin, ones(3));
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx)
figure,
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
%markers = imclose(bin, ones(3));
%imshow(markers);
bin = imdilate(bin, ones(3));
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx)
%
scaletol=2
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
%markers = imclose(bin, ones(3));
%imshow(markers);
bin = imdilate(bin, ones(3));
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx)
%
scaletol = 3;
figure
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
%markers = imclose(bin, ones(3));
%imshow(markers);
bin = imdilate(bin, ones(3));
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx)
%
teste_escala
figure,imshow(sinal)
shg
imshow(bin);figure,imshow(bin.*sinal)
teste_escala
close all
clc
teste_escala
size(w)
close all
h
close(h)
teste_escala
teste_escala2
waitbar((ix-radmax)/(siz(1)-2*radmax),h,'Progress');
close(h)
shg
teste_escala2
mag = imimposemin(mag, bin);
p = watershed(mag);
%
% post-processing: eliminates large regions
%
Tmin = (rad+3)*(rad+3)*pi; % maximum allowed area
num_moscas = 0;
for i=1:max(p(:));
if( sum(sum(p==i)) > Tmin)
p(p==i)=0;
else
num_moscas = num_moscas+1;
p(p==i) = num_moscas;
end
end
%
% Show results
%
clear out;
ct = bwperim(p == 0);
xx = x0(:,:,1);
xx(ct==1) = 255;
out(:,:,1)=xx;
xx = x0(:,:,2);
xx(ct==1) = 0;
out(:,:,2)=xx;
xx = x0(:,:,3);
xx(ct == 1) = 0;
out(:,:,3)=xx;
imshow(out);
mag = imimposemin(mag, bin);[gx, gy] = gradient(double(y));
mag = sqrt(gx.^2 + gy.^2);
mag = imimposemin(mag, bin);
p = watershed(mag);
%
% post-processing: eliminates large regions
%
Tmin = (rad+3)*(rad+3)*pi; % maximum allowed area
num_moscas = 0;
for i=1:max(p(:));
if( sum(sum(p==i)) > Tmin)
p(p==i)=0;
else
num_moscas = num_moscas+1;
p(p==i) = num_moscas;
end
end
%
% Show results
%
clear out;
ct = bwperim(p == 0);
xx = x0(:,:,1);
xx(ct==1) = 255;
out(:,:,1)=xx;
xx = x0(:,:,2);
xx(ct==1) = 0;
out(:,:,2)=xx;
xx = x0(:,:,3);
xx(ct == 1) = 0;
out(:,:,3)=xx;
imshow(out);
[gx, gy] = gradient(double(y));
mag = sqrt(gx.^2 + gy.^2);
mag = imimposemin(mag, bin);
p = watershed(mag);
%
% post-processing: eliminates large regions
%
Tmin = (rad+3)*(rad+3)*pi; % maximum allowed area
num_moscas = 0;
for i=1:max(p(:));
if( sum(sum(p==i)) > Tmin)
p(p==i)=0;
else
num_moscas = num_moscas+1;
p(p==i) = num_moscas;
end
end
%
% Show results
%
clear out;
ct = bwperim(p == 0);
xx = x0(:,:,1);
xx(ct==1) = 255;
out(:,:,1)=xx;
xx = x0(:,:,2);
xx(ct==1) = 0;
out(:,:,2)=xx;
xx = x0(:,:,3);
xx(ct == 1) = 0;
out(:,:,3)=xx;
imshow(out);
ct = bwperim(p == 0);
xx = x;
xx(ct==1) = 255;
out(:,:,1)=xx;
xx = x;
xx(ct==1) = 0;
out(:,:,2)=xx;
xx = x;
xx(ct == 1) = 0;
out(:,:,3)=xx;
imshow(out);
size(x)
size(ct)
out = zeros([size(x) 3]);
ct = bwperim(p == 0);
xx = x;
xx(ct==1) = 255;
out(:,:,1)=xx;
xx = x;
xx(ct==1) = 0;
out(:,:,2)=xx;
xx = x;
xx(ct == 1) = 0;
out(:,:,3)=xx;
imshow(out);
shg
size(x)
memory
out = zeros([size(x) 3]);
ct = bwperim(p == 0);
xx = x;
xx(ct==1) = 255;
out(:,:,1)=xx;
xx = x;
xx(ct==1) = 0;
out(:,:,2)=xx;
xx = x;
xx(ct == 1) = 0;
out(:,:,3)=xx;
imshow(out);
shg
imshow(x)
shg
whos x
imshow(out/255);
shg
clear
x0 = imread('IR_24400.jpg');
x = imcrop(rgb2gray(x0))
teste_escala2
ahg
shg
size(x)
size(out)
out = zeros([size(x) 3]);
ct = bwperim(p == 0);
xx = x;
xx(ct==1) = 255;
out(:,:,1)=xx;
xx = x;
xx(ct==1) = 0;
out(:,:,2)=xx;
xx = x;
xx(ct == 1) = 0;
out(:,:,3)=xx;
imshow(out/255);
shg
imshow(out/255);
x0 = imread('IR_24401.jpg');
x = imcrop(rgb2gray(x0));
teste_escala2
shg
figure,imshow(bin)
shg
figure,imshow(out)
figure,imshow(out/255)
rad
hi
plot(hi)
shg
hi = hist(ind(uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0)) ));
hi = hist(ind(uu > mean(uu(uu~=0)) + 5*std(uu(uu~=0)) ));
hi
plot(hi)
shg
num_moscas = 0;
for i=1:max(p(:));
if( sum(sum(p==i)) > Tmin)
p(p==i)=0;
else
num_moscas = num_moscas+1;
p(p==i) = num_moscas;
end
end
%
% Show results
%
%clear out;
out = zeros([size(x) 3]);
ct = bwperim(p == 0);
xx = x;
xx(ct==1) = 255;
out(:,:,1)=xx;
xx = x;
xx(ct==1) = 0;
out(:,:,2)=xx;
xx = x;
xx(ct == 1) = 0;
out(:,:,3)=xx;
imshow(out/255);
%
shg
mag = imimposemin(mag, bin);
p = watershed(mag);
%
% post-processing: eliminates large regions
%
Tmin = (rad+5)*(rad+5)*pi; % maximum allowed area
num_moscas = 0;
for i=1:max(p(:));
if( sum(sum(p==i)) > Tmin)
p(p==i)=0;
else
num_moscas = num_moscas+1;
p(p==i) = num_moscas;
end
end
%
% Show results
%
%clear out;
out = zeros([size(x) 3]);
ct = bwperim(p == 0);
xx = x;
xx(ct==1) = 255;
out(:,:,1)=xx;
xx = x;
xx(ct==1) = 0;
out(:,:,2)=xx;
xx = x;
xx(ct == 1) = 0;
out(:,:,3)=xx;
imshow(out/255);
%
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
%markers = imclose(bin, ones(3));
%imshow(markers);
bin = imdilate(bin, ones(3));
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx); title('Watershed seeds');
[gx, gy] = gradient(double(y));
mag = sqrt(gx.^2 + gy.^2);
mag = imimposemin(mag, bin);
p = watershed(mag);
%
% post-processing: eliminates large regions
%
Tmin = (rad+5)*(rad+5)*pi; % maximum allowed area
num_moscas = 0;
for i=1:max(p(:));
if( sum(sum(p==i)) > Tmin)
p(p==i)=0;
else
num_moscas = num_moscas+1;
p(p==i) = num_moscas;
end
end
%
% Show results
%
%clear out;
out = zeros([size(x) 3]);
ct = bwperim(p == 0);
xx = x;
xx(ct==1) = 255;
out(:,:,1)=xx;
xx = x;
xx(ct==1) = 0;
out(:,:,2)=xx;
xx = x;
xx(ct == 1) = 0;
out(:,:,3)=xx;
imshow(out/255);
hi = hist(ind(uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0)) ));
[mm, rad] = max (hi);
%
% Finds candidates that present mostly increasing behavior, and for which
% local maxima is around rad
%
sinal = sum(u>0, 3);
%
% pixels that are increasing in at least a fraction Tsin of radii
%
Tsin = .9;
sinal = (sinal > Tsin*radmax);
%
% Picks larger local maxima
%
scaletol = 4;
%bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*(ind >= rad - 1).*(ind <= rad + 1);
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
%markers = imclose(bin, ones(3));
%imshow(markers);
bin = imdilate(bin, ones(3));
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx); title('Watershed seeds');
[gx, gy] = gradient(double(y));
mag = sqrt(gx.^2 + gy.^2);
mag = imimposemin(mag, bin);
p = watershed(mag);
%
% post-processing: eliminates large regions
%
Tmin = (rad+5)*(rad+5)*pi; % maximum allowed area
num_moscas = 0;
for i=1:max(p(:));
if( sum(sum(p==i)) > Tmin)
p(p==i)=0;
else
num_moscas = num_moscas+1;
p(p==i) = num_moscas;
end
end
%
% Show results
%
%clear out;
out = zeros([size(x) 3]);
ct = bwperim(p == 0);
xx = x;
xx(ct==1) = 255;
out(:,:,1)=xx;
xx = x;
xx(ct==1) = 0;
out(:,:,2)=xx;
xx = x;
xx(ct == 1) = 0;
out(:,:,3)=xx;
imshow(out/255);
x0 = imread('IR_24403.jpg');
imshow(x0;
imshow(x0);
[c,r,p]=impixel;
c
teste_escala2
edit
dir
dir *.m
edit roda_detecao_moscas
roda_detecao_moscas
figure,imshow(out/255)
imshow(bin)
shg
rad
hi
plot(hi)
hi = hist(ind(uu > mean(uu(uu~=0)) + 6*std(uu(uu~=0)) ));
hi
plot(hi)
shg
hi = hist(ind(uu > mean(uu(uu~=0)) + 8*std(uu(uu~=0)) ));
hi
shg
imshow(uu > mean(uu(uu~=0)) + 8*std(uu(uu~=0)) )
shg
figure,imshow(x)
a = uu(uu~=0);
size(a)
a=sort(a);
size(a)
hi = hist(ind(uu > a(round(.95*length(a))))));
hi = hist(ind(uu > a(round(.95*length(a))));
hi = hist(ind(uu > a(round(.95*length(a)))));
hi
plot(hi)
shg
hi = hist(ind(uu > a(round(.99*length(a)))));
hi
plot(hi)
shg
hi = hist(ind(uu > a(round(.995*length(a)))));
hi = hist(ind(uu > a(round(.995*length(a)))))
hi
hi = hist(ind(uu > a(round(.999*length(a)))))
hi
plot(hi)
shg
imshow(uu > a(round(.999*length(a))))
shg
hist(uu(uu~=0))
shg
hist(uu(uu~=0),512)
shg
a(round(.999*length(a))
a(round(.999*length(a)))
bw = (uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0))); % blobs with high transition values
shg
imshow(bw)
shg
bw = (uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0))); % blobs with high transition values
[bw, num] = bwlabel(bw); % finds blobs
i=1
[mm pos] = max(bw == i);
mm
[mm pos] =(max( max(bw == i));
[mm pos] =(max( max(bw == i)))
[mm pos] = max(uu(bw == i));
mm
pos
ind(pos)
uu(bw==i)
pos
ind(bw==i)
[mm pos] = max(uu(bw == i));
indnew = ind(bw==i);
innew(pos)
indnew(pos)
bw = (uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0))); % blobs with high transition values
[bw, num] = bwlabel(bw); % finds blobs
h = [];
for i=1:num
[mm pos] = max(uu(bw == i));
indnew = ind(bw==i);
h = [h indnew(pos)];
end
h
h = hist(h)
shg
bw = (uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0))); % blobs with high transition values
[bw, num] = bwlabel(bw); % finds blobs
h = [];
for i=1:num
[mm pos] = max(uu(bw == i));
indnew = ind(bw==i);
h = [h indnew(pos)];
end
hi = hist(h);
[mm, rad] = max (hi);
rad
%hi = hist(ind(uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0)) ));
%[mm, rad] = max (hi);
%
% Finds candidates that present mostly increasing behavior, and for which
% local maxima is around rad
%
sinal = sum(u>0, 3);
%
% pixels that are increasing in at least a fraction Tsin of radii
%
Tsin = .9;
sinal = (sinal > Tsin*radmax);
%
% Picks larger local maxima
%
scaletol = 4;
%bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*(ind >= rad - 1).*(ind <= rad + 1);
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*imregionalmax(uu).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
%markers = imclose(bin, ones(3));
%imshow(markers);
bin = imdilate(bin, ones(3));
xx = repmat(x, [1 1 3]);
yy = xx(:,:,1);
yy(bin == 1) = 255;
xx(:,:,1) = yy;
yy = xx(:,:,2);
yy(bin == 1) = 0;
xx(:,:,2) = yy;
yy = xx(:,:,3);
yy(bin == 1) = 0;
xx(:,:,3) = yy;
imshow(xx); title('Watershed seeds');
[gx, gy] = gradient(double(y));
mag = sqrt(gx.^2 + gy.^2);
mag = imimposemin(mag, bin);
p = watershed(mag);
%
% post-processing: eliminates large regions
%
Tmin = (rad+5)*(rad+5)*pi; % maximum allowed area
num_moscas = 0;
for i=1:max(p(:));
if( sum(sum(p==i)) > Tmin)
p(p==i)=0;
else
num_moscas = num_moscas+1;
p(p==i) = num_moscas;
end
end
%
% Show results
%
%clear out;
out = zeros([size(x) 3]);
ct = bwperim(p == 0);
xx = x;
xx(ct==1) = 255;
out(:,:,1)=xx;
xx = x;
xx(ct==1) = 0;
out(:,:,2)=xx;
xx = x;
xx(ct == 1) = 0;
out(:,:,3)=xx;
imshow(out/255);
shg
dir *.m
edit teste_escala2.m
roda_detecao_moscas
dir
pwd
nome_out = ['new_out_' nome_in];
nome_out = ['new_out_' nome_in]
imshow(out/255)
shg
roda_detecao_moscas
pwd
imwrite(out/255, nome_out);
pwd
nome_out
imwrite(out/255, nome_out);
imshow(out/255)
pwd
dir *.jpg
help imwrite
a=imwrite(out/255, nome_out);
cd ..
imwrite(out/255, nome_out);
imshow(out/255)
shg
cd detecao' de moscas'\
imwrite(uint8(out), nome_out);
cd ..
imwrite(uint8(out), nome_out);
whos out
imshow(out/255)
shg
imwrite(uint8(out), nome_out, 'jpg');
pwd
imwrite(uint8(out), nome_out, 'jpg');
help imwrite
imshow(uint8(out))
shg
close all
pwd
imwrite(uint8(out), 'lixo.jpg', 'jpg');
imwrite(uint8(out), 'lixo.bmp');
imwrite(uint8(out), 'lixo.tiff');
imwrite(uint8(out), 'lixo.jpeg');
imwrite(out/255, [nome_out '.tiff']);
listing
listing.isdir
listing.name
cd license' plate'\
dir
cd images\
dir
x=imread('20360000.png');
imshow(x0
imshow(x)
x=imread('BIG_43280000.png');
imshow(x)
shg
size(x)
dir *.m
dir
cd ..
dir *.m
edit teste_escalas
sig = size(x,1)*.007;
sig
sig = size(x,1)*.007;
g = fspecial('gaussian', (2*round(sig)+1)*[1 1], sig);
y = imfilter(x, g);
imshow(y)
shg
y=double(y);
radmax = 7;
siz = size(y);
im_int = integralImage(y);
%im_int = im_int(2:end, 2:end);
w = zeros([siz radmax]);
%imshow(x);
%[iy, ix, p]=impixel;
%
%w(1) = x(ix, iy);
h = waitbar(0,'Initializing waitbar...');
tmp = zeros(size(y));
for radius = 1:radmax,
waitbar(radius/radmax,h,'Progress');
for ix = radmax+1:siz(1)-radmax;
for iy = radmax+1:siz(2)-radmax;
rmin = max(ix - radius , 1);
rmax = min(ix + radius, siz(1));
cmin = max(iy - radius, 1);
cmax = min(iy + radius, siz(2));
area = im_int(rmax + 1, cmax + 1) - im_int(rmax + 1, cmin) - im_int(rmin, cmax + 1) + im_int(rmin, cmin);
aa = sum(sum(x(rmin:rmax,cmin:cmax)));
%[area aa]
tmp(ix,iy) = area/(rmax - rmin + 1)/(cmax - cmin + 1);
end
w(:,:,radius) = tmp;
end
end
close(h);
%
% computes differences of averages using several radii
%
u = diff(w,1,3);
%
% Computes the mean of differences: local minima tend to present high
% values
%
[uu, ind] = max(u,[],3); % maximum of 1st derivative
%
% differente between largest and smallest
%
z = w(:,:,end)-w(:,:,1);
%
% finds the radius where highest transitions occured
%
max(uu(:))
imshow(uu/53)
shg
bw = (uu > mean(uu(uu~=0)) + 4*std(uu(uu~=0))); % blobs with high transition values
[bw, num] = bwlabel(bw); % finds blobs
h = [];
for i=1:num
[mm pos] = max(uu(bw == i));
indnew = ind(bw==i);
h = [h indnew(pos)];
end
[hi, ii] = hist(h, radmax);
[mm, rad] = max (hi);
rad = ii(rad);
imshow(bw)
shg
rad
bw = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))); % blobs with high transition values
imshow(bw)
shg
[bw, num] = bwlabel(bw); % finds blobs
h = [];
for i=1:num
[mm pos] = max(uu(bw == i));
indnew = ind(bw==i);
h = [h indnew(pos)];
end
[hi, ii] = hist(h, radmax);
[mm, rad] = max (hi);
rad = ii(rad);
rad
hi
max(zz(:))
max(z(:))
imshow(z/50)
shg
[uu, ind] = max(abs(u),[],3); % maximum of 1st derivative
%
% differente between largest and smallest
%
z = w(:,:,end)-w(:,:,1);
%
% finds the radius where highest transitions occured
%
uu = uu.*z; % MUDEI AQUI!!!
max(uu(:))
imshow(uu/1000)
shg
teste_escalas
size(w)
for i = 1:7,
imshow(w/255);pause;end
for i = 1:7,imshow(w(:,:,i)/255);pause;end
dir *.m
edit teste_escala2.m
edit teste_escalas.m
teste_escalas
size(w)
for i = 1:7,imshow(w(:,:,i)/255);pause;end
for i = 1:8,imshow(w(:,:,i)/255);pause;end
teste_escalas
for i = 1:8,imshow(w(:,:,i)/255);pause;end
teste_escalas
area
plot(area)
shg
for radius = 1:radmax;
r1 = w(:,:,radius);
r2 = w(:,:,radius + 1);
nova = (r2*area(radius+1)-r1*area(radius))/(area(radius+1)-area(radius));
ww(:,:,radius)=nova;end
size(ww)
max(ww(:))
min(ww(:))
for i = 1:7,imshow(ww(:,:,i)/250);pause;end
max(u(:))
min(u(:))
size(u)
for i=1:7, imagesc(u(:,:,i));end
for i=1:7, imagesc(u(:,:,i));pause;end
teste_escalas
for i=1:14, imagesc(u(:,:,i));pause;end
colormap gray
for i=1:14, imagesc(u(:,:,i));pause;end
teste_escalas
for i=1:14, imagesc(u(:,:,i));pause;end
size(u)
help imregionalmax
umax = imregionalmax(u);
size(umax)
[umax, ind] = imregionalmax(u);
umax = imregionalmax(u);
size(umax)
imshow(umax(:,:,1) > 0)
imshow(umax(:,:,2) > 0)
imshow(umax(:,:,3) > 0)
imshow(umax(:,:,4) > 0)
shg
imshow(umax(:,:,5) > 0)
shg
imshow(umax(:,:,6) > 0)
shg
imshow(umax(:,:,8) > 0)
shg
cd images\
dir se*.jpg
x = imread('several_licenses_large.jpg');
imshow(w)
shg
imshow(x)
sg
shg
size(x)
x=imcrop(rgb2gray(x));
imshow(x)
shg
size(x)
cd ..
teste_escalas
size(w)
for i=1:15, imagesc(u(:,:,i));pause;end
close all
imshow(x);
for i=1:15, figure,imagesc(u(:,:,i));pause;end
close all
imagesc(x);
colorbar(gray);
colormap(gray);
shg
for i=1:15, figure,imagesc(u(:,:,i));pause;end
close all
max(u(:))
for i=1:15, figure,imshow(abs(u(:,:,i))/20);pause;end
close all
for i=1:15, figure,imshow(abs(w(:,:,i))/255);pause;end
close all
for i=1:15, figure,imshow(abs(w(:,:,i))/255);pause;end
close all
imshow(x)
[c,r,p]=impixel;
a = w(r,c,:);
a=a(:)
x(r,c)
w(:,:,1) = y;
for radius = 1:radmax,
waitbar(radius/radmax,h,'Progress');
for ix = radmax+1:siz(1)-radmax;
for iy = radmax+1:siz(2)-radmax;
rmin = max(ix - radius , 1);
rmax = min(ix + radius, siz(1));
cmin = max(iy - radius, 1);
cmax = min(iy + radius, siz(2));
soma = im_int(rmax + 1, cmax + 1) - im_int(rmax + 1, cmin) - im_int(rmin, cmax + 1) + im_int(rmin, cmin);
area(radius + 1) = (rmax - rmin + 1)*(cmax - cmin + 1);
tmp(ix,iy) = soma/(rmax - rmin + 1)/(cmax - cmin + 1);
end
w(:, :, radius + 1) = tmp;
end
end
h = waitbar(0,'Initializing waitbar...');
tmp = zeros(size(y));
area = zeros(1, radmax+1); % area of concentric squares
w(:,:,1) = y;
for radius = 1:radmax,
waitbar(radius/radmax,h,'Progress');
for ix = radmax+1:siz(1)-radmax;
for iy = radmax+1:siz(2)-radmax;
rmin = max(ix - radius , 1);
rmax = min(ix + radius, siz(1));
cmin = max(iy - radius, 1);
cmax = min(iy + radius, siz(2));
soma = im_int(rmax + 1, cmax + 1) - im_int(rmax + 1, cmin) - im_int(rmin, cmax + 1) + im_int(rmin, cmin);
area(radius + 1) = (rmax - rmin + 1)*(cmax - cmin + 1);
tmp(ix,iy) = soma/(rmax - rmin + 1)/(cmax - cmin + 1);
end
w(:, :, radius + 1) = tmp;
end
end
close(h);
a = w(r,c,:); a = a(:)
x(r,c)
plot(a)
shg
y(r,c)
a
x(r,c)
teste_escalas
a = w(r,c,:); a = a(:)
plot(a)
for i=1:15, imshow(abs(u(:,:,i))/20);pause;end
h = waitbar(0,'Initializing waitbar...');
tmp = zeros(size(y));
area = zeros(1, radmax+1); % area of concentric squares
w(:,:,1) = y;
for radius = 1:radmax,
waitbar(radius/radmax,h,'Progress');
for ix = radmax+1:siz(1)-radmax;
for iy = radmax+1:siz(2)-radmax;
rmin = max(ix - radius , 1);
rmax = min(ix + radius, siz(1));
cmin = max(iy - radius, 1);
cmax = min(iy + radius, siz(2));
soma = im_int(rmax + 1, cmax + 1) - im_int(rmax + 1, cmin) - im_int(rmin, cmax + 1) + im_int(rmin, cmin);
area(radius + 1) = (rmax - rmin + 1)*(cmax - cmin + 1);
tmp(ix,iy) = soma/(rmax - rmin + 1)/(cmax - cmin + 1);
end
w(:, :, radius + 1) = tmp;
end
end
close(h);
h = waitbar(0,'Initializing waitbar...');
tmp = zeros(size(y));
area = zeros(1, radmax+1); % area of concentric squares
w(:,:,1) = y;
for radius = 1:radmax,
waitbar(radius/radmax,h,'Progress');
for ix = radmax+1:siz(1)-radmax;
for iy = radmax+1:siz(2)-radmax;
rmin = max(ix - radius , 1);
rmax = min(ix + radius, siz(1));
cmin = max(iy - radius, 1);
cmax = min(iy + radius, siz(2));
soma = im_int(rmax + 1, cmax + 1) - im_int(rmax + 1, cmin) - im_int(rmin, cmax + 1) + im_int(rmin, cmin);
area(radius + 1) = (rmax - rmin + 1)*(cmax - cmin + 1);
tmp(ix,iy) = soma/(rmax - rmin + 1)/(cmax - cmin + 1);
end
w(:, :, radius + 1) = tmp;
end
end
close(h);
max(u(:))
for i=1:15, imshow(abs(u(:,:,i))/70);pause;end
teste_escalas
for i=1:15, imshow(abs(u(:,:,i))/70);pause;end
for i=1:15, imshow(abs(u(:,:,i))/20);pause;end
max(uu(:))
imshow(uu/23)
shg
figure,imshow(x)
figure,imshow(uu/23)
a = w(r,c,:); a = a(:)
r
c
[c,r,p]=impixel;
imshow(x)
[c,r,p]=impixel;
a = w(r,c,:); a = a(:)
plot(a)
shg
imshow(x)
teste_escalas
a = w(r,c,:); a = a(:)
plot(a)
shg
for i=1:24, imshow(abs(u(:,:,i))/20);pause;end
dir *.m
edit evaluate_std2.m
[gx, gy] = gradient(x);
size(x)
[gx, gy] = gradient(double(x));
y = gx;
radmax = 25;
siz = size(y);
im_int = integralImage(y);
%im_int = im_int(2:end, 2:end);
w = zeros([siz radmax]);
%imshow(x);
%[iy, ix, p]=impixel;
%
%w(1) = x(ix, iy);
h = waitbar(0,'Initializing waitbar...');
tmp = zeros(size(y));
area = zeros(1, radmax+1); % area of concentric squares
w(:,:,1) = y;
for radius = 0:radmax,
waitbar(radius/radmax,h,'Progress');
for ix = radmax+1:siz(1)-radmax;
for iy = radmax+1:siz(2)-radmax;
rmin = max(ix - radius , 1);
rmax = min(ix + radius, siz(1));
cmin = max(iy - radius, 1);
cmax = min(iy + radius, siz(2));
soma = im_int(rmax + 1, cmax + 1) - im_int(rmax + 1, cmin) - im_int(rmin, cmax + 1) + im_int(rmin, cmin);
area(radius + 1) = (rmax - rmin + 1)*(cmax - cmin + 1);
tmp(ix,iy) = soma/(rmax - rmin + 1)/(cmax - cmin + 1);
end
w(:, :, radius + 1) = tmp;
end
end
close(h);
%
% computes differences of averages using several radii
%
u = diff(w,1,3);
%
% Computes the mean of differences: local minima tend to present high
% values
%
[uu, ind] = max(abs(u),[],3); % maximum of 1st derivative
%
% differente between largest and smallest
%
for i=1:24, imshow(abs(u(:,:,i))/20);pause;end
max(u(:))
for i=1:24, imshow(abs(u(:,:,i))/66);pause;end
ause;end
>>
>> max(u(:))
cd images\
x = imread('license_plate_large.jpg');
x=rgb2gray(x);.
x=rgb2gray(x);
imshow(x)
shg
cd ..
dir *.m
teste_escalas
size(x)
size(w)
for i=1:24, imshow(abs(u(:,:,i))/66);pause;end
imshow(x)
[c,r,p]=impixel;
a = w(r,c,:); a = a(:)
plot(a)
shg
plot(a)
shg
imshow(x)
[
Prezado(a),
Estou escrevendo pela segunda vez, pois da primeira não tive resposta. Relato novamente meu problema com a combinação Vaio/Windows 7:
Tenho um Sony Vaio VPC-SB, rodando Windows 7 64 bits (SO que veio com a maquina), e com função de fechamento da tampa está programada para hibernar o computador. Como trabalho em casa com meu notebook, é comum eu fechar a tampa do mesmo no trabalho, colocar na minha pasta, e levar para casa. Faz uns 10 dias fiz exatamente isso, e depois de algum tempo em casa minha esposa comentou que minha pasta estava bem quente. De fato, o notebook estava MUITO quente, pois pelo visto havia ficado ligado.
Depois que esfriou tentei conectar na fonte, e a luz âmbar da bateria começou a piscar rapidamente (em buscas na internet constatei que era problema na bateria). É incrível que o sistema consiga “queimar” a bateria por sobre-aquecimento, ainda mais quando deveria ter hibernado. Pior ainda, entro no site da Sony Brasil e não encontro informações sobre bateria de reposição.
Sou professor no Instituto de Informática da Universidade Federal do Rio Grande do Sul, já tinha comprado máquinas Sony antes (e estava feliz), mas ter a bateria queimada por esse tipo de problema “bobo” faz a credibilidade da Sony cair bastante. Soma-se a isso a falta de informação sobre reposição da bateria no site, e a falta de resposta no “Fale Conosco”.
Sds,
Claudio Rosito Jung
[c,r,p]=impixel;
a = w(r,c,:); a = a(:)
plot(a)
for i=1:24, imshow(abs(w(:,:,i))/66);pause;end
for i=1:24, imshow(abs(w(:,:,i))/250);pause;end
max(uu(:))
imshow(uu/30)
shg
size(ind)
imshow(ind/25)
shg
hist(uu(:),512)
shg
imshow(ind(uu>15))
shg
imshow(ind.*(uu>15))
imshow(ind.*(uu>15)/25)
colormap(hsv);colorbar
hi = hist(ind(uu>15),25)
[c,b] = hist(ind(uu>15),20)
plot(b,c)
shg
[c,b] = hist(ind(uu>15),7)
plot(b,c)
shg
bar(b,c)
shg
imshow(ind.*(uu>15)/25)
shg
imshow(ind.*(uu>15))
shg
imshow(ind.*(uu>20))
shg
imshow(x)
shg
%-- 08/04/2014 08:39 --%
A = [3 1;4 2]
poly(A)
A^2-5*A+2*eye(2)
IA = (5*eye(2) - A)/2
IA*A
clear
x = -1:.02:1;
y = 3*x+.1*randn(size(x));
plot(x,y)
shg
y = 3*x+.3*randn(size(x));
plot(x,y,'x')
shg
size(x)
X = [x' y']
help cov
c = cov(X)
[v,d] = eig(c)
plot(x,y,'x');hold on;
help plot
v
plot(x,y,'x');hold on;plot([0 .307],[0 .9517],'b')
shg
plot(x,y,'x');hold on;plot([0 .307],[0 .9517],'r')
shg
plot(x,y,'x');hold on;plot([0 .307],[0 .9517],'r');plot([0 -.9517],
plot(x,y,'x');hold on;plot([0 .307],[0 .9517],'r');plot([0 -.9517], [0 .307],'g')
shg
axis equal
shg
v
A = [v(:,2)'; v(:,1)']
x
X
size(X)
Y = A*(X');
size(Y)
Y=Y'
cy = cov(Y)
d
x=rand(1,500);
y=rand(1,500);
y=rand(1,500);
X = [x' y']
plot(x,y,'x')
shg
c = cov(X)
[v,d] = eig(c)
sqrt(d)
clear
u = [7;8;1]
v = [-1 2 -3]'
for i=1:1000,
x = 5*randn(1);y=5*randn(1);
P(i,:) = (x*u+y*v)';end
size(P)
c = cov(P)
[v,d] = eig(c)
cross(u,v)
u
v
v = [-1 2 -3]'
[vv,d] = eig(c)
cross(u,v)
vv(:,1)
n=cross(u,v)
n/norm(n)
vv(:,1)
A = rand(2,7)
A1 = A'*A
A2=A*A'
[v1,d1]=eig(A1)
[v2,d2]=eig(A2)
A = [2 4 5;-1 0 2]
[v,d] = eig(A*A')
sqrt(d)
A
[v,d] = eig(A*A')
D = sqrt(d);
D
help eig
help eigs
[v,d] = eigs(A*A')
D = sqrt(d)
A
S = [D [0;0]]
[v,d] = eigs(A*A')
U = v
[v,d] = eigs(A'*A)
D
V = v
for i=1:2,
U(:,i) = A*V(:,i)/D(i,i);end
U
[v,d] = eigs(A*A')
U*S*V^T
U*S*V'
A
help svd
[u,s,v]=svd(A)
u
U
v
V
u*s*v'
v(:,3)=-v(:,3)
u*s*v'
a
AA
A
u*s*v'
help pinv
aa = pinv(A)
aa*A
A*aa
a=rand(2)
aa = pinv(a)
aa*a
a*aa