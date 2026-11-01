package com.bytedance.sdk.openadsdk.widget;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.res.p;

/* loaded from: classes3.dex */
public class TTLoadingProgressBar extends LinearLayout {

    /* renamed from: d, reason: collision with root package name */
    private ImageView f3908d;
    private View dq;
    private View ox;

    public TTLoadingProgressBar(Context context) {
        super(context);
        dq(context);
    }

    private int dq(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void dq(Context context) {
        addView(p.p(context));
        this.dq = findViewById(2047279084);
        this.f3908d = (ImageView) findViewById(2047279083);
        this.ox = findViewById(2047279082);
    }

    public View getProgressBar() {
        return this.dq;
    }

    public ImageView getProgressIcon() {
        return this.f3908d;
    }

    public void setProgress(int i) {
        if (this.f3908d.getVisibility() == 0 && i > 3) {
            ((LinearLayout.LayoutParams) this.f3908d.getLayoutParams()).leftMargin = dq(this.dq.getContext(), -7.0f);
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.dq.getLayoutParams();
        float f2 = i / 100.0f;
        layoutParams.weight = f2;
        this.dq.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.ox.getLayoutParams();
        layoutParams2.weight = 1.0f - f2;
        this.ox.setLayoutParams(layoutParams2);
        requestLayout();
    }
}
