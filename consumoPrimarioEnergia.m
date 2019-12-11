function consumoPrimario = consumoPrimarioEnergia(pais, lya)
    if (lya== 'kBoE')
        divider = 1
        label_y_axis = 'kBoE'
    end
    if (lya == 'mBoE')
        divider = 1000
        label_y_axis = 'Millones de BoE'
    end
    
    fig=figure('Position', [10, 10, 900, 600])
    ax=gca
    lineWidth = 3
    
    switch pais
        case "CostaRica"
            years= [2000, 2005, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]

            not_energy_use = [431.1405, 287.427, 232.679, 280.5835, 396.923, 383.236, 417.4535, 526.9495, 506.419, 670.663]

            no_specified = [27.374, 130.0265, 95.809, 123.183, 116.3395, 123.183, 171.0875, 177.931, 184.7745, 198.4615]

            agriculture = [875.968, 342.175, 260.053, 307.9575, 321.6445, 328.488, 328.488, 328.488, 362.7055, 383.236]

            pub_comm_services = [150.557, 198.4615, 294.2705, 225.8355, 218.992, 218.992, 218.992, 239.5225, 253.2095, 287.427]

            residential = [362.7055, 314.801, 342.175, 342.175, 355.862, 369.549, 403.7665, 424.297, 479.045, 479.045]

            transport = [6809.2825, 8615.9665, 10402.12, 10662.173, 10935.913, 11120.6875, 11353.3665, 12133.5255, 12961.589, 13221.642]

            industry = [1854.5885, 1799.8405, 1662.9705, 1608.2225, 1662.9705, 1560.318, 1539.7875, 1560.318, 1676.6575, 1697.188]
            labels= {"Uso no energético", "Sin especificar", "Agricultura", "Servicios públicos", "Residencial", "Transporte", "Industria"}

            h(1) = plot(years, not_energy_use, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, no_specified, 'LineWidth', lineWidth)
            hold on
            h(3) = plot(years, agriculture, 'LineWidth', lineWidth)
            hold on
            h(4) = plot(years, pub_comm_services,  'LineWidth', lineWidth)
            hold on
            h(5) = plot(years, residential,  'LineWidth', lineWidth)
            hold on
            h(6) = plot(years, transport, 'LineWidth', lineWidth)
            hold on
            h(7) = plot(years, industry,  'LineWidth', lineWidth)
            hold on 

        case "Japon"
            years= [2000, 2005, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]

            not_energy_use = [230906.5335, 237695.2855, 229038.258, 215796.0855, 221503.5645, 228340.221, 218027.0665, 234745.737, 222687.49, 230660.1675]

            no_specified = [13303.764, 14049.7055, 11490.2365, 11086.47, 10586.8945, 9539.839, 9505.6215, 10087.319, 10128.38, 8896.55]

            agriculture = [26279.04, 25149.8625, 22398.7755, 20290.9775, 20236.2295, 18525.3545, 18155.8055, 20722.118, 22651.985, 23028.3775]

            pub_comm_services = [150214.825, 146861.51, 86207.5695, 85530.063, 80301.629, 94344.491, 88732.821, 79658.34, 75969.6935, 71993.62]

            residential = [118981.091, 112856.1585, 100024.596, 95918.496, 96308.5755, 92578.868, 86980.885, 82977.4375, 82532.61, 88486.455]

            transport = [575120.8965, 543894.006, 506918.5755, 496783.352, 498829.5585, 493874.8645, 482343.567, 479209.244, 474904.6825, 470695.93]

            industry = [254372.895, 222174.2275, 165003.6285, 172298.7995, 161280.7645, 162964.2655, 155641.7205, 143193.394, 141578.328, 138197.639]

            labels= {"Uso no energético", "Sin especificar", "Agricultura", "Servicios públicos", "Residencial", "Transporte", "Industria"}

            h(1) = plot(years, not_energy_use, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, no_specified, 'LineWidth', lineWidth)
            hold on
            h(3) = plot(years, agriculture, 'LineWidth', lineWidth)
            hold on
            h(4) = plot(years, pub_comm_services,  'LineWidth', lineWidth)
            hold on
            h(5) = plot(years, residential,  'LineWidth', lineWidth)
            hold on
            h(6) = plot(years, transport, 'LineWidth', lineWidth)
            hold on
            h(7) = plot(years, industry,  'LineWidth', lineWidth)
            hold on 
        case "USA"
            years= [2000, 2005, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]

            not_energy_use = [928012.8175, 995667.6585, 826592.1475, 788918.68, 831252.571, 779351.467, 846205.6185, 785291.625, 785407.9645, 799676.662]

            agriculture = [96520.724, 110673.082, 106847.5655, 101612.288, 97916.798, 107326.6105, 102337.699, 101427.5135, 96794.464, 95658.443]

            pub_comm_services = [113985.336, 114259.076, 104650.802, 88999.7175, 72972.2405, 72985.9275, 67346.8835, 79822.584, 90977.489, 77413.672]

            residential = [218348.711, 196983.304, 143432.9165, 117352.338, 97465.127, 111562.737, 104541.306, 107011.8095, 96808.151, 98395.843]

            transport = [3897318.502, 4106941.7505, 3801639.5285, 3688030.585, 3601104.448, 3700218.8585, 3701081.1395, 3841981.961, 3865434.6355, 3889126.8325]

            industry = [175611.0535, 240549.025, 206728.448, 138765.6495, 137841.777, 139559.4955, 122450.7455, 132558.595, 138286.6045, 125762.9995]

            labels= {"Uso no energético", "Agricultura", "Servicios públicos", "Residencial", "Transporte", "Industria"}

            h(1) = plot(years, not_energy_use, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, agriculture, 'LineWidth', lineWidth)
            hold on
            h(3) = plot(years, pub_comm_services,  'LineWidth', lineWidth)
            hold on
            h(4) = plot(years, residential,  'LineWidth', lineWidth)
            hold on
            h(5) = plot(years, transport, 'LineWidth', lineWidth)
            hold on
            h(6) = plot(years, industry,  'LineWidth', lineWidth)
            hold on 

        otherwise
            close(gcf)
            return ;
    end
    legend(h, labels, 'Location', 'southoutside','NumColumns', 2)
    grid on
    title('Consumo primario de energía - '+pais)
    xlabel('año')
    ylabel(label_y_axis)
    
    if(lya=='kBoE')
        ax.YAxis.Exponent = 3
    else
        set (ax, 'YTickMode', 'manual')
        set (ax, 'YTickLabels', get(ax, 'YTick')/divider)
    end
    saveas(gcf, 'fig/'+pais+'/ConsumoPrimaria'+pais+'.png')
    close(gcf)
       
end


