package g;

import android.graphics.Canvas;
import android.view.View;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class fmg extends TextView implements aeb, gsy {

    /* renamed from: a, reason: collision with root package name */
    public dv f17029a;

    /* renamed from: b, reason: collision with root package name */
    public efb f17030b;

    /* renamed from: c, reason: collision with root package name */
    public float f17031c;

    public float getBorderRadius() {
        return this.f17029a.f14876e;
    }

    @Override // g.aeb
    public float getRipple() {
        return this.f17031c;
    }

    @Override // g.aeb
    public float getRubIn() {
        return this.f17029a.f14877f;
    }

    @Override // g.aeb
    public float getShine() {
        return this.f17029a.f14873b;
    }

    @Override // g.aeb
    public float getStretch() {
        return this.f17029a.f14874c;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        efb efbVar = this.f17030b;
        if (efbVar != null) {
            efbVar.mn();
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        efb efbVar = this.f17030b;
        if (efbVar != null) {
            efbVar.ia();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        efb efbVar = this.f17030b;
        if (efbVar != null) {
            efbVar.dq(canvas, this);
            this.f17030b.dq(canvas);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        efb efbVar = this.f17030b;
        if (efbVar != null) {
            efbVar.dq(i, i2, i3, i4);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        efb efbVar = this.f17030b;
        if (efbVar == null) {
            super.onMeasure(i, i2);
        } else {
            int[] dq = efbVar.dq(i, i2);
            super.onMeasure(dq[0], dq[1]);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        efb efbVar = this.f17030b;
        if (efbVar != null) {
            efbVar.d(i, i2, i3, i3);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        efb efbVar = this.f17030b;
        if (efbVar != null) {
            efbVar.dq(z);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f17029a.h(i);
    }

    public void setBorderRadius(float f2) {
        dv dvVar = this.f17029a;
        if (dvVar != null) {
            dvVar.g(f2);
        }
    }

    public void setRipple(float f2) {
        this.f17031c = f2;
        dv dvVar = this.f17029a;
        if (dvVar != null) {
            View view = dvVar.f14875d;
            dvVar.f14872a = f2;
            view.postInvalidate();
        }
        postInvalidate();
    }

    public void setRubIn(float f2) {
        dv dvVar = this.f17029a;
        if (dvVar != null) {
            dvVar.f14877f = f2;
            dvVar.f14875d.postInvalidate();
        }
    }

    public void setShine(float f2) {
        dv dvVar = this.f17029a;
        if (dvVar != null) {
            View view = dvVar.f14875d;
            dvVar.f14873b = f2;
            view.postInvalidate();
        }
    }

    public void setStretch(float f2) {
        dv dvVar = this.f17029a;
        if (dvVar != null) {
            dvVar.f14874c = f2;
            dvVar.f14875d.postInvalidate();
        }
    }
}
