package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.view.View;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FlowLightView extends View {

    /* renamed from: d, reason: collision with root package name */
    Rect f1804d;
    Rect dq;
    private int ia;
    private Xfermode ig;
    private int iw;
    private final List<dq> jy;
    private int[] kk;
    private int mn;
    private PorterDuff.Mode mp;
    private Paint no;
    private Bitmap o;
    private int ox;
    private int p;
    private LinearGradient q;
    private int s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private int f1805d = 0;
        private final int dq;

        public dq(int i) {
            this.dq = i;
        }

        public void dq() {
            this.f1805d += this.dq;
        }
    }

    public FlowLightView(Context context) {
        super(context);
        this.mp = PorterDuff.Mode.DST_IN;
        this.jy = new ArrayList();
        dq();
    }

    private void dq() {
        this.ox = r.s(getContext(), "tt_splash_unlock_image_arrow");
        this.p = Color.parseColor("#00ffffff");
        this.s = Color.parseColor("#ffffffff");
        int parseColor = Color.parseColor("#00ffffff");
        this.iw = parseColor;
        this.mn = 10;
        this.ia = 40;
        this.kk = new int[]{this.p, this.s, parseColor};
        setLayerType(1, null);
        this.no = new Paint(1);
        this.o = BitmapFactory.decodeResource(getResources(), this.ox);
        this.ig = new PorterDuffXfermode(this.mp);
    }

    public void dq(int i) {
        this.jy.add(new dq(i));
        postInvalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawBitmap(this.o, this.dq, this.f1804d, this.no);
        canvas.save();
        Iterator<dq> it = this.jy.iterator();
        while (it.hasNext()) {
            dq next = it.next();
            this.q = new LinearGradient(next.f1805d, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, next.f1805d + this.ia, this.mn, this.kk, (float[]) null, Shader.TileMode.CLAMP);
            this.no.setColor(-1);
            this.no.setShader(this.q);
            Canvas canvas2 = canvas;
            canvas2.drawRect(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, getWidth(), getHeight(), this.no);
            this.no.setShader(null);
            next.dq();
            if (next.f1805d > getWidth()) {
                it.remove();
            }
            canvas = canvas2;
        }
        Canvas canvas3 = canvas;
        this.no.setXfermode(this.ig);
        canvas3.drawBitmap(this.o, this.dq, this.f1804d, this.no);
        this.no.setXfermode(null);
        canvas3.restore();
        invalidate();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.o == null) {
            return;
        }
        this.dq = new Rect(0, 0, this.o.getWidth(), this.o.getHeight());
        this.f1804d = new Rect(0, 0, getWidth(), getHeight());
    }
}
