Command line MATLAB aula 17/4
por Claudio Rosito Jung - quinta, 17 abril 2014, 10:11
 	
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
x=randn(1,500);
y=rannd(1,500);
y=randn(1,500);
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
pwd
cd c:\matlab' files'\detecao' de moscas'\
dir
edit roda_detecao_moscas.m
listing = dir('cinza*.jpg');
listing.nam,e
listing.name
roda_detecao_moscas
size(x)
imshow(x)
shg
listing
listing.name
help imwrite
imshow(out/255)
shg
edit teste_escalas2.m
pwd
edit teste_escalas2.m
edit teste_escala2.m
roda_detecao_moscas
x0 = imread('cinza 5.jpg');
teste_escala1
teste_escala2
figure,imshow(p==0)
mag = imimposemin(mag, bin);
p = watershed(mag);
figure,imshow(p==0)
max(mag(:))
min(mag(:))
imshow(mag/255)
shg
imshow(mag/10000)
shg
[gx, gy] = gradient(double(y));
mag = sqrt(gx.^2 + gy.^2);
imshow(mag/10000)
imshow(mag/100)
shg
imshow(mag/10)
shg
figure,imshow(bin)
shg
mag = imimposemin(mag, bin);
imshow(mag/10)
shg
p = watershed(mag);
figure,imshow(p == 0)
figure,imshow(out/255)
[gx, gy] = gradient(double(x));
mag = sqrt(gx.^2 + gy.^2);
mag = imimposemin(mag, bin);
p = watershed(mag);
%
% post-processing: eliminates large regions
%
figure,imshow(p==0)
close all
figure,imshow(p==0)
p0 = p;
Tmin = pi*(1.7*rad)^2; % maximum allowed area
%final = zeros(size(y));
num_moscas = 0;
for i=1:max(p(:));
if( sum(sum(p==i)) > Tmin)
p(p==i)=0;
else
num_moscas = num_moscas+1;
p(p==i) = num_moscas;
% [ix iy] = find(p == num_moscas);
% ix = mean(ix);
% iy = mean(iy);
% final(round(ix), round(iy)) = 1;
end
end
final = bin.*(p > 0);
%final = bin;
final = imdilate(final, [0 1 0;1 1 1;0 1 0]);
%
% Show results
%
%clear out;
out = zeros([size(x) 3]);
%ct = bwperim(p == 0);
ct = final;
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
title('final count');
shg
figure,imshow(p0==0)
x0 = imread('cinza 4.jpg');
teste_escala2
bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
figure,imshow(bin)
figure,imshow(out/255)
bin = (uu > mean(uu(uu~=0)) + 1*std(uu(uu~=0))).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
figure,imshow(bin)
close all
edit circularity_threshold(
edit circularity_threshold
edit circularity_threshold.m
edit
[bw, num] = bwlabel(bin);
help bwperim
perim = bwperim(bw == 2);
imshow(perim)
perim = bwperim(bw == 3);
imshow(perim)
shg
max(bw(:))
imshow(bw==2)
shg
imshow(bw==50)
shg
perim = bwperim(bw != 3);
perim = bwperim(bw ! 3);
perim = bwperim(bw !~ 3);
perim = bwperim(bw ~= 3);
imshow(perim)
shg
figure,imshow(bin)
i = 2
bwarea(bin == i);
bwarea(bin == i)
bwarea(bin == 3)
imshow(bin==3)
shg
imshow(bin==10)
shg
imshow(bin==30)
shg
imshow(bin==60)
shg
sum(sum(bin==2))
max(bin(:))
bwarea(bw == 2)
bwarea(bw == 20)
i=40
perim = bwperim(bw ~= i);
perim = sum(perim(:));
area = bwarea(bw == i);
circ = perim*perim/area
perim
area
imshow(bwperim(
imshow(bwperim)
shg
imshow(perim)
shg
perim = bwperim(bw ~= i);
imshow(perim)
shg
max(perim(:))
sum(perim(:))
hist(perim(:))
imshow(perim)
sum(sum(perim==1))
imshow(perim)
shg
imshow(perim)
shg
perim = bwperim(bw == i);
imshow(perim)
shg
perim = bwperim(bw == i);
perim = sum(perim(:));
area = bwarea(bw == i);
circ = perim*perim/area
circ = perim*perim/area/4/pi
[bw, num] = bwlabel(bin);
for i = 1:num,
perim = bwperim(bw == i);
perim = sum(perim(:));
area = bwarea(bw == i);
circ = perim*perim/area/4/pi
a(i) = circ;
end
size(a)
a = [];
[bw, num] = bwlabel(bin);
for i = 1:num,
perim = bwperim(bw == i);
perim = sum(perim(:));
area = bwarea(bw == i);
circ = perim*perim/area/4/pi
a = [a circ];
end
plot(a)
shg
a = [];
[bw, num] = bwlabel(bin);
for i = 1:num,
perim = bwperim(bw == i);
perim = sum(perim(:));
area = bwarea(bw == i);
circ = perim*perim/area/4/pi;
a = [a circ];
end
plot(a)
hist(a,50)
shg
a = [];
[bw, num] = bwlabel(bin);
for i = 1:num,
perim = bwperim(bw == i);
perim = sum(perim(:));
area = bwarea(bw == i);
circ = perim*perim/area/4/pi;
a = [a circ];
if (circ > 2)
imshow(bw==2);
pause
end
end
close all
imshow(bw)
imshow(bw==20)
shg
[bw, num] = bwlabel(bin);
for i = 1:num,
perim = bwperim(bw == i);
perim = sum(perim(:));
area = bwarea(bw == i);
if (area > 20)
circ = perim*perim/area/4/pi;
a = [a circ];
if (circ > 2)
imshow(bw==2);
pause
end
end
end
a = [];
[bw, num] = bwlabel(bin);
for i = 1:num,
perim = bwperim(bw == i);
perim = sum(perim(:));
area = bwarea(bw == i);
if (area > 20)
circ = perim*perim/area/4/pi;
a = [a circ];
if (circ > 2)
imshow(bw==i);
pause
end
end
end
bin2 = bin;
Tcirc = 2;
a = [];
[bw, num] = bwlabel(bin);
for i = 1:num,
perim = bwperim(bw == i);
perim = sum(perim(:));
area = bwarea(bw == i);
if (area > 20)
circ = perim*perim/area/4/pi;
a = [a circ];
if (circ > Tcirc)
bin2(bin==i)=0;
end
end
end
imshow(bin)
shg
figure,imshow(bin2)
bin2 = bin;
Tcirc = 2;
a = [];
[bw, num] = bwlabel(bin);
for i = 1:num,
perim = bwperim(bw == i);
perim = sum(perim(:));
area = bwarea(bw == i);
if (area > 20)
circ = perim*perim/area/4/pi;
a = [a circ];
if (circ > Tcirc)
bin2(bin==i)=0;
end
end
end
imshow(bin2)
shg
bin2 = bin;
Tcirc = 2;
a = [];
[bw, num] = bwlabel(bin);
for i = 1:num,
perim = bwperim(bw == i);
perim = sum(perim(:));
area = bwarea(bw == i);
if (area > 20)
circ = perim*perim/area/4/pi;
a = [a circ];
if (circ > Tcirc)
bin2(bw==i)=0;
end
end
end
imshow(bin2)
figure,imshow(bin)
bin2 = circularity_threshold(bin);
figure,imshow(bin2)
shg
figure,imshow(bin)
shg
bin = (uu > mean(uu(uu~=0)) + .5*std(uu(uu~=0))).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
imshow(bin)
shg
bin2 = circularity_threshold(bin);
figure,imshow(bin)
figure,imshow(bin2)
close all
bin = (uu > mean(uu(uu~=0)) + 1*std(uu(uu~=0))).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
bin2 = circularity_threshold(bin);
imshow(bin);figure,imshow(bin2)
teste_escala2
Tsin = .9;
sinal = (sinal > Tsin*radmax);
%
% Picks larger local maxima that occur at scales consistent with radius rad
%
scaletol = 1;
bin0 = (uu > mean(uu(uu~=0)) + 1*std(uu(uu~=0))).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
%bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).v.*(ind >= rad - scaletol).*(ind <= rad + scaletol);
bin = circularity_threshold(bin0);
bin = bin.*imregionalmax(uu);
%markers = imclose(bin, ones(3));
%imshow(markers);
% bin = imdilate(bin, ones(3));
%
% xx = repmat(x, [1 1 3]);
% yy = xx(:,:,1);
% yy(bin == 1) = 255;
% xx(:,:,1) = yy;
%
% yy = xx(:,:,2);
% yy(bin == 1) = 0;
% xx(:,:,2) = yy;
%
% yy = xx(:,:,3);
% yy(bin == 1) = 0;
% xx(:,:,3) = yy;
% imshow(xx); title('Watershed seeds');
%
[gx, gy] = gradient(double(x));
mag = sqrt(gx.^2 + gy.^2);
mag = imimposemin(mag, bin);
p = watershed(mag); p0 = 0;
%
% post-processing: eliminates large regions
%
Tmin = pi*(1.7*rad)^2; % maximum allowed area
%final = zeros(size(y));
num_moscas = 0;
for i=1:max(p(:));
if( sum(sum(p==i)) > Tmin)
p(p==i)=0;
else
num_moscas = num_moscas+1;
p(p==i) = num_moscas;
% [ix iy] = find(p == num_moscas);
% ix = mean(ix);
% iy = mean(iy);
% final(round(ix), round(iy)) = 1;
end
end
final = bin.*(p > 0);
%final = bin;
final = imdilate(final, [0 1 0;1 1 1;0 1 0]);
%
% Show results
%
%clear out;
out = zeros([size(x) 3]);
%ct = bwperim(p == 0);
ct = final;
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
title('final count');
sinal = sum(u>0, 3);
%
% pixels that are increasing in at least a fraction Tsin of radii
%
Tsin = .9;
sinal = (sinal > Tsin*radmax);
%
% Picks larger local maxima that occur at scales consistent with radius rad
%
scaletol = 2;
bin0 = (uu > mean(uu(uu~=0)) + 1*std(uu(uu~=0))).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
%bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).v.*(ind >= rad - scaletol).*(ind <= rad + scaletol);
bin = circularity_threshold(bin0);
bin = bin.*imregionalmax(uu);
%markers = imclose(bin, ones(3));
%imshow(markers);
% bin = imdilate(bin, ones(3));
%
% xx = repmat(x, [1 1 3]);
% yy = xx(:,:,1);
% yy(bin == 1) = 255;
% xx(:,:,1) = yy;
%
% yy = xx(:,:,2);
% yy(bin == 1) = 0;
% xx(:,:,2) = yy;
%
% yy = xx(:,:,3);
% yy(bin == 1) = 0;
% xx(:,:,3) = yy;
% imshow(xx); title('Watershed seeds');
%
[gx, gy] = gradient(double(x));
mag = sqrt(gx.^2 + gy.^2);
mag = imimposemin(mag, bin);
p = watershed(mag); p0 = 0;
%
% post-processing: eliminates large regions
%
Tmin = pi*(1.7*rad)^2; % maximum allowed area
%final = zeros(size(y));
num_moscas = 0;
for i=1:max(p(:));
if( sum(sum(p==i)) > Tmin)
p(p==i)=0;
else
num_moscas = num_moscas+1;
p(p==i) = num_moscas;
% [ix iy] = find(p == num_moscas);
% ix = mean(ix);
% iy = mean(iy);
% final(round(ix), round(iy)) = 1;
end
end
final = bin.*(p > 0);
%final = bin;
final = imdilate(final, [0 1 0;1 1 1;0 1 0]);
%
% Show results
%
%clear out;
out = zeros([size(x) 3]);
%ct = bwperim(p == 0);
ct = final;
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
title('final count');
shg
figure,imshow(out/255)
size(cinza)
whos
Tsin = .9;
sinal = (sinal > Tsin*radmax);
%
% Picks larger local maxima that occur at scales consistent with radius rad
%
scaletol = 2;
bin0 = (uu > mean(uu(uu~=0)) + .5*std(uu(uu~=0))).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
%bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).v.*(ind >= rad - scaletol).*(ind <= rad + scaletol);
bin = circularity_threshold(bin0);
figure,imshow(bin)
figure,imshow(bin0)
rad
sinal = sum(u>0, 3);
%
% pixels that are increasing in at least a fraction Tsin of radii
%
Tsin = .9;
sinal = (sinal > Tsin*radmax);
%
% Picks larger local maxima that occur at scales consistent with radius rad
%
scaletol = 1.5;
bin0 = (uu > mean(uu(uu~=0)) + .5*std(uu(uu~=0))).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
%bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).v.*(ind >= rad - scaletol).*(ind <= rad + scaletol);
bin = circularity_threshold(bin0);
figure,imshow(bin)
shg
figure,imshow(bin0)
bin0 = (uu > mean(uu(uu~=0)) + .5*std(uu(uu~=0))).*(ind >= rad - scaletol).*(ind <= rad + scaletol);
bin0 = imdilate(bin0, ones(2*round(rad/2)+1));
%bin = (uu > mean(uu(uu~=0)) + 2*std(uu(uu~=0))).v.*(ind >= rad - scaletol).*(ind <= rad + scaletol);
bin = circularity_threshold(bin0);
close all
imshow(bin0)
shg
figure,imshow(bin)
bin = bin.*imregionalmax(uu);
figure,imshow(bin)
close all
teste_escala2
figure,imshow(out/255)
clear
cd ../plane' fitting depth camera'/
dir
x = imread('Image_depth01.jpg');
imshow(x)
shg
edit ransac_plane
edit
imshow(x)
shg
y = imcrop;
imshow(x<60)
shg
imshow(x<150)
shg
imshow(x<100)
shg
xt = (x < 100); % pixels near the camera
[ix, iy] = find(xt > 0);
length(ix)
rand(1,4)*length(ix)
ind = ceil(rand(1,4)*length(ix));
ind
ix(ind)
x(ix(ind), iy(ind))
x(ix(1),iy(2))
x(ix(1),iy(1))
ix(ind)
iy(ind)
r=rand(5)
[ix iy]=find(r>.97)
r(ix,iy)
ix
xt = (x < 100); % pixels near the camera
[ix, iy] = find(xt > 0);
%
% randomly selects 4 points
%
ind = ceil(rand(1,4)*length(ix));
A = [ix(ind) iy(ind)];
ix(ind)
iy(ind)
x(218,197)
x(ix(ind),iy(ind))
diag( x(ix(ind),iy(ind)))
ind = ceil(rand(1,3)*length(ix));
A = [ix(ind) iy(ind) diag( x(ix(ind),iy(ind)))];
B = ones(4,1);
c = inv(A)*B; % coefficients of the plane ax + by + cz = 1
x = double(x);
xt = (x < 100); % pixels near the camera
[ix, iy] = find(xt > 0);
%
% randomly selects 4 points
%
ind = ceil(rand(1,3)*length(ix));
A = [ix(ind) iy(ind) diag( x(ix(ind),iy(ind)))];
B = ones(4,1);
c = inv(A)*B; % coefficients of the plane ax + by + cz = 1
inv(A)
B
for i = 1:length(ix);
data(i,:) = [ix(i) iy(i) x(ix(i), iy(i))];
end
size(data)
data(ind,:)
ix(ind)
diag( x(ix(ind),iy(ind)))
vec_err = data*c - ones(length(ix), 1);
%
% Given a depth image, computes a plane based on RANSAC
%
CONTMAX = 200; % maximum number of iterations
TOL = 2; % acceptance tolerance
pinliers = .5; % minimum number of inliers
x = double(x);
xt = (x < 100); % pixels near the camera
[ix, iy] = find(xt > 0);
data = []; % x y z data
Nsamples = length(ix); % number of samples
for i = 1:Nsamples;
data(i,:) = [ix(i) iy(i) x(ix(i), iy(i))];
end
%
% Runs ransac
%
% randomly selects 4 points
%
ind = ceil(rand(1,3)*length(ix));
%
% Finds plane
%
A = data(ind,:);
B = ones(3,1);
c = inv(A)*B; % coefficients of the plane ax + by + cz = 1
%
% Computes errors
%
vec_err = data*c - ones(Nsamples, 1);
%
% Given a depth image, computes a plane based on RANSAC
%
CONTMAX = 200; % maximum number of iterations
TOL = 2; % acceptance tolerance
pinliers = .5; % minimum number of inliers
x = double(x);
xt = (x < 100); % pixels near the camera
[ix, iy] = find(xt > 0);
data = []; % x y z data
Nsamples = length(ix); % number of samples
for i = 1:Nsamples;
data(i,:) = [ix(i) iy(i) x(ix(i), iy(i))];
end
%
% Runs ransac
%
% randomly selects 4 points
%
ind = ceil(rand(1,3)*length(ix));
%
% Finds plane
%
A = data(ind,:);
B = ones(3,1);
c = inv(A)*B; % coefficients of the plane ax + by + cz = 1
%
% Computes errors
%
vec_err = data*c - ones(Nsamples, 1);
size(vec_err)
plot(vec_err)
shg
hist(vec_err)
shg
hist(vec_err,256)
shg
% inliers
%
inliers = abs(vec_err) < TOL;
sum(inliers == 1)/Nsamples;
sum(inliers == 1)/Nsamples
ransac_plane
sum(inliers == 1)/Nsamples
hist(vec_err,256)
shg
ransac_plane
hist(vec_err,256)
shg
sum(inliers == 1)/Nsamples
A = data(inliers_ind,:);
B = ones(sum(inliers_ind == 1),1);
c = inv(A)*B; % coefficients of the plane ax + by + cz = 1
inliers_ind = abs(vec_err) < TOL;
frac_inliers = sum(inliers_ind == 1)/Nsamples;
if (frac_inliers > PINLIERS) % re-compute using MSE
A = data(inliers_ind,:);
B = ones(sum(inliers_ind == 1),1);
c = inv(A'A)*A'B; % coefficients of the plane ax + by + cz = 1
end
inliers_ind = abs(vec_err) < TOL;
frac_inliers = sum(inliers_ind == 1)/Nsamples;
if (frac_inliers > PINLIERS) % re-compute using MSE
A = data(inliers_ind,:);
B = ones(sum(inliers_ind == 1),1);
c = inv(A'*A)*A'B; % coefficients of the plane ax + by + cz = 1
end
if (frac_inliers > PINLIERS) % re-compute using MSE
A = data(inliers_ind,:);
B = ones(sum(inliers_ind == 1),1);
c = inv(A'*A)*A'*B; % coefficients of the plane ax + by + cz = 1
end
PINLIERS = .4;
if (frac_inliers > PINLIERS) % re-compute using MSE
A = data(inliers_ind,:);
B = ones(sum(inliers_ind == 1),1);
c = inv(A'*A)*A'*B; % coefficients of the plane ax + by + cz = 1
end
c
size(A)
ind = ceil(rand(1,3)*length(ix));
%
% Finds plane
%
A = data(ind,:);
B = ones(3,1);
c = inv(A)*B; % coefficients of the plane ax + by + cz = 1
%
% Computes errors
%
vec_err = data*c - ones(Nsamples, 1);
c
inliers_ind = abs(vec_err) < TOL;
frac_inliers = sum(inliers_ind == 1)/Nsamples;
if (frac_inliers > PINLIERS) % re-compute using MSE
A = data(inliers_ind,:);
B = ones(sum(inliers_ind == 1),1);
c = inv(A'*A)*A'*B; % coefficients of the plane ax + by + cz = 1
end
c
vec_err = data*c - ones(Nsamples, 1);
hist(vec_err,256)
shg
ransac_plane
cont
hist(vec_err,256)
shg
ransac_plane
cont
c
vec_err = data*c - ones(Nsamples, 1);
index = find(abs(err) < TOL);
w = x;
for i = 1:length(index),
w(ix(index(i)), iy(index(i))) = 255;
end
vec_err = data*c - ones(Nsamples, 1);
index = find(abs(vec_err) < TOL);
w = x;
for i = 1:length(index),
w(ix(index(i)), iy(index(i))) = 255;
end
imshow(w)
shg
imshow(w/255)
shg
ransac_plane
imshow(w/255)
ransac_plane
cont
ransac_plane
cont
close all
hist(vec_err,256)
ransac_plane
x = imread('Image_depth20.jpg');
ransac_plane
x = imread('Image_depth45.jpg');
ransac_plane
x = imread('Image_depth65.jpg');
ransac_plane
x = imread('Image_depth85.jpg');
ransac_plane
x = imread('Image_depth75.jpg');
ransac_plane
x = imread('Image_depth85.jpg');
ransac_plane
shg
x = imread('Image_depth100.jpg');
ransac_plane
close all
x = imread('Image_depth100.jpg');
ransac_plane
x = imread('Image_depth050.jpg');
ransac_plane
x = imread('Image_depth020.jpg');
ransac_plane
count
contcomnta
cont
ransac_plane
help if
ransac_plane
cont
ransac_plane
cont
x = imread('Image_depth120.jpg');
ransac_plane
x = imread('Image_depth130.jpg');
ransac_planea
ransac_plane
cont
ransac_plane
x = imread('Image_depth160.jpg');
ransac_plane
cont
hist(vec_err,256)
ransac_plane
cont
hist(vec_err,256)
shg
ransac_plane
cont
hist(vec_err,256)
shg
ransac_plane
cont
x = imread('background');
x = imread('background.jpg');
imshow(x)
ransac_plane
x=rgb2gray(x);.
x=rgb2gray(x);
imshow(x)
shg
imshow(x/255)
shg
x = imread('background.jpg');
x=rgb2gray(x);
imshow(x)
shg
ransac_plane
320*240
%-- 10/04/2014 08:36 --%
help images
help hough
x = imread('gantrycrane.png');
size(x)
x=rgb2gray(x);
imshow(x)
shg
cd c:\users\crjung\ufrgs\disciplinas\2014-1\cmp' 266'\codigos\
dir *.m
edit comprime_imagem_svd
x=double(x);
[u,s,v]=svd(x);
plot(diag(s)); % plot dos valores singulares
shg
y = comprime_imagem_svd(x, 50); imshow(y)
shg
figure,imshow(x)
figure,imshow(x/255)
size(x)
y = comprime_imagem_svd(x, 100); imshow(y)
shg
figure,imshow(x)
figure,imshow(x/255)
close all
diag(s)
y = comprime_imagem_svd(x, 200); imshow(y)
size(x)
figure,imshow(x/255)
clear
x1 = [1;2]; x2 = [3;4]
u1 = x1 / norm(x1)
u2 = x2 - (x2'*u1)*u1; u2 = u2 / norm(u2);
u1
u2
u1'*u2
320*240
clear
pwd
cd c:\matlab' files'\plane' fitting depth camera'\
dir
dir *.txt
dir *.m
edit ransac_plane.m
dir *.txt
data = imread('PointCloud65.txt');
data = dlmread('PointCloud65.txt');
size(data)
data(data(:,3)<0)=[[];
data(data(:,3)<0)=[];
size(data)
orig_data = dlmread('PointCloud65.txt');
x = orig_data(:,1);
y = orig_data(:,2);
z = orig_data(:,3);
%
% removes samples with unknown depth (negative values)
%
x = x(z > 0);
y = y(z > 0);
z = z(z > 0);
size(x)
data = [x' y' z'];
Nsamples = size(data,1);
%
% Runs ransac
%
while (cont <= CONTMAX && flag == 1)
%
% randomly selects 4 points
%
ind = ceil(rand(1,3)*Nsamples);
%
% Finds plane
%
A = data(ind,:);
B = ones(3,1);
c = inv(A)*B; % coefficients of the plane ax + by + cz = 1
%
% Computes errors
%
vec_err = data*c - ones(Nsamples, 1);
%
% inliers
%
inliers_ind = abs(vec_err) < TOL;
frac_inliers = sum(inliers_ind == 1)/Nsamples;
if (frac_inliers > PINLIERS) % accepts and re-compute using MSE
flag = 0;
A = data(inliers_ind,:);
B = ones(sum(inliers_ind == 1),1);
c = inv(A'*A)*A'*B; % final coefficients of the plane ax + by + cz = 1
elseif (frac_inliers > max_inliers)
max_inlers = frac_inliers;
best_c = c; % stores best coefficient set so far
end,
cont = cont + 1;
end % ends RANSAC
%
% Shows "good points"
if (cont > CONTMAX) % picks best fit
vec_err = data*best_c - ones(Nsamples, 1);
inliers_ind = abs(vec_err) < TOL;
A = data(inliers_ind,:);
B = ones(sum(inliers_ind == 1),1);
c = inv(A'*A)*A'*B; % final coefficients of the plane ax + by + cz = 1
end
dir *.m
ransac_plane_txt
ind
Nsamplesz
Nsamples
size(data)
x
size(x)
ransac_plane_txt
x = reshape(orig_data(:,3), [240 320]);
w = repmat(x, [1 1 3]);
size(x)
imshow(x)
x = reshape(orig_data(:,3), [320 240]);
imshow(x)
shg
ransac_plane_txt
edit ransac_plane.m
cd c:\users\crjung\dropbox\seam_exp\
dir
cd test2\
dir
edit demo3
edit find_vertical_seam2.m
demo3_jung
clc
clear all
clc
I = [0 0 0 0 0; 0 0 0 0 0; 0 0 1 1 1; 0 1 1 1 1; 1 1 1 1 1]
[gx, gy] = imgradientxy(I, 'sobel');
mags = sqrt(gx^2+gy^2);
mags
mags = sqrt(gx.^2+gy.^2);
mags
[s1, ~] = find_vertical_seam(mags);
s1
I
[s2, ~]=find_vertical_seam2(gx,gy,mags);
s2
cd c:\matlab' files'\plane' fitting depth camera'\
clear
clc
data_orig = dlmread('PointCloud65.txt');
edit ransac_plane_txt.m
ransac_plane_txt
orig_data = dlmread('PointCloud65.txt');
ransac_plane_txt
size(indvalid)
size(x)
size(x0)
size(index)
size(indvalid)
index
indvalid(index)
v0 = orig_data(:,3);
v1 = v0;
v1(indvalid(index)) = 255;
img1 = reshape(v1, [320 240])';
v1 = v0;
v1(indvalid(index)) = 0;
img2 = reshape(v1, [320 240])';
v1 = v0;
v1(indvalid(index)) = 0;
img3 = reshape(v1, [320 240])';
img(:,:,1) = img1;
img(:,:,2) = img2;
img(:,:,3) = img3;
size(img)
imshow(img)
shg
orig_data = dlmread('PointCloud34.txt');
ransac_plane_txt
cont
img = reshape(v0, [320 240])';
imshow(img)
shg
ransac_plane_txt
cont
index
size(index)
whos img
max(img(:))
min(img(:))
imshow(img)
shg
figure, imshow(img/255);
ransac_plane_txt
cont
ransac_plane_txt
help plot3
plot3(x,y,z)
plot3(x,y,z,'x')
shg
max(x(:))
min(x(:))
ransac_plane_txt
hist(vec_err,256)
ransac_plane_txt
contmax
cont
ransac_plane_txt
cont
ransac_plane_txt
c
orig_data = dlmread('PointCloud73.txt');
ransac_plane_txt
orig_data = dlmread('PointCloud73.txt');
ransac_plane_txt
cont
printf('Maximum number of iterations reached\n');
sprintf('Maximum number of iterations reached\n');
sprintf('Maximum number of iterations reached\n')
ransac_plane_txt
cont
ransac_plane_txt
ta
ransac_plane_txt
close all
ransac_plane_txt
max_inliers
frac_inliers
ransac_plane_txt
close all
ransac_plane_txt
orig_data = dlmread('PointCloud20.txt');
ransac_plane_txt
orig_data = dlmread('PointCloud10.txt');
ransac_plane_txt
orig_data = dlmread('PointCloud74.txt');
ransac_plane_txt
orig_data = dlmread('PointCloud21.txt');
ransac_plane_txt
cont
orig_data = dlmread('PointCloud02.txt');
ransac_plane_txt
orig_data = dlmread('PointCloud07.txt');
ransac_plane_txt
%-- 14/04/2014 07:54 --%
dir *.jpg
cd c:\matlab' files'\detecao' de moscas'\
dir
x=imread('new_out_cinza 2.jpg.tiff');
z = x(:,:,1)==255;
imshow(z)
z = (x(:,:,1)==255).*(x(:,:,2)==0) ;
imshow(z)
[bw, num]=bwlabel(z);
num
listing = dir('cinza*.jpg');
listing
dir out*.(*
dir out*.*
listing = dir('out*cinza*.tiff');
listing
dir *.tiff
listing = dir('new*cinza*.tiff');
listing
for img = 1:length(listing);
nome_in = listing(img).name;
x0 = imread(nome_in);
x=x0;
z = (x(:,:,1)==255).*(x(:,:,2)==0) ;
[bw, num]=bwlabel(z);
[i num];
end
moscas=[];
for img = 1:length(listing);
nome_in = listing(img).name;
x0 = imread(nome_in);
x=x0;
z = (x(:,:,1)==255).*(x(:,:,2)==0) ;
[bw, num]=bwlabel(z);
moscas = [moscas num];
end
moscas
listing
listing.name
x0 = imread('cinza1.jpg');
edit teste_escala2.m
teste_escala2
final0 = final;
final = imerode(final0, [0 1 0;1 1 1;0 1 0]);
imshow(final)
shg
sum(final>0)
sum(final(:))
img
texto{img} = [listing(img).name sprintf(' - %d moscas\n', moscas(img))];
texto{img}
disp(texto{img})
roda_detecao_moscas
texto
for i=1:7
disp(texto{i}),end
listing = dir('new*cinza*.tiff');
for img = 1:length(listing);
x = imread(nome_in);
z = (x(:,:,1)==255).*(x(:,:,2)==0) ;
final = imerode(z, [0 1 0;1 1 1;0 1 0]);
[bw, num]=bwlabel(z);
for img = 1:length(listing);
nome_in = listing(img).name;
x = imread(nome_in);
z = (x(:,:,1)==255).*(x(:,:,2)==0) ;
final = imerode(z, [0 1 0;1 1 1;0 1 0]);
[bw, num]=bwlabel(z);
moscas(img) = num;
texto{img} = [listing(img).name sprintf(' - %d moscas', moscas(img))];
end
for i=1:7, disp(texto{i}),end
imshow(final)
shg
sum(final(:))
dir
edit teste_escala2.m
dir *.m
edit refine_minima2
%-- 17/04/2014 08:39 --%
help inline
f = inline('x^2 + 3*x + 5*exp(x) + 2*log(x) - 5')
f(0.1)
f(1)
a = 0.1; b = 1;
for i=1:5, c = (a + b)/2; if (f(a)*f(c) < 0), b = c; else, a = c; [a b],end,end
a = 0.1; b = 1;
for i=1:5, c = (a + b)/2; if (f(a)*f(c) < 0), b = c; else, a = c; end,[a b],end
x0 = (a+b)/2
g = inline('(5 - 2*log(x)-5*exp(x)-x^2)/3)')
g = inline('(5 - 2*log(x)-5*exp(x)-x^2)/3')
for i = 1:10,
x1 = g(x0), x0 = x1; end
g = inline('sqrt(5 - 2*log(x)-5*exp(x)-3*x)')
x0 = (a+b)/2
for i = 1:10, x1 = g(x0), x0 = x1; end
help ln
g = inline('log((5 - 2*log(x)-x^2-3*x)/5)')
pretty(g)
x0 = (a+b)/2
for i = 1:10, x1 = g(x0), x0 = x1; end
for i = 1:50, x1 = g(x0), x0 = x1; end
x0 = (a+b)/2
for i = 1:50, x1 = g(x0), x0 = x1; end
g = inline('exp((5 - -x^2-3*x-5*exp(x))/2)')
g = inline('exp((5 - x^2-3*x-5*exp(x))/2)')
x0 = (a+b)/2;for i = 1:50, x1 = g(x0), x0 = x1; end
%%% Outro exemplo
f = inline('exp(-2*x) + 3*x - 5')
f(0)
f(4)
a = 0;
b = 4;
f(1)
f(2)
a = 0; b = 2;
for i=1:5, c = (a + b)/2; if (f(a)*f(c) < 0), b = c; else, a = c; end,[a b],end %% refinando o intervalo que contem a raiz
(a+b)/2
g = inline('(5-exp(-2*x))/3')
for i = 1:20, x1 = g(x0), x0 = x1; end %% recursao
format long
x0 = (a+b)/2;for i = 1:50, x1 = g(x0), x0 = x1; end
x0 = 200;for i = 1:50, x1 = g(x0), x0 = x1; end
x0 = 200000;for i = 1:50, x1 = g(x0), x0 = x1; end
x0 = -2;for i = 1:50, x1 = g(x0), x0 = x1; end
clear;clc
f = inline('x^2 + 3*x + 5*exp(x) + 2*log(x) - 5'); %1o exemplo
a = 0.1; b = 1;
for i=1:5, c = (a + b)/2; if (f(a)*f(c) < 0), b = c; else, a = c; end,[a b],end % refina intervalo
g = inline('(5 - 2*log(x)-5*exp(x)-x^2)/3'); % recursao
diff(g)
gg = inline('-2/3/x - 5*exp(x)/3 - 2*x/3'); % derivada de g
x = 0.26:.01:0.30;y = gg(x);
gg = inline('-2/3./x - 5*exp(x)/3 - 2*x/3'); % derivada de g
x = 0.26:.01:0.30;y = gg(x);
plot(x, y);grid;shg
x0 = (a+b)/2;for i = 1:8, x1 = g(x0), x0 = x1; end
g = inline('sqrt(5 - 2*log(x)-5*exp(x)-3*x)')
gg = inline('(-2./x - 5*exp(x) - 3)/2./sqrt(5 - 2*log(x)-5*exp(x)-3*x)'); %% derivada
x = 0.26:.01:0.30;y = gg(x);
plot(x, y);grid;shg
a = 0.1; b = 1;
for i=1:25, c = (a + b)/2; if (f(a)*f(c) < 0), b = c; else, a = c; end,[a b],end % refina intervalo
lim = ans;
x = lim(1):.000001:lim(2);
y = gg(x);
plot(x, y);grid;shg
lim
x
x = lim(1):.0000000001:lim(2);
size(x)
y = gg(x);
plot(x, y);grid;shg
x0 = (a+b)/2;for i = 1:8, x1 = g(x0), x0 = x1; end