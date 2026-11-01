package com.bytedance.sdk.openadsdk.widget;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import com.bytedance.sdk.component.utils.ig;

/* loaded from: classes3.dex */
public class TTScrollView extends ScrollView {

    /* renamed from: d, reason: collision with root package name */
    private boolean f3912d;
    private int dq;
    private dq ox;
    private boolean p;

    public interface dq {
        void dq(boolean z);
    }

    public TTScrollView(Context context) {
        super(context);
        this.f3912d = false;
        this.p = false;
    }

    public boolean dq() {
        return this.p;
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f3912d) {
            return;
        }
        try {
            this.f3912d = true;
            View childAt = ((ViewGroup) getChildAt(0)).getChildAt(1);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.height = getHeight();
            childAt.setLayoutParams(layoutParams);
        } catch (Throwable th) {
            ig.p("TTScrollView", "onLayout error" + th.toString());
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.onOverScrolled(i, i2, z, z2);
    }

    @Override // android.widget.ScrollView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.dq = getChildAt(0).getMeasuredHeight();
        post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.widget.TTScrollView.3
            @Override // java.lang.Runnable
            public void run() {
                TTScrollView tTScrollView = TTScrollView.this;
                tTScrollView.smoothScrollTo(0, tTScrollView.dq);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0037, code lost:
    
        if (getScrollY() == 0) goto L15;
     */
    @Override // android.widget.ScrollView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        dq dqVar;
        boolean z = true;
        if (motionEvent.getAction() == 1 && getScrollY() < this.dq) {
            if (getScrollY() > this.dq / 2) {
                post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.widget.TTScrollView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TTScrollView tTScrollView = TTScrollView.this;
                        tTScrollView.smoothScrollTo(0, tTScrollView.dq);
                    }
                });
            } else {
                if (getScrollY() > 0) {
                    post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.widget.TTScrollView.2
                        @Override // java.lang.Runnable
                        public void run() {
                            TTScrollView.this.smoothScrollTo(0, 0);
                        }
                    });
                }
                dqVar = this.ox;
                if (dqVar != null && z != this.p) {
                    dqVar.dq(z);
                }
                this.p = z;
            }
            z = false;
            dqVar = this.ox;
            if (dqVar != null) {
                dqVar.dq(z);
            }
            this.p = z;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListener(dq dqVar) {
        this.ox = dqVar;
    }
}
