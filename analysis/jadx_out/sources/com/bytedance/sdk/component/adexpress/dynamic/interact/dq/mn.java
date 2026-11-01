package com.bytedance.sdk.component.adexpress.dynamic.interact.dq;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.SoftReference;

/* loaded from: classes.dex */
public class mn implements View.OnTouchListener {
    private static int ox = 10;

    /* renamed from: d, reason: collision with root package name */
    private float f1736d;
    private float dq;
    private com.bytedance.sdk.component.adexpress.dynamic.interact.ia p;
    private int s;
    private RectF iw = new RectF();
    private long mn = 0;
    private final int ia = 200;
    private final int kk = 3;
    private SoftReference<View> o = new SoftReference<>(null);

    public mn(com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar, int i, final ViewGroup viewGroup) {
        this.s = ox;
        this.p = iaVar;
        if (i > 0) {
            this.s = i;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.dq.mn.1
                @Override // java.lang.Runnable
                public void run() {
                    View findViewById = viewGroup.findViewById(2097610746);
                    mn.this.o = new SoftReference(findViewById);
                }
            });
        }
    }

    private RectF dq(View view) {
        if (view == null) {
            return new RectF();
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new RectF(iArr[0], iArr[1], view.getWidth() + r2, view.getHeight() + iArr[1]);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar;
        com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar2;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.iw = dq(this.o.get());
            this.dq = motionEvent.getRawX();
            this.f1736d = motionEvent.getRawY();
            this.mn = System.currentTimeMillis();
        } else if (action == 1) {
            RectF rectF = this.iw;
            if (rectF != null && !rectF.contains(this.dq, this.f1736d)) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float abs = Math.abs(rawX - this.dq);
            float abs2 = Math.abs(rawY - this.f1736d);
            int d2 = com.bytedance.sdk.component.adexpress.p.mn.d(com.bytedance.sdk.component.adexpress.p.getContext(), Math.abs(rawX - this.dq));
            int i = ox;
            if (abs < i || abs2 < i) {
                if ((System.currentTimeMillis() - this.mn < 200 || (abs < 3.0f && abs2 < 3.0f)) && (iaVar = this.p) != null) {
                    iaVar.dq();
                }
            } else if (rawX > this.dq && d2 > this.s && (iaVar2 = this.p) != null) {
                iaVar2.dq();
            }
        }
        return true;
    }
}
