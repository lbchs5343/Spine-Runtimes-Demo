package com.google.android.material.timepicker;

import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import cn.trinea.android.developertools.R;
import g.amk;
import g.csk;
import g.fc;
import g.fnz;

/* loaded from: classes3.dex */
public final class f extends amk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f9099a;

    public f(ClockFaceView clockFaceView) {
        this.f9099a = clockFaceView;
    }

    @Override // g.amk
    public final void c(View view, fnz fnzVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = fnzVar.f17119b;
        this.m.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        int intValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
        if (intValue > 0) {
            View view2 = (View) this.f9099a.af.get(intValue - 1);
            if (Build.VERSION.SDK_INT >= 22) {
                accessibilityNodeInfo.setTraversalAfter(view2);
            }
        }
        fnzVar.l(fc.f(0, 1, intValue, 1, view.isSelected()));
        accessibilityNodeInfo.setClickable(true);
        fnzVar.k(csk.f13432e);
    }

    @Override // g.amk
    public final boolean e(View view, int i, Bundle bundle) {
        if (i != 16) {
            return super.e(view, i, bundle);
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        ClockFaceView clockFaceView = this.f9099a;
        view.getHitRect(clockFaceView.f9087ab);
        float centerX = clockFaceView.f9087ab.centerX();
        float centerY = clockFaceView.f9087ab.centerY();
        clockFaceView.w.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, centerX, centerY, 0));
        clockFaceView.w.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 1, centerX, centerY, 0));
        return true;
    }
}
