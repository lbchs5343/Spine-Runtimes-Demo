package g;

import android.graphics.Canvas;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import java.util.Map;

/* loaded from: classes.dex */
public final class acb extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public eyh f9961a;

    /* renamed from: b, reason: collision with root package name */
    public Map f9962b;

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        eyh eyhVar = this.f9961a;
        if (eyhVar != null) {
            eyhVar.mn();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        eyh eyhVar = this.f9961a;
        if (eyhVar != null) {
            eyhVar.ia();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        Map map = this.f9962b;
        if (map == null || !map.containsKey(4)) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        eyh eyhVar = this.f9961a;
        if (eyhVar != null) {
            eyhVar.iw();
        }
        super.onLayout(z, i, i2, i3, i4);
        eyh eyhVar2 = this.f9961a;
        if (eyhVar2 != null) {
            eyhVar2.dq(i, i2, i3, i4);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        eyh eyhVar = this.f9961a;
        if (eyhVar != null) {
            int[] dq = eyhVar.dq(i, i2);
            super.onMeasure(dq[0], dq[1]);
        } else {
            super.onMeasure(i, i2);
        }
        eyh eyhVar2 = this.f9961a;
        if (eyhVar2 != null) {
            eyhVar2.s();
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        eyh eyhVar = this.f9961a;
        if (eyhVar != null) {
            eyhVar.d(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        eyh eyhVar = this.f9961a;
        if (eyhVar != null) {
            eyhVar.dq(z);
        }
    }

    public void setEventMap(Map<Integer, fzc> map) {
        this.f9962b = map;
    }
}
