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
        
       
       
    end