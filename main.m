list_of_countries = ["CostaRica", "USA", "Japon", "Holanda", "Canada", "Brasil", "Noruega", "UK", "Mexico", "Chile"]
unit = 'kBoE'

for member = list_of_countries
     disp(['the member is ' member])
     consumoEnergiaTransporte(member, unit)
     desplazamientoDemandaConsumoCombustibles(member, unit)
     ofertaPrimariaEnergiaInterna(member)
     consumoPrimarioEnergia(member, unit)
end