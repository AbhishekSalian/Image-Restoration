[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![Open Source Love png3](https://badges.frapsoft.com/os/v3/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badges/)

<h2>Image Restoration</h2>
<h4>Order statistics filter such as min,max,midpoint ,median,alpha-trimmed (spatial domain filters) has been used for restoration purpose.</h4>
<h4>PSNR (Peak signal to Noise ratio) is used as criteria (subjective fidelity criteria) in order to determine the how much the image is restored relative to original image.</h4>
<h2> PSNR</h2>
<img src="image restoration images/result.jpg">
<h2> Original Image</h2>
<img src="image restoration images/original image.jpg">
<h2> Noisy Image(salt and pepper noise)</h2>
<img src="image restoration images/Noisy image.jpg">
<h2>Median filter</h2>
<img src="filter equation/median filter eqn.JPG">
<img src="image restoration images/median filter.jpg">
<h2>Max filter</h2>
<img src="filter equation/max filter eqn.JPG">
<img src="image restoration images/max filter.jpg">
<h2>Min filter</h2>
<img src="filter equation/min filter eqn.JPG">
<img src="image restoration images/min filter.jpg">
<h2>Midpoint filter</h2>
<img src="filter equation/midpoint filter eqn.JPG">
<img src="image restoration images/midpoint filter.jpg">
<h2>Alpha trimmed filter</h2>
<img src="filter equation/alpha-trimmed filter eqn.JPG">
<img src="image restoration images/alpha trimmed filter.jpg">
<h2>Median filter vs ALpha-trimmed filter</h2>
<img src="image restoration images/alpha trimmed result and median result with very noisy image(salt and pepper).jpg">
<h2>Comparison of restored images(Median filter vs Alpha-trimmed filter) </h2>
<img src="image restoration images/iteration result.jpg">

`` Clearly Median filter is the winner since it has far better SNR results than other filters``
