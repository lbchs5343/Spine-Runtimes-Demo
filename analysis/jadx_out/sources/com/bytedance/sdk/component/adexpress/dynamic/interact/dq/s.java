package com.bytedance.sdk.component.adexpress.dynamic.interact.dq;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class s implements View.OnTouchListener {

    /* renamed from: d, reason: collision with root package name */
    private float f1740d;
    private float dq;
    private boolean ox;
    private com.bytedance.sdk.component.adexpress.dynamic.interact.ia p;
    private int s;

    public s(com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar, int i) {
        this.p = iaVar;
        this.s = i;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.dq = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float y = motionEvent.getY();
                this.f1740d = y;
                if (Math.abs(y - this.dq) > 10.0f) {
                    this.ox = true;
                }
            }
        } else {
            if (!this.ox) {
                return false;
            }
            int d2 = com.bytedance.sdk.component.adexpress.p.mn.d(com.bytedance.sdk.component.adexpress.p.getContext(), Math.abs(this.f1740d - this.dq));
            if (this.f1740d - this.dq < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && d2 > this.s && (iaVar = this.p) != null) {
                iaVar.dq();
                this.dq = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                this.f1740d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                this.ox = false;
            }
        }
        return true;
    }
}
