clc; 
clear; 
close all;

imageFiles = {'peppers.png', 'cameraman.tif', 'coins.png', 'circuit.tif', 'pout.tif'};

for i = 1:length(imageFiles)

    img = imread(imageFiles{i});
    
    if size(img, 3) == 3
        img = rgb2gray(img);
    end

    sobelEdges = edge(img, 'sobel');

    cannyEdges = edge(img, 'canny');

    figure;
    subplot(1,3,1), imshow(img), title(['Original: ', imageFiles{i}]);
    subplot(1,3,2), imshow(sobelEdges), title('Sobel Edge Detection');
    subplot(1,3,3), imshow(cannyEdges), title('Canny Edge Detection');
end
