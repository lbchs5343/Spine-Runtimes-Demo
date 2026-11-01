package com.bytedance.sdk.openadsdk.core.ir;

import android.text.TextUtils;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class le {

    /* renamed from: d, reason: collision with root package name */
    private static volatile String f3062d = "";
    private static volatile String dq = "";
    private static volatile boolean ox;

    /* JADX WARN: Removed duplicated region for block: B:26:0x006f A[Catch: Exception -> 0x004e, TryCatch #0 {Exception -> 0x004e, blocks: (B:12:0x001a, B:14:0x002b, B:16:0x003b, B:17:0x0052, B:20:0x005c, B:22:0x0068, B:24:0x006b, B:26:0x006f, B:28:0x007c, B:30:0x0086, B:31:0x008f, B:34:0x0097, B:35:0x0095), top: B:11:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String dq(boolean z) {
        String ox2;
        long j;
        if (!TextUtils.isEmpty(dq)) {
            return dq;
        }
        if (z && !TextUtils.isEmpty(f3062d)) {
            return f3062d;
        }
        try {
            ox2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().ox("new_app_log_oaid", (String) null);
        } catch (Exception unused) {
        }
        if (!TextUtils.isEmpty(ox2)) {
            JSONObject jSONObject = new JSONObject(ox2);
            if (6607 >= jSONObject.optInt("p_version", 0)) {
                f3062d = com.bytedance.sdk.component.utils.dq.ox(jSONObject.getString("value"));
                j = jSONObject.getLong("time");
                if (TextUtils.isEmpty(f3062d) && (z || System.currentTimeMillis() - j < AdBaseConstants.DEFAULT_DELAY_TIMESTAMP)) {
                    return f3062d;
                }
                if (!ox) {
                    dq();
                    com.bytedance.sdk.openadsdk.f.d.ox.p no = com.bytedance.sdk.openadsdk.core.no.ia().no();
                    if (no != null && !TextUtils.isEmpty(no.no())) {
                        dq = no.no();
                        update();
                    }
                    com.bytedance.sdk.openadsdk.tools.d.d(7, dq == null ? "" : dq);
                }
                return dq != null ? "" : dq;
            }
        }
        j = 0;
        if (TextUtils.isEmpty(f3062d)) {
        }
        if (!ox) {
        }
        if (dq != null) {
        }
    }

    private static void dq() {
        com.bytedance.embedapplog.dq.dq(com.bytedance.sdk.openadsdk.core.no.ia().mn());
        com.bytedance.embedapplog.dq.dq();
    }

    public static void dq(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ox = true;
            dq = str;
            com.bytedance.sdk.openadsdk.tools.d.d(7, dq == null ? "" : dq);
            update();
        } catch (Throwable unused) {
        }
    }

    private static void update() {
        if (TextUtils.isEmpty(dq)) {
            return;
        }
        String d2 = com.bytedance.sdk.component.utils.dq.d(dq);
        com.bytedance.sdk.openadsdk.core.ox.p.dq().p("app_log_oaid", dq);
        com.bytedance.sdk.openadsdk.core.ox.p.dq().p("new_app_log_oaid", d2);
    }
}
