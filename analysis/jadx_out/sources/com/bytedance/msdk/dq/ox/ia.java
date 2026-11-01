package com.bytedance.msdk.dq.ox;

import android.content.Context;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

/* loaded from: classes.dex */
public class ia extends com.bytedance.msdk.dq.dq {
    @Override // com.bytedance.msdk.dq.dq
    public void dq(Context context, Map<String, Object> map) {
        dq(new com.bytedance.msdk.api.dq(81004, com.bytedance.msdk.api.dq.dq(81004)));
    }

    @Override // com.bytedance.msdk.dq.dq
    public String fw() {
        return MediationConstant.ADN_PANGLE;
    }

    @Override // com.bytedance.msdk.dq.dq
    public String r() {
        try {
            return com.bytedance.sdk.gromore.init.dq.ox();
        } catch (Exception unused) {
            return "0.0";
        }
    }
}
