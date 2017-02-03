<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JavascriptObjectsAndMethods.aspx.cs" Inherits="upc_website.Javascript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function people(name, age, hairColor, height, weight) {
            this.name = name;
            this.age = age;
            this.height = height;
            this.weight = weight;
            this.hairColor = hairColor;
            this.yearsUntilRetire = yearsLeft;
            this.monthsUntilRetire = monthsToRetire;
            this.weightInKilos = kiloWeight;
        }

        function yearsLeft() {
            var numOfYears = 65 - this.age;
            return numOfYears;
        }
        function monthsToRetire() {
            var numOfMonths = ((65 - this.age) * 12);
            return numOfMonths;
        }
        function kiloWeight() {
            var weightInKilo = this.weight / 2.2;
            return weightInKilo.toFixed(1);
        }

        var mike = new people;
        mike.age = 25;
        mike.name = "Mike";
        mike.weight = 195;

        var carol = new people("Carol Dearth", 64);
    </script>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <h3 style="color:red"><script>
                document.write("Years: " + mike.yearsUntilRetire() + "<br> " + "Months: " +
                    mike.monthsUntilRetire() + "<br>" + " And weighs " + mike.weightInKilos() + "(kg)");
                </script>
            </h3>
        </div>
    </form>
</body>
</html>
