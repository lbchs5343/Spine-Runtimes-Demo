package com.bytedance.msdk.ia;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes.dex */
public class op {
    public static void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.core.no.no noVar, com.bytedance.msdk.api.dq.d dVar, boolean z) {
        if (sVar == null || !sVar.jv()) {
            return;
        }
        if (noVar == null) {
            sVar.dq(0.0d);
        }
        String ij = sVar.ij();
        Map<String, String> bl = noVar.bl();
        if (TextUtils.isEmpty(ij)) {
            if (z) {
                com.bytedance.msdk.s.iw.dq(noVar, dVar, sVar, 40061, com.bytedance.msdk.api.dq.dq(40061));
            }
            sVar.ig(com.bytedance.msdk.api.dq.dq(40061));
            sVar.dq(0.0d);
            return;
        }
        if (bl == null) {
            if (z) {
                com.bytedance.msdk.s.iw.dq(noVar, dVar, sVar, 40062, com.bytedance.msdk.api.dq.dq(40062));
            }
            sVar.ig(com.bytedance.msdk.api.dq.dq(40062));
            sVar.dq(0.0d);
            return;
        }
        String str = bl.get(ij);
        if (TextUtils.isEmpty(str)) {
            if (z) {
                com.bytedance.msdk.s.iw.dq(noVar, dVar, sVar, 40062, com.bytedance.msdk.api.dq.dq(40062));
            }
            sVar.dq(0.0d);
        } else {
            try {
                sVar.dq(Double.valueOf(str).doubleValue());
            } catch (Exception unused) {
                sVar.dq(0.0d);
            }
        }
    }
}
