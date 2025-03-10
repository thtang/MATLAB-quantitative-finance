
% one factor at a time
[M, T] = main(20, 20, 10, 55, 20, 804) % volatility_smoothing, sys1_open, sys1_close, sys2_open, sys2_close, period
[M, T] = main(30, 20, 10, 55, 20, 804)
[M, T] = main(10, 20, 10, 55, 20, 804)
[M, T] = main(20, 30, 10, 55, 20, 804)
[M, T] = main(20, 10, 10, 55, 20, 804)
[M, T] = main(20, 20, 20, 55, 20, 804)
[M, T] = main(20, 20, 5, 55, 20, 804)
[M, T] = main(20, 20, 10, 65, 20, 804)
[M, T] = main(20, 20, 10, 45, 20, 804)
[M, T] = main(20, 20, 10, 55, 10, 804)
[M, T] = main(20, 20, 10, 55, 30, 804)


[M, T] = main(20, 20, 10, 55, 20, 2360) % volatility_smoothing, sys1_open, sys1_close, sys2_open, sys2_close, period
[M, T] = main(30, 20, 10, 55, 20, 2360)
[M, T] = main(10, 20, 10, 55, 20, 2360)
[M, T] = main(20, 30, 10, 55, 20, 2360)
[M, T] = main(20, 10, 10, 55, 20, 2360)
[M, T] = main(20, 20, 20, 55, 20, 2360)
[M, T] = main(20, 20, 5, 55, 20, 2360)
[M, T] = main(20, 20, 10, 65, 20, 2360)
[M, T] = main(20, 20, 10, 45, 20, 2360)
[M, T] = main(20, 20, 10, 55, 10, 2360)
[M, T] = main(20, 20, 10, 55, 30, 2360);


[M, T, value_portfolio] = main(20, 20, 10, 55, 20, 4700); % volatility_smoothing, sys1_open, sys1_close, sys2_open, sys2_close, period
value_portfolio_total = value_portfolio;
[M, T, value_portfolio] = main(30, 20, 10, 55, 20, 4700);
value_portfolio_total = join(value_portfolio_total, value_portfolio, 'keys','date');
[M, T, value_portfolio] = main(10, 20, 10, 55, 20, 4700);
value_portfolio_total = join(value_portfolio_total, value_portfolio, 'keys','date');
[M, T, value_portfolio] = main(20, 30, 10, 55, 20, 4700);
value_portfolio_total = join(value_portfolio_total, value_portfolio, 'keys','date');
[M, T, value_portfolio] = main(20, 10, 10, 55, 20, 4700);
value_portfolio_total = join(value_portfolio_total, value_portfolio, 'keys','date');
[M, T, value_portfolio] = main(20, 20, 20, 55, 20, 4700);
value_portfolio_total = join(value_portfolio_total, value_portfolio, 'keys','date');
[M, T, value_portfolio] = main(20, 20, 5, 55, 20, 4700);
value_portfolio_total = join(value_portfolio_total, value_portfolio, 'keys','date');
[M, T, value_portfolio] = main(20, 20, 10, 65, 20, 4700);
value_portfolio_total = join(value_portfolio_total, value_portfolio, 'keys','date');
[M, T, value_portfolio] = main(20, 20, 10, 45, 20, 4700);
value_portfolio_total = join(value_portfolio_total, value_portfolio, 'keys','date');
[M, T, value_portfolio] = main(20, 20, 10, 55, 10, 4700);
value_portfolio_total = join(value_portfolio_total, value_portfolio, 'keys','date');
[M, T, value_portfolio] = main(20, 20, 10, 55, 30, 4700);
value_portfolio_total = join(value_portfolio_total, value_portfolio, 'keys','date');
[M, T, value_portfolio] = main(5, 20, 10, 55, 20, 4700);
value_portfolio_total = join(value_portfolio_total, value_portfolio, 'keys','date');

figure;
set(gca,'linestyleorder',{'-',':','-.','--'},...
'nextplot','add')
portfolio_legend = {'20, 20, 10, 55, 20', '30, 20, 10, 55, 20', '10, 20, 10, 55, 20'...
    '20, 30, 10, 55, 20', '20, 10, 10, 55, 20', '20, 20, 20, 55, 20', '20, 20, 5, 55, 20',...
    '20, 20, 10, 65, 20','20, 20, 10, 45, 20', '20, 20, 10, 55, 10', '20, 20, 10, 55, 30', '5, 20, 10, 55, 20'};
a = dataset2cell(value_portfolio_total);
plot(value_portfolio.date,cumsum(cell2mat(a(2:end,2:end)),1),'LineWidth',1);
legend(portfolio_legend,'Location','northwest');
datetick('x', 'yyyy-mm-dd', 'keepticks');
ax = gca;
ax.ColorOrder = [1 0.5 0; 0.5 0 1; 0 0.5 0.3];
ax.LineStyleOrder = {'-','--',':'};
set(gcf, 'Position',  [100, 100, 1200, 600]);
title('Different parameters in an order of [volatility smoothing, sys1 entries, sys1 exits, sys2 entries, sys2 exits]')


cell2csv([data_path,'results\\20200318\\portfolios_pnl'],a)