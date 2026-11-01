package com.bytedance.embedapplog;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class n extends ji {
    private final u s;

    public n(Context context, u uVar) {
        super(true, false);
        this.s = uVar;
    }

    @Override // com.bytedance.embedapplog.ji
    public boolean dq(JSONObject jSONObject) {
        String dq = bx.dq(this.s.p());
        if (TextUtils.isEmpty(dq)) {
            return false;
        }
        jSONObject.put("cdid", dq);
        return true;
    }
}
