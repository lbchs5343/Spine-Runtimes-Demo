package com.bytedance.sdk.component.adexpress.dynamic.interact.dq;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class ox implements View.OnTouchListener {

    /* renamed from: d, reason: collision with root package name */
    private float f1738d;
    private float dq;
    private boolean ia;
    private com.bytedance.sdk.component.adexpress.dynamic.interact.ia iw;
    private boolean kk;
    private int mn;
    private float ox;
    private float p;
    private boolean s;

    public ox(com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar) {
        this(iaVar, 5);
    }

    public ox(com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar, int i) {
        this.mn = 5;
        this.ia = true;
        this.iw = iaVar;
        if (i > 0) {
            this.mn = i;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar;
        com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar2;
        com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar3;
        if (this.kk) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.dq = motionEvent.getX();
            this.f1738d = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                this.p = motionEvent.getX();
                this.ox = motionEvent.getY();
                if (Math.abs(this.p - this.dq) > 10.0f) {
                    this.s = true;
                }
                if (Math.abs(this.p - this.dq) > 8.0f || Math.abs(this.ox - this.f1738d) > 8.0f) {
                    this.ia = false;
                }
                int d2 = com.bytedance.sdk.component.adexpress.p.mn.d(com.bytedance.sdk.component.adexpress.p.getContext(), Math.abs(this.p - this.dq));
                if (this.p > this.dq && d2 > this.mn && (iaVar3 = this.iw) != null) {
                    iaVar3.dq();
                    this.kk = true;
                }
            }
        } else {
            if (!this.s && !this.ia) {
                return false;
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int d3 = com.bytedance.sdk.component.adexpress.p.mn.d(com.bytedance.sdk.component.adexpress.p.getContext(), Math.abs(this.p - this.dq));
            if (this.p > this.dq && d3 > this.mn && (iaVar2 = this.iw) != null) {
                iaVar2.dq();
                this.kk = true;
            }
            float abs = Math.abs(x - this.dq);
            float abs2 = Math.abs(y - this.f1738d);
            if ((abs < 8.0f || abs2 < 8.0f) && (iaVar = this.iw) != null) {
                iaVar.d();
                this.kk = true;
            }
        }
        return true;
    }
}
