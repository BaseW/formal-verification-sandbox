# Alloy Address Book Project

This project contains a simple Alloy model for an address book.

## Getting Started

1.  **Install the Alloy Analyzer:** If you haven't already, download and install the Alloy Analyzer from the official website: [https://alloytools.org/](https://alloytools.org/)

2.  **Open the Model:**
    *   Launch the Alloy Analyzer.
    *   Go to `File > Open...` and navigate to the `models` directory.
    *   Select `addressBook.als` and click `Open`.

3.  **Analyze the Model:**
    *   Once the model is loaded, you can use the `Execute` menu to run commands defined in the model (e.g., `Run show {}`).
    *   The Analyzer will generate instances that satisfy the model's constraints, which you can visualize.

## Model Description

The `addressBook.als` model defines:

*   `Name` and `Addr` signatures (sets of names and addresses).
*   `Book` signature with a `entries` field mapping `Name` to `Addr`.
*   `show` predicate (currently empty, but can be extended to define specific scenarios or properties to check).
