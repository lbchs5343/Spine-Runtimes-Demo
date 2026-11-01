package com.google.android.material.timepicker;

import android.view.ViewTreeObserver;

/* loaded from: classes3.dex */
public final class e implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f9098a;

    public e(ClockFaceView clockFaceView) {
        this.f9098a = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        ClockFaceView clockFaceView = this.f9098a;
        if (!clockFaceView.isShown()) {
            return true;
        }
        clockFaceView.getViewTreeObserver().removeOnPreDrawListener(this);
        int height = ((clockFaceView.getHeight() / 2) - clockFaceView.w.h) - clockFaceView.ag;
        if (height != clockFaceView.ao) {
            clockFaceView.ao = height;
            clockFaceView.am();
            ClockHandView clockHandView = clockFaceView.w;
            clockHandView.f9093f = clockFaceView.ao;
            clockHandView.invalidate();
        }
        return true;
    }
}
