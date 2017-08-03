%Solving for equivalent transfer function

close all;
clear all;
clc;

%Defining system sys1 = 4
block1 = tf([4], [1]);

%Defining system sys2 = s
block2 = tf([1 0], [1]);

%sys1 * sys2 = 4s

block3 = tf( [1], [1 4 0] );

block4 = tf( [0.5], [1] );

block5 = tf( [1], [1 5 2] );

sys = feedback(feedback(series(parallel(block1, block2), block3), block4), block5)

block1 = tf( [4], [1 4 0] );

block2 = tf( [1], [1] );

block3 = tf( [1 12], [1] );

block4 = tf( [1 0.8], [1] );

sys2 = feedback(feedback(block1, block2), parallel(block3, block4))