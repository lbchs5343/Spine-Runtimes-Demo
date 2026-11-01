package com.bytedance.msdk.iw.dq;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class s extends p {
    private String dq;

    public s() {
        super(null);
        com.bytedance.msdk.core.no.dq mn = mn();
        if (mn != null) {
            this.dq = mn.dq();
        }
    }

    public s(com.bytedance.msdk.api.p.no noVar) {
        super(noVar);
        if (noVar != null) {
            this.dq = noVar.ox();
        }
    }

    @Override // com.bytedance.msdk.iw.dq.ox
    public String d() {
        return MediationConstant.ADN_GDT;
    }

    @Override // com.bytedance.msdk.iw.dq.ox
    public Map<String, Object> dq() {
        HashMap hashMap = new HashMap();
        hashMap.put(PluginConstants.KEY_APP_ID, this.dq);
        return hashMap;
    }

    @Override // com.bytedance.msdk.iw.dq.ox
    public String ox() {
        if (!TextUtils.isEmpty(this.dq)) {
            return "";
        }
        com.bytedance.msdk.core.no.dq mn = mn();
        if (mn != null) {
            this.dq = mn.dq();
        }
        return TextUtils.isEmpty(this.dq) ? "appId为空" : "";
    }
}
