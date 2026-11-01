package g;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;

/* loaded from: classes.dex */
public final class bif extends View {

    /* renamed from: a, reason: collision with root package name */
    public Paint f11634a;

    /* renamed from: b, reason: collision with root package name */
    public float f11635b;

    /* renamed from: c, reason: collision with root package name */
    public int f11636c;

    /* renamed from: d, reason: collision with root package name */
    public RectF f11637d;

    /* renamed from: e, reason: collision with root package name */
    public Paint f11638e;

    /* renamed from: f, reason: collision with root package name */
    public um f11639f;

    /* renamed from: g, reason: collision with root package name */
    public int f11640g;
    public int h;
    public Paint i;

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        um umVar = this.f11639f;
        if (umVar != null) {
            umVar.mn();
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        um umVar = this.f11639f;
        if (umVar != null) {
            umVar.ia();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        setBackgroundColor(0);
        RectF rectF = this.f11637d;
        float f2 = this.f11635b;
        canvas.drawRoundRect(rectF, f2, f2, this.i);
        RectF rectF2 = this.f11637d;
        float f3 = this.f11635b;
        canvas.drawRoundRect(rectF2, f3, f3, this.f11638e);
        int i = this.h;
        int i2 = this.f11636c;
        canvas.drawLine(i * 0.3f, i2 * 0.3f, i * 0.7f, i2 * 0.7f, this.f11634a);
        int i3 = this.h;
        int i4 = this.f11636c;
        canvas.drawLine(i3 * 0.7f, i4 * 0.3f, i3 * 0.3f, i4 * 0.7f, this.f11634a);
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        um umVar = this.f11639f;
        if (umVar != null) {
            umVar.dq(i, i2, i3, i4);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        um umVar = this.f11639f;
        if (umVar != null) {
            int[] dq = umVar.dq(i, i2);
            super.onMeasure(dq[0], dq[1]);
        } else {
            super.onMeasure(i, i2);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.h = i;
        this.f11636c = i2;
        float f2 = this.f11640g;
        this.f11637d = new RectF(f2, f2, this.h - r1, this.f11636c - r1);
        um umVar = this.f11639f;
        if (umVar != null) {
            umVar.d(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        um umVar = this.f11639f;
        if (umVar != null) {
            umVar.dq(z);
        }
    }

    public void setBgColor(int i) {
        this.i.setStyle(Paint.Style.FILL);
        this.i.setColor(i);
    }

    public void setDislikeColor(int i) {
        this.f11634a.setColor(i);
    }

    public void setDislikeWidth(int i) {
        this.f11634a.setStrokeWidth(i);
    }

    public void setRadius(float f2) {
        this.f11635b = f2;
    }

    public void setStrokeColor(int i) {
        this.f11638e.setStyle(Paint.Style.STROKE);
        this.f11638e.setColor(i);
    }

    public void setStrokeWidth(int i) {
        this.f11638e.setStrokeWidth(i);
        this.f11640g = i;
    }
}
