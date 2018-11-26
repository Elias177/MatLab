%Load DarkLog and transform to grayscale
im1 = imread('DarkLog.jpg');
im1Double = im2double(im1);
im1Gray = rgb2gray(im1Double);

%Square the grayscale DarkLog
im1Square = power(im1Gray,2);

%Load DarkTree and transform to grayscale
im2 = imread('DarkTree.jpg');
im2Double = im2double(im2);
im2Gray = rgb2gray(im2Double);

%Square the grayscale DarkTree
im2Square = power(im2Gray,2);

%Displaying both pair of images
figure, imshowpair(im1Root, im1Gray,'montage'), title('Cube root of DarkLog and Gray DarkLog');
figure, imshowpair(im2Root, im2Gray,'montage'), title('Cube root of DarkTree and Gray DarkTree');