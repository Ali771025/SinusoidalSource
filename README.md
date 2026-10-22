# Sinusoidal Signals and FIR Filtering

MATLAB sinusoidal signal generator with a noisy-signal FIR filtering example.

## Overview

`SinusoidalSource(fm,T,fs)` returns sampled cosine values and their count. `sintest.m` adds Gaussian noise and applies a band-pass FIR filter.

## Repository contents

- [SinusoidalSource.m](SinusoidalSource.m)
- [sintest.m](sintest.m)

## Requirements

MATLAB and Signal Processing Toolbox.

## Getting started

Clone this repository and open its directory:

```bash
git clone https://github.com/Ali771025/SinusoidalSource.git
cd SinusoidalSource
```

Run the example from that directory:

```matlab
[x, N] = SinusoidalSource(1200, 0.05, 12000);
plot((1:N)/12000, x);
```

## Compatibility and scope

The filtering demonstration calls `PlotSpectrum`, which is not included here. A matching helper is available in [ModQAM](https://github.com/Ali771025/ModQAM/blob/main/PlotSpectrum.m). The standalone generator can be explored independently.

## Credits and license

This repository contains educational material. Preserve author credits and license notices in the source files. See the license file where provided; inclusion in this repository does not replace existing source attribution.
