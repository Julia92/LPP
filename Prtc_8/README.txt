Considere una clase para representar Matrices usando Desarrollo Dirigido por el Comportamiento (Behavior Driven Development - BDD) como caso particular del Desarrollo dirigido por pruebas (Test Driven Development - TDD) usando como herramienta Rspec. 
Puede tomar como ejemplo la siguiente salida:
Matrix
  Se debe poder sumar dos matrices de enteros
  Se debe poder sumar dos matrices de racionales
  Se debe poder multiplicar una matriz de Enteros
  Se debe poder multiplicar dos matrices de Racionales

Finished in 0.00161 seconds
4 examples, 0 failures
La clase se ha de compilar con la herramienta Travis de integración continua. 
Además se ha de comprobar el funcionamiento de la herramienta Guard de comprobación continua (Continuous testing) de manera que permita la ejecución de las pruebas definidas con rspec cuando se modifiquen.
