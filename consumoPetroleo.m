function consumoPetroleo = consumoPetroleo(pais)
    switch pais
        case "Costa Rica"
            years= [2000, 2005, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]
            gasolina = [3770.7685, 4201.909, 4817.824, 4934.1635, 5139.4685, 5235.2775, 5358.4605, 5803.288, 6261.8025, 6412.3595]
            diesel = [3907.6385, 5098.4075, 5933.3145, 6015.4365, 6083.8715, 6111.2455, 6241.272, 6535.5425, 6966.683, 7103.553]

            years_ev = [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019]
            vehicles = [59, 72, 83, 89, 101, 105, 116, 143, 312, 638 ]
            motorcycles = [31, 36, 53, 87, 142, 168, 193, 276, 354, 399 ]
            others = [136, 186, 264, 308, 395, 485, 671, 783, 960, 1027 ]
            EV = [226, 294, 400, 484, 638, 758, 980, 1202, 1626, 2064 ]


            fig = figure('Position', [10, 10, 900, 600])
            title('Evolución Consumo Derivados del Petróleo -  Entrada de EV - Costa Rica')
            labels= {'Gasolina','Diesel', 'EV', 'Vehiculos Livianos', 'Motocicletas', 'Otro tipo de vehiculos'}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            yyaxis right

            ylabel('Unidades acumuladas EV')
            h(3) = plot(years_ev, EV, 'LineWidth', lineWidth)
            hold on

            h(4) = plot(years_ev, vehicles,'LineWidth', lineWidth)
            hold on

            h(5) = plot(years_ev, motorcycles, 'LineWidth', lineWidth)
            hold on

            h(6) = plot(years_ev, others, 'LineWidth', lineWidth)
            hold on

            legend(h([1,2,3,4,5,6]), labels, 'Location', 'northwest')
            grid on
            yyaxis left
            xlabel('año')
            ylabel('kBOE {\times 10^3}')

            ax = gca;
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';

            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000)

            saveas(gcf, 'fig/ConsumoDerivadosPetróleo-EntradaEV-CostaRica.png')
            
        case "Japon"
            years= [2000, 2005, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]
            gasolina = [273096.711, 273397.825, 273555.2255, 271515.8625, 274609.1245, 270523.555, 260073.5305, 258520.056, 256138.518, 252278.784]

            diesel = [396738.2255, 362274.3595, 271214.7485, 267252.362, 263638.994, 267601.3805, 259190.719, 257329.287, 254810.879, 255652.6295]


            years_ev = [2013, 2014, 2015, 2016, 2017, 2018]
            EV = [29000, 62000, 89000, 112000,167000, 210000]
            
            fig = figure('Position', [10, 10, 900, 600])
            title('Evolución Consumo Derivados del Petróleo -  Entrada de EV - Japon')
            labels= {'Gasolina','Diesel', 'EV'}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            yyaxis right

            ylabel('Unidades acumuladas EV')
            h(3) = plot(years_ev, EV, 'LineWidth', lineWidth)
            hold on

            legend(h([1,2,3]), labels, 'Location', 'northwest')
            grid on
            yyaxis left
            xlabel('año')
            ylabel('kBOE {\times 10^3}')

            ax = gca;
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';

            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000)

            saveas(gcf, 'fig/ConsumoDerivadosPetróleo-EntradaEV-Japon.png')
        case "USA"
            years= [2000, 2005, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]
            gasolina = [2484306.8395, 2627917.687, 2479543.7635, 2329322.095, 2304049.0495, 2336357.213, 2353055.353, 2419909.5045, 2454537.6145, 2438886.53]
            diesel = [1183733.882, 1327591.0955, 1230112.2815, 1213858.969, 1188325.8705, 1189817.7535, 1235224.376, 1207309.7395, 1186881.892, 1203662.154]


            years_ev = [2013, 2014, 2015, 2016, 2017, 2018]
            EV = [21912, 51448, 85925, 159779, 254652, 408094]

            
            fig = figure('Position', [10, 10, 900, 600])
            title('Evolución Consumo Derivados del Petróleo USA-  Entrada de EV California')
            labels= {'Gasolina','Diesel', 'EV'}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            yyaxis right

            ylabel('Unidades acumuladas EV')
            h(3) = plot(years_ev, EV, 'LineWidth', lineWidth)
            hold on

            legend(h([1,2,3]), labels, 'Location', 'northwest')
            grid on
            yyaxis left
            xlabel('año')
            ylabel('kBOE {\times 10^3}')

            ax = gca;
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';

            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000)

            saveas(gcf, 'fig/ConsumoDerivadosPetróleo-EntradaEV-USA.png')
    end
    
    
