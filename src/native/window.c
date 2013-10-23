
/* #include "CGSPrivate.h"*/
#include <stdio.h>

#include <Carbon/Carbon.h>
/* #include <CoreGraphics/CoreGraphics.h>*/
#include <ApplicationServices/ApplicationServices.h>

/* typedef	int			int32_t;*/
/* typedef int32_t  CGError;*/


/* #if defined(__LP64__) && __LP64__*/
/* # define CGFLOAT_TYPE double*/
/* # define CGFLOAT_IS_DOUBLE 1*/
/* # define CGFLOAT_MIN DBL_MIN*/
/* # define CGFLOAT_MAX DBL_MAX*/
/* #else*/
/* # define CGFLOAT_TYPE float*/
/* # define CGFLOAT_IS_DOUBLE 0*/
/* # define CGFLOAT_MIN FLT_MIN*/
/* # define CGFLOAT_MAX FLT_MAX*/
/* #endif*/

/* [> Definition of the `CGFloat' type and `CGFLOAT_DEFINED'. <]*/

/* typedef CGFLOAT_TYPE CGFloat;*/

/* [> Points. <]*/

/* struct CGPoint {*/
/*   CGFloat x;*/
/*   CGFloat y;*/
/* };*/
/* typedef struct CGPoint CGPoint;*/

/* [> Sizes. <]*/

/* struct CGSize {*/
/*   CGFloat width;*/
/*   CGFloat height;*/
/* };*/
/* typedef struct CGSize CGSize;*/

/* [> Rectangles. <]*/

/* struct CGRect {*/
/*   CGPoint origin;*/
/*   CGSize size;*/
/* };*/
/* typedef struct CGRect CGRect;*/

typedef int CGSConnection;
typedef int CGSWindow;
typedef int CGSValue;

extern CGSValue CGSCreateCStringNoCopy(const char str);
extern char CGSCStringValue(CGSValue string);
extern int CGSIntegerValue(CGSValue intVal);

typedef enum _CGSWindowOrderingMode {
   kCGSOrderAbove                =  1, // Window is ordered above target.
   kCGSOrderBelow                = -1, // Window is ordered below target.
   kCGSOrderOut                  =  0  // Window is removed from the on-screen window list.
} CGSWindowOrderingMode;

/*black box rep of a region(i assume more than likely on screen but it may be offscreen as well)*/
typedef void *CGSRegion;
typedef CGSRegion *CGSRegionRef; /*pointer to a region*/

typedef CGSWindow *CGSWindowRef;

extern CGSConnection _CGSDefaultConnection(void);
extern CGError CGSNewWindow( CGSConnection cid, int, float, float, const CGSRegion, CGSWindowRef);

extern CGError CGSNewRegionWithRect( const CGRect * rect, CGSRegionRef newRegion );

extern OSStatus CGSOrderWindow(CGSConnection cid, CGSWindow win, CGSWindowOrderingMode place, CGSWindow relativeToWindow /* can be NULL */);
extern OSStatus CGSSetWindowProperty(const CGSConnection cid, CGSWindow wid, CGSValue key, CGSValue value);


#define kCGSBufferedBackingType 2


int main(char **argv, int argc) {
  /* CGSInitialize();*/

  CGSConnection wsConnection = 0;
  /* CGSNewConnection(NULL, wsConnection);*/
  wsConnection = _CGSDefaultConnection();
  if (!wsConnection) {
    printf("oops can't connect");
    return 1;
  }

  CGError err;

  /* CGPoint p; p.x = 0.0; p.y = 0.0;*/
  /* CGSize s; s.width = 100.0; s.height = 100.0;*/
  /* CGRect r; r.origin = p; r.size = s;*/
  CGRect r = CGRectMake(0,0, 100,100);

  CGSRegion region = NULL;
  err = CGSNewRegionWithRect(&r, &region);
  if (!region) {
    printf("oops can't create region %d", err);
    return 2;
  }


  CGSWindow window = 0;
  err = CGSNewWindow(wsConnection, kCGSBufferedBackingType, 200.0, 200.0, region, &window);
  if (!window) {
    printf("oops can't create window %d", err);
    return 3;
  }

  err = CGSOrderWindow(wsConnection, window, kCGSOrderAbove, 0);
  if (err) {
    printf("oops can't order widnow %d", err);
    return 4;
  }

  err = CGSSetWindowProperty(wsConnection, window, XXX, YYY)
  if (err) {
    printf("oops can't set window style %d", err);
    return 4;
  }


  /* printf("connection: %d\n", wsConnection);*/

  
  /* return 0;*/
  while (1) {}
}
