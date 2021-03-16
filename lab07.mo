model lab07
  
  parameter Real N = 2010; // Объем аудитории
  parameter Real n_0 = 29; // Количество человек, знающих о товаре в начальный момент
  //Параметры для 1-го случая
  //parameter Real a_1 = 0.66; //Платная реклама
  //parameter Real a_2 = 0.00006;//Сарафанное радио
  
  //Параметры для 2-го случая
  //parameter Real a_2 = 0.6; //Сарафанное радио
  //parameter Real a_1 = 0.000066; //Платная реклама
  
  //Параметры для 3-го случая
  parameter Real a_1 = 0.66; //Платная реклама
  parameter Real a_2 = 0.6; //Сарафанное радио
  
  Real n(start = n_0);
  
equation
  //Уравнение для 1-го и 2-го случая
 //der(n) = (a_1 + a_2 * n) * (N - n);
 
 //Уравнение для 3-го случая
 der(n) = (a_1 * time + a_2 * time * n) * (N - n);
end lab07;
