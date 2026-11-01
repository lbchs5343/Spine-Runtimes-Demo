package com.bytedance.sdk.openadsdk.core.ir;

import android.content.Context;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class gh {

    /* renamed from: d, reason: collision with root package name */
    private static long f3045d = -1;
    private static final String dq = null;

    private static void d(String str) {
        com.bytedance.sdk.openadsdk.core.ox.dq().dq("install_app_string", str);
    }

    private static boolean d() {
        long d2 = com.bytedance.sdk.openadsdk.core.ox.dq().d("apptime", -1L);
        return d2 == -1 || System.currentTimeMillis() - d2 > 43200000;
    }

    private static String dq(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i));
            if (i != list.size() - 1) {
                sb.append(",");
            }
        }
        return sb.toString().trim();
    }

    private static JSONArray dq() {
        try {
            String d2 = com.bytedance.sdk.openadsdk.core.ox.dq().d("install_app_incremental_string", dq);
            if (TextUtils.isEmpty(d2)) {
                return null;
            }
            return new JSONArray((Collection) p(d2));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static JSONArray dq(final Context context) {
        if (System.currentTimeMillis() - f3045d <= 1000) {
            return null;
        }
        f3045d = System.currentTimeMillis();
        if (!com.bytedance.sdk.openadsdk.core.bl.s.s() || !d() || !com.bytedance.sdk.openadsdk.core.wp.d().ip() || !com.bytedance.sdk.openadsdk.core.no.ia().kk().d()) {
            return null;
        }
        com.bytedance.sdk.component.o.mn.dq(new com.bytedance.sdk.component.o.kk("getIncrementalInstallApps") { // from class: com.bytedance.sdk.openadsdk.core.ir.gh.1
            @Override // java.lang.Runnable
            public void run() {
                gh.ox(context);
            }
        }, 1);
        return dq();
    }

    private static void dq(final int i, final int i2, final String str) {
        com.bytedance.sdk.openadsdk.core.gh.d.ox().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ir.gh.2
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("call_api_status", i);
                    jSONObject.put("has_actived", i2);
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put("error_msg", str);
                    }
                } catch (Throwable unused) {
                }
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("call_active_api").d(jSONObject.toString());
            }
        }, "call_active_api", true);
    }

    public static boolean dq(String str) {
        if (TextUtils.isEmpty(str)) {
            dq(0, 0, null);
            return false;
        }
        if (c.iw(com.bytedance.sdk.openadsdk.core.wp.getContext()) && !c.ox(com.bytedance.sdk.openadsdk.core.wp.getContext(), str)) {
            dq(0, 0, null);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(Context context) {
        try {
            List<String> dq2 = com.bytedance.sdk.openadsdk.core.bl.ox.d().dq(context);
            if (dq2 != null && !dq2.isEmpty()) {
                List<String> p = p(com.bytedance.sdk.openadsdk.core.ox.dq().d("install_app_string", dq));
                d(dq(dq2));
                if (p != null && !p.isEmpty()) {
                    dq2.removeAll(p);
                }
                ox(dq(dq2));
            }
        } catch (Exception unused) {
        }
    }

    private static void ox(String str) {
        com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.openadsdk.core.ox.dq();
        dq2.dq("install_app_incremental_string", str);
        dq2.dq("apptime", System.currentTimeMillis());
    }

    private static List<String> p(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return Arrays.asList(str.split(","));
    }
}
