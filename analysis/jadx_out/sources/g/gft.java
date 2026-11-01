package g;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.view.View;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public class gft extends View {

    /* renamed from: a, reason: collision with root package name */
    public float f18046a;

    /* renamed from: b, reason: collision with root package name */
    public float f18047b;

    /* renamed from: c, reason: collision with root package name */
    public Paint f18048c;

    /* renamed from: d, reason: collision with root package name */
    public Paint f18049d;

    /* renamed from: e, reason: collision with root package name */
    public float f18050e;

    /* renamed from: f, reason: collision with root package name */
    public Paint f18051f;

    /* renamed from: g, reason: collision with root package name */
    public float f18052g;
    public Paint h;
    public float i;

    public final void j() {
        this.f18052g = getResources().getDisplayMetrics().density * 2.0f;
        Paint paint = new Paint(1);
        this.f18048c = paint;
        paint.setColor(Integer.MIN_VALUE);
        this.f18048c.setStrokeWidth(this.f18052g);
        this.f18048c.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f18048c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DARKEN));
        Paint paint2 = new Paint(1);
        this.h = paint2;
        paint2.setColor(-2130706433);
        this.h.setStrokeWidth(this.f18052g);
        Paint paint3 = this.h;
        Paint.Style style = Paint.Style.STROKE;
        paint3.setStyle(style);
        this.h.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.XOR));
        Paint paint4 = new Paint(1);
        this.f18049d = paint4;
        paint4.setColor(0);
        this.f18049d.setStrokeWidth(this.f18052g);
        this.f18049d.setStyle(Paint.Style.FILL);
        this.f18049d.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f18051f = new Paint();
        Paint paint5 = new Paint(1);
        this.f18051f = paint5;
        paint5.setColor(1358954495);
        this.f18051f.setStrokeWidth(this.f18052g);
        this.f18051f.setStyle(style);
        this.f18046a = (getResources().getInteger(R.integer.strawCenterWidth) / 2.0f) + this.f18052g;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.drawCircle(this.f18050e, this.i, this.f18047b, this.f18048c);
        canvas.drawCircle(this.f18050e, this.i, this.f18047b, this.h);
        canvas.drawCircle(this.f18050e, this.i, this.f18046a, this.f18049d);
        canvas.drawCircle(this.f18050e, this.i, this.f18046a, this.f18051f);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f18047b = (Math.min(i, i2) / 2.0f) - this.f18052g;
        this.f18050e = i / 2.0f;
        this.i = i2 / 2.0f;
    }
}
