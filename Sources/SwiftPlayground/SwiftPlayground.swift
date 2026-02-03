// The Swift Programming Language
// https://docs.swift.org/swift-book

/// Adds together the prices of all lunches in the week.
///
/// prices: A list containing the prices of all lunches during the week
func calculateTotalCost(prices: [Double]) -> Double {
    var totalPrice: Double = 0

    // Iterates through prices and adds each lunch price to totalPrice
    for price in prices {
        totalPrice += price
    }
    return totalPrice
}

/// Evaluates whether more money has been spent than is in the budget
func isOverBudget(total: Double, budget: Double) -> Bool {
    if total > budget {
        return true
    } else {
        return false
    }
}

func calculateAverageCost(totalCost: Double) -> Double {
    let averageCost = totalCost / 5
    return averageCost
}

@main
struct SwiftPlayground {
    static func main() {
        let lunches: [Double] = [6.50, 8.00, 5.75, 9.20, 7.10]

        for (index, price) in lunches.enumerated() {
            print("Day \(index + 1): $\(price)")
        }
    
    print("What is your budget for this week?")
    if let stringBudget = readLine(), let budget = Double(stringBudget) {


        let totalCost = calculateTotalCost(prices: lunches)

        if isOverBudget(total: totalCost, budget: budget) {
            print("You overspent this week.")
        } else{
            print("You stayed within budget.")
        }
    }
    }
}
