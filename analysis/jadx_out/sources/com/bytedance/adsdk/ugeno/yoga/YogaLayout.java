package com.bytedance.adsdk.ugeno.yoga;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.aau;
import g.aeb;
import g.dlv;
import g.dv;
import g.eun;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class YogaLayout extends ViewGroup implements aeb, aau {

    /* renamed from: d, reason: collision with root package name */
    private final o f688d;
    private final Map<View, o> dq;
    private eun ox;
    private dv p;

    public static class d implements mn {
        private int dq(ia iaVar) {
            if (iaVar == ia.AT_MOST) {
                return Integer.MIN_VALUE;
            }
            if (iaVar == ia.EXACTLY) {
                return C.ENCODING_PCM_32BIT;
            }
            return 0;
        }

        @Override // com.bytedance.adsdk.ugeno.yoga.mn
        public long dq(o oVar, float f2, ia iaVar, float f3, ia iaVar2) {
            View view = (View) oVar.kk();
            if (view == null || (view instanceof YogaLayout)) {
                return kk.dq(0, 0);
            }
            view.measure(View.MeasureSpec.makeMeasureSpec((int) f2, dq(iaVar)), View.MeasureSpec.makeMeasureSpec((int) f3, dq(iaVar2)));
            return kk.dq(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    public static class dq extends ViewGroup.LayoutParams {
        private float cd;

        /* renamed from: d, reason: collision with root package name */
        SparseArray<String> f689d;
        SparseArray<Float> dq;

        /* renamed from: f, reason: collision with root package name */
        private float f690f;
        private float fw;
        private float gh;
        private float ia;
        private float ig;
        private float iw;
        private float jy;
        private float kk;
        private float mn;
        private float mp;
        private float no;
        private float o;
        private float ox;
        private float p;
        private float q;
        private float s;

        public dq(int i, int i2) {
            super(i, i2);
            this.dq = new SparseArray<>();
            this.f689d = new SparseArray<>();
            if (i == -2 || i == -1 || i >= 0) {
                this.dq.put(15, Float.valueOf(i));
            }
            if (i2 == -2 || i2 == -1 || i2 >= 0) {
                this.dq.put(16, Float.valueOf(i2));
            }
        }

        public dq(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            if (layoutParams instanceof dq) {
                dq dqVar = (dq) layoutParams;
                this.dq = dqVar.dq.clone();
                this.f689d = dqVar.f689d.clone();
                return;
            }
            this.dq = new SparseArray<>();
            this.f689d = new SparseArray<>();
            if (layoutParams.width >= 0) {
                this.dq.put(15, Float.valueOf(((ViewGroup.LayoutParams) this).width));
            }
            if (layoutParams.height >= 0) {
                this.dq.put(16, Float.valueOf(((ViewGroup.LayoutParams) this).height));
            }
        }

        public void d(float f2) {
            this.ia = f2;
            this.dq.put(6, Float.valueOf(f2));
        }

        public void dq(float f2) {
            this.mn = f2;
            this.dq.put(5, Float.valueOf(f2));
        }

        public void f(float f2) {
            this.cd = f2;
            this.dq.put(27, Float.valueOf(f2));
        }

        public void fw(float f2) {
            this.gh = f2;
            this.dq.put(28, Float.valueOf(f2));
        }

        public void ia(float f2) {
            this.q = f2;
            this.dq.put(11, Float.valueOf(f2));
        }

        public void ig(float f2) {
            this.p = f2;
            this.dq.put(18, Float.valueOf(f2));
        }

        public void iw(float f2) {
            this.ig = f2;
            this.dq.put(14, Float.valueOf(f2));
        }

        public void jy(float f2) {
            this.fw = f2;
            this.dq.put(25, Float.valueOf(f2));
        }

        public void kk(float f2) {
            this.jy = f2;
            this.dq.put(12, Float.valueOf(f2));
        }

        public void mn(float f2) {
            this.mp = f2;
            this.dq.put(10, Float.valueOf(f2));
        }

        public void mp(float f2) {
            this.s = f2;
            this.dq.put(19, Float.valueOf(f2));
        }

        public void no(float f2) {
            this.ox = f2;
            this.dq.put(17, Float.valueOf(f2));
        }

        public void o(float f2) {
            this.f690f = f2;
            this.dq.put(13, Float.valueOf(f2));
        }

        public void ox(float f2) {
            this.kk = f2;
            this.dq.put(7, Float.valueOf(f2));
        }

        public void p(float f2) {
            this.o = f2;
            this.dq.put(8, Float.valueOf(f2));
        }

        public void q(float f2) {
            this.iw = f2;
            this.dq.put(20, Float.valueOf(f2));
        }

        public void s(float f2) {
            this.no = f2;
            this.dq.put(9, Float.valueOf(f2));
        }
    }

    public YogaLayout(Context context) {
        this(context, null, 0);
    }

    public YogaLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.p = new dv(this);
        o dq2 = no.dq();
        this.f688d = dq2;
        this.dq = new HashMap();
        dq2.dq(this);
        dq2.dq((mn) new d());
        dq((dq) generateDefaultLayoutParams(), dq2, this);
    }

    private void dq(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 == 1073741824) {
            this.f688d.iw(size2);
        }
        if (mode == 1073741824) {
            this.f688d.p(size);
        }
        if (mode2 == Integer.MIN_VALUE) {
            this.f688d.no(size2);
        }
        if (mode == Integer.MIN_VALUE) {
            this.f688d.o(size);
        }
        this.f688d.dq(Float.NaN, Float.NaN);
    }

    private void dq(View view, boolean z) {
        o oVar = this.dq.get(view);
        if (oVar == null) {
            return;
        }
        o d2 = oVar.d();
        int i = 0;
        while (true) {
            if (i >= d2.dq()) {
                break;
            }
            if (d2.dq(i).equals(oVar)) {
                d2.d(i);
                break;
            }
            i++;
        }
        oVar.dq((Object) null);
        this.dq.remove(view);
        if (z) {
            this.f688d.dq(Float.NaN, Float.NaN);
        }
    }

    public static void dq(dq dqVar, o oVar, View view) {
        if (view.getResources().getConfiguration().getLayoutDirection() == 1) {
            oVar.dq(ox.RTL);
        }
        Drawable background = view.getBackground();
        if (background != null) {
            if (background.getPadding(new Rect())) {
                oVar.d(p.LEFT, r0.left);
                oVar.d(p.TOP, r0.top);
                oVar.d(p.RIGHT, r0.right);
                oVar.d(p.BOTTOM, r0.bottom);
            }
        }
        for (int i = 0; i < dqVar.dq.size(); i++) {
            int keyAt = dqVar.dq.keyAt(i);
            float floatValue = dqVar.dq.valueAt(i).floatValue();
            if (keyAt == 4) {
                oVar.ox(com.bytedance.adsdk.ugeno.yoga.dq.dq(Math.round(floatValue)));
            } else if (keyAt == 0) {
                oVar.dq(com.bytedance.adsdk.ugeno.yoga.dq.dq(Math.round(floatValue)));
            } else if (keyAt == 9) {
                oVar.d(com.bytedance.adsdk.ugeno.yoga.dq.dq(Math.round(floatValue)));
            } else if (keyAt == 25) {
                oVar.ig(floatValue);
            } else if (keyAt == 8) {
                oVar.ox(floatValue);
            } else if (keyAt == 1) {
                oVar.dq(s.dq(Math.round(floatValue)));
            } else if (keyAt == 6) {
                oVar.dq(floatValue);
            } else if (keyAt == 7) {
                oVar.d(floatValue);
            } else if (keyAt == 16) {
                if (floatValue == -1.0f) {
                    oVar.mn(100.0f);
                } else if (floatValue == -2.0f) {
                    oVar.p();
                } else {
                    oVar.iw(floatValue);
                }
            } else if (keyAt == 18) {
                oVar.dq(p.LEFT, floatValue);
            } else if (keyAt == 3) {
                oVar.dq(iw.dq(Math.round(floatValue)));
            } else if (keyAt == 17) {
                oVar.dq(p.TOP, floatValue);
            } else if (keyAt == 20) {
                oVar.dq(p.RIGHT, floatValue);
            } else if (keyAt == 19) {
                oVar.dq(p.BOTTOM, floatValue);
            } else if (keyAt == 28) {
                oVar.kk(floatValue);
            } else if (keyAt == 27) {
                oVar.ia(floatValue);
            } else if (keyAt == 22) {
                oVar.d(p.LEFT, floatValue);
            } else if (keyAt == 21) {
                oVar.d(p.TOP, floatValue);
            } else if (keyAt == 24) {
                oVar.d(p.RIGHT, floatValue);
            } else if (keyAt == 23) {
                oVar.d(p.BOTTOM, floatValue);
            } else if (keyAt == 11) {
                oVar.ox(p.LEFT, floatValue);
            } else if (keyAt == 10) {
                oVar.ox(p.TOP, floatValue);
            } else if (keyAt == 13) {
                oVar.ox(p.RIGHT, floatValue);
            } else if (keyAt == 12) {
                oVar.ox(p.BOTTOM, floatValue);
            } else if (keyAt == 14) {
                oVar.dq(mp.dq(Math.round(floatValue)));
            } else if (keyAt == 15) {
                if (floatValue == -1.0f) {
                    oVar.s(100.0f);
                } else if (floatValue == -2.0f) {
                    oVar.ox();
                } else {
                    oVar.p(floatValue);
                }
            } else if (keyAt == 2) {
                oVar.dq(q.dq(Math.round(floatValue)));
            }
        }
    }

    private void dq(o oVar) {
        if (oVar.d() != null) {
            dq(oVar.d());
        } else {
            oVar.dq(Float.NaN, Float.NaN);
        }
    }

    private void dq(o oVar, float f2, float f3) {
        View view = (View) oVar.kk();
        if (view != null && view != this) {
            if (view.getVisibility() == 8) {
                return;
            }
            int round = Math.round(oVar.s() + f2);
            int round2 = Math.round(oVar.iw() + f3);
            view.measure(View.MeasureSpec.makeMeasureSpec(Math.round(oVar.mn()), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(Math.round(oVar.ia()), C.ENCODING_PCM_32BIT));
            view.layout(round, round2, view.getMeasuredWidth() + round, view.getMeasuredHeight() + round2);
        }
        int dq2 = oVar.dq();
        for (int i = 0; i < dq2; i++) {
            if (equals(view)) {
                dq(oVar.dq(i), f2, f3);
            } else if (!(view instanceof YogaLayout)) {
                dq(oVar.dq(i), oVar.s() + f2, oVar.iw() + f3);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        o dq2;
        this.f688d.dq((mn) null);
        if (view instanceof VirtualYogaLayout) {
            VirtualYogaLayout virtualYogaLayout = (VirtualYogaLayout) view;
            virtualYogaLayout.dq(this);
            o yogaNode = virtualYogaLayout.getYogaNode();
            o oVar = this.f688d;
            oVar.dq(yogaNode, oVar.dq());
            return;
        }
        super.addView(view, i, layoutParams);
        if (this.dq.containsKey(view)) {
            return;
        }
        if (view instanceof YogaLayout) {
            dq2 = ((YogaLayout) view).getYogaNode();
        } else {
            dq2 = this.dq.containsKey(view) ? this.dq.get(view) : no.dq();
            dq2.dq(view);
            dq2.dq((mn) new d());
        }
        dq((dq) view.getLayoutParams(), dq2, view);
        this.dq.put(view, dq2);
        if (view.getVisibility() == 8) {
            view.setTag(151060224, Integer.valueOf(this.f688d.dq()));
        } else {
            o oVar2 = this.f688d;
            oVar2.dq(dq2, oVar2.dq());
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof dq;
    }

    @Override // g.aau
    public void d(int i) {
        o oVar = this.f688d;
        if (oVar != null) {
            oVar.iw(i);
            requestLayout();
        }
    }

    @Override // g.aau
    public void d(View view, int i) {
        o dq2;
        if (view == null || (dq2 = dq(view)) == null) {
            return;
        }
        dq2.iw(i);
        view.requestLayout();
    }

    public o dq(View view) {
        return this.dq.get(view);
    }

    @Override // g.aau
    public void dq(int i) {
        o oVar = this.f688d;
        if (oVar != null) {
            oVar.p(i);
            requestLayout();
        }
    }

    @Override // g.aau
    public void dq(View view, int i) {
        o dq2;
        if (view == null || (dq2 = dq(view)) == null) {
            return;
        }
        dq2.p(i);
        view.requestLayout();
    }

    public void dq(View view, o oVar) {
        this.dq.put(view, oVar);
        addView(view);
    }

    public void dq(dlv dlvVar) {
        this.ox = dlvVar;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new dq(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new dq(layoutParams);
    }

    public float getBorderRadius() {
        return this.p.f14876e;
    }

    @Override // g.aeb
    public float getRipple() {
        return this.p.f14872a;
    }

    @Override // g.aeb
    public float getRubIn() {
        return this.p.f14877f;
    }

    @Override // g.aeb
    public float getShine() {
        return this.p.f14873b;
    }

    @Override // g.aeb
    public float getStretch() {
        return this.p.f14874c;
    }

    public o getYogaNode() {
        return this.f688d;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        eun eunVar = this.ox;
        if (eunVar != null) {
            eunVar.mn();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        eun eunVar = this.ox;
        if (eunVar != null) {
            eunVar.ia();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        eun eunVar = this.ox;
        if (eunVar != null) {
            eunVar.dq(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        eun eunVar = this.ox;
        if (eunVar != null) {
            eunVar.iw();
        }
        if (!(getParent() instanceof YogaLayout)) {
            dq(View.MeasureSpec.makeMeasureSpec(i3 - i, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i4 - i2, C.ENCODING_PCM_32BIT));
        }
        dq(this.f688d, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        eun eunVar2 = this.ox;
        if (eunVar2 != null) {
            eunVar2.dq(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (!(getParent() instanceof YogaLayout)) {
            dq(i, i2);
        }
        eun eunVar = this.ox;
        if (eunVar != null) {
            int[] dq2 = eunVar.dq(i, i2);
            setMeasuredDimension(dq2[0], dq2[1]);
        } else {
            setMeasuredDimension(Math.round(this.f688d.mn()), Math.round(this.f688d.ia()));
        }
        eun eunVar2 = this.ox;
        if (eunVar2 != null) {
            eunVar2.s();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        eun eunVar = this.ox;
        if (eunVar != null) {
            eunVar.d(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        eun eunVar = this.ox;
        if (eunVar != null) {
            eunVar.dq(z);
        }
    }

    @Override // g.aau
    public void ox(View view, int i) {
        p(view, i);
    }

    public void p(View view, int i) {
        int dq2;
        view.setVisibility(i);
        try {
            o oVar = this.dq.get(view);
            Object tag = view.getTag(151060224);
            if (i != 0) {
                if (i != 8 || (dq2 = this.f688d.dq(oVar)) == -1) {
                    return;
                }
                this.f688d.d(dq2);
                view.setTag(151060224, Integer.valueOf(dq2));
                dq(this.f688d);
                return;
            }
            if (tag == null || this.f688d.dq(oVar) != -1) {
                return;
            }
            int intValue = ((Integer) tag).intValue();
            if (intValue < this.f688d.dq()) {
                this.f688d.dq(this.dq.get(view), intValue);
            } else {
                this.f688d.dq(this.dq.get(view), this.f688d.dq());
            }
            dq(this.f688d);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            dq(getChildAt(i), false);
        }
        super.removeAllViews();
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            dq(getChildAt(i), true);
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        dq(view, false);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        dq(getChildAt(i), false);
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        dq(view, true);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            dq(getChildAt(i3), false);
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            dq(getChildAt(i3), true);
        }
        super.removeViewsInLayout(i, i2);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.p.h(i);
    }

    public void setBorderRadius(float f2) {
        this.p.g(f2);
    }

    public void setRipple(float f2) {
        dv dvVar = this.p;
        if (dvVar != null) {
            View view = dvVar.f14875d;
            dvVar.f14872a = f2;
            view.postInvalidate();
        }
    }

    public void setRubIn(float f2) {
        dv dvVar = this.p;
        if (dvVar != null) {
            dvVar.f14877f = f2;
            dvVar.f14875d.postInvalidate();
        }
    }

    public void setShine(float f2) {
        dv dvVar = this.p;
        if (dvVar != null) {
            View view = dvVar.f14875d;
            dvVar.f14873b = f2;
            view.postInvalidate();
        }
    }

    public void setStretch(float f2) {
        dv dvVar = this.p;
        if (dvVar != null) {
            dvVar.f14874c = f2;
            dvVar.f14875d.postInvalidate();
        }
    }
}
