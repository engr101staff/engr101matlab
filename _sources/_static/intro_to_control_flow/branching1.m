average_rainfall = 200; % in centimeters
average_temperature = 15; % in Celsius
if average_rainfall < 100 & average_temperature < -5
  disp('This is a tundra ecosystem!');
elseif average_rainfall > 300
  disp('This is either a tropical or temperate rainforest ecosystem!')
end