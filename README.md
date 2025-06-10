# Matlab
This project provides a MATLAB-based solution for accurately and efficiently splitting shared expenses among multiple participants. It is designed to handle both equal and unequal contributions, making it suitable for a variety of real-world scenarios where fairness and clarity in expense distribution are essential.

The primary goal of this application is to automate the process of dividing costs by accounting for individual shares, additional charges (such as tax and tips), and ensuring transparency in the final amount each person owes. It reduces manual calculation errors and simplifies group financial management through a systematic approach.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



Enhanced Bill Splitter Application
disp('Welcome to the Bill Splitter Application!');
totalBill = input('Enter the total bill amount (in rupees): ');
numPeople = input('Enter the number of people sharing the bill: ');
tipPercentage = input('Enter the tip percentage (default is 0): ');
if isempty(tipPercentage)
    tipPercentage = 0;
end
totalWithTip = totalBill + (totalBill * tipPercentage / 100);
sharePerPerson = totalWithTip / numPeople;
fprintf('Total bill (including tip): %.2f rupees\n', totalWithTip);
fprintf('Each person needs to pay: %.2f rupees\n', sharePerPerson);
disp('---Optional Individual Payments---');
individualPayments = zeros(1, numPeople);
for i = 1:numPeople
    individualPayments(i) = input(sprintf('Enter the amount paid by person %d: ', i));
end
totalPaid = sum(individualPayments);
if totalPaid == totalWithTip
    disp('The bill is settled perfectly. Thank you!');
else
    fprintf('There is a mismatch. Total paid is: %.2f rupees\n', totalPaid);
    fprintf('Difference: %.2f rupees\n', totalWithTip - totalPaid);
end
