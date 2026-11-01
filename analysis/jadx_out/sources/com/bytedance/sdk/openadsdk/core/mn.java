package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.embedapplog.s;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mn {

    /* renamed from: d, reason: collision with root package name */
    private String f3167d;
    private volatile String dq;

    public static final class dq {
        static final mn dq = new mn();
    }

    private mn() {
        this.dq = null;
        this.f3167d = null;
        dq(wp.getContext());
    }

    public static void d(String str, JSONObject jSONObject) {
        com.bytedance.embedapplog.dq.dq(str, jSONObject);
    }

    public static mn dq() {
        return dq.dq;
    }

    private void dq(Context context) {
        final com.bytedance.sdk.openadsdk.f.d.ox.p kk = no.ia().kk();
        com.bytedance.embedapplog.ia iaVar = new com.bytedance.embedapplog.ia("164362", "unionser_slardar_applog");
        if (kk != null) {
            com.bytedance.embedapplog.dq.dq(no.ia().mn());
            boolean ox = kk.ox();
            iaVar.d(ox);
            if (!ox) {
                iaVar.d(kk.kk());
            }
            iaVar.dq(kk.p());
            if (op.f3334d >= 4600) {
                iaVar.ox(kk.iw());
                if (op.iw() && op.f3334d >= 4900) {
                    iaVar.dq(kk.ig());
                }
            }
        }
        boolean dq2 = com.bytedance.sdk.openadsdk.core.ox.s.dq();
        iaVar.p(!dq2);
        iaVar.dq(new com.bytedance.embedapplog.mn() { // from class: com.bytedance.sdk.openadsdk.core.mn.1
            @Override // com.bytedance.embedapplog.mn
            public String d() {
                return i.le();
            }

            @Override // com.bytedance.embedapplog.mn
            public String dq() {
                com.bytedance.sdk.openadsdk.f.d.ox.p pVar = kk;
                if (pVar == null || pVar.p()) {
                    return com.bytedance.sdk.openadsdk.jy.d.dq();
                }
                return null;
            }

            @Override // com.bytedance.embedapplog.mn
            public String dq(Context context2) {
                return com.bytedance.sdk.component.utils.fw.d(context2);
            }

            @Override // com.bytedance.embedapplog.mn
            public boolean ox() {
                return wp.d().h();
            }

            @Override // com.bytedance.embedapplog.mn
            public boolean p() {
                return com.bytedance.sdk.openadsdk.core.ir.jy.dq();
            }
        });
        iaVar.d(0);
        com.bytedance.embedapplog.dq.dq(new com.bytedance.embedapplog.s() { // from class: com.bytedance.sdk.openadsdk.core.mn.2
            @Override // com.bytedance.embedapplog.s
            public void dq(s.dq dqVar) {
                if (dqVar != null) {
                    com.bytedance.sdk.openadsdk.core.ir.le.dq(dqVar.dq);
                }
            }
        });
        com.bytedance.embedapplog.dq.dq(context, iaVar);
        HashMap hashMap = new HashMap();
        String mp = no.ia().mp();
        hashMap.put("host_appid", TextUtils.isEmpty(mp) ? "164362" : mp);
        hashMap.put("is_plugin", Boolean.valueOf(op.dq()));
        hashMap.put(PluginConstants.KEY_SDK_VERSION, "6.6.0.7");
        hashMap.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
        hashMap.put("sdk_api_version", op.ox);
        hashMap.put("channel", op.s());
        boolean q = wp.d().q();
        if (q) {
            hashMap.put("use_apm_sdk", "1");
        }
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq("applog", !q ? 1 : 0, dq2 ? 1 : 0, 1);
        com.bytedance.embedapplog.dq.dq((HashMap<String, Object>) hashMap);
    }

    public String d() {
        if (TextUtils.isEmpty(this.dq)) {
            this.dq = com.bytedance.embedapplog.dq.ia();
            com.bytedance.sdk.openadsdk.tools.d.ox(16, this.dq);
            com.bytedance.sdk.openadsdk.core.ox.p.dq().k(this.dq == null ? "" : this.dq);
        }
        return this.dq;
    }

    public void dq(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        com.bytedance.embedapplog.dq.d(str, jSONObject);
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String iw() {
        return "unionser_slardar_applog";
    }

    public String ox() {
        if (TextUtils.isEmpty(this.f3167d)) {
            this.f3167d = com.bytedance.embedapplog.dq.o();
        }
        return this.f3167d;
    }

    public String p() {
        return (String) com.bytedance.embedapplog.dq.dq("sdk_version_name", "");
    }

    public String s() {
        return "164362";
    }
}
