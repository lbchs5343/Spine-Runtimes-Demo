package com.bytedance.msdk.ox.mn;

import android.content.Context;
import com.bytedance.sdk.gromore.dq.dq.iw.iw;
import com.bytedance.sdk.gromore.dq.dq.mn.ox.mn;
import com.bytedance.sdk.gromore.dq.dq.p.f;
import com.bytedance.sdk.gromore.dq.dq.p.q;

/* loaded from: classes.dex */
public class d {
    public static void d(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.p pVar) {
        (dq() ? new mn(context, dqVar, pVar) : new com.bytedance.sdk.gromore.dq.dq.ox.mn(context, dqVar, pVar)).dq();
    }

    public static void dq(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.gromore.dq.dq.dq.p pVar) {
        (dq() ? new com.bytedance.sdk.gromore.dq.dq.mn.dq.ox(context, dqVar, pVar) : new com.bytedance.sdk.gromore.dq.dq.dq.ox(context, dqVar, pVar)).dq();
    }

    public static void dq(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.gromore.dq.dq dqVar2, com.bytedance.sdk.openadsdk.r.dq.d.dq.dq dqVar3) {
        iw oxVar = dq() ? new com.bytedance.sdk.gromore.dq.dq.mn.iw.ox(context, dqVar, dqVar3) : new com.bytedance.sdk.gromore.dq.dq.iw.p(context, dqVar, dqVar3);
        if (dqVar2 == null || dqVar2.kk() == 0) {
            oxVar.dq();
        } else {
            oxVar.dq(dqVar2.kk());
        }
    }

    public static void dq(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.d dVar) {
        (dq() ? new com.bytedance.sdk.gromore.dq.dq.mn.d.ox(context, dqVar, dVar) : new com.bytedance.sdk.gromore.dq.dq.d.s(context, dqVar, dVar)).dq();
    }

    public static void dq(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.iw iwVar) {
        if (dqVar != null && dqVar.dq() != null && dqVar.dq().o() == null) {
            com.bytedance.msdk.dq.s.ox.p("TMe", "使用聚合信息流广告自渲染模版混用场景时，需设置MediationNativeToBannerListener监听回调否则会影响相关功能使用，具体可以参考接入文档，若不能及时设置，建议修改瀑布流配置为模版信息流广告暂不进行混用。");
        }
        (dq() ? new com.bytedance.sdk.gromore.dq.dq.mn.p.s(context, dqVar, iwVar) : new q(context, dqVar, iwVar)).dq();
    }

    public static void dq(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.mn mnVar) {
        (dq() ? new com.bytedance.sdk.gromore.dq.dq.mn.s.ox(context, dqVar, mnVar) : new com.bytedance.sdk.gromore.dq.dq.s.p(context, dqVar, mnVar)).dq();
    }

    public static void dq(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.ox oxVar) {
        (dq() ? new com.bytedance.sdk.gromore.dq.dq.mn.p.iw(context, dqVar, oxVar) : new f(context, dqVar, oxVar)).dq();
    }

    public static void dq(Context context, com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar, com.bytedance.sdk.openadsdk.r.dq.d.dq.p pVar) {
        (dq() ? new com.bytedance.sdk.gromore.dq.dq.mn.ox.ox(context, dqVar, pVar) : new com.bytedance.sdk.gromore.dq.dq.ox.ox(context, dqVar, pVar)).dq();
    }

    public static boolean dq() {
        return com.bytedance.msdk.mn.ox.dq.dq().ox();
    }
}
