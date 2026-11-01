package com.bytedance.sdk.component.widget.recycler;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class iw extends RecyclerView.gh {
    private final float iw;
    protected PointF ox;
    protected final LinearInterpolator dq = new LinearInterpolator();

    /* renamed from: d, reason: collision with root package name */
    protected final DecelerateInterpolator f2275d = new DecelerateInterpolator();
    protected int p = 0;
    protected int s = 0;

    public iw(Context context) {
        this.iw = dq(context.getResources().getDisplayMetrics());
    }

    private int d(int i, int i2) {
        int i3 = i - i2;
        if (i * i3 <= 0) {
            return 0;
        }
        return i3;
    }

    public int d() {
        PointF pointF = this.ox;
        if (pointF == null) {
            return 0;
        }
        float f2 = pointF.x;
        if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 1 : -1;
        }
        return 0;
    }

    public int d(int i) {
        return (int) Math.ceil(Math.abs(i) * this.iw);
    }

    public int d(View view, int i) {
        RecyclerView.kk p = p();
        if (p == null || !p.ox()) {
            return 0;
        }
        RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
        return dq(p.mn(view) - ((ViewGroup.MarginLayoutParams) oVar).leftMargin, p.kk(view) + ((ViewGroup.MarginLayoutParams) oVar).rightMargin, p.kx(), p.wp() - p.ji(), i);
    }

    public float dq(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int dq(int i) {
        return (int) Math.ceil(d(i) / 0.3356d);
    }

    public int dq(int i, int i2, int i3, int i4, int i5) {
        if (i5 == -1) {
            return i3 - i;
        }
        if (i5 != 0) {
            if (i5 == 1) {
                return i4 - i2;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i6 = i3 - i;
        if (i6 > 0) {
            return i6;
        }
        int i7 = i4 - i2;
        if (i7 < 0) {
            return i7;
        }
        return 0;
    }

    public int dq(View view, int i) {
        RecyclerView.kk p = p();
        if (p == null || !p.p()) {
            return 0;
        }
        RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
        return dq(p.ia(view) - ((ViewGroup.MarginLayoutParams) oVar).topMargin, p.o(view) + ((ViewGroup.MarginLayoutParams) oVar).bottomMargin, p.h(), p.e() - p.bl(), i);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.gh
    public void dq() {
        this.s = 0;
        this.p = 0;
        this.ox = null;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.gh
    public void dq(int i, int i2, RecyclerView.r rVar, RecyclerView.gh.dq dqVar) {
        if (kk() == 0) {
            s();
            return;
        }
        this.p = d(this.p, i);
        int d2 = d(this.s, i2);
        this.s = d2;
        if (this.p == 0 && d2 == 0) {
            dq(dqVar);
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.gh
    public void dq(View view, RecyclerView.r rVar, RecyclerView.gh.dq dqVar) {
        int d2 = d(view, d());
        int dq = dq(view, ox());
        int dq2 = dq((int) Math.sqrt((dq * dq) + (d2 * d2)));
        if (dq2 > 0) {
            dqVar.update(-d2, -dq, dq2, this.f2275d);
        }
    }

    public void dq(RecyclerView.gh.dq dqVar) {
        PointF p = p(ia());
        if (p == null || (p.x == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && p.y == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) {
            dqVar.dq(ia());
            s();
            return;
        }
        dq(p);
        this.ox = p;
        this.p = (int) (p.x * 10000.0f);
        this.s = (int) (p.y * 10000.0f);
        dqVar.update((int) (this.p * 1.2f), (int) (this.s * 1.2f), (int) (d(10000) * 1.2f), this.dq);
    }

    public int ox() {
        PointF pointF = this.ox;
        if (pointF == null) {
            return 0;
        }
        float f2 = pointF.y;
        if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? 1 : -1;
        }
        return 0;
    }
}
