%% Clear old data and close figure windows

clear
close all

%% Read in star data

[num, txt, raw] = xlsread('star_data.xlsx');
star_names = txt(2:end,1);
distance = num(:,1);
mass = num(:,2);
magnitude = num(:,3);
planets = num(:,4);
stellar_class = num(:,5);

%% Scatter plot of mass v. number of planets



%% Scatter plot of mass v. magnitude



%% Pie chart of stellar classes

stellar_class_labels = ["Yellow dwarf", "Red dwarf", "Orange dwarf", "Brown dwarf", "A dwarf star", "White dwarf", "F-type main-sequence star"];


%% Pie chart of number of planets


%% Bar chart

