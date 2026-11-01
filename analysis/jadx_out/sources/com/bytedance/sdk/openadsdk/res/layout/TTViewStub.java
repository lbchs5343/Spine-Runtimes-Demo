package com.bytedance.sdk.openadsdk.res.layout;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class TTViewStub extends View {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.res.layout.dq f3871d;
    private WeakReference<View> dq;
    private Context ox;
    private dq p;

    public interface dq {
    }

    public TTViewStub(Context context, com.bytedance.sdk.openadsdk.res.layout.dq dqVar) {
        super(context);
        this.ox = context;
        this.f3871d = dqVar;
        setVisibility(8);
    }

    private void dq(View view, ViewGroup viewGroup) {
        int indexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(view, indexOfChild, layoutParams);
        } else {
            viewGroup.addView(view, indexOfChild);
        }
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
    }

    public View dq() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        }
        com.bytedance.sdk.openadsdk.res.layout.dq dqVar = this.f3871d;
        if (dqVar == null) {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        View dq2 = dqVar.dq(this.ox);
        dq(dq2, (ViewGroup) parent);
        this.dq = new WeakReference<>(dq2);
        return dq2;
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setOnInflateListener(dq dqVar) {
        this.p = dqVar;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.dq;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i);
            return;
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            dq();
        }
    }
}
