package com.android.systemui;

import android.content.Context;
import android.os.PowerManager;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

public class DLock extends View {

	GestureDetector gestureDetector;

	Context c;

	long lastTouchUpTime = 0;
	boolean isDoubleClick = false;
	public int d_tap = 0;

	public DLock(Context context, AttributeSet attrs) {
		super(context, attrs);
		c = context;
		// creating new gesture detector
		gestureDetector = new GestureDetector(context, new GestureListener());
	}

	// skipping measure calculation and drawing

	// delegate the event to the gesture detector
	@Override
	public boolean onTouchEvent(MotionEvent e) {
		return gestureDetector.onTouchEvent(e);
	}

	private class GestureListener extends
			GestureDetector.SimpleOnGestureListener {

		@Override
		public boolean onDown(MotionEvent e) {

			long currentTime = System.currentTimeMillis();
			if (!isDoubleClick && currentTime - lastTouchUpTime < 500) {

				d_tap = Settings.System.getInt(c.getContentResolver(),
						"double_tap_sb_sleep", 1);

				isDoubleClick = true;
				lastTouchUpTime = currentTime;
				PowerManager pm = (PowerManager) c
						.getSystemService(Context.POWER_SERVICE);
				if (d_tap >= 1)
					pm.goToSleep(e.getEventTime());
				return true;
			} else {
				lastTouchUpTime = currentTime;
				isDoubleClick = false;
				try {
					Thread.sleep(200);
				} catch (InterruptedException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				return false;
			}
		}
	}

}