package com.bytedance.sdk.component.adexpress.dynamic.interact.dq;

import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.SoftReference;

/* loaded from: classes.dex */
public class dq implements View.OnTouchListener {
    private static int ox = 10;

    /* renamed from: d, reason: collision with root package name */
    private float f1732d;
    private float dq;
    private com.bytedance.sdk.component.adexpress.dynamic.interact.ia p;
    private int s;
    private RectF iw = new RectF();
    private long mn = 0;
    private final int ia = 200;
    private final int kk = 3;
    private SoftReference<ViewGroup> o = new SoftReference<>(null);

    public dq(com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar, int i, final ViewGroup viewGroup) {
        this.s = ox;
        this.p = iaVar;
        if (i > 0) {
            this.s = i;
        }
        if (viewGroup != null) {
            viewGroup.post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.dq.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.o = new SoftReference(viewGroup);
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
        int action = motionEvent.getAction();
        if (action == 0) {
            this.iw = dq(this.o.get());
            this.dq = motionEvent.getRawX();
            this.f1732d = motionEvent.getRawY();
            this.mn = System.currentTimeMillis();
        } else if (action == 1) {
            RectF rectF = this.iw;
            if (rectF != null && !rectF.contains(this.dq, this.f1732d)) {
                return false;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float abs = Math.abs(rawX - this.dq);
            float abs2 = Math.abs(rawY - this.f1732d);
            int i = this.s;
            if (abs >= i && abs2 >= i) {
                com.bytedance.sdk.component.adexpress.dynamic.interact.ia iaVar2 = this.p;
                if (iaVar2 != null) {
                    iaVar2.dq();
                }
            } else if ((System.currentTimeMillis() - this.mn < 200 || (abs < 3.0f && abs2 < 3.0f)) && (iaVar = this.p) != null) {
                iaVar.dq();
            }
        }
        return true;
    }
}
