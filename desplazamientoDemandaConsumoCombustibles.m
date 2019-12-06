function desplazamientoDemanda = desplazamientoDemandaConsumoCombustibles(pais)
    switch pais
        case "Costa Rica"
            years= [2000, 2005, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]
            transport = [6809.2825, 8615.9665, 10402.12, 10662.173, 10935.913, 11120.6875, 11353.3665, 12133.5255, 12961.589, 13221.642]
            gasolina = [3770.7685, 4201.909, 4817.824, 4934.1635, 5139.4685, 5235.2775, 5358.4605, 5803.288, 6261.8025, 6412.3595]
            diesel = [3907.6385, 5098.4075, 5933.3145, 6015.4365, 6083.8715, 6111.2455, 6241.272, 6535.5425, 6966.683, 7103.553]
            
            years_ev = [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019]
            vehicles = [0.284664491014295, 0.347387175475072, 0.400460216172653, 0.429409147462242, 0.487307010041421, 0.506606297567814, 0.559679338265394, 0.689949529068546, 1.50534442705865, 3.07823636045967 ]

            motorcycles = [0.149569478329545, 0.173693587737536, 0.255715559724706, 0.419759503699045, 0.685124707186948, 0.810570076108502, 0.931190623148457, 1.33165083932111, 1.70798694608577, 1.92510393075769 ]

            others = [0.656175775897358, 0.89741686997727, 1.27375297674193, 1.48604513953225, 1.9058046432313, 2.34003861257514, 3.23745548255241, 3.77783553329141, 4.63182900633429, 4.95509207240138 ]

            EV = [1.0904097452412, 1.41849763318988, 1.92992875263929, 2.33521379069354, 3.07823636045967, 3.65721498625145, 4.72832544396626, 5.79943590168107, 7.84516037947871, 9.95843236361873 ]

            fig = figure('Position', [10, 10, 900, 600])
           
            labels= {'Gasolina','Diesel', 'Total parque eléctrico','Carros livianos', 'Motocicletas', 'Otros vehiculos'}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on

            yyaxis right
            ylabel('Consumo desplazado por EV en kBOE')
            h(3) = plot(years_ev, EV, 'LineWidth', lineWidth)
            hold on

            h(4) = plot(years_ev, vehicles,'LineWidth', lineWidth)
            hold on

            h(5) = plot(years_ev, motorcycles, 'LineWidth', lineWidth)
            hold on

            h(6) = plot(years_ev, others, 'LineWidth', lineWidth)
            hold on


            legend(h([1,2,3,4,5, 6]), labels, 'Location', 'northwest')
            grid on
            yyaxis left
            xlabel('año')
            ylabel('kBOE {\times 10^3}')
            title('Desplazamiento demanda consumo combustibles - Costa Rica')
            ax = gca;
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';

            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000)

            saveas(gcf, 'fig/DesplazamientoConsumoCostaRica.png')

        case "Japon"
            years= [2000, 2005, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]
            transport = [6809.2825, 8615.9665, 10402.12, 10662.173, 10935.913, 11120.6875, 11353.3665, 12133.5255, 12961.589, 13221.642]
            gasolina = [273096.711, 273397.825, 273555.2255, 271515.8625, 274609.1245, 270523.555, 260073.5305, 258520.056, 256138.518, 252278.784]
            diesel = [396738.2255, 362274.3595, 271214.7485, 267252.362, 263638.994, 267601.3805, 259190.719, 257329.287, 254810.879, 255652.6295]
            
            years_ev = [2013, 2014, 2015, 2016, 2017, 2018]
            EV = [139.919834566348, 299.13895665909, 429.409147462242, 540.380050739001, 805.745254226904, 1013.21259513563]

            fig = figure('Position', [10, 10, 900, 600])
            
            labels= {'Gasolina','Diesel','Total parque eléctrico (no HEV)'}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            
            yyaxis right
            ylabel('Consumo desplazado por EV en kBOE')
            h(3) = plot(years_ev, EV, 'LineWidth', lineWidth)
            hold on
            
            legend(h([1,2, 3]), labels, 'Location', 'northwest')
            grid on
            yyaxis left
            xlabel('año')
            ylabel('kBOE {\times 10^3}')
            title('Desplazamiento demanda consumo combustibles - Japon')
            
            ax = gca;
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';

            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000)

            saveas(gcf, 'fig/DesplazamientoConsumoJapon.png')
            
        case "USA"
            years= [2000, 2005, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]
            transport = [6809.2825, 8615.9665, 10402.12, 10662.173, 10935.913, 11120.6875, 11353.3665, 12133.5255, 12961.589, 13221.642]
            gasolina = [2484306.8395, 2627917.687, 2479543.7635, 2329322.095, 2304049.0495, 2336357.213, 2353055.353, 2419909.5045, 2454537.6145, 2438886.53]

            diesel = [1183733.882, 1327591.0955, 1230112.2815, 1213858.969, 1188325.8705, 1189817.7535, 1235224.376, 1207309.7395, 1186881.892, 1203662.154]

            
            years_ev = [2013, 2014, 2015, 2016, 2017, 2018]
            EV = [105.72149706958, 248.227436164465, 414.572820176327, 770.905215419883, 1228.65054179275, 1968.98086094895 ]


            fig = figure('Position', [10, 10, 900, 600])
            
            labels= {'Gasolina','Diesel','Total parque eléctrico (no HEV)'}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            
            yyaxis right
            ylabel('Consumo desplazado por EV en kBOE')
            h(3) = plot(years_ev, EV, 'LineWidth', lineWidth)
            hold on
            
            legend(h([1,2, 3]), labels, 'Location', 'northwest')
            grid on
            yyaxis left
            xlabel('año')
            ylabel('kBOE {\times 10^3}')
            title('Desplazamiento demanda consumo combustibles - California')
            
            ax = gca;
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';

            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000)

            saveas(gcf, 'fig/DesplazamientoConsumoCalifornia.png')
        
    end