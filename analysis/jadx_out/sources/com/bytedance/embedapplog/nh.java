package com.bytedance.embedapplog;

import android.annotation.SuppressLint;
import android.content.Context;
import org.json.JSONObject;

/* loaded from: classes.dex */
class nh extends ji {
    private final Context s;

    public nh(Context context) {
        super(true, true);
        this.s = context;
    }

    @Override // com.bytedance.embedapplog.ji
    @SuppressLint({"MissingPermission"})
    public boolean dq(JSONObject jSONObject) {
        c.dq(jSONObject, "access", m.dq(this.s));
        return true;
    }
}
