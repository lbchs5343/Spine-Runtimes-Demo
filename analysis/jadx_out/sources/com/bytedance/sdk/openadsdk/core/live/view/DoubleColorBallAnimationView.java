package com.bytedance.sdk.openadsdk.core.live.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;

/* loaded from: classes3.dex */
public class DoubleColorBallAnimationView extends View {
    private float cd;

    /* renamed from: d, reason: collision with root package name */
    private final float f3165d;
    private final float dq;

    /* renamed from: f, reason: collision with root package name */
    private long f3166f;
    private int fw;
    private float gh;
    private float i;
    private int ia;
    private boolean ig;
    private final long iw;
    private boolean jy;
    private Paint kk;
    private int mn;
    private boolean mp;
    private float no;
    private final PorterDuffXfermode o;
    private final float ox;
    private final float p;
    private int q;
    private float r;
    private final float s;

    public DoubleColorBallAnimationView(Context context) {
        this(context, null);
    }

    public DoubleColorBallAnimationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DoubleColorBallAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.dq = 0.25f;
        this.f3165d = 0.375f;
        this.ox = 0.16f;
        this.p = 0.32f;
        this.s = 400.0f;
        this.iw = 17L;
        this.mn = -119723;
        this.ia = -14289682;
        this.o = new PorterDuffXfermode(PorterDuff.Mode.XOR);
        this.ig = false;
        this.mp = false;
        this.q = 0;
        this.jy = false;
        this.f3166f = -1L;
        this.fw = -1;
    }

    private float dq(float f2) {
        if (f2 < 0.5d) {
            return 2.0f * f2 * f2;
        }
        return ((2.0f - f2) * (f2 * 2.0f)) - 1.0f;
    }

    private Paint p() {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setStyle(Paint.Style.FILL);
        return paint;
    }

    private void s() {
        this.f3166f = -1L;
        if (this.fw <= 0) {
            setProgressBarInfo(ce.ox(getContext(), 60.0f));
        }
        int min = Math.min(getMeasuredHeight(), getMeasuredWidth());
        if (this.fw > min && min > 0) {
            setProgressBarInfo(min);
        }
        if (this.kk == null) {
            this.kk = p();
        }
        this.mp = true;
    }

    public void d() {
        s();
        this.jy = true;
        this.ig = true;
        postInvalidate();
    }

    public boolean dq() {
        return this.jy;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ox();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if ((dq() || !this.ig) && this.mp) {
            if (this.ig) {
                long nanoTime = System.nanoTime() / C.MICROS_PER_SECOND;
                if (this.f3166f < 0) {
                    this.f3166f = nanoTime;
                }
                float f2 = (nanoTime - this.f3166f) / 400.0f;
                this.no = f2;
                int i = (int) f2;
                r1 = ((this.q + i) & 1) == 1;
                this.no = f2 - i;
            }
            try {
                float dq = dq(this.no);
                int i2 = this.fw;
                int saveLayer = canvas.saveLayer(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i2, i2, this.kk, 31);
                float f3 = (this.i * dq) + this.r;
                float f4 = ((double) dq) < 0.5d ? dq * 2.0f : 2.0f - (dq * 2.0f);
                float f5 = this.gh;
                float f6 = (0.25f * f4 * f5) + f5;
                this.kk.setColor(r1 ? this.ia : this.mn);
                canvas.drawCircle(f3, this.cd, f6, this.kk);
                float f7 = this.fw - f3;
                float f8 = this.gh;
                float f9 = f8 - ((f4 * 0.375f) * f8);
                this.kk.setColor(r1 ? this.mn : this.ia);
                this.kk.setXfermode(this.o);
                canvas.drawCircle(f7, this.cd, f9, this.kk);
                this.kk.setXfermode(null);
                canvas.restoreToCount(saveLayer);
            } catch (Throwable unused) {
            }
            postInvalidateDelayed(17L);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int min = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        if (this.fw <= min || min <= 0) {
            return;
        }
        setProgressBarInfo(min);
    }

    public void ox() {
        this.jy = false;
        this.mp = false;
        this.no = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public void setCycleBias(int i) {
        this.q = i;
    }

    public void setProgress(float f2) {
        if (!this.mp) {
            s();
        }
        this.no = f2;
        this.jy = false;
        this.ig = false;
        postInvalidate();
    }

    public void setProgressBarInfo(int i) {
        if (i > 0) {
            this.fw = i;
            this.cd = i / 2.0f;
            float f2 = (i >> 1) * 0.32f;
            this.gh = f2;
            float f3 = (i * 0.16f) + f2;
            this.r = f3;
            this.i = i - (f3 * 2.0f);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            d();
        } else {
            ox();
        }
    }
}
