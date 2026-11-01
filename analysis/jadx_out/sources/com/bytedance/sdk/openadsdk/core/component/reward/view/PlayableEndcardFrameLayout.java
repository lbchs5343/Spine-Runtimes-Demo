package com.bytedance.sdk.openadsdk.core.component.reward.view;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class PlayableEndcardFrameLayout extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private int f2665d;
    private dq dq;

    public interface dq {
        void dq();
    }

    public PlayableEndcardFrameLayout(Context context) {
        super(context);
    }

    private void dq() {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int y = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 2 && Math.abs(this.f2665d - y) > 100) {
                dq();
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        this.f2665d = y;
        return super.dispatchTouchEvent(motionEvent);
    }

    public void dq(dq dqVar) {
        this.dq = dqVar;
    }
}
