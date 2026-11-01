package com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;

/* loaded from: classes3.dex */
public class LoadingMoreView extends View {
    private static final String dq = "LoadingMoreView";

    /* renamed from: d, reason: collision with root package name */
    private final int f3248d;
    private int ia;
    private float ig;
    private int iw;
    private float kk;
    private int mn;
    private float no;
    private int o;
    private Paint ox;
    private Path p;
    private int s;

    public LoadingMoreView(Context context) {
        this(context, null);
    }

    public LoadingMoreView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LoadingMoreView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3248d = -1;
        this.s = -1;
        this.iw = -1;
        this.mn = -1;
        this.ia = 1;
        this.kk = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.no = 0.8f;
        this.ig = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        Paint paint = new Paint();
        this.ox = paint;
        paint.setColor(-3487030);
        this.ox.setStyle(Paint.Style.STROKE);
        this.ox.setAntiAlias(true);
        this.ox.setStrokeWidth(5.0f);
        this.ox.setStrokeCap(Paint.Cap.ROUND);
        this.p = new Path();
        this.o = context.getResources().getDisplayMetrics().widthPixels;
        this.ig = ce.ox(context, 2.0f);
    }

    public void dq() {
        this.kk = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.p.reset();
        float f2 = this.kk;
        float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.p.moveTo(this.s >> 1, this.ig);
            float f4 = (this.s >> 1) - (this.mn * this.kk);
            if (f4 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                f3 = f4;
            }
            this.p.lineTo(f3, this.iw >> 1);
            this.p.lineTo(this.s >> 1, this.iw - this.ig);
            canvas.drawPath(this.p, this.ox);
        } else {
            this.p.moveTo(this.s * 0.5f, this.ig);
            this.p.lineTo(this.s * 0.5f, this.iw - this.ig);
            canvas.drawPath(this.p, this.ox);
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.s = View.MeasureSpec.getSize(i);
        this.iw = View.MeasureSpec.getSize(i2);
        this.mn = this.s >> this.ia;
    }

    public void setMoveSpace(float f2) {
        float abs = (Math.abs(f2) * 2.0f) / this.o;
        this.kk = abs;
        float f3 = this.no;
        if (abs >= f3) {
            this.kk = f3;
        }
        invalidate();
    }
}
