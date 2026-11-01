package com.bytedance.msdk.s;

import android.os.Handler;
import android.text.TextUtils;
import com.bytedance.msdk.ia.bl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class kk implements com.bytedance.sdk.component.ia.dq.no {

    /* renamed from: d, reason: collision with root package name */
    private static final Handler f1251d = new Handler(com.bytedance.msdk.dq.s.iw.d());
    private static final Runnable ox = new Runnable() { // from class: com.bytedance.msdk.s.kk.2
        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.msdk.dq.s.ox.dq("TMe", "--==--- upload event routine");
            com.bytedance.sdk.component.ia.d.dq.iw("csj_mediation");
            kk.d();
        }
    };
    public com.bytedance.msdk.s.d.dq<dq> dq;

    /* JADX INFO: Access modifiers changed from: private */
    public static void d() {
        Handler handler = f1251d;
        handler.removeCallbacksAndMessages(null);
        handler.postDelayed(ox, com.bytedance.msdk.core.dq.d().h());
    }

    private void d(JSONObject jSONObject, int i, long j, int i2, JSONObject jSONObject2) {
        if (jSONObject != null) {
            try {
                JSONObject optJSONObject = jSONObject.optJSONObject("params");
                if (optJSONObject != null) {
                    dq(optJSONObject, i, j, i2, jSONObject2 != null ? jSONObject2.optJSONObject("params") : null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public s dq(List<dq> list) {
        try {
            if (this.dq == null) {
                this.dq = com.bytedance.msdk.core.dq.dq();
            }
        } catch (Exception unused) {
        }
        com.bytedance.msdk.s.d.dq<dq> dqVar = this.dq;
        if (dqVar == null) {
            return null;
        }
        return dqVar.dq(list);
    }

    private void dq(JSONObject jSONObject, int i, long j, int i2, JSONObject jSONObject2) {
        if (jSONObject != null) {
            try {
                String optString = jSONObject.optString("event_extra");
                if (TextUtils.isEmpty(optString)) {
                    return;
                }
                JSONObject jSONObject3 = new JSONObject(optString);
                jSONObject3.putOpt("size", Integer.valueOf(i));
                jSONObject3.putOpt("batchId", Long.valueOf(j));
                jSONObject3.putOpt("batchIndex", Integer.valueOf(i2));
                jSONObject3.putOpt("preEventId", jSONObject2 != null ? jSONObject2.optString("event_id") : "-1");
                jSONObject.put("event_extra", jSONObject3.toString());
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.no
    public void dq(final List<com.bytedance.sdk.component.ia.dq.d> list, final com.bytedance.sdk.component.ia.dq.o oVar) {
        if (list == null || list.size() <= 0) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        final ArrayList arrayList = new ArrayList();
        Iterator<com.bytedance.sdk.component.ia.dq.d> it = list.iterator();
        JSONObject jSONObject = null;
        int i = 0;
        while (true) {
            JSONObject jSONObject2 = jSONObject;
            if (!it.hasNext()) {
                break;
            }
            com.bytedance.sdk.component.ia.dq.d next = it.next();
            jSONObject = next.mn();
            byte s = next.s();
            byte p = next.p();
            if (s == 2 && p == 3) {
                d(jSONObject, list.size(), currentTimeMillis, i, jSONObject2);
                arrayList.add(new mn(next.ox(), jSONObject));
            } else {
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.putOpt("not_v3", jSONObject);
                    jSONObject3.putOpt("batchId", Long.valueOf(currentTimeMillis));
                    jSONObject3.putOpt("batchIndex", Integer.valueOf(i));
                    bl.dq(jSONObject3);
                } catch (Throwable unused) {
                }
            }
            i++;
        }
        if (arrayList.size() > 0) {
            com.bytedance.msdk.dq.s.iw.mn().execute(new Runnable() { // from class: com.bytedance.msdk.s.kk.1
                @Override // java.lang.Runnable
                public void run() {
                    s dq = kk.this.dq(arrayList);
                    if (oVar == null || dq == null) {
                        return;
                    }
                    com.bytedance.sdk.component.ia.d.d.ox.d dVar = new com.bytedance.sdk.component.ia.d.d.ox.d(dq.dq, dq.f1274d, dq.ox, dq.p, "");
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new com.bytedance.sdk.component.ia.d.d.ox.dq(dVar, list));
                    oVar.dq(arrayList2);
                    if (dq.dq) {
                        kk.d();
                    }
                }
            });
        }
    }
}
