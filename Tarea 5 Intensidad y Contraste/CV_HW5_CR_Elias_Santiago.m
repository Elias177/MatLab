%Load DarkLog and transform to grayscale
im1 = imread('DarkLog.jpg');
im1Double = im2double(im1);
im1Gray = rgb2gray(im1Double);

%Cube root of the grayscale image
im1Root = nthroot(im1Gray,3);

%Load DarkTree and transform to grayscale
im2 = imread('DarkTree.jpg');
im2Double = im2double(im2);
im2Gray = rgb2gray(im2Double);

%Cube root of the grayscale image
im2Root = nthroot(im2Gray,3);

%Displaying both pair of images
figure, imshowpair(im1Root, im1Gray,'montage'), title('Cube root of DarkLog and Gray DarkLog');
figure, imshowpair(im2Root, im2Gray,'montage'), title('Cube root of DarkTree and Gray DarkTree');