package g;

import android.graphics.Canvas;
import android.os.Build;
import android.text.Html;
import android.view.View;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class hdl extends TextView implements aeb {

    /* renamed from: a, reason: collision with root package name */
    public eji f19276a;

    /* renamed from: b, reason: collision with root package name */
    public dv f19277b;

    public float getBorderRadius() {
        return this.f19277b.f14876e;
    }

    @Override // g.aeb
    public float getRipple() {
        return this.f19277b.f14872a;
    }

    @Override // g.aeb
    public float getRubIn() {
        return this.f19277b.f14877f;
    }

    @Override // g.aeb
    public float getShine() {
        return this.f19277b.f14873b;
    }

    @Override // g.aeb
    public float getStretch() {
        return this.f19277b.f14874c;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        eji ejiVar = this.f19276a;
        if (ejiVar != null) {
            ejiVar.mn();
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        eji ejiVar = this.f19276a;
        if (ejiVar != null) {
            ejiVar.ia();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        eji ejiVar = this.f19276a;
        if (ejiVar != null) {
            ejiVar.dq(canvas);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        eji ejiVar = this.f19276a;
        if (ejiVar != null) {
            ejiVar.dq(i, i2, i3, i4);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        eji ejiVar = this.f19276a;
        if (ejiVar != null) {
            int[] dq = ejiVar.dq(i, i2);
            super.onMeasure(dq[0], dq[1]);
        } else {
            super.onMeasure(i, i2);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        eji ejiVar = this.f19276a;
        if (ejiVar != null) {
            ejiVar.d(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        eji ejiVar = this.f19276a;
        if (ejiVar != null) {
            ejiVar.dq(z);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f19277b.h(i);
    }

    public void setBorderRadius(float f2) {
        dv dvVar = this.f19277b;
        if (dvVar != null) {
            dvVar.g(f2);
        }
    }

    public void setRichText(String str) {
        setText(Build.VERSION.SDK_INT >= 24 ? Html.fromHtml(str, 0) : Html.fromHtml(str));
    }

    public void setRipple(float f2) {
        dv dvVar = this.f19277b;
        if (dvVar != null) {
            View view = dvVar.f14875d;
            dvVar.f14872a = f2;
            view.postInvalidate();
        }
    }

    public void setRubIn(float f2) {
        dv dvVar = this.f19277b;
        if (dvVar != null) {
            dvVar.f14877f = f2;
            dvVar.f14875d.postInvalidate();
        }
    }

    public void setShine(float f2) {
        dv dvVar = this.f19277b;
        if (dvVar != null) {
            View view = dvVar.f14875d;
            dvVar.f14873b = f2;
            view.postInvalidate();
        }
    }

    public void setStretch(float f2) {
        dv dvVar = this.f19277b;
        if (dvVar != null) {
            dvVar.f14874c = f2;
            dvVar.f14875d.postInvalidate();
        }
    }
}
