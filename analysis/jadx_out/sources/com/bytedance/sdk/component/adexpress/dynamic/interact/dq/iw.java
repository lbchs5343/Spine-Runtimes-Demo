package com.bytedance.sdk.component.adexpress.dynamic.interact.dq;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public class iw implements View.OnTouchListener {
    private static int ox = 10;

    /* renamed from: d, reason: collision with root package name */
    private float f1735d;
    private float dq;
    private boolean p;
    private com.bytedance.sdk.component.adexpress.dynamic.interact.ia s;

    public iw(com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar) {
        this.s = iaVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.dq = motionEvent.getX();
            this.f1735d = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (Math.abs(x - this.dq) >= ox || Math.abs(y - this.f1735d) >= ox) {
                    this.p = true;
                }
            } else if (action == 3) {
                this.p = false;
            }
        } else {
            if (this.p) {
                this.p = false;
                return false;
            }
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (Math.abs(x2 - this.dq) >= ox || Math.abs(y2 - this.f1735d) >= ox) {
                this.p = false;
            } else {
                com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar = this.s;
                if (iaVar != null) {
                    iaVar.dq();
                }
            }
        }
        return true;
    }
}
