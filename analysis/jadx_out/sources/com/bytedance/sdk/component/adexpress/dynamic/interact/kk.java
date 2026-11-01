package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import g.awf;

/* loaded from: classes.dex */
public class kk {
    public static mn dq(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar, com.bytedance.sdk.component.adexpress.dynamic.ox.o oVar, com.bytedance.sdk.component.adexpress.d.mp mpVar) {
        String vf;
        String e2;
        if (context == null || dynamicBaseWidget == null || mnVar == null) {
            return null;
        }
        vf = mnVar.vf();
        e2 = mpVar.e();
        vf.getClass();
        switch (vf) {
            case "0":
                return new s(context, dynamicBaseWidget, mnVar);
            case "1":
                return new ox(context, dynamicBaseWidget, mnVar);
            case "2":
                return new d(context, dynamicBaseWidget, mnVar);
            case "5":
                return mnVar.l() == 1 ? new fw(context, dynamicBaseWidget, mnVar, mnVar.dc()) : new f(context, dynamicBaseWidget, mnVar);
            case "6":
            case "11":
                return new mp(context, dynamicBaseWidget, mnVar);
            case "7":
            case "14":
                return new no(context, dynamicBaseWidget, mnVar);
            case "8":
                return new ig(context, dynamicBaseWidget, mnVar);
            case "9":
            case "16":
                return new q(context, dynamicBaseWidget, mnVar, vf, oVar.dq(), oVar.d(), oVar.p(), oVar.mn(), mpVar.mn());
            case "10":
                return new p(context, dynamicBaseWidget, mnVar);
            case "12":
                return new f(context, dynamicBaseWidget, mnVar);
            case "13":
                return new fw(context, dynamicBaseWidget, mnVar);
            case "17":
            case "18":
                return new gh(context, dynamicBaseWidget, mnVar, vf, oVar, mpVar.mn());
            case "20":
                if (com.bytedance.sdk.component.adexpress.p.dq()) {
                    return new o(context, dynamicBaseWidget, mnVar, awf.c(e2, "static/lotties/glass-swipe/glass-swipe.json"), "20");
                }
                return new o(context, dynamicBaseWidget, mnVar, TextUtils.isEmpty(e2) ? null : awf.c(e2, "brush_mask.json"), "20");
            case "22":
                return com.bytedance.sdk.component.adexpress.p.dq() ? new o(context, dynamicBaseWidget, mnVar, awf.c(e2, "static/lotties/202327swiper-up-star/index.json"), "22") : new cd(context, dynamicBaseWidget, mnVar);
            case "23":
                if (com.bytedance.sdk.component.adexpress.p.dq()) {
                    return new o(context, dynamicBaseWidget, mnVar, awf.c(e2, "static/lotties/202327swiper-up-star/click.json"), "23");
                }
                return null;
            case "24":
                if (com.bytedance.sdk.component.adexpress.p.dq()) {
                    return new dq(context, dynamicBaseWidget, mnVar);
                }
                return new o(context, dynamicBaseWidget, mnVar, TextUtils.isEmpty(e2) ? null : awf.c(e2, "swiper_up_star.json"), "24");
            case "25":
                if (com.bytedance.sdk.component.adexpress.p.dq()) {
                    return new o(context, dynamicBaseWidget, mnVar, awf.c(e2, "static/lotties/gesture-slide.json"), "25");
                }
                return null;
            case "29":
                return new iw(context, dynamicBaseWidget, mnVar, oVar.dq(), oVar.d(), oVar.p(), oVar.mn(), mpVar.mn());
            default:
                return null;
        }
    }
}
