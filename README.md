<h1 style="text-align: center;">Alura Challenge BI</h1>
<p style="text-align: justify;">This challenge consists in develop skills in Business Intelligence and put in practice all obtained knowledge in Power BI. The challenge will take 4 weeks divided in 3 different projects with different &nbsp;levels of complexity:</p>
<p>&nbsp;</p>
<ul>
<li><a href="#week01">Week 01: Logistics Challenge Dashboard (AluraLog)</a></li>
<li><a href="#week02">Week 02: Marketing Dashboard (AluraShop)</a></li>
<li>Week 03 and 04: Coming Soon&hellip;</li>
</ul>
<p>&nbsp;</p>
<h3>🚀&nbsp; <a id="week01"</a>Week 01: Logistics Challenge Dashboard (AluraLog)</h3>
<p style="text-align: justify;">The Alura Log manager is facing some work changes due to the high demand of logistics services during the pandemic time. She wants to keep the quality of her service and she needs constantly follow up the KPI&rsquo;s to take correct decisions. &nbsp;To help her in this analysis a logistics dashboard was created with the following information provided by the customer dataset.</p>
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132557228-52a23360-5999-4659-95cf-23fc47afc8c6.png)</p>
  
<p>✔ How many customers purchases was delivered on time?</p>
<p>A Card was created to represent this number including a tooltip that shows which kind of vehicle has more on time deliveries.</p>
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132559339-fde9a0c5-015d-4e9f-bea1-71e2bab86c31.png)</p>
  
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132559401-1bf9e945-1a09-44c6-931c-044729d2e2b2.png)</p>
  
<p>✔ How many customers purchase was not delivered on time ?</p>
<p>Also a card was created and tooltip to show which vehicle is having more problems to delivery products on time, this can be a good analysis to understand if late deliveries have any relationship with the kind of transport.</p>
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132559592-1df997b8-b951-476d-84a1-5a8358f1cb6d.png)</p>
  
<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132559617-c85ec938-a3fa-4775-b2a9-c81d7fdea8f1.png)</p>
  
<p>✔ Number of available vehicles</p>
<p>A card was created to show the total of available cars and a tooltip showing which type of cars are available in a pie chart.</p>
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132559704-e5d4cf9a-b894-4efd-b6c8-788be2fd1ddb.png)</p>
  
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132559738-5e5a7f0e-58aa-4e96-92a9-4aff520a8375.png)</p>
  
<p>✔ Calculate S2D (Ship to Door) median by month</p>
<p>Using a DATEDIFF and analysing the days from when the purchase was done by the Customer and when it was delivered I could find the S2D values.</p>
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132560158-0f9a37fa-38d5-4427-8dce-1ba47a98a68e.png)</p>
  
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132560196-b99b8f56-6b18-40f7-96ad-aa141ca7710d.png)</p>
  
<p style="text-align: justify;">A tooltip was create to show the details by year</p>
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132560308-715170f5-1904-4765-aea9-cfc34071a1a5.png)</p>
  
<p>✔ Show how many occurrences by state</p>
<p>A Map was created using the longitude and latitude information</p>
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132560903-7022c177-f37f-4e28-8070-76c2c2b46066.png)</p>
  
<p style="text-align: justify;">Bellow you can see some of the measures I have created to develop the Power BI dashboard.</p>
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132561224-cef4e9c7-f713-486e-8352-8b2ee750f2a1.png)</p>
  
<p style="text-align: justify;">&nbsp;</p>
<table style="border-collapse: collapse; width: 74.5098%; height: 246px;" border="1">
<tbody>
<tr style="height: 18px;">
<td style="width: 13.1691%; height: 18px; text-align: center;"><strong>MEASURE</strong></td>
<td style="width: 61.3407%; height: 18px; text-align: center;"><strong>FORMULA</strong></td>
</tr>
<tr style="height: 19px;">
<td style="width: 13.1691%; height: 19px;">% Acum Categorias</td>
<td style="width: 61.3407%; height: 19px;"><code>% Acum Categorias = [Soma Acum Categorias] / CALCULATE([Soma de Vendas], ALL('Tabela - Produtos'))</code></td>
</tr>
<tr style="height: 19px;">
<td style="width: 13.1691%; height: 19px;">Atrasados</td>
<td style="width: 61.3407%; height: 19px;"><code>Atrasados = CALCULATE([Total de Pedidos], FILTER('Tabela - Pedidos', 'Tabela - Pedidos'[Data de Entrega] &gt; 'Tabela - Pedidos'[Data Previs&atilde;o]))</code></td>
</tr>
<tr style="height: 19px;">
<td style="width: 13.1691%; height: 19px;">Em Transito</td>
<td style="width: 61.3407%; height: 19px;"><code>Em Transito = CALCULATE([Total de Pedidos], FILTER('Tabela - Pedidos', 'Tabela - Pedidos'[Status do Pedido] = "Em Transito"))</code></td>
</tr>
<tr style="height: 19px;">
<td style="width: 13.1691%; height: 19px;">Entregues</td>
<td style="width: 61.3407%; height: 19px;"><code>Entregues = CALCULATE([Total de Pedidos], FILTER('Tabela - Pedidos', 'Tabela - Pedidos'[Status do Pedido] = "Entregue"))</code></td>
</tr>
<tr style="height: 19px;">
<td style="width: 13.1691%; height: 19px;">No Prazo</td>
<td style="width: 61.3407%; height: 19px;"><code>No Prazo = CALCULATE([Total de Pedidos], FILTER('Tabela - Pedidos', 'Tabela - Pedidos'[Data de Entrega] &lt;= 'Tabela - Pedidos'[Data Previs&atilde;o]))</code></td>
</tr>
<tr style="height: 19px;">
<td style="width: 13.1691%; height: 19px;">Qtd Produtos Vendidos</td>
<td style="width: 61.3407%; height: 19px;"><code>Qtd Produtos Vendidos = SUM('Tabela - Pedidos'[Quantidade])</code></td>
</tr>
<tr style="height: 19px;">
<td style="width: 13.1691%; height: 19px;">Rank de Categoria</td>
<td style="width: 61.3407%; height: 19px;"><code>Rank de Categoria = RANKX(ALLSELECTED('Tabela - Produtos'), [Soma de Vendas])</code></td>
</tr>
<tr style="height: 19px;">
<td style="width: 13.1691%; height: 19px;">Soma Acum Categorias</td>
<td style="width: 61.3407%; height: 19px;"><code>Soma Acum Categorias = CALCULATE([Soma de Vendas], TOPN([Rank de Categoria], ALL('Tabela - Produtos'),[Soma de Vendas],DESC))</code></td>
</tr>
<tr style="height: 19px;">
<td style="width: 13.1691%; height: 19px;">Soma de Vendas</td>
<td style="width: 61.3407%; height: 19px;"><code>Soma de Vendas = SUMX('Tabela - Pedidos', 'Tabela - Pedidos'[Quantidade] * RELATED('Tabela - Produtos'[Pre&ccedil;o]))</code></td>
</tr>
<tr style="height: 19px;">
<td style="width: 13.1691%; height: 19px;">Total de Pedidos</td>
<td style="width: 61.3407%; height: 19px;"><code>Total de Pedidos = COUNT('Tabela - Pedidos'[ID Pedido])</code></td>
</tr>
<tr style="height: 19px;">
<td style="width: 13.1691%; height: 19px;">Veiculos Disponiveis</td>
<td style="width: 61.3407%; height: 19px;"><code>Veiculos Disponiveis = CALCULATE(COUNT('Tabela - Ve&iacute;culos'[ID Vei&shy;culos]), FILTER('Tabela - Ve&iacute;culos', 'Tabela - Ve&iacute;culos'[Status] = "Disponi&shy;vel"))</code></td>
</tr>
<tr style="height: 19px;">
<td style="width: 13.1691%; height: 19px;">Veiculos Ocupados</td>
<td style="width: 61.3407%; height: 19px;"><code>Veiculos Ocupados = CALCULATE(COUNT('Tabela - Ve&iacute;culos'[ID Vei&shy;culos]), FILTER('Tabela - Ve&iacute;culos', 'Tabela - Ve&iacute;culos'[Status] = "Ocupado"))</code></td>
</tr>
</tbody>
</table>

<p style="text-align: justify;">&nbsp;</p>
<p style="text-align: justify;">An extra dashboard was created showing a Pareto table used to show accumulative gains by a rank of the most sold product to the less one. In the same page a bar chart showing the category with more sold items based on quantity.</p>
<p style="text-align: justify;">A Card also shows the total sales and total of itens sold with a filter by year and month that the user can select when necessary.</p>
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132563247-52943a22-9862-4027-be98-39eddb5c098f.png)</p>
  
<p style="text-align: justify;">All the ETL process was done in Power Query using the main functions such as : replace values, divide columns by delimiter, change columns type, rename columns, remove empty cells with no relevant information, cleaning spaces, deleting no relevant information. In this process 4 CSV tables was refined as shows bellow:</p>
<p style="text-align: justify;">
  
  ![image](https://user-images.githubusercontent.com/20172962/132563353-d57a5e63-fc22-42ad-bcee-efd1d7a9ed99.png)</p>
  
<p>Some relashionships was done between tables, such as the image bellow:</p>

![image](https://user-images.githubusercontent.com/20172962/132605630-f1248905-0e82-4ce4-aee6-da417a95d20d.png)

<h3>🚀&nbsp; <a id="week02"</a>Week 02: Marketing Dashboard (AluraShop)</h3>

<p>The Alura Shop have invested in publicity to get more visibility into the market and now its managers needs to know if the investment was really effective.</p>

![image](https://user-images.githubusercontent.com/20172962/133936572-aef822ff-2ad0-4362-ab25-235bea1cb59d.png)


<p>My mission was elaborate an strategic marketing dashboard with the main purpose to monitor the campaign applied in July 2021. Some metrics was presented to the manager as you can see below:</p>
<p>✔ Calculate the total of sales</p>

![image](https://user-images.githubusercontent.com/20172962/133936581-e514a813-8e24-4b3e-aadb-6a8f81f9de57.png)


<p>In this card I am also using a line chart representing the total of sales in days. The column &ldquo;Compras&rdquo;&nbsp; from &ldquo;Idade e G&ecirc;nero&rdquo; table was used to show the result.</p>
<p>✔ Calculate Purchases Conversion value</p>

![image](https://user-images.githubusercontent.com/20172962/133936600-99c92ff7-f79f-4782-a796-2238992f88e7.png)


<p>The column &ldquo;&rdquo; from &ldquo;Idade e G&ecirc;nero&rdquo; table was used to show the result just by selecting formatting as money.</p>
<p>✔&nbsp;Show all invested money during the campaign</p>

![image](https://user-images.githubusercontent.com/20172962/133936612-e30144dc-24fa-4ab1-894c-4ed214ce7831.png)


<p>In this card I am also using a line chart representing the total invested money in days. The column &ldquo;quantia_gasta_brl&rdquo;&nbsp; from &ldquo;Idade e G&ecirc;nero&rdquo; table was used to show the result.</p>
<p>✔&nbsp;Calculate cost by click</p>

![image](https://user-images.githubusercontent.com/20172962/133936617-88ee1778-0393-4e52-a0b6-4e7065e5890c.png)


<p>&nbsp;</p>
<p>A measure was created to show this value and it was formatted to be displayed as money (BRL):</p>
<p>DAX Formula: <code>Custo por clique = SUM(Dispositivos[quantia_gasta_brl]) / SUM(Dispositivos[cliques_em_links])</code></p>
<p>✔&nbsp;Show the purchasing user journey</p>

![image](https://user-images.githubusercontent.com/20172962/133936624-e6673214-a04c-4aa3-a250-4adccd2d51c7.png)


<p>&nbsp;</p>
<p>The purchasing user journey was done by selecting page visualization, added products to the cart, initiated checkouts and sum of the products that was in fact bought by the Customer.</p>
<p>✔ Conversion Tax calculation</p>

![image](https://user-images.githubusercontent.com/20172962/133936627-c4926a27-be68-438e-9111-4c6a6688b7e2.png)


<p>Here we need to show our management the tax of customers who accessed the website and in fact have bought something.</p>
<p>This calculation was done by dividing purchasing quantity with page visualization.</p>
<p>DAX Formula: <code>Taxa de Convers&atilde;o de Compras = SUM('Idade e G&ecirc;nero'[compras]) /&nbsp; SUM('Idade e G&ecirc;nero'[visualizacoes_por_pagina])</code></p>
<p>✔&nbsp;Show the occurrences by devices</p>
<p>The purpose of this chart is to show the average value of sales by device .</p>

![image](https://user-images.githubusercontent.com/20172962/133936641-38cec63d-78c2-482d-bdb2-2a259d29e409.png)


<p>DAX Formula: <code>Ticket M&eacute;dio Por Dispositivo = SUM(Dispositivos[quantia_gasta_brl]) / SUM(Dispositivos[compras])</code></p>
<p>✔ Calculate ROAS (Return On Investment)</p>
<p>This chart shows the amount of money the company earned with users separated by age and genre.</p>

![image](https://user-images.githubusercontent.com/20172962/133936652-18ae7532-950a-4596-b037-d8a6125b312a.png)

<p>DAX Formula: <code>ROAS = SUM('Idade e G&ecirc;nero'[valor_de_conversao_de_compras]) / SUM('Idade e G&ecirc;nero'[quantia_gasta_brl])</code></p>
<p>✔&nbsp;Calculate purchasing value by day</p>

![image](https://user-images.githubusercontent.com/20172962/133936673-dca5b801-b561-45d2-918c-52ed3faea8b5.png)

<p>This value can be show by the sum of the column &ldquo;valor_de_conversao_de_compras&rdquo; from table &ldquo;Idade G&ecirc;nero&rdquo;.</p>
<p>✔&nbsp;Show the last time data was updated</p>

![image](https://user-images.githubusercontent.com/20172962/133936682-c0220e66-edca-4166-b308-ecc120caf680.png)

<p>An extra table was created with the name &ldquo;Atualiza&ccedil;&atilde;o&rdquo; where you can find two columns named &ldquo;Data e Hora&rdquo; and &ldquo;Data e Hora Certa&rdquo; where the first one shows the time of your computer location and the second one shows the time based on the local time you choose, this is important because on Power BI service maybe the time server is not the same of your computer. For this, the following M formulas was used:</p>
<p>M Formula for &ldquo;Data e Hora&rdquo; Column: &nbsp;<code>DateTime.LocalNow()</code></p>
<p>M Formula for &ldquo;Data e Hora Certa&rdquo; Column : <code>DateTimeZone.SwitchZone([Data e Hora], -3)</code></p>
<p>As requested by the user, the data refresh is scheduled to everyday at 9am, configured in Power BI Service.</p>

![image](https://user-images.githubusercontent.com/20172962/133936700-ce190bf3-74a0-4cc3-a10a-16a1468adfe6.png)

<p>✔ Some additional information was added to the report, as a word cloud chart with the platforms with more colocation.</p>

![image](https://user-images.githubusercontent.com/20172962/133936706-8d8649c2-250d-45db-b5a5-930a9478c82b.png)

<p>The total of clicks was added in a card with a line chart showing the clicks during the month.</p>

![image](https://user-images.githubusercontent.com/20172962/133936715-2f6ddb6b-d48c-4ad0-be8b-bcce2acbf8e9.png)

<p>&nbsp;</p>
<p>✔ The ETL (Extract Transform and Load) process was done in python, using basically pandas librarie and then inserting all data in a PostgreSQL data base.</p>

![image](https://user-images.githubusercontent.com/20172962/133936885-8e215ad7-a392-4aae-85d3-59fa1d90df3b.png)

![image](https://user-images.githubusercontent.com/20172962/133937047-45c72be5-80ed-48e4-93a5-acc5749e2307.png)

<p>Pandas Code is located in the links bellow using Jupyter Notebook:</p>

<p><a href="https://github.com/flaviolandim/alurachallengebi/blob/master/Week02/AluraShop_IdadeGenero.ipynb">https://github.com/flaviolandim/alurachallengebi/blob/master/Week02/AluraShop_IdadeGenero.ipynb</a></p>

<p><a href="https://github.com/flaviolandim/alurachallengebi/blob/master/Week02/AluraShop_Dispositivos-V2.ipynb">https://github.com/flaviolandim/alurachallengebi/blob/master/Week02/AluraShop_Dispositivos-V2.ipynb</a></p>

<p>&nbsp;&nbsp;</p>
