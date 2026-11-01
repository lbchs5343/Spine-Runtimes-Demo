package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.p.mn;
import g.awf;

/* loaded from: classes.dex */
public class DynamicVideoView extends DynamicBaseWidgetImp implements com.bytedance.sdk.component.adexpress.dynamic.s {

    /* renamed from: d, reason: collision with root package name */
    FrameLayout f1726d;
    TextView dq;
    boolean r;

    public DynamicVideoView(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        this.r = false;
        View view = new View(context);
        this.jy = view;
        view.setTag(Integer.valueOf(getClickArea()));
        this.dq = new TextView(context);
        this.f1726d = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) mn.dq(context, 40.0f), (int) mn.dq(context, 15.0f));
        layoutParams.gravity = 8388693;
        layoutParams.rightMargin = 20;
        layoutParams.bottomMargin = 20;
        this.dq.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(25.0f);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.dq.setBackground(gradientDrawable);
        this.dq.setTextSize(10.0f);
        this.dq.setGravity(17);
        this.dq.setTextColor(-1);
        this.dq.setVisibility(8);
        if (com.bytedance.sdk.component.adexpress.p.dq()) {
            addView(this.f1726d, new FrameLayout.LayoutParams(-1, -1));
        }
        addView(this.dq);
        addView(this.jy, getWidgetLayoutParams());
        if (!com.bytedance.sdk.component.adexpress.p.dq()) {
            addView(this.f1726d, getWidgetLayoutParams());
        }
        dynamicRootView.ox = this.f1726d;
        dynamicRootView.setVideoListener(this);
    }

    private void ox(View view) {
        if (view == this.dq || view == ((DynamicBaseWidgetImp) this).gh) {
            return;
        }
        try {
            if (((Integer) view.getTag(com.bytedance.sdk.component.adexpress.dynamic.dq.iw)).intValue() == 1) {
                return;
            }
        } catch (Throwable unused) {
        }
        int i = 0;
        view.setVisibility(0);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i >= viewGroup.getChildCount()) {
                return;
            }
            ox(viewGroup.getChildAt(i));
            i++;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        super.ia();
        double d2 = 0.0d;
        double d3 = 0.0d;
        for (ia iaVar = this.mp; iaVar != null; iaVar = iaVar.ig()) {
            d3 = (d3 + iaVar.iw()) - iaVar.p();
            d2 = (d2 + iaVar.mn()) - iaVar.s();
        }
        try {
            float f2 = (float) d3;
            int dq = (int) mn.dq(getContext(), f2);
            int dq2 = (int) mn.dq(getContext(), f2 + this.s);
            if (com.bytedance.sdk.component.adexpress.p.d.dq(getContext())) {
                int dynamicWidth = ((DynamicRoot) this.q.getChildAt(0)).getDynamicWidth();
                int i = dynamicWidth - dq2;
                dq2 = dynamicWidth - dq;
                dq = i;
            }
            if ("open_ad".equals(this.q.getRenderRequest().p())) {
                this.q.ox = this.f1726d;
            } else {
                float f3 = (float) d2;
                ((DynamicRoot) this.q.getChildAt(0)).dq.update(dq, (int) mn.dq(getContext(), f3), dq2, (int) mn.dq(getContext(), f3 + this.iw));
            }
        } catch (Exception unused) {
        }
        this.q.dq(d3, d2, this.s, this.iw, this.ig.jy());
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public boolean p() {
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.s
    public void setTimeUpdate(int i) {
        if (!this.mp.o().s().ah() || i <= 0 || this.r) {
            this.r = true;
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                ox(getChildAt(i2));
            }
            this.dq.setVisibility(8);
            return;
        }
        String c2 = awf.c(i >= 60 ? "0" + (i / 60) : "00", ":");
        int i3 = i % 60;
        this.dq.setText(i3 > 9 ? c2 + i3 : c2 + "0" + i3);
        this.dq.setVisibility(0);
    }
}
