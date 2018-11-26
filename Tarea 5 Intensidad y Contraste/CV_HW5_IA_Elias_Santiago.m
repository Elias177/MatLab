%Load DarkLog and transform to grayscale
im1 = imread('DarkLog.jpg');
im1Double = im2double(im1);
im1Gray = rgb2gray(im1Double);

%Load DarkTree and transform to grayscale
im2 = imread('DarkTree.jpg');
im2Double = im2double(im2);
im2Gray = rgb2gray(im2Double);

%Adjusting the intensity and Gamma of DarkLog
im1Ad = imadjust(im1Gray,[0 0.2],[0 0.2]);
im1AdG = imadjust(im1Gray,[0 1],[0.8 1],0.3);

figure, imshow(im1), title('Original');
figure, imshowpair(im1Ad,im1Gray,'montage'), title('Darklog adjusted [0 0.2] , [0 0.2] and Darklog Gray');
figure, imshowpair(im1AdG,im1Gray,'montage'), title('Darklog adjusted [0 1] , [0.8 1] with Gamma 0.3 and Darklog Gray');

%Adjusting the intensity and gamma of DarkTree
im2Ad = imadjust(im2Gray,[0 0.5],[0 0.8]);
im2AdG = imadjust(im2Gray,[0 0.6],[0 0.6],0.5);

figure, imshow(im2), title('Original');
figure, imshowpair(im2Ad,im2Gray,'montage'), title('DarkTree adjusted [0.4 0.6] , [0.2 0.3] and Darktree Gray');
figure, imshowpair(im2AdG,im2Gray,'montage'), title('DarkTree adjusted [0 0.6] , [0 0.6] with Gamma 0.5 and Darktree Gray');


