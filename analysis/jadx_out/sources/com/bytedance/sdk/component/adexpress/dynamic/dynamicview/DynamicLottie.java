package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.dynamic.ox.iw;
import com.bytedance.sdk.component.adexpress.widget.DynamicLottieView;
import g.awf;

/* loaded from: classes.dex */
public class DynamicLottie extends DynamicBaseWidgetImp {

    /* renamed from: d, reason: collision with root package name */
    ia f1714d;
    String dq;

    public DynamicLottie(Context context, DynamicRootView dynamicRootView, ia iaVar, String str) {
        super(context, dynamicRootView, iaVar);
        this.dq = str;
        this.f1714d = iaVar;
        DynamicLottieView lottieView = getLottieView();
        if (lottieView != null) {
            addView(lottieView, getWidgetLayoutParams());
        }
    }

    private DynamicLottieView getLottieView() {
        ia iaVar = this.mp;
        if (iaVar == null || iaVar.o() == null || this.no == null || TextUtils.isEmpty(this.dq)) {
            return null;
        }
        iw s = this.mp.o().s();
        String ws = s != null ? s.ws() : "";
        if (TextUtils.isEmpty(ws)) {
            return null;
        }
        String r = awf.r(new StringBuilder(), this.dq, "static/lotties/", ws, ".json");
        DynamicLottieView dynamicLottieView = new DynamicLottieView(this.no);
        dynamicLottieView.setImageLottieTosPath(r);
        dynamicLottieView.kk();
        return dynamicLottieView;
    }
}
