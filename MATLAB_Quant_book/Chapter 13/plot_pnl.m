function fig = plot_pnl(init_money, value, value_portfolio, volatility_smoothing, sys1_open, sys1_close, sys2_open, sys2_close, period, currency_list)
%%
fig =  figure;
x = dataset2cell(value(:,2:end));
legend_dollar = x(1,:);
lines = cumsum(cell2mat(x(2:end,:)),1) ;
pnl_portfolio = cumsum(value_portfolio.value);
% lines = [lines,pnl_portfolio];
set(gca,'linestyleorder',{'-',':','-.','--'},...
'nextplot','add')

plot(value_portfolio.date,pnl_portfolio,'LineWidth',2);
hold on
plot(value.date, lines);
hold off
legend(['Portfolio', legend_dollar],'FontSize',7, 'Location','northwest');
datetick('x', 'yyyy-mm-dd', 'keepticks');
% xlim([value_portfolio.date(1) value_portfolio.date(end)])
ax = gca;
ax.ColorOrder = [1 0.5 0; 0.5 0 1; 0 0.5 0.3];
ax.LineStyleOrder = {'-','--',':'};
set(gcf, 'Position',  [100, 100, 1200, 600])
% set(gcf, 'PaperPosition',  [0, 0, 100, 50])
title(['Cumulative pnl graph (',sprintf('%d, %d, %d, %d, %d',volatility_smoothing, sys1_open, sys1_close, sys2_open, sys2_close),')'])

data_path = 'C:\Users\tsunh\Documents\GitHub\MATLAB-Quantitative-Finance\MATLAB_Quant_book\Chapter 13\data\';
output_name = sprintf('figures\\20200318\\pnl_%d_%d_%d_%d_%d_%d',...
    volatility_smoothing, sys1_open, sys1_close, sys2_open, sys2_close, period);

print(fig,fullfile(data_path, output_name),'-dpng','-r0')
% saveas(ax, [data_path,output_name]);
% fig.PaperPositionMode = 'auto';
% print(fig, [data_path,'figures\pnl'],'-dpng','-bestfit','BestFitFigure')

