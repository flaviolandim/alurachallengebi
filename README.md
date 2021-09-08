<h1 style="text-align: center;">Alura Challenge BI</h1>
<p>This challenge consists in develop skills in Business Intelligence and put in practice all obtained knowledge in Power BI. The challenge will take 4 weeks divided in 3 different projects with different &nbsp;levels of complexity:</p>
<p>&nbsp;</p>
<ul>
<li>Week 01: Logistics Challenge Dashboard (AluraLog)</li>
<li>Week 02: Coming Soon&hellip;</li>
<li>Week 03 and 04: Coming Soon&hellip;</li>
</ul>
<p>&nbsp;</p>
<p>Week 01: Logistics Challenge Dashboard (AluraLog)</p>
<p>The Alura Log manager is facing some work changes due to the high demand of logistics services during the pandemic time. She wants to keep the quality of her service and she needs constantly follow up the KPI&rsquo;s to take correct decisions. &nbsp;To help her in this analysis a logistics dashboard was created with the following information provided by the customer dataset.</p>

![image](https://user-images.githubusercontent.com/20172962/132557228-52a23360-5999-4659-95cf-23fc47afc8c6.png)

<li>How many customers purchases was delivered on time?<br />
<p>A Card was created to represent this number including a tooltip that shows which kind of vehicle has more on time deliveries.</p>
</li>

![image](https://user-images.githubusercontent.com/20172962/132559339-fde9a0c5-015d-4e9f-bea1-71e2bab86c31.png)

<p></p>

![image](https://user-images.githubusercontent.com/20172962/132559401-1bf9e945-1a09-44c6-931c-044729d2e2b2.png)


<li>How many customers purchase was not delivered on time ?<br />
<p>Also a card was created and tooltip to show which vehicle is having more problems to delivery products on time, this can be a good analysis to understand if late deliveries have any relationship with the kind of transport.</p>
</li>

![image](https://user-images.githubusercontent.com/20172962/132559592-1df997b8-b951-476d-84a1-5a8358f1cb6d.png)

<p></p>

![image](https://user-images.githubusercontent.com/20172962/132559617-c85ec938-a3fa-4775-b2a9-c81d7fdea8f1.png)

<li>Number of available vehicles<br />
<p>A card was created to show the total of available cars and a tooltip showing which type of cars are available in a pie chart.</p>
</li>

![image](https://user-images.githubusercontent.com/20172962/132559704-e5d4cf9a-b894-4efd-b6c8-788be2fd1ddb.png)

<p></p>

![image](https://user-images.githubusercontent.com/20172962/132559738-5e5a7f0e-58aa-4e96-92a9-4aff520a8375.png)

<li>Calculate S2D (Ship to Door) median by month<br />
<p>Using a DATEDIFF and analysing the days from when the purchase was done by the Customer and when it was delivered I could find the S2D values.</p>
</li>
</ol>

![image](https://user-images.githubusercontent.com/20172962/132560158-0f9a37fa-38d5-4427-8dce-1ba47a98a68e.png)

<p></p>

![image](https://user-images.githubusercontent.com/20172962/132560196-b99b8f56-6b18-40f7-96ad-aa141ca7710d.png)

<p>A tooltip was create to show the details by year</p>

![image](https://user-images.githubusercontent.com/20172962/132560308-715170f5-1904-4765-aea9-cfc34071a1a5.png)


<li>Show how many occurrences by state<br />
<p>A Map was created using the longitude and latitude information</p>
</li>

![image](https://user-images.githubusercontent.com/20172962/132560903-7022c177-f37f-4e28-8070-76c2c2b46066.png)

<p>Bellow you can see some of the measures I have created to develop the Power BI dashboard.</p>

![image](https://user-images.githubusercontent.com/20172962/132561224-cef4e9c7-f713-486e-8352-8b2ee750f2a1.png)

<p><code> % Acum Categorias = [Soma Acum Categorias] / CALCULATE([Soma de Vendas], ALL('Tabela - Produtos'))</code></p>

<p><code>Atrasados = CALCULATE([Total de Pedidos], FILTER('Tabela - Pedidos', 'Tabela - Pedidos'[Data de Entrega] &gt; 'Tabela - Pedidos'[Data Previs&atilde;o]))</code></p>

<p><code>Em Transito = CALCULATE([Total de Pedidos], FILTER('Tabela - Pedidos', 'Tabela - Pedidos'[Status do Pedido] = "Em Transito"))</code></p>

<p><code>Entregues = CALCULATE([Total de Pedidos], FILTER('Tabela - Pedidos', 'Tabela - Pedidos'[Status do Pedido] = "Entregue"))</code></p>

<p><code>No Prazo = CALCULATE([Total de Pedidos], FILTER('Tabela - Pedidos', 'Tabela - Pedidos'[Data de Entrega] &lt;= 'Tabela - Pedidos'[Data Previs&atilde;o]))</code></p>

<p><code>Qtd Produtos Vendidos = SUM('Tabela - Pedidos'[Quantidade])</code></p>

<p><code>Rank de Categoria = RANKX(ALLSELECTED('Tabela - Produtos'), [Soma de Vendas])</code></p>

<p><code>Soma Acum Categorias = CALCULATE([Soma de Vendas], TOPN([Rank de Categoria], ALL('Tabela - Produtos'),[Soma de Vendas],DESC))</code></p>

<p><code>Soma de Vendas = SUMX('Tabela - Pedidos', 'Tabela - Pedidos'[Quantidade] * RELATED('Tabela - Produtos'[Preço]))</code></p>

<p><code>Total de Pedidos = COUNT('Tabela - Pedidos'[ID Pedido])</code></p>

<p><code>Veiculos Disponiveis = CALCULATE(COUNT('Tabela - Veículos'[ID Vei­culos]), FILTER('Tabela - Veículos', 'Tabela - Veículos'[Status] = "Disponi­vel"))</code></p>

<p><code>Veiculos Ocupados = CALCULATE(COUNT('Tabela - Veículos'[ID Vei­culos]), FILTER('Tabela - Veículos', 'Tabela - Veículos'[Status] = "Ocupado"))</code></p>

<p>An extra dashboard was created showing a Pareto table used to show accumulative gains by a rank of the most sold product to the less one. In the same page a bar chart showing the category with more sold items based on quantity.</p>
<p>A Card also shows the total sales and total of itens sold with a filter by year and month that the user can select when necessary.</p>

![image](https://user-images.githubusercontent.com/20172962/132563247-52943a22-9862-4027-be98-39eddb5c098f.png)

<p>All the ETL process was done in Power Query using the main functions such as : replace values, divide columns by delimiter, change columns type, rename columns, remove empty cells with no relevant information, cleaning spaces, deleting no relevant information. In this process 3 CSV tables was created as shows bellow:</p>

![image](https://user-images.githubusercontent.com/20172962/132563353-d57a5e63-fc22-42ad-bcee-efd1d7a9ed99.png)

