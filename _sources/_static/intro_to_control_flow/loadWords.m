function [ words ] = loadWords( filename )
%loadWords returns a cell-array containing words loaded
%          from the file with the given name.

f = fopen(filename);             
words = textscan(f,'%s','delimiter','\n');
words = words{1};
fclose(f);

end

