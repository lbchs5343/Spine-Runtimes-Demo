package com.bytedance.sdk.component.adexpress.dynamic.interact.dq;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class ia implements View.OnTouchListener {

    /* renamed from: d, reason: collision with root package name */
    private final boolean f1734d;
    private final com.bytedance.sdk.component.adexpress.dynamic.interact.ia dq;
    private float iw;
    private float mn;
    private final int ox = 10;
    private float p;
    private float s;

    public ia(com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar, boolean z) {
        this.dq = iaVar;
        this.f1734d = z;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar;
        com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.p = motionEvent.getX();
            this.s = motionEvent.getY();
            new StringBuilder(", mStartY: ").append(this.s);
        } else if (action == 1) {
            this.iw = motionEvent.getX();
            this.mn = motionEvent.getY();
            new StringBuilder(", mEndY: ").append(this.mn);
            if (this.f1734d || (iaVar2 = this.dq) == null) {
                float f2 = this.iw - this.p;
                float f3 = this.mn - this.s;
                if (com.bytedance.sdk.component.adexpress.p.mn.d(com.bytedance.sdk.component.adexpress.p.getContext(), Math.abs((float) Math.sqrt((f3 * f3) + (f2 * f2)))) > 10.0f && (iaVar = this.dq) != null) {
                    iaVar.dq();
                }
            } else {
                iaVar2.dq();
            }
        }
        return true;
    }
}
