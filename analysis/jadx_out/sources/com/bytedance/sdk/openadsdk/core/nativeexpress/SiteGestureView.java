package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.k;
import com.bytedance.sdk.openadsdk.core.r.v;

/* loaded from: classes3.dex */
public class SiteGestureView extends View {

    /* renamed from: d, reason: collision with root package name */
    private v f3214d;
    private r dq;
    private float iw;
    private long mn;
    private float ox;
    private float p;
    private float s;

    public SiteGestureView(Context context, v vVar, r rVar) {
        super(context);
        this.f3214d = vVar;
        this.dq = rVar;
        setTag(2097610717, "click");
    }

    private void d(int i, MotionEvent motionEvent) {
        int[] dq = ce.dq(this);
        com.bytedance.sdk.openadsdk.core.r.k dq2 = new k.dq().dq("express_gesture_view").p(this.s).ox(this.iw).d(motionEvent.getRawX()).dq(motionEvent.getRawY()).d(this.mn).ox(getWidth()).p(getHeight()).dq(dq == null ? 0 : dq[0]).d(dq != null ? dq[1] : 0).dq(true).dq(System.currentTimeMillis()).dq();
        this.f3214d.dq(i);
        this.dq.dq(this, 1, dq2, this.f3214d);
    }

    private boolean dq(int i, MotionEvent motionEvent) {
        if (this.f3214d.dq() == 1 && this.dq.dq()) {
            com.bytedance.sdk.component.utils.ig.dq("xdy", i + " ad");
            this.dq.dq(motionEvent);
            return false;
        }
        com.bytedance.sdk.component.utils.ig.dq("xdy", i + " site");
        d(i, motionEvent);
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.ox = ce.p(getContext(), motionEvent.getX());
            this.p = ce.p(getContext(), motionEvent.getY());
            this.s = motionEvent.getRawX();
            this.iw = motionEvent.getRawY();
            this.mn = System.currentTimeMillis();
            this.dq.dq(motionEvent);
            if (this.f3214d.d() == -1) {
                com.bytedance.sdk.component.utils.ig.dq("xdy", "nt ad");
                return false;
            }
            if (!this.dq.ox()) {
                com.bytedance.sdk.component.utils.ig.dq("xdy", "un ad");
                return false;
            }
        } else {
            if (action == 1) {
                this.dq.d();
                float p = ce.p(getContext(), motionEvent.getX());
                float p2 = ce.p(getContext(), motionEvent.getY());
                if (this.f3214d.ox() == 0.0d) {
                    com.bytedance.sdk.component.utils.ig.dq("xdy", "nh g");
                    d(-1, motionEvent);
                    return true;
                }
                float f2 = p - this.ox;
                float f3 = p2 - this.p;
                float abs = Math.abs(f2);
                float abs2 = Math.abs(f3);
                if (abs <= 3.0f && abs2 <= 3.0f) {
                    com.bytedance.sdk.component.utils.ig.dq("xdy", "c ad");
                    this.dq.dq(motionEvent);
                    return true;
                }
                double ox = this.f3214d.ox();
                int p3 = this.f3214d.p();
                if (abs > abs2) {
                    if (abs > ox) {
                        long j = p3;
                        if (com.bytedance.sdk.openadsdk.core.cd.d.dq(j, 2L) && f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            return dq(2, motionEvent);
                        }
                        if (com.bytedance.sdk.openadsdk.core.cd.d.dq(j, 4L) && f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            return dq(4, motionEvent);
                        }
                    }
                } else if (abs2 > ox) {
                    long j2 = p3;
                    if (com.bytedance.sdk.openadsdk.core.cd.d.dq(j2, 8L) && f3 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        return dq(8, motionEvent);
                    }
                    if (com.bytedance.sdk.openadsdk.core.cd.d.dq(j2, 16L) && f3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        return dq(16, motionEvent);
                    }
                }
                return false;
            }
            if (action == 3) {
                com.bytedance.sdk.component.utils.ig.dq("xdy", "gesture cancel");
            }
        }
        return true;
    }
}
