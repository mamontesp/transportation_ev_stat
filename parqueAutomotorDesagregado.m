function consumoEnergiaTransporte = consumoEnergiaTransporte(pais)
    switch pais
        case "Costa Rica"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018]

            automoviles = [629697, 611175, 722020, 754689, 789260, 833570, 877023, 921668, 959342]

            autobuses = [15553, 13969, 16354, 17411, 18554, 17237, 17908, 18472, 18842]

            carga_liviana = [148179, 142755, 160742, 164736, 169864, 176091, 182596, 188529, 194309]

            carga_pesada = [33053, 31262, 35042, 35392, 35897, 36868, 37937, 39695, 41283]

            taxis = [11999, 11710, 12150, 12261, 12420, 12635, 12455, 11987, 11380]
            
            equipo_especial = [9635, 8073, 11791, 12879, 13455, 14026, 14454, 15606, 16742]

            motocicletas = [150003, 130500, 176274, 190256, 218733, 255917, 287555, 310975, 312948]
            
            %%%Cantidad de vehículos eléctricos
            years_ev = [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018]
            
            automoviles_ev = [59, 72, 83, 89, 101, 105, 116, 143, 312]
            bus_ev = [31, 36, 53, 87, 142, 168, 193, 276, 354]
            others_ev = [136, 186, 264, 308, 395, 485, 671, 783, 960]

            %%Merging data
            convencionales = [transpose(automoviles), transpose(autobuses), transpose(carga_liviana), transpose(carga_pesada), transpose(taxis), transpose(equipo_especial), transpose(motocicletas)]
            electricos = [transpose(automoviles_ev), transpose(bus_ev), transpose(others_ev)]
            
            etiquetas= {"Automoviles", "Autobuses", "Carga Liviana", "Carga Pesada", "Taxis", "Equipo especial", "Motocicletas", ...
                        "EV automóviles", "EV motocicletas", "EV equipo especial"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_convencionales= area(years, convencionales)
            %legend(plot_convencionales, eti_convencionales, 'Location', 'southoutside', 'NumColumns', 2)
           
            grid on
            title('Parque vehicular desagregado - Costa Rica')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            %ax.YAxis(1).Exponent = 6
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            yyaxis right
            plot_electricos = area(years_ev, electricos, 'FaceColor', 'flat', 'LineStyle','--')
            ylabel('Unidades de vehículos eléctricos (miles)')
            hold on
            
            ylim([0 10000])
            set (ax, 'YTickLabels', (0:1:10))
            %ax.YAxis(2).Exponent = 3
            
            yyaxis left
            
            legend([plot_convencionales, plot_electricos], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';
            
            saveas(gcf, 'fig/ParqueVehicularDesagregado-CostaRica.png')
            
         case "Japon"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019]

            vehiculos_4ruedas = [75173269, 75146875, 75595763, 76074948, 76681339, 77064477, 77284414, 77639064, 77919101, 78119628 ]


            triciclos = [3111, 3094, 14120, 14727, 15486, 16365, 17384, 18453, 19414, 20369 ]


            motocicletas = [3517115, 3510804, 3502701, 3535528, 3575746, 3589551, 3598932, 3602689, 3624586, 3649321 ]
            
            %%%Cantidad de vehículos eléctricos
            years_ev = [2013, 2014, 2015, 2016, 2017, 2018]
            total_ev = [29000, 62000, 89000, 112000,167000, 210000]

            
            %%Merging data
            convencionales = [transpose(vehiculos_4ruedas), transpose(triciclos), transpose(motocicletas)]
            electricos = [transpose(total_ev)]
            
            etiquetas= {"Vehículos 4 ruedas", "Triciclos", "Motocicletas", "EV"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_convencionales= area(years, convencionales)
            %legend(plot_convencionales, eti_convencionales, 'Location', 'southoutside', 'NumColumns', 2)
           
            grid on
            title('Parque vehicular desagregado - Japon')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            %ax.YAxis(1).Exponent = 6
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            yyaxis right
            plot_electricos = area(years_ev, electricos, 'FaceColor', 'flat', 'LineStyle','--')
            ylabel('Unidades de vehículos eléctricos (millones)')
            hold on
            
            ylim([0 1000000])
            set (ax, 'YTickLabels', (0:0.1:1))
            %ax.YAxis(2).Exponent = 3
            
            yyaxis left
            
            legend([plot_convencionales, plot_electricos], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';
            xlim([2010, 2018])
            saveas(gcf, 'fig/Japon/ParqueVehicularDesagregado-Japon.png')
            
         case "California"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]

            automoviles = [17766000, 17977605, 13223822, 13822505, 14065989, 14463569, 14768392, 14860967]

            carga = [12658000, 12980991, 13597502, 13359688, 13713822, 14037540, 14511913, 14991714]
            
            autobuses = [37000, 55532, 93305, 92884, 93064, 94020, 98622, 99917]

            motocicletas = [743000, 760051, 787521, 799900, 813771, 828883, 842106, 842543]

            
            %%%Cantidad de vehículos eléctricos
            years_ev = [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]
            bev = [300, 5602, 11799, 33711, 63247, 97724, 171578, 266451]
            phev = [97, 1779, 16480, 37113, 67062, 94802, 129620, 129620]
            
            %%Merging data
            convencionales = [transpose(automoviles), transpose(carga), transpose(autobuses), transpose(motocicletas)]
            electricos = [transpose(bev), transpose(phev)]
            
            etiquetas= {"Automoviles", "Autobuses", "Carga", "Motocicletas", "BEV", "PHEV"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_convencionales= area(years, convencionales)
            %legend(plot_convencionales, eti_convencionales, 'Location', 'southoutside', 'NumColumns', 2)
           
            grid on
            title('Parque vehicular desagregado - USA')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            %ax.YAxis(1).Exponent = 6
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            yyaxis right
            plot_electricos = area(years_ev, electricos, 'FaceColor', 'flat', 'LineStyle','--')
            ylabel('Unidades de vehículos eléctricos (miles)')
            hold on
            
            ylim([0 1000000])
            set (ax, 'YTickLabels', (0:1:10))
            %ax.YAxis(2).Exponent = 3
            
            yyaxis left
            
            legend([plot_convencionales, plot_electricos], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';
            
            saveas(gcf, 'fig/ParqueVehicularDesagregado-USA.png')
            
         case "Noruega"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018]

            gasoline_vehicles = [1492704, 1439086, 1399783, 1358655, 1317731, 1237057, 1184569, 1129684, 1063439 ]

            diesel_vehicles = [799521, 914811, 1014549, 1095836, 1168448, 1220981, 1252396, 1267096, 1259133 ]

            %%%Cantidad de vehículos eléctricos
            HEV = [85, 103, 293, 1999, 968, 39088, 56472, 77113, 93213 ]

            PHEV = [0, 0, 0, 0, 0, 12136, 34414, 67293, 96048 ]
            
            BEV = [2068, 3898, 8012, 17714, 38564, 68995, 97351, 138820, 195047 ]
            
            Hidrogeno = [19, 35, 20, 20, 21, 19, 41, 98, 143 ]

            Otros = [52, 62, 57, 108, 140, 148, 133, 185, 240 ]
            
            
            %%Merging data
            convencionales = [transpose(gasoline_vehicles), transpose(diesel_vehicles)]
            electricos = [transpose(HEV), transpose(PHEV), transpose(BEV), transpose(Hidrogeno), transpose(Otros)]
            
            etiquetas= {"Vehiculos a gasolina", "Vehiculos diesel", "HEV", "PHEV", "BEV", "Hidrogeno", "Otros"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_convencionales= area(years, convencionales)
            %legend(plot_convencionales, eti_convencionales, 'Location', 'southoutside', 'NumColumns', 2)
           
            grid on
            title('Parque vehicular desagregado - Noruega')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            %ax.YAxis(1).Exponent = 6
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            yyaxis right
            plot_electricos = area(years, electricos, 'FaceColor', 'flat', 'LineStyle','--')
            ylabel('Unidades de vehículos eléctricos (miles)')
            hold on
            
            ylim([0 1000000])
            set (ax, 'YTickLabels', (0:1:10))
            %ax.YAxis(2).Exponent = 3
            
            yyaxis left
            
            legend([plot_convencionales, plot_electricos], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';
            
            saveas(gcf, 'fig/ParqueVehicularDesagregado-Noruega.png')
            
         case "Chile"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018]

            automoviles = [2070060, 2262436, 2479813, 2685958, 2890222, 3020325, 3170522, 3341910, 3560396]

            autobuses = [76341, 77891, 76531, 81263, 85044, 86940, 91816, 95709, 103847]

            carga_liviana = [772702, 827894, 892557, 945495, 1003699, 1040656, 1083578, 1129064, 1187138]

            carga_pesada = [175753, 188642, 201714, 206211, 216745, 219915, 224225, 229004, 235709]
            
            motocicletas = [102314, 112806, 133640, 148455, 167876, 173056, 175019, 177961, 189588]
            
            taxi = [101886, 100926, 100378, 100505, 103508, 104722, 106711, 104350, 104034]

            
            %%Vehiculos eléctricos
            automoviles_ev = [0, 0, 5, 10, 24, 56, 78, 215, 312]
            bus_ev = [0, 0, 0, 0, 0, 0, 0, 0, 100]

            
            %%Merging data
            convencionales = [transpose(automoviles), transpose(autobuses), transpose(carga_liviana), transpose(carga_pesada), transpose(motocicletas), transpose(taxi)]
            electricos = [transpose(automoviles_ev), transpose(bus_ev)]
            
            etiquetas= {"Automoviles", "Buses", "Carga liviana", "Carga pesada", "Motocicletas", "Taxis", "Automoviles EV", "Buses EV"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_convencionales= area(years, convencionales)
           
            grid on
            title('Parque vehicular desagregado - Chile')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            %ax.YAxis(1).Exponent = 6
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            yyaxis right
            plot_electricos = area(years, electricos, 'FaceColor', 'flat', 'LineStyle','--')
            ylabel('Unidades de vehículos eléctricos (miles)')
            hold on
            
            ylim([0 1000])
            set (ax, 'YTickLabels', (0:0.1:1))
            %ax.YAxis(2).Exponent = 3
            
            yyaxis left
            
            legend([plot_convencionales, plot_electricos], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';
            
            saveas(gcf, 'fig/ParqueVehicularDesagregado-Chile.png')
            
        case "Brasil"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018]

            convencionales = [32110394, 34709557, 37330692, 39771073, 41787334, 42743324, 45183705, 47624086, 50064467 ]
            electricos = [66, 266, 383, 874, 1729, 2575, 3666, 6962, 0 ]
            
            etiquetas= {"Convencionales", "Electricos"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_convencionales= area(years, convencionales)
           
            grid on
            title('Parque vehicular convencional y eléctrico - Brasil')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            %ax.YAxis(1).Exponent = 6
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            yyaxis right
            plot_electricos = area(years, electricos, 'FaceColor', 'flat', 'LineStyle','--')
            ylabel('Unidades de vehículos eléctricos (miles)')
            hold on
            
            ylim([0 10000])
            set (ax, 'YTickLabels', (0:1:10))
            %ax.YAxis(2).Exponent = 3
            
            yyaxis left
            
            legend([plot_convencionales, plot_electricos], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';
            xlim([2010, 2017])
            saveas(gcf, 'fig/Brasil/ParqueVehicularDesagregado-Brasil.png')
         
        case "Canada"
            years= [2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018]

            vehiculos_gasolina = [1548815, 3131291, 4793394, 6516558, 8292903, 10108596, 12033622, 13872077 ]

            vehiculos_diesel = [63849, 132751, 207093, 295297, 380932, 452149, 517555, 588410 ]
            
            convencionales = [transpose(vehiculos_gasolina), transpose(vehiculos_diesel)]
            
            bev = [215, 861, 2463, 5302, 9453, 14443, 23364, 45908 ]

            hev = [10106, 31044, 51739, 71530, 88839, 110561, 133393, 158748 ]

            phev = [303, 1646, 3194, 5727, 8464, 15483, 26888, 47999 ]

            
            electricos = [transpose(bev), transpose(hev), transpose(phev)]
            etiquetas= {"Vehiculos a gasolina", "Vehiculos a diesel", "BEV", "HEV", "PHEV"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_convencionales= area(years, convencionales)
           
            grid on
            title('Parque vehicular convencional y eléctrico - Canada')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            %ax.YAxis(1).Exponent = 6
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            yyaxis right
            plot_electricos = area(years, electricos, 'FaceColor', 'flat', 'LineStyle','--')
            ylabel('Unidades de vehículos eléctricos (millones)')
            hold on
            
            ylim([0 1000000])
            set (ax, 'YTickLabels', (0:0.1:1))
            %ax.YAxis(2).Exponent = 3
            
            yyaxis left
            
            legend([plot_convencionales, plot_electricos], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';
            xlim([2011, 2017])
            saveas(gcf, 'fig/Canada/ParqueVehicularDesagregado-Canada.png')
         case "Holanda"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018]

            convencionales = [7736000,7859000, 7916000, 7932000, 7979000, 8101000, 8223000, 8373000, 8523000 ]
            electricos = [500,2000, 10000, 30000, 45000, 90000, 151752, 165882, 197249]

            
            etiquetas= {"Convencionales", "Electricos"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_convencionales= area(years, convencionales)
           
            grid on
            title('Parque vehicular convencional y eléctrico - Holanda')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            %ax.YAxis(1).Exponent = 6
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            yyaxis right
            plot_electricos = area(years, electricos, 'FaceColor', 'flat', 'LineStyle','--')
            ylabel('Unidades de vehículos eléctricos (millones)')
            hold on
            
            ylim([0 1000000])
            set (ax, 'YTickLabels', (0:0.1:1))
            %ax.YAxis(2).Exponent = 3
            
            yyaxis left
            
            legend([plot_convencionales, plot_electricos], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';
            xlim([2010, 2017])
            saveas(gcf, 'fig/Holanda/ParqueVehicularDesagregado-Holanda.png')
    end