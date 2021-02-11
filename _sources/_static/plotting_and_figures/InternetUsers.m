%% Clear old data and close figure windows

clear
close all

%% Here's some data to get you started

% Total internet users (in millions) from 1995 to 2020
% This data has been simplified from https://www.internetworldstats.com/emarketing.htm
internet_users = [16, 36, 70, 147, 248, 361, 513, 587, 719, 817, 1018, 1093, 1319, 1574,...
    1802, 1971,2267, 2497, 2802, 3079, 3366, 3696, 4156, 4313, 4536, 4833];
internet_years = [1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006,...
    2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020];

% Total Facebook users (in millions) from 2004 to 2020
% This data is from
% https://news.yahoo.com/number-active-users-facebook-over-230449748.html
% and https://www.statista.com/statistics/264810/number-of-monthly-active-facebook-users-worldwide/
facebook_users = [1, 5.5, 12, 50, 100, 350, 608, 845, 1060, 1228, 1393, 1591, 1860, 2129,...
    2320, 2498, 2740];
facebook_years = [2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015,...
    2016, 2017, 2018, 2019, 2020];

%% Plot the number of Internet and Facebook users

