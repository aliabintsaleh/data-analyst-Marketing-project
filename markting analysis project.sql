
select count(distinct[Product_ID])as Num_of_dis_pro from train

 select [Product_ID],sum(Sales) as sum_of_sale from train group by [Product_ID] ORDER by sum(Sales) desc

  select month(Ship_Date) as Months ,Cast(sum(Sales)as decimal(10,2)) as Revenue from train 
   group by month(Ship_Date) 
   order by sum(Sales) ASC

    select Product_ID as Product_ID,Product_Name as Product_name ,Cast(sum(Sales)as decimal(10,2)) as Revenue from train
	 group by Product_ID,Product_Name
	 order by sum(Sales) asc

	    select City as City,Cast(sum(Sales) as decimal(10,2)) as Revenue from train
		 group by City
		 order by sum(Sales)desc
		  

		  update train 
		  set Product_Cat=
		  (case
		   when Sales>=( select cast(sum (Sales)/count(distinct(Product_ID)) as decimal(10,2)) as avrege_sales from train )
		   then 'GOOD'
		   else 'BAD'
		   end)from train
		   select Product_ID,Sales,Product_Cat from train

		     
            select Datename(WEEKDAY,Ship_Date)as Week_day ,count( Order_id) as Total_sales from train
             group by datename(weekday,Ship_Date) order by count(order_id) desc
			  

			    
                 select Sub_Category as Category  ,count( Order_id) as Total_sales from train
                  group by Sub_Category order by count(order_id) desc



				     select Segment as Customer_tybe  ,Cast (sum( Sales)as decimal(10,2)) as higest_revenue from train
                         group by Segment order by sum(Sales) desc
						   
						   

                           select Segment as cus_segment, count(Segment) as Number_of_seg_Customer  from train
                           group by Segment order by  count(segment) desc


						     select Category, Segment as cus_segment, count(Category) as most_buyer_Customer  from train
                                 
								 group by Category ,Segment order by  count(Category) desc


	                                  	select Region as region  ,Segment ,count (Segment) as Total_Segment from train
                                             group by Region,segment  order by count(segment) desc
											   



											      select Region as region  ,count(Customer_ID) as Nmber_of_customer  from train
                                                   group by Region order by count(Customer_ID) desc
												    
													select State as State  ,count(Customer_ID) as Nmber_of_customer  from train
                                                       
													  group by State order by count(Customer_ID) desc
													     
				select City as city  ,count(Customer_ID) as Nmber_of_customer  from train
                  group by city  order by count(Customer_ID) desc

				  select datename(weekday,Ship_Date) as day_of_week  ,count(Order_ID) as Number_of_Order  from train 
where Segment='Consumer'
group by datename(weekday,Ship_Date)  order by count(Order_ID) desc


select datename(weekday,Ship_Date) as day_of_week  ,count(Order_ID) as Number_of_Order  from train 
where Segment='Home Office'
group by datename(weekday,Ship_Date)  order by count(Order_ID) desc


select datename(weekday,Ship_Date) as day_of_week  ,count(Order_ID) as Number_of_Order  from train 
where Segment='corporate'
group by datename(weekday,Ship_Date)  order by count(Order_ID) desc


select datename(year,Ship_Date) as years  ,count(Order_ID) as Number_of_Order  from train 

group by datename(YEAR,Ship_Date)  order by count(Order_ID) desc


select datename(year,Ship_Date) as years  ,cast(sum(Sales)as decimal(10,2)) as revenue  from train 

group by datename(YEAR,Ship_Date) 
 order by sum(Sales) desc



 


