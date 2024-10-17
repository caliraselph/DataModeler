# FIAP - Faculdade de Informática e Administração Paulista

<p align="center">
<a href= "https://www.fiap.com.br/"><img src="assets/logo-fiap.png" alt="FIAP - Faculdade de Informática e Admnistração Paulista" border="0" width=40% height=40%></a>
</p>

<br>

#  FarmTech Solutions
Cap 1 - Um mapa do tesouro
## Nome do grupo
CARLOS EMILIO CASTILLO ESTRADA RM559855
## 👨‍🎓 Integrantes: 
- <a href="https://www.linkedin.com/in/carlos-emilio-castillo-estrada-a555161b5/">CARLOS EMILIO CASTILLO ESTRADA</a>

## 👩‍🏫 Professores:
### Tutor(a) 
- <a href="https://www.linkedin.com/company/inova-fusca">LUCAS GOMES MOREIRA</a>
### Coordenador(a)
- <a href="https://www.linkedin.com/company/inova-fusca">ANDRE GODOI CHIOVATO</a>


## 📜 Descrição
Objetivo da Atividade
O objetivo desta atividade é modelar um Modelo Entidade-Relacionamento (MER) e um Diagrama Entidade-Relacionamento (DER) para um sistema de sensoriamento agrícola, que visa monitorar e ajustar a aplicação de água e nutrientes em uma plantação. O sistema utiliza sensores para coletar dados em tempo real, processar essas informações e sugerir ajustes na irrigação e aplicação de nutrientes, com base em dados históricos e previsões futuras. A solução deve ser capaz de armazenar esses dados de forma eficiente em um banco de dados e permitir uma análise posterior.

<img width="728" alt="image" src="https://github.com/user-attachments/assets/a45cb07e-b137-45f8-9de4-4a6e4474d01b">



*MODELO DER PARA LEITURA DE NUTRIENTES DE CULTIVO

Passos da Atividade

Quantidade total de água aplicada por mês: Dados necessários
Data e hora do ajuste
Quantidade de água aplicada
Variação do nível de pH ao longo do ano: Dados necessários
Data e hora das leituras de pH
Valor do pH registrado
Análise de nutrientes (P e K): Dados necessários
Data e hora das leituras de nutrientes
Quantidade de fósforo (P) e potássio (K)

Entidades:
- Cultura
- Tipo Sensor
- Sensor
- Area
- Registro Previsão
- Manutenção
- Leitura

Cardinalidade:
1. Um tipo de sensor pode tipificar muitos sensores e um sensor pode ser tipificado por um tipo.
2. Uma cultura pode ser plantada em muitas áreas e muitas áreas podem conter muitas culturas.
3. Uma área pode receber muitas previsões, e muitas previsões podem afetar uma área.
4. Uma área pode ser feito muitas manutenções, e muitas manutenções são feitas em uma área.
5. Um sensor pode ser registrado em muitas leituras, muitas leituras podem conter um sensor.
6. Uma área possui muitas leituras, muitas leituras podem ser feitas para uma área.

Detalhe de Entidades e Atributos:

Entidade: tb_agro_area

area_id: Identificador único da área.
tamano: Tamanho da área em unidades de medida (não especificadas no DDL).
latitude: Latitude geográfica da área.
longitude: Longitude geográfica da área.

Entidade: tb_agro_cultura
cultura_id: Identificador único da cultura.
descricao: Descrição textual da cultura.
req_ph_min: pH mínimo requerido pela cultura.
req_ph_max: pH máximo requerido pela cultura.
req_umi_min: Umidade mínima requerida pela cultura.
req_umi_max: Umidade máxima requerida pela cultura.
req_nut_p: Quantidade mínima de nutrientes fósforo (P) requerida pela cultura.
req_nut_k: Quantidade mínima de nutrientes potássio (K) requerida pela cultura.

Entidade: tb_agro_leitura
leitura_id: Identificador único da leitura.
tb_agro_area_area_id: Referência à área onde a leitura foi realizada.
tb_agro_sensor_sensor_id: Referência ao sensor que realizou a leitura.
data_hora: Data e hora da leitura.
valor_umi: Valor da umidade registrado na leitura.
valor_ph: Valor do pH registrado na leitura.
valor_nut_p: Valor do nutriente fósforo (P) registrado na leitura.
valor_nut_k: Valor do nutriente potássio (K) registrado na leitura.

Entidade: tb_agro_manutencao
id_manutencao: Identificador único da manutenção.
area_id: Referência à área onde a manutenção foi realizada.
data_hora: Data e hora da manutenção.
quant_agua: Quantidade de água utilizada na manutenção.
quant_nut_p: Quantidade de nutriente fósforo (P) aplicada na manutenção.
quant_nut_k: Quantidade de nutriente potássio (K) aplicada na manutenção.

Entidade: tb_agro_r_area_cultura
cultura_id: Referência à cultura.
area_id: Referência à área.

Entidade: tb_agro_registro_previsao
previsao_id: Identificador único da previsão.
area_id: Referência à área para a qual a previsão foi feita.
data: Data da previsão.
cant_agua: Previsão de quantidade de água necessária.
cant_nut_p: Previsão de quantidade de nutriente fósforo (P) necessária.
cant_nut_k: Previsão de quantidade de nutriente potássio (K) necessária.

Entidade: tb_agro_sensor
sensor_id: Identificador único do sensor.
tp_sensor_id: Referência ao tipo de sensor.
descricao: Descrição do sensor.
sit: Situação do sensor (ativo/inativo).

Entidade: tb_agro_tp_sensor
tp_sensor_id: Identificador único do tipo de sensor.
descricao: Descrição do tipo de sensor.
sit: Situação do tipo de sensor (ativo/inativo).

Relacionamentos no MER:

Relacionamento entre Produtor e Cultura: Um produtor planta várias culturas.
Relacionamento entre Cultura e Sensor: Uma cultura é monitorada por vários sensores.
Relacionamento entre Sensor e Leitura: Um sensor gera várias leituras.
Relacionamento entre Cultura e Aplicação: A aplicação de água e nutrientes é feita em uma cultura específica.

Em conclusão:
Este projeto ajudará o produtor a tomar decisões informadas sobre a irrigação e o uso de nutrientes, otimizando recursos e melhorando a produção.
**

<img width="697" alt="image" src="https://github.com/user-attachments/assets/acf49da1-23ec-4136-b162-001049282461">

*MODELO MER PARA LEITURA DE NUTRIENTES DE CULTIVO

## 📁 Estrutura de pastas

Dentre os arquivos e pastas presentes na raiz do projeto, definem-se:

- <b>.github</b>: Nesta pasta ficarão os arquivos de configuração específicos do GitHub que ajudam a gerenciar e automatizar processos no repositório.

- <b>document</b>: aqui estão todos os documentos do projeto que as atividades poderão pedir. Na subpasta "other", adicione documentos complementares e menos importantes.

- <b>scripts</b>: Posicione aqui scripts auxiliares para tarefas específicas do seu projeto. Exemplo: deploy, migrações de banco de dados, backups.

- <b>src</b>: Todo o código fonte criado para o desenvolvimento do projeto ao longo das 7 fases.

- <b>README.md</b>: arquivo que serve como guia e explicação geral sobre o projeto (o mesmo que você está lendo agora).

## 🔧 Como executar o código

*Acrescentar as informações necessárias sobre pré-requisitos (IDEs, serviços, bibliotecas etc.) e instalação básica do projeto, descrevendo eventuais versões utilizadas. Colocar um passo a passo de como o leitor pode baixar o seu código e executá-lo a partir de sua máquina ou seu repositório. Considere a explicação organizada em fase.*


## 🗃 Histórico de lançamentos

* 0.1.0 - 16/10/2024
    *

## 📋 Licença

<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/agodoi/template">MODELO GIT FIAP</a> por <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://fiap.com.br">Fiap</a> está licenciado sobre <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution 4.0 International</a>.</p>


