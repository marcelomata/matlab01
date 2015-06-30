Im1 = zeros(h,w,3,'uint8');
Im1(2:2:end, 2:2:end, 1) = (double(cfa(2:2:end, 2:2:end))/numMaxGray)*255;
Im1(1:2:end, 2:2:end, 2) = (double(cfa(1:2:end, 2:2:end))/numMaxGray)*255;
Im1(2:2:end, 1:2:end, 2) = (double(cfa(2:2:end, 1:2:end))/numMaxGray)*255;
Im1(1:2:end, 1:2:end, 3) = (double(cfa(1:2:end, 1:2:end))/numMaxGray)*255;

wR=[0.25 0.5 0.25
    0.5 1 0.5
    0.25 0.5 0.25];

wG=[0 0.25 0
    0.25 1 0.25
    0 0.25 0];

Im1(:,:,1)=imfilter(Im1(:,:,1),wR,0);
Im1(:,:,2)=imfilter(Im1(:,:,2),wG,0);
Im1(:,:,3)=imfilter(Im1(:,:,3),wR,0);

%Im(2:2:end, 2:2:end, 1) = (double(cfa(2:2:end, 2:2:end))/numMaxGray)*255;
%Im(1:2:end, 2:2:end, 2) = (double(cfa(1:2:end, 2:2:end))/numMaxGray)*255;
%Im(2:2:end, 1:2:end, 2) = (double(cfa(2:2:end, 1:2:end))/numMaxGray)*255;
%Im(1:2:end, 1:2:end, 3) = (double(cfa(1:2:end, 1:2:end))/numMaxGray)*255;