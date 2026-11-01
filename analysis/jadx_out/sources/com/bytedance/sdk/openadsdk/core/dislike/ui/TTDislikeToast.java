package com.bytedance.sdk.openadsdk.core.dislike.ui;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;

/* loaded from: classes3.dex */
public class TTDislikeToast extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private TextView f2808d;
    private Handler dq;

    public TTDislikeToast(Context context) {
        this(context, null);
    }

    public TTDislikeToast(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTDislikeToast(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.dq = new Handler(Looper.getMainLooper());
        setVisibility(8);
        setClickable(false);
        setFocusable(false);
        dq(context);
    }

    private void dq(Context context) {
        TextView textView = new TextView(context);
        this.f2808d = textView;
        textView.setClickable(false);
        this.f2808d.setFocusable(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        int dq = com.bytedance.sdk.openadsdk.core.dislike.dq.dq.d().dq(getContext(), 20.0f);
        int dq2 = com.bytedance.sdk.openadsdk.core.dislike.dq.dq.d().dq(getContext(), 12.0f);
        this.f2808d.setPadding(dq, dq2, dq, dq2);
        this.f2808d.setLayoutParams(layoutParams);
        this.f2808d.setTextColor(-1);
        this.f2808d.setTextSize(16.0f);
        this.f2808d.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#CC000000"));
        gradientDrawable.setCornerRadius(com.bytedance.sdk.openadsdk.core.dislike.dq.dq.d().dq(getContext(), 6.0f));
        this.f2808d.setBackgroundDrawable(gradientDrawable);
        addView(this.f2808d);
    }

    public void d() {
        try {
            dq(r.dq(getContext(), "tt_dislike_feedback_repeat"));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void dq() {
        dq(r.dq(getContext(), "tt_dislike_feedback_success"));
    }

    public void dq(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.dq.removeCallbacksAndMessages(null);
        this.dq.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.TTDislikeToast.1
            @Override // java.lang.Runnable
            public void run() {
                if (TTDislikeToast.this.f2808d != null) {
                    TTDislikeToast.this.f2808d.setText(String.valueOf(str));
                }
                TTDislikeToast.this.setVisibility(0);
            }
        });
        this.dq.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dislike.ui.TTDislikeToast.2
            @Override // java.lang.Runnable
            public void run() {
                TTDislikeToast.this.setVisibility(8);
            }
        }, 2000L);
    }

    public void ox() {
        setVisibility(8);
        this.dq.removeCallbacksAndMessages(null);
    }
}
