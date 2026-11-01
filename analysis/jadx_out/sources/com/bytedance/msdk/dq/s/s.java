package com.bytedance.msdk.dq.s;

import android.text.TextUtils;
import g.tn;

/* loaded from: classes.dex */
public class s {
    public static String d(String str, String str2) {
        return TextUtils.isEmpty(str) ? dq() : TextUtils.isEmpty(str2) ? dq(str) : tn.r("TTMediationSDK_", str, "_", str2, "_");
    }

    public static String dq() {
        return "TTMediationSDK_";
    }

    public static String dq(com.bytedance.msdk.core.no.d dVar) {
        if (dVar == null || TextUtils.isEmpty(dVar.c())) {
            return dq();
        }
        return "TTMediationSDK_" + dVar.c() + "_";
    }

    public static String dq(String str) {
        return TextUtils.isEmpty(str) ? dq() : tn.ad("TTMediationSDK_", str, "_");
    }

    public static String dq(String str, String str2) {
        return TextUtils.isEmpty(str) ? dq() : TextUtils.isEmpty(str2) ? dq(str) : tn.r("TTMediationSDK_", str, "_", str2, "_");
    }
}
