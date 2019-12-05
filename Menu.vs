using System;

namespace CSharpShapeCalculator
{
    class Menu
    {
        int userChoice = 0;
        int[] menuChoiceLimit = { 1, 15 };
        bool doesMenuLoop = true;
        bool doesProgramLoop = true;

        public void Run()
        {
            do
            {
                RunMenuText();
                CollectInput();
            } while (doesProgramLoop);
        }

        private void RunMenuText()
        {
            Console.WriteLine("Select what shape you want to work with:\n1. Exit program\n2. Help text\n3. Square\n4. Rectangle\n5. Isosceles Triangle \n6. Equilateral Triangle \n7. Scalene Triangle \n8. Dodecahedron\n9. Cuboid\n10. Circle\n11. Sphere\n12. Cone\n13. Cylinder\n14. Hexagon\n15. Pentagon);
        }

        private void CollectInput()
        {

            if (int.TryParse(Console.ReadLine(), out userChoice) && userChoice >= menuChoiceLimit[0] && userChoice <= menuChoiceLimit[1])
            {
                doesMenuLoop = false;
                RunMenuSelect();
            }
            else
            {
                Console.Clear();
                doesMenuLoop = true;
                Console.WriteLine($"Invalid input. Enter a nuumber between {menuChoiceLimit[0]} and {menuChoiceLimit[1]}.\n");
            }
        }

        private void RunMenuSelect()
        {
            switch (userChoice)
            {
                case 1:
                    Console.WriteLine("Exiting.");
                    doesProgramLoop = false;
                    break;
                case 2:
                    Console.WriteLine("Help menu.");
                    break;
                case 3:
                    Console.WriteLine("Square");
                    Square Square = new Square();
                    Square.Run();
                    break;
                case 4:
                    Console.WriteLine("Rectangle");
                    Rectangle Rectangle = new Rectangle();
                    Rectangle.Run();
                    break;
                case 5:
                    Console.WriteLine("IsoscelesTriangle");
                    IsoscelesTriangle = new Isosceles();
                    Isosceles.Run();
                    break;
                case 6:
                    Console.WriteLine("EquilateralTriangle");
                    EquilateralTriangle EquilateralTriangle = new EquilateralTriangle();
                    EquilateralTriangle.Run();
                    break;

                case 7:
                    Console.WriteLine("ScaleneTriangle");
                    ScaleneTriangle ScaleneTriangle = new ScaleneTriangle();
                    ScaleneTriangle.Run();
                    break;

                case 8:
                    Console.WriteLine("Dodecahedron");
                    Dodecahedron Dodecahedron = new Dodecahedron();
                    Dodecahedron.Run();
                    break;
                case 9:
                    Console.WriteLine("Cuboid");
                    Cuboid Cuboid = new Cuboid();
                    Cuboid.Run();
                    break;
                case 10:
                    Console.WriteLine("Circle");
                    Circle Circle = new Circle();
                    Circle.Run();
                    break;
                case 11:
                    Console.WriteLine("Sphere");
                    Sphere Sphere = new Sphere();
                    Sphere.Run();
                    break;
                case 12:
                    Console.WriteLine("Cone");
                    Cone Cone = new Cone();
                    Cone.Run();
                    break;
                case 13:
                    Console.WriteLine("Cylinder");
                    Cylinder Cylinder = new Cylinder();
                    Cylinder.Run();
                    break;
                case 14:
                    Console.WriteLine("Hexagon");
                    Hexagon Hexagon = new Hexagon();
                    Hexagon.Run();
                    break;
                case 15:
                    Console.WriteLine("Pentagon");
                    Pentagon Pentagon = new Pentagon();
                    Pentagon.Run();
                    break;
            }
        }
   
