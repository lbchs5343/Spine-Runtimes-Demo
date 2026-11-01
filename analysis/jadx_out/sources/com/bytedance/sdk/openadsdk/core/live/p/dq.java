package com.bytedance.sdk.openadsdk.core.live.p;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.r.fw;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class dq {
    public static boolean dq(fw fwVar) {
        if (fwVar == null) {
            return false;
        }
        String dq = fwVar.dq();
        if (TextUtils.isEmpty(dq)) {
            return false;
        }
        return dq.startsWith("snssdk2329") || dq.startsWith("snssdk1128");
    }

    public static boolean dq(j jVar) {
        if (jVar == null) {
            return false;
        }
        return dq(jVar.kf());
    }
}
