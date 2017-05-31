# BasicApp using Adsum

Example show the bare integration of our SDK.
It show the map on the default floor.

### Prerequisites

You need to run your project on a physical device

### Installing

Download our latest SDK from https://github.com/AdactiveSAS/adsum-mobile-sdk.git
Include it on your Xcode Project
Import Adsum in swift's files where you want to use Adsum

## Running the tests

- Your ViewController should be a subclass of ADSMapDelegate

- Declare "mapView : AdsumCoreView?"

In viewDidLoad :
Create an ADSOption with your apiKey, site, and device
