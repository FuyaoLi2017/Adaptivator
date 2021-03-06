close all;

normMat = @(k) ( k - ones(size(k))*min(k(:)) ) ./ (max(k(:))-min(k(:)));

n = 0;

xtick = len(sampleSizes);
ytick = len(alphaSteps);

xticklab = {};
yticklab = {};

for i = 1:length(sampleSizes)
    xticklab(i) = {num2str(sampleSizes(i))};
end

for i = 1:length(alphaSteps)
    yticklab(i) = {num2str(alphaSteps(i))};
end
%%
n = n + 1;
figure(n)
subplot(1,2,1)

imagesc(xCol.mean)
colormap(flipud(summer))
colorbar
title('Total position error')
xlabel('Sample Size')
ylabel('Alpha^2 step')

set(gca,'XTick',xtick)
set(gca,'XTickLabel', xticklab)

set(gca,'YTick',ytick)
set(gca,'YTickLabel', yticklab)

grid on;

subplot(1,2,2)
imagesc(xCol.std)
colormap(flipud(summer))
colorbar
title('Position estimate standard dev.')
xlabel('Sample Size')
ylabel('Alpha^2 step')

set(gca,'XTick',xtick)
set(gca,'XTickLabel', xticklab)

set(gca,'YTick',ytick)
set(gca,'YTickLabel', yticklab)
grid on;
%%
n = n + 1;
figure(n)

subplot(1,2,1)
imagesc(sCol.mean)
colormap(flipud(summer))
colorbar
title('Mean S error squared')
xlabel('Sample Size')
ylabel('Alpha^2 step')

set(gca,'XTick',xtick)
set(gca,'XTickLabel', xticklab)

set(gca,'YTick',ytick)
set(gca,'YTickLabel', yticklab)
grid on;

subplot(1,2,2)
imagesc(sCol.std)
colormap(flipud(summer))
colorbar
title('STD. S error squared')
xlabel('Sample Size')
ylabel('Alpha^2 step')

set(gca,'XTick',xtick)
set(gca,'XTickLabel', xticklab)

set(gca,'YTick',ytick)
set(gca,'YTickLabel', yticklab)
grid on;


%%
n = n + 1;
figure(n)
subplot(1,2,1)
imagesc(alphaCol.mean)
colormap(flipud(summer))
colorbar
title('Total alpha^2 error')
xlabel('Sample Size')
ylabel('Alpha^2 step')

set(gca,'XTick',xtick)
set(gca,'XTickLabel', xticklab)

set(gca,'YTick',ytick)
set(gca,'YTickLabel', yticklab)

subplot(1,2,2)

imagesc(alphaCol.std)
colormap(flipud(summer))
colorbar
title('Alpha^2 error std.')
xlabel('Sample Size')
ylabel('Alpha^2 step')

set(gca,'XTick',xtick)
set(gca,'XTickLabel', xticklab)

set(gca,'YTick',ytick)
set(gca,'YTickLabel', yticklab)

grid on;

% %%
% 
% n = n+1 ;
% figure(n)
% subplot(2,1,1)
% bar(len(windowSizes), ones(1,length(windowSizes))-normMat(colStrue))
% title('S vs. true S')
% xlabel('Sample size')
% ylabel('Normalised Correctness')
% 
% set(gca,'XTick',len(windowSizes))
% set(gca, 'XTickLabel', {'2', '3', '4', '5', '7', '10', '15', '20', '25', '30', '40', '50'})
% %set(gca,'XTickLabel', {'1.1', '1.25', '1.5', '1.75', '2', '2.25', '2.5', '3', '4', '5', '6', '7', '8', '9', '10', '15', '20', '25', '50'})
% 
% 
% subplot(2,1,2)
% bar(len(windowSizes), ones(1,length(windowSizes))-normMat(colinno))
% title('Total Innovation')
% xlabel('Sample size')
% ylabel('Normalised Correctness')
% 
% set(gca,'XTick',len(windowSizes))
% set(gca, 'XTickLabel', {'2', '3', '4', '5', '7', '10', '15', '20', '25', '30', '40', '50'})
%set(gca,'XTickLabel', {'1.1', '1.25', '1.5', '1.75', '2', '2.25', '2.5', '3', '4', '5', '6', '7', '8', '9', '10', '15', '20', '25', '50'})