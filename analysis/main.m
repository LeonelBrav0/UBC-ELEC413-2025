close all;
clear all;
clc;

initialize_constants;
load_laser_data;

lambda_plot_min = 1308e-9;
lambda_plot_max = 1312e-9;
[~, idx_min] = min(abs(lambda - lambda_plot_min));
[~, idx_max] = min(abs(lambda - lambda_plot_max));

%channel 3 is data

figure(1);
clf;
hold on;
    plot(lambda, 10.^(channel_4/10), 'LineWidth', 3);
    xlabel('Wavelength (nm)');
    ylabel('Intensity');
    title('Filtered Channel Responses');
    %xlim([lambda(idx_min), lambda(idx_max)]);
grid on;