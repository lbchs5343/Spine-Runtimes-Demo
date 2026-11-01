package g;

import android.graphics.Canvas;
import android.widget.ScrollView;

/* loaded from: classes.dex */
public final class crr extends ScrollView {

    /* renamed from: a, reason: collision with root package name */
    public chx f13400a;

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        chx chxVar = this.f13400a;
        if (chxVar != null) {
            chxVar.mn();
        }
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        chx chxVar = this.f13400a;
        if (chxVar != null) {
            chxVar.ia();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        chx chxVar = this.f13400a;
        if (chxVar != null) {
            chxVar.dq(i, i2, i3, i4);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        chx chxVar = this.f13400a;
        if (chxVar != null) {
            int[] dq = chxVar.dq(i, i2);
            super.onMeasure(dq[0], dq[1]);
        } else {
            super.onMeasure(i, i2);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.ScrollView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        chx chxVar = this.f13400a;
        if (chxVar != null) {
            chxVar.d(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        chx chxVar = this.f13400a;
        if (chxVar != null) {
            chxVar.dq(z);
        }
    }
}
