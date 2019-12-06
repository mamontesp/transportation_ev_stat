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
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018]

            automoviles = [4212267, 3524788, 4572332, 4562282, 4699591, 4215889, 4146458, 4386377, 4391160 ]

            autobuses = [12775, 10651, 11938, 11256, 11983, 13387, 15498, 15593, 13702 ]

            carga = [731094, 674780, 785450, 801975, 851314, 817234, 808302, 832195, 867205 ]

            motocicletas = [380242, 405533, 401895, 419398, 416723, 372696, 338148, 357264, 335572 ]
            
            %%%Cantidad de vehículos eléctricos
            years_ev = [2013, 2014, 2015, 2016, 2017, 2018]
            total_ev = [29000, 33000, 27000, 23000,55000, 43000]
            
            %%Merging data
            convencionales = [transpose(automoviles), transpose(autobuses), transpose(carga), transpose(motocicletas)]
            electricos = [transpose(total_ev)]
            
            etiquetas= {"Automoviles", "Autobuses", "Carga", "Motocicletas", "EV Total"}
            
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
            ylabel('Unidades de vehículos eléctricos (miles)')
            hold on
            
            ylim([0 1000000])
            set (ax, 'YTickLabels', (0:1:10))
            %ax.YAxis(2).Exponent = 3
            
            yyaxis left
            
            legend([plot_convencionales, plot_electricos], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            ax.YAxis(1).Color = 'k';
            ax.YAxis(2).Color = 'k';
            
            saveas(gcf, 'fig/ParqueVehicularDesagregado-Japon.png')
            
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
    end