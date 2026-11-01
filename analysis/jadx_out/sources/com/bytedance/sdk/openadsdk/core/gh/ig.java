package com.bytedance.sdk.openadsdk.core.gh;

import android.app.Activity;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.ce;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.kx;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import g.awf;
import g.ekq;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ig {
    private static volatile ig dq;

    private ig() {
    }

    private boolean d(com.bytedance.sdk.openadsdk.core.gh.dq.ox oxVar) {
        return oxVar == null;
    }

    public static ig dq() {
        if (dq == null) {
            synchronized (ig.class) {
                try {
                    if (dq == null) {
                        dq = new ig();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public static void dq(Result result, JSONObject jSONObject) {
        long j;
        String str;
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        if (result != null) {
            ValueSet values = result.values();
            boolean isSuccess = result.isSuccess();
            int code = result.code();
            String message = result.message();
            JSONObject jSONObject4 = new JSONObject();
            try {
                jSONObject4.put("success", isSuccess);
                jSONObject4.put(PluginConstants.KEY_ERROR_CODE, code);
                jSONObject4.put("message", message);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            if (values != null) {
                JSONObject jSONObject5 = (JSONObject) values.objectValue(10, JSONObject.class);
                String stringValue = values.stringValue(5);
                long currentTimeMillis = jSONObject5 != null ? System.currentTimeMillis() - jSONObject5.optLong("run_package_start", 0L) : -1L;
                jSONObject2 = (JSONObject) values.objectValue(3, JSONObject.class);
                jSONObject3 = (JSONObject) values.objectValue(4, JSONObject.class);
                j = currentTimeMillis;
                str = stringValue;
            } else {
                j = -1;
                str = null;
                jSONObject2 = null;
                jSONObject3 = null;
            }
            dq().dq(str, jSONObject != null ? jSONObject.optString("business_type") : "", isSuccess, j, jSONObject2, jSONObject3, jSONObject4);
        }
    }

    private void dq(final com.bytedance.sdk.openadsdk.no.dq.dq dqVar, final String str, boolean z) {
        final long currentTimeMillis = System.currentTimeMillis() / 1000;
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.4
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox oxVar = (com.bytedance.sdk.openadsdk.core.gh.dq.ox) dqVar.dq();
                oxVar.dq(str);
                oxVar.dq(currentTimeMillis);
                return oxVar;
            }
        }, str, true);
    }

    public static boolean dq(String str) {
        com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.openadsdk.core.ox.dq();
        String d2 = dq2.d("plugin_first_load", "");
        if (!TextUtils.isEmpty(d2) && d2.endsWith(str)) {
            return false;
        }
        if (!TextUtils.isEmpty(d2)) {
            str = awf.i(d2, "-", str);
        }
        dq2.dq("plugin_first_load", str);
        return true;
    }

    private boolean dq(String str, int i) {
        com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.openadsdk.core.ox.dq();
        int d2 = dq2.d(str, 0);
        boolean z = (d2 & 2) == 0 || (d2 & 1) != i;
        if (z) {
            dq2.dq(str, i + 2);
        }
        return z;
    }

    private void ox(com.bytedance.sdk.openadsdk.no.dq.dq dqVar, String str) {
        dq(dqVar, str, true);
    }

    public static void ox(final String str, final String str2) {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.28
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.d dVar = new com.bytedance.sdk.openadsdk.core.gh.dq.d();
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("message", str);
                jSONObject.put(PluginConstants.KEY_ERROR_CODE, 4300);
                jSONObject.putOpt("plugin_package_name", str2);
                dVar.d(jSONObject.toString());
                return dVar;
            }
        }, "plugin_load_failed", false);
    }

    private void p(final com.bytedance.sdk.openadsdk.no.dq.dq dqVar, final String str) {
        final long currentTimeMillis = System.currentTimeMillis() / 1000;
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.5
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox oxVar = (com.bytedance.sdk.openadsdk.core.gh.dq.ox) dqVar.dq();
                oxVar.dq(str);
                oxVar.dq(currentTimeMillis);
                return oxVar;
            }
        }, str, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void s(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str) && !str.startsWith("zeus") && !TextUtils.equals("plugin_load_failed", str)) {
                str = "zeus_".concat(str);
            }
            final String str3 = str;
            JSONObject jSONObject = !TextUtils.isEmpty(str2) ? new JSONObject(str2) : null;
            if (str2 != null) {
                jSONObject.put("current_version", "6.6.0.7");
                jSONObject.put("os_api", Build.VERSION.SDK_INT);
                jSONObject.put("support_abi", Arrays.toString(Build.SUPPORTED_ABIS));
            }
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            final int optInt = jSONObject.has("status_code") ? jSONObject.optInt("status_code") : jSONObject.optInt(PluginConstants.KEY_ERROR_CODE);
            final String optString = jSONObject.optString("message");
            final String optString2 = jSONObject.optString(MediationConstant.EXTRA_DURATION);
            final String jSONObject2 = jSONObject.toString();
            d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.39
                @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                    return "zeus_load_finish".equals(str3) ? com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(str3).d(jSONObject2).d(optInt).mn(optString).s(optString2).dq(ig.dq("6.6.0.7") ? 1 : 0) : com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(str3).d(jSONObject2).d(optInt).s(optString2).mn(optString);
                }
            }, str3, true);
        } catch (Throwable unused) {
        }
    }

    public void d() {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.2
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.f.d.ox.p no = com.bytedance.sdk.openadsdk.core.no.ia().no();
                boolean d2 = no.d();
                boolean dq2 = no.dq();
                boolean s = no.s();
                boolean p = no.p();
                boolean ox = no.ox();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("access_fine_location", dq2 ? 1 : 0);
                    jSONObject.put("applist", d2 ? 1 : 0);
                    jSONObject.put("external_storage", s ? 1 : 0);
                    jSONObject.put("wifi_state", p ? 1 : 0);
                    jSONObject.put("phone_state", ox ? 1 : 0);
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("sdk_permission").d(jSONObject.toString());
            }
        }, "sdk_permission", true);
    }

    public void d(final int i) {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.17
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("fetch_adm", i == 0 ? 1 : 0);
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("fetch_adm_status").d(i).d(jSONObject.toString());
            }
        }, "fetch_adm_status", true);
    }

    public void d(final j jVar, final String str) {
        d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.25
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("uttie_close");
                j jVar2 = jVar;
                if (jVar2 != null) {
                    dq2.iw(jVar2.el());
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("uttie_url", str);
                dq2.d(jSONObject.toString());
                return dq2;
            }
        }, "uttie_close");
    }

    public void d(com.bytedance.sdk.openadsdk.no.dq.dq dqVar) {
        ox(dqVar, "outer_call_send");
    }

    public void d(com.bytedance.sdk.openadsdk.no.dq.dq dqVar, String str) {
        d.ox().dq(dqVar, str, true);
    }

    public void d(final String str) {
        if (str == null) {
            return;
        }
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.19
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("error_ad_info").dq(System.currentTimeMillis() / 1000).kk(str);
            }
        }, "error_ad_info", true);
    }

    public void d(final String str, final String str2) {
        com.bytedance.sdk.component.o.mn.ox(new com.bytedance.sdk.component.o.kk("plugin_report") { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.38
            @Override // java.lang.Runnable
            public void run() {
                ig.s(str, str2);
            }
        });
    }

    public void d(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.27
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("BUNetworkRatingReport").d(jSONObject.toString());
            }
        }, "BUNetworkRatingReport");
    }

    public void dq(final int i) {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.16
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("has_pre_req").d(i);
            }
        }, "has_pre_req", true);
    }

    public void dq(final int i, final long j, final Boolean bool, final String str) {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.15
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("encrypt_track");
                try {
                    JSONObject jSONObject = new JSONObject();
                    long j2 = j;
                    if (j2 >= 0) {
                        jSONObject.put("cost_time", j2);
                    }
                    Boolean bool2 = bool;
                    if (bool2 != null) {
                        jSONObject.put("init_succ", bool2.booleanValue() ? 1 : 2);
                    }
                    jSONObject.put("opt_sample", 1);
                    int i2 = i;
                    if (i2 != -1) {
                        jSONObject.put("event_res", i2);
                    }
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put("type", str);
                    }
                    dq2.d(jSONObject.toString());
                } catch (Throwable unused) {
                }
                return dq2;
            }
        }, "encrypt_track", true);
    }

    public void dq(int i, long j, String str) {
        dq(i, j, (Boolean) null, str);
    }

    public void dq(final int i, kx kxVar) {
        if (kxVar == null) {
            return;
        }
        final JSONObject dq2 = kxVar.dq(-1L);
        final long d2 = kxVar.d();
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.14
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq3 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("bid_token_time");
                try {
                    dq2.put("total", d2);
                    dq2.put("opt_sample", 1);
                    dq2.put("slot_type", i);
                    dq3.d(dq2.toString());
                } catch (Throwable unused) {
                }
                return dq3;
            }
        }, "get_bidding_token", true);
    }

    public void dq(final int i, j jVar, final boolean z) {
        final String valueOf = String.valueOf(c.kk(jVar));
        if (dq(valueOf, z ? 1 : 0)) {
            d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.6
                @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                    com.bytedance.sdk.openadsdk.core.gh.dq.ox ox = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(i).ox(valueOf);
                    if (z) {
                        ox.dq("reg_creative");
                        return ox;
                    }
                    ox.dq("no_reg_creative");
                    return ox;
                }
            }, z ? "reg_creative" : "no_reg_creative", true);
        }
    }

    public void dq(final long j, final long j2, final int i) {
        final long j3 = j2 - j;
        if (j3 <= 0 || j3 >= 30000000) {
            return;
        }
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.20
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("starttime", j);
                    jSONObject.put("endtime", j2);
                    jSONObject.put("start_type", i);
                } catch (Throwable unused) {
                }
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("general_label");
                StringBuilder sb = new StringBuilder();
                sb.append(j3);
                return dq2.s(sb.toString()).d(jSONObject.toString());
            }
        }, "general_label", true);
    }

    public void dq(final long j, final com.bytedance.sdk.openadsdk.core.wp.p pVar) {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.12
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(MediationConstant.EXTRA_DURATION, j);
                jSONObject.put("ext_plugin_code", ce.d());
                com.bytedance.sdk.openadsdk.core.wp.p pVar2 = pVar;
                if (pVar2 != null) {
                    jSONObject.put("success", pVar2.dq() ? 1 : 0);
                    com.bytedance.sdk.openadsdk.core.wp.iw d2 = pVar.d();
                    if (d2 != null) {
                        jSONObject.put("msg", d2.toString());
                        jSONObject.put(PluginConstants.KEY_ERROR_CODE, d2.dq());
                    }
                }
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("pitaya_init").d(jSONObject.toString());
            }
        }, "pitaya_init", true);
    }

    public void dq(Activity activity) {
        final String name = activity.getClass().getName();
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.3
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("page_name", name);
                com.bytedance.sdk.openadsdk.core.ir.ce.dq(jSONObject, "");
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("delegate_on_create").d(jSONObject.toString());
            }
        }, "delegate_on_create", true);
    }

    public void dq(final com.bytedance.sdk.openadsdk.core.gh.dq.ox oxVar) {
        if (d(oxVar)) {
            return;
        }
        oxVar.dq("load_icon_error");
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.7
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                return oxVar;
            }
        }, "load_icon_error", true);
    }

    public void dq(final j jVar, final String str) {
        d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.23
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("uttie_start");
                j jVar2 = jVar;
                if (jVar2 != null) {
                    dq2.iw(jVar2.el());
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("uttie_url", str);
                dq2.d(jSONObject.toString());
                return dq2;
            }
        }, "uttie_start");
    }

    public void dq(final j jVar, final String str, final long j) {
        d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.24
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("uttie_played");
                j jVar2 = jVar;
                if (jVar2 != null) {
                    dq2.iw(jVar2.el());
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("uttie_url", str);
                jSONObject.put(MediationConstant.EXTRA_DURATION, j);
                dq2.d(jSONObject.toString());
                return dq2;
            }
        }, "uttie_played");
    }

    public void dq(final j jVar, final String str, final JSONObject jSONObject) {
        d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.26
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(str);
                j jVar2 = jVar;
                if (jVar2 != null) {
                    dq2.iw(jVar2.el()).ia(jVar.dn());
                }
                JSONObject jSONObject2 = jSONObject;
                if (jSONObject2 != null) {
                    dq2.d(jSONObject2.toString());
                }
                return dq2;
            }
        }, str);
    }

    public void dq(com.bytedance.sdk.openadsdk.no.dq.dq dqVar) {
        ox(dqVar, "outer_call");
    }

    public void dq(com.bytedance.sdk.openadsdk.no.dq.dq dqVar, String str) {
        d.ox().dq(dqVar, str, true);
    }

    public void dq(final Object obj, final Object obj2, final String str, final String str2, final String str3) {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.36
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    Object obj3 = obj;
                    if (obj3 instanceof Boolean) {
                        jSONObject.put("is_button", obj3);
                    }
                    Object obj4 = obj2;
                    if (obj4 instanceof Boolean) {
                        jSONObject.put("convert_result", obj4);
                    }
                    jSONObject.put("error_msg", str);
                    jSONObject.put("req_id", str2);
                    jSONObject.put(MediationConstant.EXTRA_ADID, str3);
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("obm_result").d(jSONObject.toString());
            }
        }, "obm_result", true);
    }

    public void dq(final String str, final int i, final int i2, final int i3) {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.1
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("enable_pv", i);
                    jSONObject.put("boost_init", i2);
                    jSONObject.put("step", i3);
                    jSONObject.put("from", str);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("pv_monitor").d(jSONObject.toString());
            }
        }, "pv_monitor", true);
    }

    public void dq(String str, int i, int i2, String str2, final int i3, final String str3, final long j) {
        final JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PluginConstants.KEY_ERROR_CODE, i3);
            jSONObject.put("message", str3);
            jSONObject.put("version", i2);
            jSONObject.put("current_version", i);
            jSONObject.put("package_name", str);
            jSONObject.put(abn.EXTRA_URL, str2);
            jSONObject.put(MediationConstant.EXTRA_DURATION, j);
        } catch (Throwable unused) {
        }
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.37
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox mn = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("plugin_download").d(i3).mn(str3);
                StringBuilder sb = new StringBuilder();
                sb.append(j);
                return mn.s(sb.toString()).d(jSONObject.toString());
            }
        }, "plugin_download", true);
    }

    public void dq(final String str, final String str2) {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.29
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("close_time_1", str2);
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("sdk_retention").s(str).d(jSONObject.toString());
            }
        }, "sdk_retention", true);
    }

    public void dq(final String str, final String str2, final String str3, final boolean z) {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.11
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("get_bidding_token");
                boolean d2 = wp.d().d(str);
                JSONObject jSONObject = new JSONObject();
                if (d2) {
                    if (!TextUtils.isEmpty(str2)) {
                        jSONObject.put("cache_req_id", str2);
                    }
                    if (TextUtils.equals(str3, "0")) {
                        jSONObject.put("no_cache_reason", 0);
                    } else if (TextUtils.equals(str3, "1")) {
                        jSONObject.put("no_cache_reason", 1);
                    }
                }
                if (z) {
                    jSONObject.put("opt_sample", 1);
                }
                dq2.d(jSONObject.toString());
                return dq2;
            }
        }, "get_bidding_token", z);
    }

    public void dq(final String str, final String str2, final boolean z, final long j, final JSONObject jSONObject, final JSONObject jSONObject2, final JSONObject jSONObject3) {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.13
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put(MediationConstant.EXTRA_DURATION, j);
                jSONObject4.put("business", str);
                jSONObject4.put("biztype", str2);
                jSONObject4.put(ekq.EXTRA_PERMISSION_RESULT, z);
                JSONObject jSONObject5 = jSONObject;
                if (jSONObject5 != null) {
                    jSONObject4.put("package_info", jSONObject5.toString());
                }
                JSONObject jSONObject6 = jSONObject2;
                if (jSONObject6 != null) {
                    jSONObject4.put("error_info", jSONObject6.toString());
                }
                JSONObject jSONObject7 = jSONObject3;
                if (jSONObject7 != null) {
                    jSONObject4.put("common_info", jSONObject7.toString());
                }
                jSONObject4.put("ext_plugin_code", ce.d());
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("pitaya_run_task").d(jSONObject4.toString());
            }
        }, "pitaya_run_task", true);
    }

    public void dq(String str, Throwable th) {
        dq(str, (JSONObject) null, th);
    }

    public void dq(final String str, final JSONObject jSONObject, final Throwable th) {
        d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.21
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("scene", str);
                jSONObject2.putOpt("object", jSONObject);
                jSONObject2.putOpt("exception", th);
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("exception").d(jSONObject2.toString());
            }
        }, "exception");
    }

    public void dq(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.10
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("render_backup").d(jSONObject.toString());
            }
        }, "render_backup", true);
    }

    public void dq(final boolean z) {
        d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.22
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("success", z);
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("live_init_success").d(jSONObject.toString());
            }
        }, "live_init_success");
    }

    public void dq(final boolean z, final String[] strArr) {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.8
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("if_sd", z ? 1 : 0);
                    String[] strArr2 = strArr;
                    if (strArr2 != null && strArr2.length > 0) {
                        StringBuilder sb = new StringBuilder();
                        for (String str : strArr) {
                            if (!TextUtils.isEmpty(str)) {
                                sb.append(str);
                                sb.append(",");
                            }
                        }
                        jSONObject.put("permission", sb.toString());
                    }
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("download_permission").dq(System.currentTimeMillis() / 1000).d(jSONObject.toString());
            }
        }, "download_permission", true);
    }

    public void ia(final com.bytedance.sdk.openadsdk.no.dq.dq dqVar) {
        if (dqVar == null) {
            return;
        }
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.9
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                return ((com.bytedance.sdk.openadsdk.core.gh.dq.ox) dqVar.dq()).dq("app_env").dq(System.currentTimeMillis() / 1000);
            }
        }, "app_env", true);
    }

    public void ia(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.35
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("landingpage_check_info");
                dq2.d(jSONObject.toString());
                return dq2;
            }
        }, "landingpage_check_info", true);
    }

    public void iw(com.bytedance.sdk.openadsdk.no.dq.dq dqVar) {
        p(dqVar, "show_backup_endcard");
    }

    public void iw(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.33
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("render_timeout_opt");
                dq2.d(jSONObject.toString());
                return dq2;
            }
        }, "render_timeout_opt", true);
    }

    public void mn(com.bytedance.sdk.openadsdk.no.dq.dq dqVar) {
        ox(dqVar, "splash_creative_check");
    }

    public void mn(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.34
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("landing_page_preload");
                dq2.d(jSONObject.toString());
                return dq2;
            }
        }, "landing_page_preload", true);
    }

    public void ox(final int i) {
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.18
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("get_ad_cache_failed").d(i);
            }
        }, "get_ad_cache_failed", true);
    }

    public void ox(j jVar, String str) {
        dq(jVar, str, (JSONObject) null);
    }

    public void ox(com.bytedance.sdk.openadsdk.no.dq.dq dqVar) {
        ox(dqVar, "outer_call_no_rsp");
    }

    public void ox(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.30
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("net_qty_compare");
                dq2.d(jSONObject.toString());
                return dq2;
            }
        }, "net_qty_compare", true);
    }

    public void p(com.bytedance.sdk.openadsdk.no.dq.dq dqVar) {
        ox(dqVar, "load_timeout");
    }

    public void p(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.31
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("device_qty_compare");
                dq2.d(jSONObject.toString());
                return dq2;
            }
        }, "device_qty_compare", true);
    }

    public void s(com.bytedance.sdk.openadsdk.no.dq.dq dqVar) {
        p(dqVar, "express_ad_render");
    }

    public void s(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.gh.ig.32
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("device_bytebench");
                dq2.d(jSONObject.toString());
                return dq2;
            }
        }, "device_bytebench", true);
    }
}
