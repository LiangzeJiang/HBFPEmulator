import matplotlib.pyplot as plt
import numpy as np

path = "./log_stoc/"
filenames = [["loss_8_2_16", "loss_8_4_16", "loss_8_6_16", "loss_8_8_16"],
             ["loss_8_8_2", "loss_8_8_4", "loss_8_8_8", "loss_8_8_16"],
             ["loss_2_8_16", "loss_4_8_16", "loss_6_8_16", "loss_8_8_16"]]
title = ['backward', 'weight', 'forward']
for i in range(3):
    data1 = np.loadtxt(path + filenames[i][0] + ".txt")[:-2]
    data2 = np.loadtxt(path + filenames[i][1] + ".txt")[:-2]
    data3 = np.loadtxt(path + filenames[i][2] + ".txt")[:-2]
    data4 = np.loadtxt(path + filenames[i][3] + ".txt")[:-2]
    plt.plot(100*np.arange(len(data1)), data1, color='green', label="2-bit")
    plt.plot(100*np.arange(len(data2)), data2, color='red', label="4-bit")
    plt.plot(100*np.arange(len(data3)), data3, color='blue', label="6-bit")
    plt.plot(100*np.arange(len(data4)), data4, color='black', label="8-bit")
    plt.legend()
    plt.xlabel('iterations')
    plt.ylabel('loss')
    plt.savefig('loss'+'_' + title[i] + '.jpg')
    plt.grid(True)
    plt.clf()
