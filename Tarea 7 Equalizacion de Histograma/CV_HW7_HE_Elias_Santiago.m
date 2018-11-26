%Load DarkLog and transform to grayscale
im1 = imread('DarkLog.jpg');
im1Double = im2double(im1);
im1Gray = rgb2gray(im1Double);


%Load DarkTree and transform to grayscale
im2 = imread('DarkTree.jpg');
im2Double = im2double(im2);
im2Gray = rgb2gray(im2Double);


%Display the results
figure, imshowpair(im1Gray,histeq(im1Gray),'montage'), title("Gray DarkLog and Histeq DarkLog");
figure, imshowpair(im2Gray,histeq(im2Gray),'montage'), title("Gray DarkTree and Histeq DarkTree");
