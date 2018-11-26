c = 1;
check = 0;
check2 = 0;
%Punto 1
%Read in the jpg image OrangeFlower
flo = imread('OrangeFlower.jpg');
while c ~= 10
    c = menu('Tarea 3: Elias Santiago - 20140717 ','Display the image with the title Orange Flower','Display only the green pixel plane of the image and title Orange Flower Green Pixel Data','Assign greenData, extract rows 1675 to 1684 and columns 975 to 984 of the matrix greenData. Assign this region to variable im , and display im','Min and max values of im','Multiply im by 2','Convert im to double with double(). Assign the results to variable imDouble1. Display the values of the elements in imDouble1.','Multiply each value in imDouble1 by 2. Assign your results to imDouble12. Display the values of the elements in imDouble12.','Convert im to double with im2double. Assign the results to variable imDouble2. Display the values in imDouble2','Convert im to type double with mat2grey. Assign the result to variable imDouble3. Display the elements in imDouble3','Exit');
    
    switch c
        case 1
            %Punto 2
            %Display the image with the title 'Orange Flower'
            figure, imshow(flo), title('Orange Flower')
        case 2
            %Punto 3
            %Display only the green pixel plane of the image and title Orange Flower Green Pixel Data
            figure, imshow(flo(:,:,2)), title('Orange Flower Green Pixel Data')
        case 3
            %Punto 4
            % Assign the green pixel plane of data to variable greenData
            greenData = flo(:,:,2);
            
            %Punto 5 y 6
            %Using Matlab's colon operator ( no loops) extract rows 1675 to 1684 (inclusive) and columns 975 to 984 (inclusive) of the matrix greenData. Assign this - region to variable im
            %Display the values of the elements (NOT AN IMAGE) of the matrix im to the screen
            im = greenData(1675:1684,975:984)
            check2 = 1;
        case 4
            %Punto 7
            %Use Matlab's min and max functions to find the minimum and maximum values of im.
            %Assign the values to minValue and maxValue. Display these values to the screen (these should each only be a single value.
            if check2 == 1
            minValue = min(im(:))
            maxValue = max(im(:))
            else
            f = errordlg('im hasn''t been created, please use the previous option to create it','Variable Error');
            uicontrol(f);
            end
            
            
        case 5
            %Punto 8 y 9
            %Multiply each value in im by 2(do not use loops to accomplish this). Assign the result to variable im2
            %9. Display the values of the elements in im2.
            
            if check2 == 1
            im2 = im .* 2
            else
            f = errordlg('im hasn''t been created, please use option #3 to create it','Variable Error');
            uicontrol(f);
            end
            
        case 6
            %Punto 10
            %Use Matlab's double function to convert im to double. Assign the results to variable imDouble1. Display the values of the elements in imDouble1.
            imDouble1 = double(im)
            check = 1;
        case 7
            %Punto 11 y 12
            %Multiply each value in imDouble1 by 2. Assign your results to imDouble12 
            %Display the values of the elements in imDouble12. 
            if check == 1
            imDouble12 = imDouble1 .* 2
            else
            f = errordlg('imDouble1 hasn''t been created, please use the previous option to create it','Variable Error');
            uicontrol(f);
            end
        case 8
            %Punto 13 y 14
            %Use Matlab's im2double function to convert im to double. Assign the results to variable imDouble2. 
            %Display the values in imDouble2
            if check2 == 1
            imDouble2 = im2double(im)
            else
            f = errordlg('im hasn''t been created, please use option #3 to create it','Variable Error');
            uicontrol(f);
            end
        case 9
            %Punto 15
            %Use Matlab's mat2gray to convert im to type double. Assign the result to variable imDouble3. Display the elements in imDouble3
            if check2 == 1
            imDouble3 = mat2gray(im)
            else
            f = errordlg('im hasn''t been created, please use option #3 to create it','Variable Error');
            uicontrol(f);
            end
        case 10
            close all
    end
end
