// The Swift Programming Language
// https://docs.swift.org/swift-book

/// Adds together the prices of all lunches in the week.
///
/// prices: A list containing the prices of all lunches during the week.
func calculateLunchesCost(prices: [Double]) -> Double {
    var totalPrice: Double = 0

    // Iterates through prices and adds each lunch price to totalPrice.
    for price in prices {
        totalPrice += price
    }
    return totalPrice
}

/// Evaluates whether more money has been spent than is in the budget.
/// 
/// total - The total price of all lunches bought this week.
/// budget - The given budget for the week
func isOverBudget(total: Double, budget: Double) -> Bool {
    if total > budget {
        return true
    } else {
        return false
    }
}

/// Calculates the average cost of each lunch during the week.
/// 
/// totalCost - The total amount spent on lunches this week.
func calculateAverageCost(totalCost: Double) -> Double {
    let averageCost = totalCost / 5
    return averageCost
}

/// Calculates which lunch cost the most, and then returns the price.
/// 
/// prices - The list of lunches bought this week.
func calculateMostExpensiveLunch(prices: [Double]) -> Double {
    var mostExpensiveLunch: Double = 0.0
    
    /// If a lunch is more expensive than the current most expensive lunch, sets that
    /// lunch as the new most expensive.
    for lunch in prices {
        
        if lunch > mostExpensiveLunch {
            mostExpensiveLunch = lunch
        }
    }

    return mostExpensiveLunch
}

@main
struct SwiftPlayground {
    static func main() {
        /// Creates a list containing the prices of lunches bought this week,
        /// starting on monday and ending on friday.
        let lunches: [Double] = [6.50, 8.00, 5.75, 9.20, 7.10]

        // Creates a variable containing the amount spent on snacks in the week.
        var snacksCost: Double = 0

        // Prints the price of each lunch during the week, next to the day.
        for (index, price) in lunches.enumerated() {
            print("Day \(index + 1): $\(price)")
            if price > 9.00 {
                print("High spending day detected.")
            }
        }
    
    // Asks the user what the week's budget is, then converts the answer to a double.
    print("What is your budget for this week?")
    if let stringBudget = readLine(), let budget = Double(stringBudget) {

        // Continues buying snacks until 10 dollars have been spent.
        while snacksCost < 10 {
            snacksCost += 2.50
            print("Snack Total: $\(snacksCost)")
        }

        // Calculates the totals and averages for the week.
        let lunchesCost = calculateLunchesCost(prices: lunches)
        let totalCost = lunchesCost + snacksCost
        let averageLunchCost = calculateAverageCost(totalCost: lunchesCost)
        let mostExpensiveLunch = calculateMostExpensiveLunch(prices: lunches)

        // Prints out the totals, the average, and most expensive lunch.
        print("""

        Weekly Summary:
        
        """)
        print("Lunch Total: $\(lunchesCost)")
        print("Snacks Total: $\(snacksCost)")
        print("Combined Total: $\(totalCost)")
        print("Average Lunch Cost: $\(averageLunchCost)")
        print("Most Expensive Lunch: $\(mostExpensiveLunch)")

        // Prints a message notifying the user whether they are within or over the budget.
        if isOverBudget(total: totalCost, budget: budget) {
            print("You overspent this week.")
        } else{
            print("You stayed within budget.")
        }
    }
    }
}
