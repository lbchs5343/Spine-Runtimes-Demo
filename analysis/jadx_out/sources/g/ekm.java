package g;

import android.graphics.Canvas;
import android.view.View;

/* loaded from: classes.dex */
public final class ekm extends ese {

    /* renamed from: a, reason: collision with root package name */
    public cfe f15706a;

    @Override // g.ese
    public final View mn(int i) {
        return ((dlv) this.dq.get(i)).kk();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        cfe cfeVar = this.f15706a;
        if (cfeVar != null) {
            cfeVar.mn();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cfe cfeVar = this.f15706a;
        if (cfeVar != null) {
            cfeVar.ia();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        cfe cfeVar = this.f15706a;
        if (cfeVar != null) {
            cfeVar.iw();
        }
        super.onLayout(z, i, i2, i3, i4);
        cfe cfeVar2 = this.f15706a;
        if (cfeVar2 != null) {
            cfeVar2.dq(i, i2, i3, i4);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        cfe cfeVar = this.f15706a;
        if (cfeVar != null) {
            int[] dq = cfeVar.dq(i, i2);
            super.onMeasure(dq[0], dq[1]);
        } else {
            super.onMeasure(i, i2);
        }
        cfe cfeVar2 = this.f15706a;
        if (cfeVar2 != null) {
            cfeVar2.s();
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        cfe cfeVar = this.f15706a;
        if (cfeVar != null) {
            cfeVar.d(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        cfe cfeVar = this.f15706a;
        if (cfeVar != null) {
            cfeVar.dq(z);
        }
    }
}
