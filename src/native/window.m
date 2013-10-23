#import <Cocoa/Cocoa.h>


void createWindow() {

  // don't need the instance but calling this
  // establishes a mach port to the window server
  // as the internals of Cocoa lazily set themselves up
  [NSApplication sharedApplication];


  NSRect rect = NSMakeRect(100.0,100.0, 200.0,200.0);
  NSUInteger style = NSTitledWindowMask | NSClosableWindowMask | NSMiniaturizableWindowMask | NSResizableWindowMask;
  NSWindow *window = [[NSWindow alloc] initWithContentRect:rect styleMask:style backing:NSBackingStoreBuffered defer:NO];

  // [window orderFront:nil];
  [window makeKeyAndOrderFront:nil];

  // while (1);

  // [NSApp run];
}

// - (id)initWithContentRect:(NSRect)contentRect styleMask:(NSUInteger)windowStyle backing:(NSBackingStoreType)bufferingType defer:(BOOL)deferCreation



