package com.bytedance.msdk.iw.dq;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ia extends p {

    /* renamed from: d, reason: collision with root package name */
    private String f1108d;
    private String dq;

    public ia() {
        super(null);
        com.bytedance.msdk.core.no.dq mn = mn();
        if (mn != null) {
            this.dq = mn.dq();
            this.f1108d = mn.d();
        }
    }

    public ia(com.bytedance.msdk.api.p.no noVar) {
        super(noVar);
        if (noVar != null) {
            this.dq = noVar.ox();
            this.f1108d = noVar.p();
        }
    }

    @Override // com.bytedance.msdk.iw.dq.ox
    public String d() {
        return MediationConstant.ADN_MINTEGRAL;
    }

    @Override // com.bytedance.msdk.iw.dq.ox
    public Map<String, Object> dq() {
        HashMap hashMap = new HashMap();
        hashMap.put(PluginConstants.KEY_APP_ID, this.dq);
        hashMap.put("app_key", this.f1108d);
        return hashMap;
    }

    @Override // com.bytedance.msdk.iw.dq.ox
    public String ox() {
        if (!TextUtils.isEmpty(this.dq) && !TextUtils.isEmpty(this.f1108d)) {
            return "";
        }
        com.bytedance.msdk.core.no.dq mn = mn();
        if (mn != null) {
            this.dq = mn.dq();
            this.f1108d = mn.d();
        }
        return (TextUtils.isEmpty(this.dq) || TextUtils.isEmpty(this.f1108d)) ? "appId为空或appKey为空" : "";
    }
}
