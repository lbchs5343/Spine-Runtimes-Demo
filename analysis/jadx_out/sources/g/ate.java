package g;

import android.graphics.Canvas;
import android.widget.EditText;

/* loaded from: classes.dex */
public final class ate extends EditText {

    /* renamed from: a, reason: collision with root package name */
    public cpz f10793a;

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        cpz cpzVar = this.f10793a;
        if (cpzVar != null) {
            cpzVar.mn();
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cpz cpzVar = this.f10793a;
        if (cpzVar != null) {
            cpzVar.ia();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        cpz cpzVar = this.f10793a;
        if (cpzVar != null) {
            cpzVar.dq(i, i2, i3, i4);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        cpz cpzVar = this.f10793a;
        if (cpzVar != null) {
            int[] dq = cpzVar.dq(i, i2);
            super.onMeasure(dq[0], dq[1]);
        } else {
            super.onMeasure(i, i2);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        cpz cpzVar = this.f10793a;
        if (cpzVar != null) {
            cpzVar.d(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        cpz cpzVar = this.f10793a;
        if (cpzVar != null) {
            cpzVar.dq(z);
        }
    }
}
