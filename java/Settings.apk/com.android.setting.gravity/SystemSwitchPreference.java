package com.android.settings.gravity;


import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.preference.Preference;
import android.preference.SwitchPreference;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

@TargetApi(Build.VERSION_CODES.ICE_CREAM_SANDWICH)
public class SystemSwitchPreference extends SwitchPreference {

	Context context;

	public SystemSwitchPreference(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TODO Auto-generated constructor stub
		this.context = context;
		int checked = Settings.System.getInt(context.getContentResolver(),
				getKey(), 1);
		if (checked < 1) {
			setChecked(false);
			setDefaultValue(false);
		} else {
			setChecked(true);
		}
	}

	@Override
	protected View onCreateView(ViewGroup parent) {
		// TODO Auto-generated method stub
		// setItemSummary("Fuck");

		setOnPreferenceChangeListener(new OnPreferenceChangeListener() {

			@Override
			public boolean onPreferenceChange(Preference pref, Object newValue) {
				// TODO Auto-generated method stub

				boolean checked = Boolean.valueOf(newValue.toString());

				if (checked) {
					Settings.System.putInt(context.getContentResolver(),
							getKey(), 1);
				} else {
					Settings.System.putInt(context.getContentResolver(),
							getKey(), 0);
				}
				return true;
			}
		});

		return super.onCreateView(parent);
	}

}