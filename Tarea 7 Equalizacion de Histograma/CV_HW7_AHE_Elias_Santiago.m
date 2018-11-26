%Load DarkLog and transform to grayscale
im1 = imread('DarkLog.jpg');
im1Double = im2double(im1);
im1Gray = rgb2gray(im1Double);


%Load DarkTree and transform to grayscale
im2 = imread('DarkTree.jpg');
im2Double = im2double(im2);
im2Gray = rgb2gray(im2Double);


%Apply the adaptive equalization function
im1Adhist = adapthisteq(im1Gray,'clipLimit',0.04,'Distribution','uniform');
im2Adhist = adapthisteq(im2Gray,'clipLimit',0.04,'Distribution','uniform');


%Display the results
figure, imshowpair(im1Gray,im1Adhist,'montage'), title("Gray DarkLog and adapthisteq DarkLog");
figure, imshowpair(im2Gray,im2Adhist,'montage'), title("Gray DarkTree and adapthisteq DarkTre");