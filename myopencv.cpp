#include <iostream>
@if "%core%" == ""
#include <opencv2/core/core.hpp>
@endif
@if "%highgui%" == ""
#include <opencv2/highgui/highgui.hpp>
@endif
@if "%imgproc%" == ""
#include <opencv2/imgproc/imgproc.hpp>
@endif
@if "%calib3d%" == ""
#include <opencv2/calib3d/calib3d.hpp>
@endif
@if "%gpu%" == ""
#include <opencv2/gpu/gpu.hpp>
@endif
@if "%legacy%" == ""
#include <opencv2/legacy/legacy.hpp>
@endif
@if "%ml%" == ""
#include <opencv2/ml/ml.hpp>
@endif
@if "%features2d%" == ""
#include <opencv2/features2d/features2d.hpp>
@endif
@if "%nonfree%" == ""
#include <opencv2/nonfree/nonfree.hpp>
@endif
@if "%objdetect%" == ""
#include <opencv2/objdetect/objdetect.hpp>
@endif
@if "%ocl%" == ""
#include <opencv2/ocl/ocl.hpp>
@endif
@if "%photo%" == ""
#include <opencv2/photo/photo.hpp>
@endif
@if "%stitching%" == ""
#include <opencv2/stitching/stitching.hpp>
@endif
@if "%superres%" == ""
#include <opencv2/superres/superres.hpp>
@endif
@if "%video%" == ""
#include <opencv2/video/video.hpp>
@endif
@if "%videostab%" == ""
#include <opencv2/videostab/videostab.hpp>
@endif

using namespace std;
using namespace cv;

int main()
{

/*************************************/
	/*	This code segment is for testing OpenCV Configuration.
	*	You can replace it with your own code.
	*/
    Mat pFrame;
    VideoCapture capture(1);
    if (!capture.isOpened()){
        cout << "open camera failed!";
        return -1;
    }
    namedWindow("test", 1);
    while (1){
        capture >> pFrame;
        if (pFrame.empty()) break;
        imshow("test", pFrame);
        char c = cvWaitKey(33);
        if (c == 27) break;
    }
    destroyWindow("test");
    return 0;
/*************************************/

}