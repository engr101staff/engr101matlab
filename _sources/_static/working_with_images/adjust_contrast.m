function [img] = adjust_contrast(img, new_min, new_max)
%ADJUST_CONTRAST Adjusts the contrast of the given image
%   Returns a version of the given image with the contrast
%   adjusted using linear interpolation so that the new range
%   of intensity values in the image is between new_min and new_max

    % Step 1: find the original min and max of the image
    original_min = 
    original_max = 
    
    % Step 2: compute the scale factor
    % Note: The double() function converts a value to the double
    % data type. We need to do this because image values may be
    % stored as a uint8 type, which is an integer number between
    % 0 and 255, but division will not work properly on that type.
    % So we convert each value to a double before doing the division.
    stretch_factor = double(new_max - new_min) / double(original_max - original_min);
    
    % Step 3: stretch each pixel and reassign back into img
    img = 

end