package com.bytedance.sdk.openadsdk.core.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class mp extends Drawable {

    /* renamed from: d, reason: collision with root package name */
    private int f3704d;
    private int dq;
    private int ia;
    private int iw;
    private int kk;
    private int mn;
    private Paint no;
    private RectF o;
    private int[] ox;
    private float[] p;
    private LinearGradient s;

    public static class dq {
        private int ia;
        private int kk;
        private int[] ox;
        private float[] p;
        private LinearGradient s;
        private int dq = r.kk(wp.getContext(), "tt_ssxinmian8");

        /* renamed from: d, reason: collision with root package name */
        private int f3705d = r.kk(wp.getContext(), "tt_ssxinxian3");
        private int iw = 10;
        private int mn = 16;

        public dq() {
            this.ia = 0;
            this.kk = 0;
            this.ia = 0;
            this.kk = 0;
        }

        public dq d(int i) {
            this.f3705d = i;
            return this;
        }

        public dq dq(int i) {
            this.dq = i;
            return this;
        }

        public dq dq(int[] iArr) {
            this.ox = iArr;
            return this;
        }

        public mp dq() {
            return new mp(this.dq, this.ox, this.p, this.f3705d, this.s, this.iw, this.mn, this.ia, this.kk);
        }

        public dq ox(int i) {
            this.iw = i;
            return this;
        }

        public dq p(int i) {
            this.ia = i;
            return this;
        }

        public dq s(int i) {
            this.kk = i;
            return this;
        }
    }

    public mp(int i, int[] iArr, float[] fArr, int i2, LinearGradient linearGradient, int i3, int i4, int i5, int i6) {
        this.dq = i;
        this.ox = iArr;
        this.p = fArr;
        this.f3704d = i2;
        this.s = linearGradient;
        this.iw = i3;
        this.mn = i4;
        this.ia = i5;
        this.kk = i6;
    }

    private void dq() {
        int[] iArr;
        Paint paint = new Paint();
        this.no = paint;
        paint.setAntiAlias(true);
        this.no.setShadowLayer(this.mn, this.ia, this.kk, this.f3704d);
        if (this.o == null || (iArr = this.ox) == null || iArr.length <= 1) {
            this.no.setColor(this.dq);
            return;
        }
        float[] fArr = this.p;
        boolean z = fArr != null && fArr.length > 0 && fArr.length == iArr.length;
        Paint paint2 = this.no;
        LinearGradient linearGradient = this.s;
        if (linearGradient == null) {
            RectF rectF = this.o;
            linearGradient = new LinearGradient(rectF.left, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, rectF.right, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.ox, z ? this.p : null, Shader.TileMode.CLAMP);
        }
        paint2.setShader(linearGradient);
    }

    public static void dq(View view, dq dqVar) {
        if (view == null || dqVar == null) {
            return;
        }
        view.setLayerType(1, null);
        view.setBackground(dqVar.dq());
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.o == null) {
            Rect bounds = getBounds();
            int i = bounds.left;
            int i2 = this.mn;
            int i3 = this.ia;
            int i4 = bounds.top + i2;
            int i5 = this.kk;
            this.o = new RectF((i + i2) - i3, i4 - i5, (bounds.right - i2) - i3, (bounds.bottom - i2) - i5);
        }
        if (this.no == null) {
            dq();
        }
        RectF rectF = this.o;
        int i6 = this.iw;
        canvas.drawRoundRect(rectF, i6, i6, this.no);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Paint paint = this.no;
        if (paint != null) {
            paint.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Paint paint = this.no;
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
    }
}
