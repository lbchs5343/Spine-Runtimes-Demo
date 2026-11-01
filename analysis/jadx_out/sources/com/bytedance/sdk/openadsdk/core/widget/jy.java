package com.bytedance.sdk.openadsdk.core.widget;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class jy {
    private final dq dq;
    private int iw;
    private int mn;
    private boolean no;
    private float p;
    private float s;

    /* renamed from: d, reason: collision with root package name */
    private boolean f3699d = false;
    private boolean ox = false;
    private boolean ia = true;
    private boolean kk = false;
    private final View.OnTouchListener o = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.jy.1
        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (jy.this.dq.jy()) {
                return jy.this.f3699d || !jy.this.ox;
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action == 0) {
                jy jyVar = jy.this;
                jyVar.no = jyVar.dq(motionEvent);
                jy.this.p = x;
                jy.this.s = y;
                jy.this.iw = (int) x;
                jy.this.mn = (int) y;
                jy.this.ia = true;
                if (jy.this.dq != null && jy.this.ox && !jy.this.f3699d) {
                    jy.this.dq.dq(view, true);
                }
            } else if (action == 1) {
                if (Math.abs(x - jy.this.iw) > 20.0f || Math.abs(y - jy.this.mn) > 20.0f) {
                    jy.this.ia = false;
                }
                if (!jy.this.f3699d) {
                    jy.this.ia = true;
                }
                jy.this.kk = false;
                jy.this.p = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                jy.this.s = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                jy.this.iw = 0;
                if (jy.this.dq != null) {
                    jy.this.dq.dq(view, jy.this.ia);
                }
                jy.this.no = false;
            } else if (action != 2) {
                if (action == 3) {
                    jy.this.no = false;
                }
            } else if (jy.this.f3699d && !jy.this.no) {
                float f2 = x - jy.this.p;
                float f3 = y - jy.this.s;
                float abs = Math.abs(f2);
                float abs2 = Math.abs(f3);
                if (!jy.this.kk) {
                    if (abs <= 20.0f && abs2 <= 20.0f) {
                        return true;
                    }
                    jy.this.kk = true;
                }
                if (jy.this.dq != null) {
                    jy.this.dq.q();
                }
                jy.this.p = x;
                jy.this.s = y;
            }
            return jy.this.f3699d || !jy.this.ox;
        }
    };

    public interface dq {
        void dq(View view, boolean z);

        boolean jy();

        void q();
    }

    public jy(dq dqVar) {
        this.dq = dqVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 0) {
            return false;
        }
        int p = ce.p(wp.getContext().getApplicationContext());
        int s = ce.s(wp.getContext().getApplicationContext());
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        float f2 = p;
        if (rawX <= f2 * 0.01f || rawX >= f2 * 0.99f) {
            return true;
        }
        float f3 = s;
        return rawY <= 0.01f * f3 || rawY >= f3 * 0.99f;
    }

    public void dq(View view) {
        if (view != null) {
            view.setOnTouchListener(this.o);
        }
    }

    public void dq(boolean z) {
        this.ox = z;
    }
}
