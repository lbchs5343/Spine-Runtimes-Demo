package com.bytedance.sdk.openadsdk.widget;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.ScrollView;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public class SSWebViewVideoPage extends SSWebView {

    /* renamed from: d, reason: collision with root package name */
    private float f3904d;
    private boolean dq;
    private boolean ox;
    private ViewParent p;

    public SSWebViewVideoPage(Context context) {
        super(context);
        this.dq = true;
        this.f3904d = -1.0f;
        this.ox = false;
    }

    public void d(boolean z) {
        if (((ScrollView) this.p).getScrollY() == 0) {
            if (z) {
                ig();
                return;
            } else {
                mp();
                return;
            }
        }
        if (!this.dq) {
            ig();
        } else if (z) {
            mp();
        } else {
            ig();
        }
    }

    public void ig() {
        if (this.ox) {
            return;
        }
        this.p.requestDisallowInterceptTouchEvent(true);
        this.ox = true;
    }

    public void mp() {
        if (this.ox) {
            return;
        }
        this.p.requestDisallowInterceptTouchEvent(false);
        this.ox = true;
    }

    @Override // android.view.View
    public void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.onOverScrolled(i, i2, z, z2);
        if (i2 == 0 && z2) {
            this.dq = true;
        } else {
            this.dq = false;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.p == null) {
            this.p = dq((View) this);
        }
        if (motionEvent.getAction() == 0) {
            this.f3904d = motionEvent.getY();
        } else if (motionEvent.getAction() == 2) {
            float y = motionEvent.getY() - this.f3904d;
            if (y > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                d(true);
            } else if (y != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && y < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                d(false);
            }
            this.f3904d = motionEvent.getY();
        } else if (motionEvent.getAction() == 1) {
            ig();
            this.ox = false;
        } else if (motionEvent.getAction() == 3) {
            ig();
            this.ox = false;
        }
        return super.onTouchEvent(motionEvent);
    }
}
