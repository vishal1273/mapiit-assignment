 
 var districtsByState = {
            Madhyapradesh: ["Agar", "Alirajpur", "Barwani", "Bhind", "Bhopal", "Dewas"],
            Maharashtra: ["Ahemdabad", "Akola", "Amrawati"],
            Gujrat: ["Amreli", "Anand", "Jamnagar"]
        }
        function makeSubmenu(value) {
            if (value.length == 0) document.getElementById("district").innerHTML = "<option></option>";
            else {
                var citiesOptions = "";
                for (cityId in districtsByState[value]) {
                    citiesOptions += "<option>" + districtsByState[value][cityId] + "</option>";
                }
                document.getElementById("district").innerHTML = citiesOptions;
            }
        }
        function displaySelected() {
            var country = document.getElementById("state").value;
            var city = document.getElementById("district").value;
            alert(country + "\n" + city);
        }
        function resetSelection() {
            document.getElementById("state").selectedIndex = 0;
            document.getElementById("district").selectedIndex = 0;
        }