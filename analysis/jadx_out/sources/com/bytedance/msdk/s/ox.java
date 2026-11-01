package com.bytedance.msdk.s;

import android.content.Context;
import com.bytedance.msdk.ia.h;
import com.bytedance.msdk.s.d;
import com.bytedance.sdk.component.ia.dq.dq;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static final AtomicLong f1254d = new AtomicLong(0);
    private static volatile boolean dq;

    public static void d(Context context) {
        try {
            List<d.dq> d2 = d.dq().d();
            if (d2 != null) {
                for (d.dq dqVar : d2) {
                    if (dqVar != null) {
                        dq(context, dqVar.dq(), dqVar.d());
                    }
                }
            }
            d.dq().ox();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean d() {
        return dq;
    }

    public static void dq() {
        dq = true;
    }

    public static void dq(Context context) {
        int kx = com.bytedance.msdk.core.dq.d().kx();
        com.bytedance.sdk.component.ia.d.dq.dq(new dq.C0117dq().dq(new kk()).d(com.bytedance.sdk.component.ia.d.p.d.dq.dq(kx, kx, 172800000L)).d(com.bytedance.msdk.core.d.no().mp()).dq(new o()).dq(no.dq).dq("csj_mediation").dq(context).dq());
        com.bytedance.sdk.component.ia.d.dq.d("csj_mediation");
    }

    public static void dq(Context context, p pVar, Map<String, Object> map) {
        if (com.bytedance.msdk.core.dq.d().q()) {
            Context context2 = context == null ? com.bytedance.msdk.core.dq.getContext() : context;
            JSONObject jSONObject = new JSONObject();
            if (map != null) {
                try {
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                } catch (JSONException unused) {
                }
            }
            jSONObject.put("eventIndex", f1254d.getAndIncrement());
            jSONObject.put("is_main_process", h.dq(context));
            jSONObject.put("is_cypher_v4", com.bytedance.msdk.core.dq.dq().dq());
            if (com.bytedance.msdk.core.d.no().kk()) {
                jSONObject.put("e2e_test_flag", "1");
            }
            if (pVar != null) {
                pVar.dq("event_id", UUID.randomUUID().toString());
            }
            JSONObject dq2 = dq.dq(pVar, jSONObject);
            if (dq) {
                dq(context2, pVar, dq2);
            } else {
                d.dq().dq(pVar, dq2);
            }
        }
    }

    private static void dq(Context context, p pVar, JSONObject jSONObject) {
        if (com.bytedance.sdk.component.ia.d.dq.dq("csj_mediation")) {
            dq(context);
        }
        mn dq2 = mn.dq(context, pVar, jSONObject);
        com.bytedance.msdk.ia.p.d.dq(dq2, true);
        com.bytedance.sdk.component.ia.d.p.dq.dq dqVar = new com.bytedance.sdk.component.ia.d.p.dq.dq(dq2.dq, dq2);
        dqVar.dq((byte) 3);
        dqVar.d((byte) 2);
        com.bytedance.sdk.component.ia.d.dq.dq(dqVar, "csj_mediation");
    }

    public static void ox() {
        com.bytedance.sdk.component.ia.d.dq.iw("csj_mediation");
    }
}
