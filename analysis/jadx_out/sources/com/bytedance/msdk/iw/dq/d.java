package com.bytedance.msdk.iw.dq;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class d extends p {
    private String dq;

    public d() {
        super(null);
        com.bytedance.msdk.core.no.dq mn = mn();
        if (mn != null) {
            this.dq = mn.dq();
        }
    }

    public d(com.bytedance.msdk.api.p.no noVar) {
        super(noVar);
        if (noVar != null) {
            this.dq = noVar.ox();
        }
    }

    @Override // com.bytedance.msdk.iw.dq.ox
    public String d() {
        return MediationConstant.ADN_BAIDU;
    }

    @Override // com.bytedance.msdk.iw.dq.ox
    public Map<String, Object> dq() {
        HashMap hashMap = new HashMap();
        hashMap.put(PluginConstants.KEY_APP_ID, this.dq);
        hashMap.put("baidu_https", Boolean.valueOf(com.bytedance.msdk.core.d.no().c()));
        if (!TextUtils.isEmpty(com.bytedance.msdk.core.d.no().iw())) {
            hashMap.put("baidu_wx_app_id", com.bytedance.msdk.core.d.no().iw());
        }
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
