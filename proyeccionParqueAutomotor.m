function proyeccionParqueAutomotor= proyeccionParqueAutomotor(pais)
    switch pais
        case "Costa Rica"
            anos_convencionales= [2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030]
            
            total_convencionales = [998119, 1166639.05263156, 1335159.10526317, 1503679.15789473, 1672199.21052629, 1840719.2631579, 2009239.31578946, 2177759.36842108, 2346279.42105263, 2514799.47368419,2683319.52631581,2851839.57894737, 3020359.63157892, ]
            total_electricos = [1276, 68577.2631579042, 135878.526315808, 203179.789473712, 270481.052631587, 337782.315789491, 405083.578947395, 472384.842105269, 539686.105263174, 606987.368421078,674288.631578952,741589.894736856, 808891.15789476, ]
            total_parque = [transpose(total_electricos), transpose(total_convencionales)]
            
            etiquetas= {"Eléctrico", "Convencional"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_total_parque= area(anos_convencionales, total_parque)
           
            grid on
            title('Proyeccion Parque Vehicular y Electrico - Costa Rica 2018 - 2030')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            
            legend([plot_total_parque], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            saveas(gcf, 'fig/ParqueVehicularProyeccion-CostaRica.png')
        
        case "Mexico"
            anos_convencionales= [2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030]
            
            total_convencionales = [38442791.3899488, 39307360.4798155, 40261921.8913041, 41489674.2791446, 42666002.4832012, 43877684.8136093, 44771180.0068545, 45661461.1886132, 46921353.6913186, 47814848.8845638,48409441.0095651,49122951.5595667, 50026088.7872713]
            total_electricos = [4010, 5790, 7570, 9350, 11130, 12910, 14690, 16470, 18250, 20030,21810,23590, 25370]

            total_parque = [transpose(total_convencionales), transpose(total_electricos)]
            
            etiquetas= {"Convencional","Eléctrico"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_total_parque= area(anos_convencionales, total_parque)
           
            grid on
            title('Proyeccion Parque Vehicular y Electrico - México 2018 - 2030')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            
            legend([plot_total_parque], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            saveas(gcf, 'fig/ParqueVehicularProyeccion-Mexico.png') 
            
       case "UK"
            anos_convencionales= [2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030]
            total_convencionales = [30220000, 31560000,33050000]

            anos_electricos = [2018, 2030]
            total_electricos = [184030, 11000000]

            %total_parque = [transpose(total_convencionales), transpose(total_electricos)]
            
            etiquetas= {"Convencional","Eléctrico"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_parque_convencionales= area(anos_convencionales, total_convencionales)
            hold on
            
            plot_parque_electrico= area(anos_electricos, total_electricos)
            hold on
            
            grid on
            title('Proyeccion Parque Vehicular y Electrico - UK 2018 - 2030')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            
            legend([plot_parque_convencionales, plot_parque_electrico], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            saveas(gcf, 'fig/ParqueVehicularProyeccion-UK.png')
       
        case "Noruega-NB19"
            anos=  [2018,2019,2020,2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030 ]
 
            total_convencionales = [2322572,2239943,2141976,2034439, 1920134, 1801907, 1680176, 1552537, 1422199, 1291618, 1161657, 1035135, 913496 ]

            total_electricos = [195047,264456,345066,432236, 521449, 612093, 703782, 799537, 900898, 1006041, 1113681, 1224533, 1338769 ]

            total_parque = [transpose(total_convencionales), transpose(total_electricos)]
            
            etiquetas= {"Convencional","Eléctrico"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_total_parque= area(anos, total_parque)
            hold on
            
            grid on
            title('Proyeccion Parque Vehicular y Electrico - Noruega 2018 - 2030 - Escenario NB19')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            
            legend(plot_total_parque, etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            saveas(gcf, 'fig/ParqueVehicularProyeccion-NoruegaNB19.png')
            
       case "Noruega-NTP"
            anos=  [2018,2019,2020,2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030 ]
 
            total_convencionales = [2322572,2243727,2149788,2045263, 1932632, 1815192, 1693796, 1566291, 1435996, 1305410, 1175409, 1048808, 927023 ]

            total_electricos = [195047,273646,374239,492187, 620031, 753556, 890876, 1034449, 1185578, 1341627, 1500169, 1663133, 1832098 ]

            total_parque = [transpose(total_convencionales), transpose(total_electricos)]
            
            etiquetas= {"Convencional","Eléctrico"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_total_parque= area(anos, total_parque)
            hold on
            
            grid on
            title('Proyeccion Parque Vehicular y Electrico - Noruega 2018 - 2030 - Escenario NTP')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            
            legend(plot_total_parque, etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            saveas(gcf, 'fig/ParqueVehicularProyeccion-NoruegaNTP.png')
        case "Chile"
            anos_convencionales= [2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030]
            
            total_convencionales = [5380712,5467454.32,5717201.41962563,5964725.22464708, 6207784.56106199, 6445188.21479571, 6675708.34343996, 6898091.70824257, 7111065.80472011, 7313342.6686231, 7503621.4472869, 7680590.24420587,7842927.50271087]

            total_electricos = [412,677,4603.3803743661,11430.0553529252, 22721.1989380132, 39668.0252042863, 63498.3765600359, 95465.4917574291, 136841.875279891, 188915.491376903, 252987.192713103, 330368.87579413,422382.097289132]

            total_parque = [transpose(total_electricos), transpose(total_convencionales)]
            
            etiquetas= {"Eléctrico", "Convencional"}
            
            figure('Position', [10, 10, 900, 600])
            ax=gca
            
            plot_total_parque= area(anos_convencionales, total_parque)
           
            grid on
            title('Proyeccion Parque Vehicular y Electrico - Chile 2018 - 2030')
            xlabel('año')
            ylabel('Unidades vehiculos convencionales (millones)')
            
            legend([plot_total_parque], etiquetas, 'Location', 'southoutside', 'NumColumns', 2)
            set (ax, 'YTickMode', 'manual')
            set (ax, 'YTickLabels', get(ax, 'YTick')/1000000)
            
            saveas(gcf, 'fig/ParqueVehicularProyeccion-Chile.png')
            
       
    end