# Some files I use for my lectures in Digital Signal Processing, Machine Learning, Advanced Maths...

## Advanced Maths. 

The file [series_pulsos2.m](https://github.com/ArnaldoMatute/Let-s-Learn/blob/master/series_pulsos2.m) is a Matworks Matlab code that shows how the more terma are consideres in the patial sum, the closer the approximation is to the original periodic function. The file generate_pulses.m plots an original squared periodic function and generate_sawtooth.m does the same for a Sawtooth like function. FS_Pulses.m ans FS_Sawtooth.m calculates the partial some of each Fourier Series for a paramter N.   

## Digital Signals Processing. 

The file dft.m shows how Spectrum resolution grows as a consequence of Zero-Padding. The more zeros are concatenated next to the original discrete signal, the more resolution the spectrum has as a consequence of increasing the period N.

The file filter_comparison.m shows an arbitrary signal being filtered, in the middle graphs, by a set Blackmann-Harris FIR lowpass filters of 2nd, 4th, 8th, 16th and 64th order. Likewise, the bottom graphs shows the  equivalent effect for a set ofButterworth IIR low pass filter for the same list of orders. The signal in the time domain are graphed al the left and spectra are shown in the right. The normalized cuttoff Frecuency for all filters is 0.118.  

## Machine Learning 
The Notebook KNN1.ipynb shows how to build a K-Nearest-Neighbours Classifier with Scikit Learn for an example of random data in a "chess-board-like" squared distribution. 

The notebook NN_fromTheSratch.ipynb shows how to create and train a Neural Network form the scratch. Layers was instanced with a defined class "neural_layer".  Functions for execution and training based on Backpropagations with Gradient Descent are also there. This example considers a random data in a "chess-board-like" squared distribution.

The notebook NN_fromTheSratchII.ipynb shows how to create and train a Neural Network form the scratch. Layers was instanced with a defined class "neural_layer".  Functions for execution and training based on Backpropagations with Gradient Descent are also there. This example considers a random data in circle distribution using make_circles() from Scikit Learn.
