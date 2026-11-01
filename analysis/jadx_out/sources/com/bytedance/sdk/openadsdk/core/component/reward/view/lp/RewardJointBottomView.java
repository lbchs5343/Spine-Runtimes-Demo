package com.bytedance.sdk.openadsdk.core.component.reward.view.lp;

import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.component.widget.recycler.dq.ox.ox;
import com.bytedance.sdk.component.widget.recycler.dq.ox.p;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.component.reward.view.SlideUpLoadMoreArrow;

/* loaded from: classes3.dex */
public class RewardJointBottomView extends FrameLayout implements ox {

    /* renamed from: d, reason: collision with root package name */
    private int[] f2669d;
    private float dq;
    private boolean ia;
    private int iw;
    private boolean kk;
    private View.OnClickListener mn;
    private final SlideUpLoadMoreArrow o;
    private int[] ox;
    private SSWebView p;
    private p s;

    public RewardJointBottomView(Context context) {
        super(context);
        this.f2669d = new int[2];
        this.ox = new int[2];
        this.iw = 0;
        this.ia = false;
        this.kk = false;
        SSWebView sSWebView = new SSWebView(context);
        this.p = sSWebView;
        sSWebView.setWebViewClient(null);
        addView(this.p, new ViewGroup.LayoutParams(-1, -1));
        if (Build.VERSION.SDK_INT >= 23) {
            this.p.getWebView().setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.lp.RewardJointBottomView.1
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i, int i2, int i3, int i4) {
                    if (Math.abs((RewardJointBottomView.this.p.getWebView().getScrollY() + RewardJointBottomView.this.p.getWebView().getHeight()) - (RewardJointBottomView.this.p.getWebView().getScale() * RewardJointBottomView.this.p.getWebView().getContentHeight())) >= 10.0f) {
                        RewardJointBottomView.this.ia = false;
                    } else {
                        if (RewardJointBottomView.this.ia) {
                            return;
                        }
                        RewardJointBottomView.this.ia = true;
                    }
                }
            });
        }
        getScrollingChildHelper().dq(true);
        SlideUpLoadMoreArrow slideUpLoadMoreArrow = new SlideUpLoadMoreArrow(getContext(), 36, true);
        this.o = slideUpLoadMoreArrow;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 81;
        addView(slideUpLoadMoreArrow, layoutParams);
        slideUpLoadMoreArrow.dq();
    }

    private p getScrollingChildHelper() {
        if (this.s == null) {
            this.s = new p(this);
        }
        return this.s;
    }

    public void d() {
        dq();
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return super.dispatchNestedFling(f2, f3, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return super.dispatchNestedPreFling(f2, f3);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View.OnClickListener onClickListener;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.iw = 0;
            this.dq = motionEvent.getY();
            dq(2, 0);
            this.kk = this.ia;
        } else if (action != 1) {
            if (action == 2) {
                float y = motionEvent.getY() - this.dq;
                float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                if (y < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    dq();
                    if (dq(0, (int) y, this.f2669d, this.ox, 0)) {
                        y -= this.f2669d[1];
                    }
                    if (Math.floor(Math.abs(y)) != 0.0d) {
                        f2 = y;
                    }
                    this.iw += dq((int) (f2 - this.iw));
                } else {
                    int i = (int) (y - this.iw);
                    int dq = dq(i);
                    this.iw += dq;
                    dq(0, i - dq, this.f2669d, this.ox, 0);
                }
            }
        } else if (this.kk && this.dq - motionEvent.getY() > 100.0f && (onClickListener = this.mn) != null) {
            onClickListener.onClick(this);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public int dq(int i) {
        if (i < 0) {
            return (int) (-Math.abs(Math.min(this.p.getWebView().getContentHeight() - (this.p.getWebView().getScrollY() + this.p.getWebView().getHeight()), -i)));
        }
        if (i > 0) {
            return Math.min(this.p.getWebView().getScrollY(), i);
        }
        return 0;
    }

    public void dq() {
        SlideUpLoadMoreArrow slideUpLoadMoreArrow = this.o;
        if (slideUpLoadMoreArrow != null) {
            slideUpLoadMoreArrow.setVisibility(8);
            this.o.d();
        }
    }

    public void dq(String str) {
        this.p.dq(str);
    }

    public boolean dq(int i, int i2) {
        return getScrollingChildHelper().d(0);
    }

    public boolean dq(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().dq(i, i2, iArr, iArr2, i3);
    }

    public SSWebView getWebView() {
        return this.p;
    }

    public void setClickListener(View.OnClickListener onClickListener) {
        this.mn = onClickListener;
    }
}
