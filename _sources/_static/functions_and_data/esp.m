function [e] = esp(Na, K, Ca, Mg)
%esp Returns the exchangeable sodium percentage
    e = Na ./ (K + Ca + Mg + Na);
end
