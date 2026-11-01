package com.bytedance.sdk.openadsdk.core.component.reward.dq.dq;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ir.h;
import com.bytedance.sdk.openadsdk.core.ir.n;

/* loaded from: classes3.dex */
public class ox {
    private static final com.bytedance.sdk.component.mn.dq dq = n.dq("full_reward_adslot");

    public com.bytedance.sdk.openadsdk.f.d.ox.d dq(String str) {
        try {
            return h.dq(dq.d(str, (String) null));
        } catch (Throwable unused) {
            return null;
        }
    }

    public void dq(String str, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        if (dVar != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                dq.dq(str, h.dq(dVar, str).toString());
            } catch (Throwable unused) {
            }
        }
    }
}
