data = xlsread('tez_data.xlsx');
X = data(:, 1:end-1); % Giriş özellikleri
y = data(:, end); % Çıkış değeri

% Veriyi train ve test setlere ayırma
[m, ~] = size(data);
idx = randperm(m);
train_idx = idx(1:round(0.8*m));
test_idx = idx(round(0.8*m)+1:end);

X_train = X(train_idx, :);
y_train = y(train_idx);

X_test = X(test_idx, :);
y_test = y(test_idx);

% Doğrusal regresyon modelini eğitme
model = fitlm(X_train, y_train)

% Modelin test seti üzerinde performansını değerlendirme
y_pred = predict(model, X_test);

% Örneğin, ortalama kare hatayı hesaplama
mse = mean((y_test - y_pred).^2);
disp(['Ortalama Kare Hata (MSE): ', num2str(mse)]);

hata= model.Rsquared.Adjusted

plot(model)

%figure;plot(X_train,y_train,'or',X_train,y_pred,'+b-');

