function [e] = ESP(Na, K, Ca, Mg)
%ESP Returns the exchangeable sodium percentage
    e = Na ./ (K + Ca + Mg + Na);
end

