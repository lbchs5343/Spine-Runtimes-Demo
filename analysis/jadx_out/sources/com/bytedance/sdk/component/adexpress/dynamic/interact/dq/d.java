package com.bytedance.sdk.component.adexpress.dynamic.interact.dq;

import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.adexpress.dynamic.interact.InteractViewContainer;

/* loaded from: classes.dex */
public class d implements View.OnTouchListener {

    /* renamed from: d, reason: collision with root package name */
    private float f1731d;
    private float dq;
    private com.bytedance.sdk.component.adexpress.dynamic.interact.ia iw;
    private long ox;
    private boolean p;
    private InteractViewContainer s;

    public d(InteractViewContainer interactViewContainer, com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar) {
        this.s = interactViewContainer;
        this.iw = iaVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.ox = System.currentTimeMillis();
            this.dq = motionEvent.getX();
            this.f1731d = motionEvent.getY();
            this.s.s();
        } else if (action != 1) {
            if (action == 2) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (Math.abs(x - this.dq) >= com.bytedance.sdk.component.adexpress.p.mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), 10.0f) || Math.abs(y - this.f1731d) >= com.bytedance.sdk.component.adexpress.p.mn.dq(com.bytedance.sdk.component.adexpress.p.getContext(), 10.0f)) {
                    this.p = true;
                    this.s.iw();
                }
            }
        } else {
            if (this.p) {
                return false;
            }
            if (System.currentTimeMillis() - this.ox >= 1500) {
                com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar = this.iw;
                if (iaVar != null) {
                    iaVar.dq();
                }
            }
            this.s.iw();
        }
        return true;
    }
}
