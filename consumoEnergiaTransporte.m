function consumoEnergiaTransporte = consumoEnergiaTransporte(pais)
    switch pais
        case "Costa Rica"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]

            gasolina = [4817.824, 4934.1635, 5139.4685, 5235.2775, 5358.4605, 5803.288, 6261.8025, 6412.3595]

            diesel = [5933.3145, 6015.4365, 6083.8715, 6111.2455, 6241.272, 6535.5425, 6966.683, 7103.553]

            gas = [0, 0, 0, 0, 0, 0, 282.127657792172, 292.848508788275]

            electricidad = [0, 0, 0, 0, 0, 0, 0, 0]

            transporte = [10402.12, 10662.173, 10935.913, 11120.6875, 11353.3665, 12133.5255, 12961.589, 13221.642]

            figure('Position', [10, 10, 900, 600])

            labels= {"Gasolina", "Diesel", "Gas", "Electricidad"}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            h(3) = plot(years, gas, 'LineWidth', lineWidth)
            hold on
            h(4) = plot(years, electricidad,  'LineWidth', lineWidth)
            hold on
            
            legend(h([1,2,3,4]), labels, 'Location', 'east')
            grid on
            title('Productos desagregados consumidos en transporte - Costa Rica')
            xlabel('año')
            ylabel('kBOE {\times 10^3}')
            set (gca, 'YTickMode', 'manual')
            set (gca, 'YTickLabels', get(gca, 'YTick')/1000)
            saveas(gcf, 'fig/ConsumoProductosTransporte-CostaRica.png')
        case "Japon"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]

            gasolina = [273555.2255, 271515.8625, 274609.1245, 270523.555, 260073.5305, 258520.056, 256138.518, 252278.784]

            diesel = [271214.7485, 267252.362, 263638.994, 267601.3805, 259190.719, 257329.287, 254810.879, 255652.6295]

            gas = [762.849152, 750.099584, 706.9472, 645.324288, 609.363968, 542.020096, 460.292096, 390.823296]

            electricidad = [10737.4515, 10450.0245, 10402.12, 10429.494, 10361.059, 10326.8415, 10272.0935, 10272.0935]

            transporte = [575120.8965, 543894.006, 506918.5755, 496783.352, 498829.5585, 493874.8645, 482343.567, 479209.244, 474904.6825, 470695.93]

            figure('Position', [10, 10, 900, 600])

            labels= {"Gasolina", "Diesel", "Gas", "Electricidad"}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            h(3) = plot(years, gas, 'LineWidth', lineWidth)
            hold on
            h(4) = plot(years, electricidad,  'LineWidth', lineWidth)
            hold on
            
            legend(h([1,2,3,4]), labels, 'Location', 'east')
            grid on
            title('Productos desagregados consumidos en transporte - Japon')
            xlabel('año')
            ylabel('kBOE {\times 10^3}')
            set (gca, 'YTickMode', 'manual')
            set (gca, 'YTickLabels', get(gca, 'YTick')/1000)
            saveas(gcf, 'fig/ConsumoProductosTransporte-Japon.png')
        case "Mexico"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]

            gasolina = [243775.48058248, 245399.97058148, 246121.23063924, 240466.6557535, 237788.47938318, 244818.02911632, 264035.62182008, 245581.23284662 ]

            diesel = [87591.08649016, 91610.0135973, 91205.4026939, 89670.82779094, 88611.5197033, 95880.7518152, 94051.69603962, 91141.87445528]

            gas = [6760.54442844, 7331.34396962, 8197.84395848, 8842.89765656, 8831.95597108, 8678.70470192, 9918.1275655, 10201.3326404]

            electricidad = [700.58956, 660.54186, 664.95528, 691.10888, 673.78212, 667.08026, 670.83984, 633.6894685]

            ahorro_por_evs = [0, 0, 0.365, 0.4065, 0.6098, 1.0163, 4.187, 9.065]
 

            figure('Position', [10, 10, 900, 600])

            labels= {"Gasolina", "Diesel", "Gas", "Electricidad", "Ahorro por EVs"}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            h(3) = plot(years, gas, 'LineWidth', lineWidth)
            hold on
            h(4) = plot(years, ahorro_por_evs,  'LineWidth', lineWidth)
            hold on
            h(5) = plot(years, electricidad,  'LineWidth', lineWidth)
            hold on
            
            legend(h([1,2,3,4,5]), labels, 'Location', 'southoutside', 'NumColumns', 2)
            grid on
            title('Productos desagregados consumidos en transporte - México')
            xlabel('año')
            ylabel('kBOE {\times 10^3}')
            set (gca, 'YTickMode', 'manual')
            set (gca, 'YTickLabels', get(gca, 'YTick')/1000)
            saveas(gcf, 'fig/ConsumoProductosTransporte-Mexico.png')
            
         case "Noruega"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018]

            gasolina = [8429.604616125, 7717.77133743, 7150.44556644, 6700.86665358, 6304.80903987, 5983.68124497, 5807.060957775, 5582.271501345, 5427.05973381]

            diesel = [14100.635265255, 14545.602007101, 14966.516492631, 15573.83596461, 16277.364461853, 16800.501036726, 17143.245689229, 16944.814574622, 17016.97134357]

            electricidad = [334.234488, 317.75814, 358.360569, 356.006805, 346.591749, 373.071594, 341.29578, 371.894712, 345.414867]

            ahorro_por_evs = [1.6260162601626, 3.21138211382114, 10.6910569105691, 29.0650406504065, 63.6991869918699, 144.065040650407, 281.138211382114, 463.617886178862, 716.707317073171]

            figure('Position', [10, 10, 900, 600])

            labels= {"Gasolina", "Diesel", "Electricidad", "Ahorro por EVs"}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            
            h(3) = plot(years, electricidad,  'LineWidth', lineWidth)
            hold on
            h(4) = plot(years, ahorro_por_evs,  'LineWidth', lineWidth)
            hold on
            
            legend(h([1,2,3,4]), labels, 'Location', 'southoutside', 'NumColumns', 2)
            grid on
            title('Productos desagregados consumidos en transporte - Noruega')
            xlabel('año')
            ylabel('kBOE {\times 10^3}')
            set (gca, 'YTickMode', 'manual')
            set (gca, 'YTickLabels', get(gca, 'YTick')/1000)
            saveas(gcf, 'fig/ConsumoProductosTransporte-Noruega.png')
            
         case "UK"
            years= [2010, 2018]

            gasolina = [104887.3782, 83335.1772 ]

            diesel = [148710.1869, 177446.4549 ]

            anos_electricidad = [2010, 2011, 2012, 2013, 2014, 2015, 2016]
            
            electricidad = [2393.46685553341, 2474.62672819181, 2636.29852840979, 2561.07332223833, 2650.52760536685, 2657.69548775276, 2759.84006837797]

            anos_ahorro_por_evs = [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018 ]

            ahorro_por_evs = [6.78861788617886, 11.7886178861789, 22.7235772357724, 37.9674796747967, 97.8861788617886, 197.154471544715, 351.30081300813, 543.373983739837, 748.089430894309 ]

            figure('Position', [10, 10, 900, 600])

            labels= {"Gasolina", "Diesel", "Electricidad", "Ahorro por EVs"}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            
            h(3) = plot(anos_electricidad, electricidad,  'LineWidth', lineWidth)
            hold on
            h(4) = plot(anos_ahorro_por_evs, ahorro_por_evs,  'LineWidth', lineWidth)
            hold on
            
            legend(h([1,2,3,4]), labels, 'Location', 'southoutside', 'NumColumns', 2)
            grid on
            title('Productos desagregados consumidos en transporte - UK')
            xlabel('año')
            ylabel('kBOE {\times 10^3}')
            set (gca, 'YTickMode', 'manual')
            set (gca, 'YTickLabels', get(gca, 'YTick')/1000)
            saveas(gcf, 'fig/ConsumoProductosTransporte-UK.png')
            
        case "Brasil"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018 ]

            gasolina = [119932.705029795, 142604.881463, 167351.138908762, 166935.124456181, 175755.373901609, 159159.967755008, 165484.444437928, 169833.024286419, 147530.41225698]

            diesel = [222031.595094124, 234012.903728596, 247541.860494472, 263236.893450204, 265082.165297251, 250975.711151283, 248757.801581507, 253411.5254064, 250574.754458029 ]

            gas = [12090.4225952393, 11876.050520224, 11694.1759128656, 11273.816721024, 10909.465272508, 10626.3775995001, 10902.8407007168, 11870.028182232, 13319.7576874371 ]

            etanol = [82348.0041772443, 73464.2910895491, 67793.578196169, 81363.4506846821, 89023.1876969291, 105556.804019761, 94991.9558564583, 94773.0635451269, 107564.042866586 ]
            
            biodiesel = [10239.6075738602, 11086.6355554155, 11933.3104134016, 12608.1749883658, 14602.3299751774, 17093.1565719116, 17329.6443581892, 19776.754682031, 24933.7894705939 ]
            
            fueloil = [6607.91678169502, 6730.3166239585, 6420.37223086356, 6549.46903043891, 6813.18990348628, 6595.44242488943, 5931.7321261402, 6329.92895986369, 6678.2015921416 ]

            querosene = [21816.8009523125, 24423.6176753596, 25743.180982985, 24694.3568228428, 24983.1260544222, 24700.5110226626, 22607.2561485018, 22554.0510096579, 23182.1675446442 ]

            electricidad = [978.1645612188, 1000.52933458, 1109.51405226246, 1108.29426410448, 1164.25678332896, 1209.0931602174, 1180.88716570815, 1209.0931602174, 1324.56456423945 ]
            
            figure('Position', [10, 10, 900, 600])

            labels= {"Gasolina", "Diesel", "Gas", "Etanol", "Biodiesel", "Fueloil", "Querosene", "Electricidad"}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            h(3) = plot(years, gas,  'LineWidth', lineWidth)
            hold on
            h(4) = plot(years, etanol, 'LineWidth', lineWidth)
            hold on
            h(5) = plot(years, biodiesel, 'LineWidth', lineWidth)
            hold on
            h(6) = plot(years, fueloil,  'LineWidth', lineWidth)
            hold on
            h(7) = plot(years, querosene, 'LineWidth', lineWidth)
            hold on
            h(8) = plot(years, electricidad, 'LineWidth', lineWidth)
            hold on
            
            legend(h([1,2,3,4,5,6,7,8]), labels, 'Location', 'southoutside', 'NumColumns', 2)
            grid on
            title('Productos desagregados consumidos en transporte - Brasil')
            xlabel('año')
            ylabel('kBOE {\times 10^3}')
            set (gca, 'YTickMode', 'manual')
            set (gca, 'YTickLabels', get(gca, 'YTick')/1000)
            saveas(gcf, 'fig/ConsumoProductosTransporte-Brasil.png')
            
        case "Holanda"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018 ]

            gasolina = [28621.10417134, 29062.43473252, 27656.71516728, 27002.89211368, 26774.05404492, 26855.78192662, 27558.64170924, 28506.68513696, 29225.89049592 ]

            diesel = [47614.66387842, 48186.75905032, 46110.87085514, 44901.29820598, 41125.47007144, 41534.10947994, 40831.24969732, 41910.05773576, 43037.90250322 ]

            gas = [65.38230536, 114.41903438, 163.4557634, 179.80133974, 228.83806876, 245.1836451, 294.22037412, 310.56595046, 310.56595046 ]
            
            figure('Position', [10, 10, 900, 600])

            labels= {"Gasolina", "Diesel", "Gas"}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            h(3) = plot(years, gas,  'LineWidth', lineWidth)
            hold on
            
            
            legend(h([1,2,3]), labels, 'Location', 'southoutside', 'NumColumns', 2)
            grid on
            title('Productos desagregados consumidos en transporte - Holanda')
            xlabel('año')
            ylabel('kBOE {\times 10^3}')
            set (gca, 'YTickMode', 'manual')
            set (gca, 'YTickLabels', get(gca, 'YTick')/1000)
            saveas(gcf, 'fig/ConsumoProductosTransporte-Holanda.png')
            
        case "Chile"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017]

            gasolina = [22022.8571428571, 20518.1071428571, 20994.0571428571, 22744.4571428571, 24464.0857142857, 24625.75, 26306.8, 26474.4428571429]
            
            diesel = [24879.2857142857, 28486.0285714286, 29108.1714285714, 31410.8571428571, 26834.95, 28085.6357142857, 32556.1516108426, 34196.8]

            gas = [140.785714285714, 134.492857142857, 232.378571428571, 223.164285714286, 235.057142857143, 211.842857142857, 194.271428571429, 130.971428571429]
            
            figure('Position', [10, 10, 900, 600])

            labels= {"Gasolina", "Diesel", "Gas"}

            lineWidth = 3

            h(1) = plot(years, gasolina, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, diesel, 'LineWidth', lineWidth)
            hold on
            h(3) = plot(years, gas,  'LineWidth', lineWidth)
            hold on
            
            
            legend(h([1,2,3]), labels, 'Location', 'southoutside', 'NumColumns', 2)
            grid on
            title('Productos desagregados consumidos en transporte - Chile')
            xlabel('año')
            ylabel('kBOE {\times 10^3}')
            set (gca, 'YTickMode', 'manual')
            set (gca, 'YTickLabels', get(gca, 'YTick')/1000)
            saveas(gcf, 'fig/ConsumoProductosTransporte-Chile.png')
            
        case "Canada"
            years= [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018]

            derivados_petroleo = [415518.460749949, 411851.412425054, 412765.473399787, 422475.661100398, 415775.413210077, 413758.189287887, 410114.907430997, 410745.454384043, 408312.774947918 ]

            gas = [310.010200940304, 264.160859295384, 282.12464769744, 243.320249456784, 640.09276963104, 642.904208762208, 663.646745142744, 1055.7771216353, 1345.71495482518 ]
            
            biodiesel = [8329.9672341239, 10517.6918631576, 11359.1621333467, 13089.1288968666, 13039.1277788303, 13420.9767878025, 13849.7212553056, 15830.690689164, 15857.2195595703 ]

            electricidad = [586.822536325944, 607.07470541616, 601.631628493608, 666.866823682512, 480.249378563064, 494.175809608152, 507.9387848898, 515.326985397288, 532.980207848808 ]

            figure('Position', [10, 10, 900, 600])

            labels= {"Derivados del petroleo", "Gas", "Biodiesel", "Electricidad"}

            lineWidth = 3

            h(1) = plot(years, derivados_petroleo, 'LineWidth', lineWidth)
            hold on
            h(2) = plot(years, gas, 'LineWidth', lineWidth)
            hold on
            h(3) = plot(years, biodiesel,  'LineWidth', lineWidth)
            hold on
            h(4) = plot(years, electricidad, 'LineWidth', lineWidth)
            hold on
            
            
            legend(h([1,2,3,4]), labels, 'Location', 'southoutside', 'NumColumns', 2)
            grid on
            title('Productos desagregados consumidos en transporte - Canada')
            xlabel('año')
            ylabel('kBOE {\times 10^3}')
            set (gca, 'YTickMode', 'manual')
            set (gca, 'YTickLabels', get(gca, 'YTick')/1000)
            saveas(gcf, 'fig/ConsumoProductosTransporte-Canada.png')
    end