package com.bytedance.sdk.openadsdk.core.d;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.bytedance.sdk.openadsdk.core.r.k;
import com.bytedance.sdk.openadsdk.core.r.o;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public abstract class p implements View.OnClickListener, View.OnTouchListener {

    /* renamed from: d, reason: collision with root package name */
    private static float f2796d = 0.0f;
    private static float dq = 0.0f;
    protected static int o = 8;
    private static float ox;
    private static float p;
    private static long s;
    protected o ia = new o();
    protected final com.bytedance.sdk.openadsdk.core.d.dq.p kk = new com.bytedance.sdk.openadsdk.core.d.dq.p();
    protected final Context mn;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        public double f2798d;
        public int dq;
        public double ox;
        public long p;

        public dq(int i, double d2, double d3, long j) {
            this.dq = i;
            this.f2798d = d2;
            this.ox = d3;
            this.p = j;
        }
    }

    static {
        try {
            if (ViewConfiguration.get(wp.getContext()) != null) {
                o = ViewConfiguration.get(wp.getContext()).getScaledTouchSlop();
            }
        } catch (Exception unused) {
        }
    }

    public p(Context context) {
        if (context == null) {
            this.mn = wp.getContext();
        } else {
            this.mn = context;
        }
    }

    public <T extends com.bytedance.sdk.openadsdk.core.d.dq.dq> T dq(Class<T> cls) {
        return (T) this.kk.dq(cls);
    }

    public abstract void dq(View view, o oVar);

    public void dq(k kVar) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (com.bytedance.sdk.openadsdk.core.bl.iw.dq()) {
            dq(view, this.ia);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(final View view, MotionEvent motionEvent) {
        int i;
        this.ia.ox(motionEvent.getDeviceId());
        this.ia.d(motionEvent.getToolType(0));
        this.ia.p(motionEvent.getSource());
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.ia.s((int) motionEvent.getRawX());
            this.ia.iw((int) motionEvent.getRawY());
            this.ia.dq(motionEvent.getRawX());
            this.ia.d(motionEvent.getRawY());
            this.ia.dq(System.currentTimeMillis());
            this.ia.d(motionEvent.getToolType(0));
            this.ia.ox(motionEvent.getDeviceId());
            this.ia.p(motionEvent.getSource());
            s = System.currentTimeMillis();
            this.ia.dq(true);
            com.bytedance.sdk.openadsdk.core.ir.k.dq(motionEvent);
            i = 0;
        } else if (actionMasked != 1) {
            i = 2;
            if (actionMasked == 2) {
                ox = Math.abs(motionEvent.getX() - dq) + ox;
                p = Math.abs(motionEvent.getY() - f2796d) + p;
                dq = motionEvent.getX();
                f2796d = motionEvent.getY();
                long currentTimeMillis = System.currentTimeMillis() - s;
                this.ia.ox(motionEvent.getRawX());
                this.ia.p(motionEvent.getRawY());
                if (Math.abs(this.ia.f() - this.ia.ia()) >= o || Math.abs(this.ia.fw() - this.ia.kk()) >= o) {
                    this.ia.dq(false);
                }
                if (currentTimeMillis > 200) {
                    float f2 = ox;
                    int i2 = o;
                    if (f2 > i2 || f2796d > i2) {
                        i = 1;
                    }
                }
            } else if (actionMasked != 3) {
                i = -1;
            } else {
                if (com.bytedance.sdk.component.adexpress.dynamic.d.dq.dq(view) && com.bytedance.sdk.component.adexpress.dynamic.d.dq.d(view)) {
                    view.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.d.p.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (view.isShown()) {
                                p pVar = p.this;
                                pVar.dq(view, pVar.ia);
                            }
                        }
                    });
                    return true;
                }
                i = 4;
            }
        } else {
            this.ia.ox(motionEvent.getRawX());
            this.ia.p(motionEvent.getRawY());
            if (Math.abs(this.ia.f() - this.ia.ia()) >= o || Math.abs(this.ia.fw() - this.ia.kk()) >= o) {
                this.ia.dq(false);
            }
            this.ia.d(System.currentTimeMillis());
            Context context = this.mn;
            if (context == null) {
                context = wp.getContext();
            }
            com.bytedance.sdk.openadsdk.core.d.dq.d dVar = (com.bytedance.sdk.openadsdk.core.d.dq.d) dq(com.bytedance.sdk.openadsdk.core.d.dq.d.class);
            if (dVar != null) {
                dVar.dq(this.ia);
            }
            if (com.bytedance.sdk.component.adexpress.dynamic.d.dq.dq(view)) {
                if (com.bytedance.sdk.component.adexpress.dynamic.d.dq.dq(view, this.ia.f(), this.ia.fw(), this.ia.ia(), this.ia.kk())) {
                    return false;
                }
                if (com.bytedance.sdk.component.adexpress.dynamic.d.dq.d(view)) {
                    dq(view, this.ia);
                }
                return true;
            }
            if (dVar != null) {
                Point point = new Point((int) this.ia.f(), (int) this.ia.fw());
                if (view != null && !dVar.dq(view, context) && dVar.dq((View) view.getParent(), point)) {
                    return true;
                }
            }
            i = 3;
        }
        this.ia.o().put(motionEvent.getActionMasked(), new dq(i, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
        return false;
    }

    public void ox() {
    }

    public void p() {
    }

    public void s(int i) {
    }
}
