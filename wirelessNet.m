function [tx, rx] = network(n_tx, n_rx, area)
% FUNC NETWORK - generate a network with the locations of transmitters and
% the locations of receivers
%
% Args
% - n_tx number of transmitters
% - n_rx number of receivers
% - area the side length of the square area, default = 1
%
% Output
% - tx transmitter locations of size (n_tx, 2)
% - rx receiver locations of size (n_rx, 2)
%
tx = rand(n_tx, 2) * area;
rx = rand(n_rx, 2) * area;

