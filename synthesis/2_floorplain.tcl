

##Core é defino como o bloco interno que conterá as std cells e macros. Os pinos de I/O são adicionados no bloco externo
##Ratio(H/W) Relação para criar a área, valor aprox. a 1 cria uma área de chip quadrada, 0.5 gera um retângulo
##Core Utilization % de utilização da área ( default 70%)
##Core Margins fronteiras de IO do core Concept of Rows Standard cells são colocadas nas linhas (rows). Todas as linhas tem a mesma altura e espaçamento entre elas. A largura das linhas pode variar


# Floorplain site specifications   
#create_floorplan -site core -core_density_size 1 0.78 75 75 75 75
#create_floorplan -core_density_size 1 0.78 50 50 50 50
create_floorplan -site core -core_density_size 1 0.78 120 120 120 120