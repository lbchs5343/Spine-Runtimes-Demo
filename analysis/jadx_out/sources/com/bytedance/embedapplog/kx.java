package com.bytedance.embedapplog;

import android.content.Context;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
class kx extends ji {
    private final u iw;
    private final Context s;

    public kx(Context context, u uVar) {
        super(true, false);
        this.s = context;
        this.iw = uVar;
    }

    @Override // com.bytedance.embedapplog.ji
    public boolean dq(JSONObject jSONObject) {
        if (!TextUtils.isEmpty(this.iw.c())) {
            jSONObject.put("ab_client", this.iw.c());
        }
        if (!TextUtils.isEmpty(this.iw.gh())) {
            if (jo.f730d) {
                jo.dq("init config has abversion:" + this.iw.gh(), null);
            }
            jSONObject.put("ab_version", this.iw.gh());
        }
        if (!TextUtils.isEmpty(this.iw.ce())) {
            jSONObject.put("ab_group", this.iw.ce());
        }
        if (TextUtils.isEmpty(this.iw.er())) {
            return true;
        }
        jSONObject.put("ab_feature", this.iw.er());
        return true;
    }
}
