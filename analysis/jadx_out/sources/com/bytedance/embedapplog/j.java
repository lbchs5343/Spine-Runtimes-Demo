package com.bytedance.embedapplog;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
class j extends ji {
    private final u iw;
    private final Context s;

    public j(Context context, u uVar) {
        super(true, false);
        this.s = context;
        this.iw = uVar;
    }

    @Override // com.bytedance.embedapplog.ji
    public boolean dq(JSONObject jSONObject) {
        String dq = dq.ig() != null ? dq.ig().n().dq() : "";
        if (TextUtils.isEmpty(dq)) {
            return true;
        }
        jSONObject.put("mc", dq);
        return true;
    }
}
