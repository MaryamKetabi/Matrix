% این بخش از کد اطلاعات را از کاربر دریافت می‌کند
rows = input('تعداد ردیف‌های ماتریس را وارد کنید: ');
cols = input('تعداد ستون‌های ماتریس را وارد کنید: ');
A = zeros(rows, cols); % ایجاد یک ماتریس صفر با ابعاد داده شده

% پر کردن ماتریس با مقادیر وارد شده توسط کاربر
for i = 1:rows
    for j = 1:cols
        A(i, j) = input(['عنصر (', num2str(i), ',', num2str(j), '): ']);
    end
end

% فراخوانی تابع statsCalculator و چاپ نتایج
[meanVal, stdDev] = statsCalculator(A);
fprintf('میانگین مقادیر ماتریس: %f\n', meanVal);
fprintf('انحراف معیار مقادیر ماتریس: %f\n', stdDev);

% رسم نمودار
plot(A);
title('نمودار مقادیر ماتریس');
xlabel('شماره ستون');
ylabel('مقادیر');
