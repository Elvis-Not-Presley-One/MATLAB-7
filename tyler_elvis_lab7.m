%% Tyler Elvis 3/18/24 ENRG 108 
%% Lab 7

clc, clear 
format short, format compact 

%% Questions 

%Goal: plot and compare prices of Hybrid to gas cars 

%Assume “cost to own” = Purchase Cost + Gasoline Cost
%(a) Assume gas cost is $3.00 per gallon.
%(b) Find the "cost to own” as a function of the number of miles driven.
%Use 200,000 total miles for the calculations.
%(c) Plot the results on an x-y graph.
%The point where the 2 lines meet is the break-even point.
%(d) Use the ginput function to pick the break-even point off the graph.
%(e) Use the sprintf function to create a string identifying the break-even mileage point and use the
%result to create a text box annotation on the graph.
%(f) Position the text box using the gtext function
%The result should look similar to the plot below


%% work 
 

    Cost_Camery = 22680;
    Cost_hybrid = 26140;
    Camry_MPG = 25;
    Hybrid_MPG = 43;
    Gas_Cost = 3;
    Miles = 0:1000:200000;

 Total_cost_C = Miles/Camry_MPG*3+Cost_Camery;
 Total_Cost_H = Miles/Hybrid_MPG*3+Cost_hybrid;

plot(Miles,Total_cost_C, Miles, Total_Cost_H) 
    grid on 
    xlabel('Miles Driven');
    ylabel('Cost to Own');
    title('Comparison of Hybrid vs Gas Car Ownership Costs');
    legend('Hybrid', 'Gas');
  
A = ginput(1);
sprintf('Break Even Point Is %4.2f ',A)
gtext('position for break even point')

