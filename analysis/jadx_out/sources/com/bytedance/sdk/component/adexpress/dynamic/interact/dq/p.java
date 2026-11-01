package com.bytedance.sdk.component.adexpress.dynamic.interact.dq;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class p implements View.OnTouchListener {

    /* renamed from: d, reason: collision with root package name */
    private float f1739d;
    private float dq;
    private boolean ia;
    private float iw;
    private com.bytedance.sdk.component.adexpress.dynamic.interact.ia kk;
    private float mn;
    private boolean no;
    private int o;
    private float ox;
    private float p;
    private boolean s = true;

    public p(com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar, int i, boolean z) {
        this.kk = iaVar;
        this.o = i;
        this.no = z;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar;
        com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar2;
        com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar3;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.dq = motionEvent.getX();
            this.f1739d = motionEvent.getY();
            this.iw = motionEvent.getY();
            this.s = true;
        } else if (action != 1) {
            if (action == 2) {
                float y = motionEvent.getY();
                this.mn = y;
                if (Math.abs(y - this.iw) > 10.0f) {
                    this.ia = true;
                }
                this.p = motionEvent.getX();
                this.ox = motionEvent.getY();
                if (Math.abs(this.p - this.dq) > 8.0f || Math.abs(this.ox - this.f1739d) > 8.0f) {
                    this.s = false;
                }
            }
        } else {
            if (!this.ia && !this.s) {
                return false;
            }
            if (this.no || (iaVar3 = this.kk) == null) {
                int d2 = com.bytedance.sdk.component.adexpress.p.mn.d(com.bytedance.sdk.component.adexpress.p.getContext(), Math.abs(this.mn - this.iw));
                if (this.mn - this.iw < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && d2 > this.o && (iaVar2 = this.kk) != null) {
                    iaVar2.dq();
                } else if (this.s && (iaVar = this.kk) != null) {
                    iaVar.dq();
                }
            } else {
                iaVar3.dq();
            }
        }
        return true;
    }
}
