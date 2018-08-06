% Test file
% Parameters
n_tx = 200;
n_rx = 200;

% Generate network and the path loss matrix 
[tx, rx] = wirelessNet(n_tx, n_rx, 1);
pl = pdist2(tx, rx).^(-3);

%% Clustering
A = [zeros(n_tx, n_tx), pl; pl', zeros(n_rx, n_rx)];
D = sum(A,1);
L = diag(D) - A;
L_rw = L*diag(1./D);

[g, msg] = mcl(L_rw, 10, 10, 1, 1==1, 100);
[i,j,v] = find(g);

%% Information theoretic capacity


%% plot clusters
scatter(rx(:,1), rx(:,2),'x');
hold on;
scatter(tx(:,1), tx(:,2),'^');
% markers = ['x', 'o'];
% for node = 1:(n_tx + n_rx) 
%   attractor = i(node);