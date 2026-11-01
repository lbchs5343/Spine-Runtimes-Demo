package com.bytedance.embedapplog;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
final class xx {
    private final SharedPreferences dq;

    public xx(Context context) {
        this.dq = com.bytedance.sdk.openadsdk.api.plugin.d.d(context, "device_register_oaid_refine", 0);
    }

    public ah dq() {
        return ah.dq(this.dq.getString("oaid", ""));
    }

    public void dq(ah ahVar) {
        if (ahVar == null) {
            return;
        }
        this.dq.edit().putString("oaid", ahVar.d().toString()).apply();
    }
}
