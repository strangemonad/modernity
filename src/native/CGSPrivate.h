
// Blah horribly out of date for 10.7

#ifndef _CGS_HACK_H
#define _CGS_HACK_H

// #import types.h
typedef	int			int32_t;


// #import <Carbon/Carbon.h>  // for UInt32 type and ProcessSerialNumber

#if __LP64__
typedef unsigned int                    UInt32;
typedef signed int                      SInt32;
#else
typedef unsigned long                   UInt32;
typedef signed long                     SInt32;
#endif

// #import mactypes
typedef SInt32                          OSStatus;

/********************************************************************************

    Process Manager type ProcessSerialNumber (previously in Processes.h)

*********************************************************************************/
/* type for unique process identifier */
struct ProcessSerialNumber {
  UInt32              highLongOfPSN;
  UInt32              lowLongOfPSN;
};
typedef struct ProcessSerialNumber      ProcessSerialNumber;
typedef ProcessSerialNumber *           ProcessSerialNumberPtr;


// To avoid pulling in all of core graphics
/* Types used for error and error handler */
enum _CGError {
    kCGErrorSuccess = 0,
    kCGErrorFirst = 1000,
    kCGErrorFailure = kCGErrorFirst,
    kCGErrorIllegalArgument = 1001,
    kCGErrorInvalidConnection = 1002,
    kCGErrorInvalidContext = 1003,
    kCGErrorCannotComplete = 1004,
    kCGErrorNameTooLong = 1005,
    kCGErrorNotImplemented = 1006,
    kCGErrorRangeCheck = 1007,
    kCGErrorTypeCheck = 1008,
    kCGErrorNoCurrentPoint = 1009,
    kCGErrorInvalidOperation = 1010,
    kCGErrorNoneAvailable = 1011,
    /*	internal errors have taken 1012, 1013, and 1014 */

	kCGErrorApplicationRequiresNewerSystem = 1015,
		/*	the application being launched says in it's bundle info that it requires a */
		/*	newer version of the system than is currently running. */
	
	kCGErrorApplicationNotPermittedToExecute = 1016,
		/*	Macintosh Manager is active, and this application is not permitted to run */
	
	kCGErrorApplicationIncorrectExecutableFormatFound = 1023,
		/*	the application being launched does not have any executable code for the */
		/*	current system. */
	
	kCGErrorApplicationIsLaunching = 1024,
		/* The application is in the process of launching, but hasn't checked in yet.
		   Any launch data provided will be given to the application when it does
		   check in. */
	
	kCGErrorApplicationAlreadyRunning = 1025,
		/*	The application being launched was already running ( and had already checked
		    in ) and so any launch data provided can not be delivered to in by CPS */

	kCGErrorApplicationCanOnlyBeRunInOneSessionAtATime = 1026,
		/*	The application being launched is incompatible with multiple user sessions,
			and is already running in another session by another user. */
			
	kCGErrorClassicApplicationsMustBeLaunchedByClassic = 1027,
		/*	To avoid deadlock, Classic can't launch another Classic application by going
			thru CPS.  This error gets returned in that case, and it signals TruBlueEnvironment
			that it must handle this launch on its own. */

	kCGErrorForkFailed = 1028,
		/*	CPS was unable to fork a new process in order to launch an application. */

    kCGErrorLast = kCGErrorForkFailed
};
typedef int32_t  CGError;


extern void * kCGSDragRegion;
extern void * kCGSEventMask;
extern void * kCGSGammaBlue;
extern void * kCGSGammaGamma;
extern void * kCGSGammaGreen;
extern void * kCGSGammaMax;
extern void * kCGSGammaMin;
extern void * kCGSGammaRed;
extern void * kCGSGammaTableSize;
extern void * kCGSGammaTableType;
extern void * kCGSGraphicsContextObj;
extern void * kCGSHideOnDeact;
extern void * kCGSIcon;
extern void * kCGSIgnoresOption;
extern void * kCGSKitVisible;
extern void * kCGSMenuBarHidden;
extern void * kCGSMenuBarWindow;
extern void * kCGSMovementGroup;
extern void * kCGSMovementParent;
extern void * kCGSOrderingGroup;
extern void * kCGSOrderingParent;
extern void * kCGSSpecialCommandRegion;
extern void * kCGSTempHidden;
extern void * kCGSWindowDirtyRegion;
extern void * kCGSWindowResizeState;
extern void * kCPSInfoDictAttrs;


// Note : A CGSWindowRef is returned from [ NSWindow _realWindowNumber ];

/*
 * Window Placement
 *
 * Windows may be placed on the display with Z ordering above or below any other
 * window identified by it's window identifier. A window identifier of 0 is
 * treated specially, causing windows ordered below 0 to be moved out of the
 * window list (visRegion is empty), or in front of all windows with the
 * same or lower level. Further, windows may be assigned to a particular
 * level. When assigned to a level, the window is ordered in front of the
 * current frontmost window with an equal or lower level.
 * 
 * Given these two placement mechanisms, it should be possible to place
 * windows on-screen individually or in tiers. It should also be possible
 * to use windows for the menu bar, menus, balloon help, or tool tips.
 * 
 * Windows may also have their (X,Y) positions changed, of course.
 */
enum _CGSOrderOp {
    kCGSOrderAbove			=  1,
    kCGSOrderBelow			= -1,
    kCGSOrderOut			=  0,
    kCGSOrderIn				=  2
};
typedef long CGSOrderOp;

// replaced with official apple spec above
//typedef enum _CGSWindowOrderingMode {
//    kCGSOrderAbove                =  1,
//    kCGSOrderBelow                = -1,
//    kCGSOrderOut                  =  0
//} CGSWindowOrderingMode;

typedef enum CGSDebugOption {
	kFlashYellowRegionUpdate 	  		= 0x0000000f, /*just like the flash screen updates option in Quartz Debug.app*/
	kRedGreenActiveRegion 		  		= 0x000000f0,
	kAutoFlush							= 0x00000f00, /*just like the autoflush option in Quartz Debug.app*/
	kResetWindowServer					= 0x0000f000, /*this will shut down the windowserver!!!*/
	kObsoleteDebugOption1				= 0x000f0000, /*it returns that the CGSDebugOption is obsolete in the debugging of the call*/
	kRedGreenOutlineHighlightedRegion	= 0x00f00000,
	kObsoleteDebugOption2				= 0x0f000000,
	kRedGreenOutlineChange				= 0xf0000000 /*this is _VERY_ unstable i guess apple didnt write it correctly ;) (or it may not be actually a option)*/
} CGSDebugOption;

typedef int				CGSConnection;		/*connection id, this is created whenever an app makes something thats drawn to the screen(apps can have more than one)*/
typedef int				CGSWindow;			/*window id, this is created whenever a window is made, it seems to be static for the window and context id of the parent app*/
typedef CGSWindow *    	CGSWindowRef; 		/*pointer to an id of a window*/
typedef CGSConnection *	CGSConnectionRef;	/*pointer to an id of a connection*/
typedef void *			CGSRegion;			/*black box rep of a region(i assume more than likely on screen but it may be offscreen as well)*/
typedef CGSRegion * 	CGSRegionRef;		/*pointer to a region*/
typedef int				CGSWindowID;
typedef void *			CGSConnectionID;
typedef void *			CGSValueObj;
typedef void *			CGSRegionObj;
typedef void *			CGSBoundingShapeObj;
typedef unsigned char	CGSBoolean;			/* needs an enum for values.. */

#define kCGSNullConnectionID ((CGSConnectionID)0)
// random hack constants for CGSSetDebugOptions
#define kCGSDebugOptionNormal 0
#define kCGSDebugOptionNoShadows 16384
#define kCGSHDumpWindowInfoToFile (0x8000<<16)|1 //This puts the window server dump to /tmp/WindowServer.winfo.out

// to get CGSConnectionRef for current app
extern CGSConnectionRef    _CGSDefaultConnection(void);           
// get the cgs connection for an app represented by the psn
extern CGError CGSGetConnectionIDForPSN(CGSConnection targetCID, ProcessSerialNumber * psn, CGSConnectionRef recievingEnd );
// extern OSStatus CGSNewConnection(void *something /* can be NULL, parent connection? */, CGSConnectionID *outID);
// extern OSStatus CGSGetConnectionIDForPSN(const CGSConnectionID cid, ProcessSerialNumber *psn, CGSConnectionID *out);
extern OSStatus CGSReleaseConnection(CGSConnectionID cid);
extern void CGSInitialize();
extern void CGSReenableUpdate(CGSConnectionID cid);
extern void CGSDisableUpdate(CGSConnectionID cid);
// creates a new context for the app its called from
extern CGError CGSNewConnection( void *, CGSConnectionRef cid );
// creates a region of dimentions of the CGRect passed					
// extern CGError CGSNewRegionWithRect( const CGRect * rect, CGSRegionRef newRegion );
// returns a region of a union of two other regions					
extern CGError CGSUnionRegion( const CGSRegion regionA, const CGSRegion regionB, CGSRegionRef outRegion );					
// dynamicaly creates a new window(more than likely a carbon window)
extern CGError CGSNewWindow( CGSConnection cid, int, float, float, const CGSRegion, CGSWindowRef );					

// only works if you kill the dock, then stops dock from relaunching
extern OSStatus CGSSetUniversalOwner(const CGSConnectionID cid, int);
// apparently a nop
extern OSStatus CGSSetOtherUniversalConnection(const CGSConnectionID cid);

/*
*
* Window Commands
*
*/
//extern OSStatus CGSOrderWindow(CGSConnectionID cid, CGSWindowID wid, CGSWindowOrderingMode place, CGSWindowID relativeToWindowID /* can be NULL */);
extern OSStatus CGSOrderWindow(CGSConnectionID cid, CGSWindowID wid, CGSOrderOp place, CGSWindowID relativeToWindowID /* can be NULL */);	
// extern OSStatus CGSMoveWindow(CGSConnectionID cid, CGSWindowID wid, CGPoint *aPoint);
extern OSStatus CGSSetWindowAlpha(const CGSConnectionID cid, CGSWindowID wid, float alpha);
extern OSStatus CGSSetWindowProperty(const CGSConnectionID cid, CGSWindowID wid, CGSValueObj key, CGSValueObj value);
extern void CGSSetWindowOpacity(CGSConnectionID cid, CGSWindowID wid, void* opacity /* kCGSFalse, is that a CGSValueObj or standard char? */);
// sets the fill color automaticaly
extern CGError CGSSetWindowAutofillColor( CGSConnection cid, const CGSWindowRef targetWindow, float, float, float );					
// sets the window autofill (texturing)
extern CGError CGSSetWindowAutofill( CGSConnection cid, const CGSWindowRef targetWindow, float );
// affine transforms for one window
// extern OSStatus     CGSSetWindowTransform(const CGSConnectionRef cid, CGSWindowRef wid, CGAffineTransform transform);
// extern OSStatus     CGSGetWindowTransform(const CGSConnectionID, CGSWindowID wid, CGAffineTransform *outTransform);
// affine transforms for array of windows ( what Dock uses for app tiles )
// extern OSStatus     CGSSetWindowTransforms(const CGSConnectionRef cid, CGSWindowRef* wids, CGAffineTransform *transform, int n);

// Other Window Stuff					
// extern OSStatus CGSGetWindowLevel(CGSConnectionID cid, CGSWindowID wid, CGWindowLevel *level);
// questionable, partly guessed IIRC.				
extern OSStatus CGSSetSharedWindowState(const CGSConnectionID cid, CGSWindowID wid, CGSValueObj boolean);

// 060210ra Window Capture
// CG_EXTERN void CGContextCopyWindowCaptureContentsToRect(CGContextRef c, CGRect dstRect, CGSConnectionID connection, CGSWindowID window, CGRect srcRect);
// what's a CGS_EXTERN?
// CG_EXTERN CGError CGSFindWindowAndOwner(const CGSConnectionID cid,
//     CGSWindowID startWid, CGSOrderOp op, CGSBoolean dragging,
//     const CGPoint *screenPoint, CGPoint *windowPoint,
//     CGSWindowID *foundWid, CGSConnectionID *foundCid);
	
// Window Rect/Bounds
// extern OSStatus CGSGetScreenRectForWindow(CGSConnectionID cid, CGSWindowID wid, CGRect *outRect);
// extern OSStatus CGSGetWindowBounds(CGSConnectionID cid, CGSWindowID wid, CGRect *bounds);

extern CGSValueObj CGSCreateCString(char *string);
//extern CGSValueObj CGSCreateBoolean(Boolean bool);
extern void CGSReleaseGenericObj(CGSValueObj obj);

// Regions
extern OSStatus CGSReleaseRegion(CGSRegionObj);
// extern void CGSGetRegionBounds(const CGSRegionObj aRegion, CGRect *outRect);

// Window Lists
extern CGError CGSGetWindowCount(const CGSConnectionRef callercid, CGSConnection targetCID, int* outCount);
extern CGError CGSGetWindowList( const CGSConnectionRef callercid, CGSConnection targetCID, int count, int* list, int* outCount );
extern OSStatus CGSGetOnScreenWindowCount(const CGSConnectionRef cid, CGSConnectionRef targetCID, int* outCount); 
extern OSStatus CGSGetOnScreenWindowList(const CGSConnectionRef cid, CGSConnectionRef targetCID, int count, int* list, int* outCount);

// Window Server Debugging
extern CGError CGSSetDebugOptions(long int options);

#endif /* _CGS_HACK_H */
