%%
n   = 20; % number of points
d   = 2;  % dimension
o   = ones(n,1);
K   = @(X) diag(X)*o' + o*diag(X)' - 2*X;

% Make some sample data in [-1,1]x[-1,1]
rng(1);
X0  = 2*(rand(n,d)-.5);
% Put center-of-mass at zero
X0 = X0 - repmat( ones(1,n)/n*X0, n, 1 );

% Plot it:
figure(1); clf;
h=plot( X0(:,1), X0(:,2) , 'o','MarkerSize',12);
% h.MarkerFaceColor = h.Color;
set(gca,'fontsize',18)
hold all
axis square
%%
% Only observe some of these
E   = K(X0*X0');

min_dist    = 0.9; % this should give perfect recovery
% min_dist    = 0.8; % this should not
E_thresh    = ( E < min_dist );
E_thresh    = E_thresh - tril(E_thresh);
for i = 1:n
    for j = find( E_thresh(i,:) )
        if ~isempty(j)
            plot( [X0(i,1),X0(j,1)], [X0(i,2),X0(j,2) ], 'k:' );
        end
    end
end

omega   = find( E_thresh(:) );
obs     = @(y) y(omega);
%% Solve SDP
cvx_begin
    variable XX(n,n) symmetric
    minimize norm( obs(vec(K(XX))) - obs(vec(E)) )
    subject to
        XX*o == zeros(n,1)
        XX   == semidefinite(n)
cvx_end

numericalRank   = @(X) length( find(svd(X) > 1e-3) );
fprintf('Approximate rank of solution is %d\n', numericalRank(XX) );

%% Recreate data from XX
% We want to find the *right* X such that X*X' = XX
[V,D]   = eig( XX );
[eigv,ind] = sort( diag(D), 'descend' );
X       = V(:,ind(1:2))*diag( sqrt(eigv(1:2)) );

% Solve Procrustes problem to find best rotation
[u,~,v] = svd(X0'*X,'econ');
R       = u*v';
X       = X*R'; 

hh  = plot( X(:,1), X(:,2), '*' );
legend([h,hh],'Actual locations','Estimated','location','southeast');