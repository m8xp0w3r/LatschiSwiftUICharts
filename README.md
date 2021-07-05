# LatschiSwiftUICharts

SwiftUI package for easily adding charts to your project. `Latschi` is a word from the "manic" language which is spoken in my hometown. It can be translated with "good" or "love". This is also my approach for creating some charts.
This project grows side by side with my app which I am developing to learn SwiftUI. This means that new features come when they are needed in my app. If YOU need anything besides the current available features, feel free to open a Pull Request or tell me your wishes/needs and I will have a look what I can do. I am developing this in my leisure time, so don't judge me if it will take some time for an answer.

It supports:
* Bar charts

### Installation:

It requires iOS 13 and Xcode 11!

In Xcode got to `File -> Swift Packages -> Add Package Dependency` and paste in the repo's url: `https://github.com/m8xp0w3r/LatschiSwiftUICharts`

Choose branch `main` for the latest features as long as this still is in some kind of beta phase.

## Usage:

* Import the package in the file you would like to use it:  `import LatschiSwiftUICharts`
* Create some `LatschiChartData` and pass it to the Chart

### LatschiChartData

It is mandatory to pass a `Double` value. You also can pass an optional label (defaults to an empty string) or color (defaults to blue) on creation.

### BarChart

<img width="309" alt="image" src="https://user-images.githubusercontent.com/38067181/124401809-de6dc480-dd2b-11eb-82e1-ab2562878bc1.png">

* You can add a  label (defaults to an empty string) to the chart.
* You can add a multiplier (defaults to 10) to the chart for a better illustration of your data (11, 14 an 19 look better than 1.1, 1.4 and 1.9).

For a demo have a look at the `LatschiBarChartView_Previews`.

## Author
Nils Leistner: djlatscho@gmail.com

## License
SwiftUICharts is available under the MIT license. See the LICENSE file for more info.
