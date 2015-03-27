QT += core

DEFINES += %PluginName:u%_LIBRARY

TARGET = $$qtLibraryTarget(%PluginName:l%)

CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

# Input
HEADERS += \
    %PluginName:l%.%CppHeaderSuffix:l%

SOURCES += \
    %PluginName:l%.%CppSourceSuffix:l%

# OpenCV
	OpenCV_Path = %opencv_path:1%
	OpenCV_Version = %opencv_version:1%
	Compile_Type = %compile_type:1%
	
    PATH_OPENCV_INCLUDE   = $${OpenCV_Path}\include
    PATH_OPENCV_LIBRARIES = $${OpenCV_Path}\\$${Compile_Type}\vc12\lib
    PATH_OPENCV_DLLS      = $${OpenCV_Path}\\$${Compile_Type}\vc12\bin
    VERSION_OPENCV        = $${OpenCV_Version}
    CONFIG(debug, debug|release){
        VERSION_OPENCV    = $${VERSION_OPENCV}d
    }
    INCLUDEPATH += $${PATH_OPENCV_INCLUDE}
%core%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_core$${VERSION_OPENCV}
%highgui%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_highgui$${VERSION_OPENCV}
%imgproc%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_imgproc$${VERSION_OPENCV}
%calib3d%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_calib3d$${VERSION_OPENCV}
%gpu%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_gpu$${VERSION_OPENCV}
%legacy%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_legacy$${VERSION_OPENCV}
%ml%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_ml$${VERSION_OPENCV}
%features2d%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_features2d$${VERSION_OPENCV}
%nonfree%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_nonfree$${VERSION_OPENCV}
%objdetect%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_objdetect$${VERSION_OPENCV}
%ocl%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_ocl$${VERSION_OPENCV}
%photo%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_photo$${VERSION_OPENCV}
%stitching%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_stitching$${VERSION_OPENCV}
%superres%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_superres$${VERSION_OPENCV}
%video%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_video$${VERSION_OPENCV}
%videostab%	LIBS += -L$${PATH_OPENCV_LIBRARIES} -lopencv_videostab$${VERSION_OPENCV}
