package com.bytedance.sdk.openadsdk.core.ugeno.o;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;

/* loaded from: classes3.dex */
public class ox implements View.OnTouchListener {

    /* renamed from: d, reason: collision with root package name */
    private float f3608d;
    private float dq;
    private Context iw;
    private boolean ox;
    private dq p;
    private int s;

    public interface dq {
        void d();

        void dq();
    }

    public ox(Context context, dq dqVar, int i) {
        this.iw = context;
        this.s = i;
        this.p = dqVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.dq = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float y = motionEvent.getY();
                this.f3608d = y;
                if (Math.abs(y - this.dq) > 10.0f) {
                    this.ox = true;
                }
            }
        } else {
            if (!this.ox) {
                dq dqVar = this.p;
                if (dqVar != null) {
                    dqVar.d();
                }
                return true;
            }
            int p = ce.p(this.iw, Math.abs(this.f3608d - this.dq));
            if (this.f3608d - this.dq >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || p <= this.s) {
                dq dqVar2 = this.p;
                if (dqVar2 != null) {
                    dqVar2.d();
                }
            } else {
                dq dqVar3 = this.p;
                if (dqVar3 != null) {
                    dqVar3.dq();
                }
            }
        }
        return true;
    }
}
