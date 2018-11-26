 %Load DarkLog
im1 = imread('DarkLog.jpg');
im1Gray = rgb2gray(im1);


%Load DarkTree
im2 = imread('DarkTree.jpg');
im2Gray = rgb2gray(im2);


%Get the values of the histograms of the images
im1Histo =  histcounts(im1Gray,0:255);
im2Histo =  histcounts(im2Gray,0:255);


%The histogram values are divided by the number of pixels to obtain the frequency
im1Res = im1Histo/numel(im1Gray);
im2Res = im2Histo/numel(im2Gray);


%Cumulative Sum of the resulting images
im1Sum=cumsum(im1Res);
im2Sum=cumsum(im2Res);


%Apply the s=T(r) transformation
im1Eq=im1Sum(im1Gray+15);
im2Eq=im1Sum(im2Gray+50);


%Display the results
figure, imshowpair(im1Gray,im1Eq,'montage'), title("Gray DarkLog and Equalized DarkLog");
figure, imshowpair(im2Gray,im2Eq,'montage'), title("Gray DarkTree and Equalized DarkTree");

