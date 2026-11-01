package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.DynamicLottieView;
import com.bytedance.sdk.component.utils.kx;
import com.bytedance.sdk.component.utils.r;
import g.tn;

/* loaded from: classes.dex */
public class o implements mn<ViewGroup> {

    /* renamed from: d, reason: collision with root package name */
    private final FrameLayout f1746d;
    private final DynamicLottieView dq;

    public o(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar, String str, String str2) {
        DynamicLottieView dynamicLottieView = new DynamicLottieView(context);
        this.dq = dynamicLottieView;
        dynamicLottieView.setAnimationsLoop(true);
        dynamicLottieView.setOnlyLoadNetImage(true);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f1746d = frameLayout;
        frameLayout.addView(dynamicLottieView, new FrameLayout.LayoutParams(-2, -2));
        double fd = mnVar.fd();
        fd = fd == 0.0d ? 1.0d : fd;
        double bu = mnVar.bu();
        double d2 = bu != 0.0d ? bu : 1.0d;
        if ("24".equals(str2)) {
            dynamicLottieView.setImageLottieTosPath(TextUtils.isEmpty(str) ? "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/swiper_up_star.json" : str);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) com.bytedance.sdk.component.adexpress.p.mn.dq(context, 250.0f));
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(context, 120.0f);
            frameLayout.setLayoutParams(layoutParams);
            return;
        }
        if (!"20".equals(str2)) {
            dynamicLottieView.setImageLottieTosPath(str);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) (dynamicBaseWidget.getDynamicWidth() * 0.32d * fd), (int) (dynamicBaseWidget.getDynamicWidth() * 0.32d * d2));
            layoutParams2.gravity = 17;
            frameLayout.setLayoutParams(layoutParams2);
            return;
        }
        dynamicLottieView.setImageLottieTosPath(TextUtils.isEmpty(str) ? "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/brush_mask.json" : str);
        dq(context, frameLayout, mnVar);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        layoutParams3.bottomMargin = (int) com.bytedance.sdk.component.adexpress.p.mn.dq(context, mnVar.gx() > 0 ? mnVar.gx() : com.bytedance.sdk.component.adexpress.p.dq() ? 0 : 120);
        frameLayout.setLayoutParams(layoutParams3);
        frameLayout.setClipChildren(false);
    }

    private void dq(Context context, FrameLayout frameLayout, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar) {
        LinearLayout linearLayout = new LinearLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        layoutParams.setMargins(0, -kx.dq(context, 5.0f), 0, 0);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setText(context.getString(r.d(context, "tt_splash_brush_mask_title")));
        textView.setTextColor(-1);
        textView.setTextSize(2, 20.0f);
        TextView textView2 = new TextView(context);
        LinearLayout.LayoutParams g2 = tn.g(textView2, 2097610738, -2, -2);
        g2.setMargins(0, kx.dq(context, 5.0f), 0, 0);
        textView2.setLayoutParams(g2);
        textView2.setText(context.getString(r.d(context, "tt_splash_brush_mask_hint")));
        if (mnVar != null && !TextUtils.isEmpty(mnVar.yy())) {
            textView2.setText(mnVar.yy());
        }
        textView2.setTextColor(-1);
        textView2.setTextSize(2, 14.0f);
        linearLayout.addView(textView);
        linearLayout.addView(textView2);
        frameLayout.addView(linearLayout);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public void d() {
        try {
            this.dq.mn();
            ViewParent parent = this.f1746d.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f1746d);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public void dq() {
        DynamicLottieView dynamicLottieView = this.dq;
        if (dynamicLottieView != null) {
            dynamicLottieView.kk();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.mn
    public ViewGroup ox() {
        return this.f1746d;
    }
}
