package com.bytedance.msdk.iw.dq;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class o extends p {
    protected String dq;

    public o() {
        super(null);
        com.bytedance.msdk.core.no.dq mn = mn();
        if (mn != null) {
            this.dq = mn.dq();
        }
        if (TextUtils.isEmpty(this.dq)) {
            this.dq = com.bytedance.msdk.core.d.no().ig();
        }
    }

    public o(com.bytedance.msdk.api.p.no noVar) {
        super(noVar);
        if (noVar != null) {
            this.dq = noVar.ox();
        }
    }

    public static o d(com.bytedance.msdk.api.p.no noVar) {
        return com.bytedance.msdk.core.d.no().ce() ? new no(noVar) : new kk(noVar);
    }

    public static o kk() {
        return com.bytedance.msdk.core.d.no().ce() ? new no() : new kk();
    }

    @Override // com.bytedance.msdk.iw.dq.ox
    public Map<String, Object> dq() {
        HashMap hashMap = new HashMap();
        hashMap.put(PluginConstants.KEY_APP_ID, this.dq);
        hashMap.put("pangle_app_name", com.bytedance.msdk.core.d.no().i());
        hashMap.put("pangle_is_pangle_paid", Boolean.valueOf(com.bytedance.msdk.core.d.no().jy()));
        hashMap.put("pangle_title_bar_theme", Integer.valueOf(com.bytedance.msdk.core.d.no().le()));
        hashMap.put("pangle_is_pangle_allow_show_notify", Boolean.valueOf(com.bytedance.msdk.core.d.no().q()));
        hashMap.put("pangle_is_pangle_allow_show_page_when_screen_lock", Boolean.valueOf(com.bytedance.msdk.core.d.no().r()));
        hashMap.put("pangle_direct_download_networktype", com.bytedance.msdk.core.d.no().gh());
        hashMap.put("pangle_need_clear_task_reset", com.bytedance.msdk.core.d.no().k());
        hashMap.put("pangle_keywords", com.bytedance.msdk.core.d.no().h());
        hashMap.put("pangle_support_multi_process", Boolean.valueOf(com.bytedance.msdk.core.d.no().mp()));
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
