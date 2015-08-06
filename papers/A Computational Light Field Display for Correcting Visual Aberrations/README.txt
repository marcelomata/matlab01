Open main.m to start the project, and press F5 to run.
There are some options to run the code: 
1) by either to compute the projection matrices (only once for one particular parameter setting), or 
2) compute the prefiltering of the light field.

If you are running the program for the first time, then precompute the matrices first!
You can either precompute (1)only the central view, which only consider perfect eye/pinhole alignment, or your can choose to 
2) compute a whole array of projections; the whole array will take a while and generates about 250MB data.

Again, if you are running for the first time, we recommend you just precompute the central view matrix, and then it will also prefilter just for that case.
After the program finished, you can find the results inside the output directory. 
There are a couple of files worth mentioning:

"output/precompute/projection_matrix_offsetY_0.0_offsetX_0.0.mat" 
is the precomputed projection matrix, and there is no offset with only central view.

"output/output/CONTRAST_1.000000_Channel_1.mat"
"output/output/CONTRAST_1.000000_Channel_2.mat"
"output/output/CONTRAST_1.000000_Channel_3.mat"
are the prefiltered light field image data, and 
"output/LF_RGB_0000.png" 
is the prefiltered light field image for a light field display.

You can also find 
"CONTRAST_1.000000_Err_33.00000-dB.png"
being the perceived image with PSNR error measurement.


Once you've tried the single view version, you can try to create an array of precomputed projection matrices.
Note that it will take quite some time to compute about 120 matrices.



Finally there are some parameters you can play with:
1) SPEEDY: to solve the linear optimization min|Ax-b|, you can precompute the normal equation AtA and Atb; this requires more memory comsumption, but also faster.

2) LAMBDA: this controls how bright you want your display to be; technically if you have ultra bright backlighting, you can set this to zero.
if you don't want to break your display and just want to crank up the perceived brightness, you can use a larger value, typically I use 0.02 to 0.08.
Note that this additional constraint will decrease your final quality.

3) GAMMA: I experimented with this value for the iPod touch 4/iPhone4.

4) RANGE: the off-axis optimization range; for this iPhone4 architecture, I found -5 ~ +5 is pretty good.

5) CONTRAST: basically gives the bias (b) value in the paper. You decide the desired contrast-quality tradeoff, and then we add the bias to the equation.

6) Inside "BuildMatrix.m", XtraPix is an important parameter that consider extra pixels for perspective viewing of the light field display. 
If the viewing distance is too short, you create eye rays with very large angle, then you probably need to consider more extra pixels.
Usually the sparse matrix building routine "A = sparse(...)" will complain.

7) Sampling: how many samples per mm, for the value of 20 => 6mm pupil has 120 rays

8) psf_size: default buffer size to prevent the Matlab growing the list from inside a loop, rarely changed.