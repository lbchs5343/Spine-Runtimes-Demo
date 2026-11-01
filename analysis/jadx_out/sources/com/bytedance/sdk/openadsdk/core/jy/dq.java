package com.bytedance.sdk.openadsdk.core.jy;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.o.d.p;
import com.bytedance.sdk.openadsdk.core.o.ox.ia;
import com.bytedance.sdk.openadsdk.core.o.ox.ig;
import com.bytedance.sdk.openadsdk.core.o.ox.iw;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.o.s;
import com.bytedance.sdk.openadsdk.core.r.fw;
import com.bytedance.sdk.openadsdk.core.r.io;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq implements ox {

    /* renamed from: d, reason: collision with root package name */
    private final d f3114d;
    private final j dq;
    private com.bytedance.sdk.openadsdk.core.o.d.dq iw;
    private boolean ox;
    private final Map<String, com.bytedance.sdk.openadsdk.core.o.d.p> p = new HashMap();
    private boolean s = true;
    private boolean mn = false;

    /* renamed from: com.bytedance.sdk.openadsdk.core.jy.dq$dq, reason: collision with other inner class name */
    public static class C0166dq {
        private static ConcurrentHashMap<String, JSONObject> dq = new ConcurrentHashMap<>();

        public static synchronized JSONObject dq(String str) {
            synchronized (C0166dq.class) {
                if (TextUtils.isEmpty(str)) {
                    return new JSONObject();
                }
                ConcurrentHashMap<String, JSONObject> concurrentHashMap = dq;
                if (concurrentHashMap == null) {
                    return new JSONObject();
                }
                JSONObject jSONObject = concurrentHashMap.get(str);
                if (jSONObject != null) {
                    return jSONObject;
                }
                return new JSONObject();
            }
        }

        public static synchronized void dq(String str, int i, int i2) {
            synchronized (C0166dq.class) {
                try {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    if (dq == null) {
                        dq = new ConcurrentHashMap<>();
                    }
                    JSONObject jSONObject = dq.get(str);
                    if (jSONObject == null) {
                        jSONObject = new JSONObject();
                        dq.put(str, jSONObject);
                    }
                    try {
                        jSONObject.put("downloadStatus", i);
                        jSONObject.put("downloadProcessRate", i2);
                        jSONObject.put(PluginConstants.KEY_ERROR_CODE, 0);
                        jSONObject.put("codeMsg", "get ad_down_load_id success");
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private dq(d dVar, j jVar, boolean z) {
        this.f3114d = dVar;
        this.dq = jVar;
        this.ox = z;
    }

    public static dq dq(d dVar, j jVar, boolean z) {
        return new dq(dVar, jVar, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private com.bytedance.sdk.openadsdk.core.o.d.p dq(Context context, j jVar, final JSONObject jSONObject, String str) {
        com.bytedance.sdk.openadsdk.core.o.d.p d2 = s.d(context, jVar, str, false);
        if (d2 instanceof ia) {
            ((ia) d2).ox(this.ox);
        }
        d2.dq(new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.jy.dq.2
            private void dq(String... strArr) {
                if (strArr == null || strArr.length % 2 != 0) {
                    return;
                }
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("message", "success");
                    jSONObject2.put("appad", jSONObject);
                    for (int i = 0; i < strArr.length; i += 2) {
                        jSONObject2.put(strArr[i], strArr[i + 1]);
                    }
                    dq.this.f3114d.dq("app_ad_event", jSONObject2);
                } catch (JSONException unused) {
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void d(long j, long j2, String str2, String str3) {
                dq("status", "download_paused", "total_bytes", String.valueOf(j), "current_bytes", String.valueOf(j2));
                if (dq.this.iw == null) {
                    return;
                }
                dq.this.iw.d(j, j2, str2, str3);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq() {
                dq("status", "idle");
                if (dq.this.iw == null) {
                    return;
                }
                dq.this.iw.dq();
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(long j, long j2, String str2, String str3) {
                dq("status", "download_active", "total_bytes", String.valueOf(j), "current_bytes", String.valueOf(j2));
                if (dq.this.iw == null) {
                    return;
                }
                dq.this.iw.dq(j, j2, str2, str3);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(long j, String str2, String str3) {
                dq("status", "download_finished", "total_bytes", String.valueOf(j), "current_bytes", String.valueOf(j));
                if (dq.this.iw == null) {
                    return;
                }
                dq.this.iw.dq(j, str2, str3);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(String str2, String str3) {
                dq("status", "installed");
                if (dq.this.iw == null) {
                    return;
                }
                dq.this.iw.dq(str2, str3);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void ox(long j, long j2, String str2, String str3) {
                dq("status", "download_failed", "total_bytes", String.valueOf(j), "current_bytes", String.valueOf(j2));
                if (dq.this.iw == null) {
                    return;
                }
                dq.this.iw.ox(j, j2, str2, str3);
            }
        });
        d2.dq(new p.dq() { // from class: com.bytedance.sdk.openadsdk.core.jy.dq.3
        });
        return d2;
    }

    public static j dq(j jVar, JSONObject jSONObject, String str) {
        String str2;
        boolean z;
        j dq;
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        if (jSONObject != null) {
            str2 = jSONObject.optString("download_url");
            z = true;
        } else {
            str2 = "";
            z = false;
        }
        if (TextUtils.isEmpty(str2)) {
            z = false;
        }
        boolean z2 = (jVar.gm() == null || jVar.gm().d() == null || !jVar.gm().d().equals(str2)) ? z : false;
        if (jSONObject != null && (optJSONObject2 = jSONObject.optJSONObject("download_config_json")) != null && !optJSONObject2.optBoolean("has_valid_download_url", true)) {
            z2 = true;
        }
        if (z2) {
            dq = new j();
            dq.kx(jVar.xx());
            dq.e(jVar.ah());
            dq.kx(jSONObject.optInt("lp_down_rule"));
            dq.ji(4);
            dq.r(jSONObject.optString(TTDownloadField.TT_ID));
            dq.mp(jSONObject.optString(abn.EXTRA_SOURCE));
            com.bytedance.sdk.openadsdk.core.r.p pVar = new com.bytedance.sdk.openadsdk.core.r.p();
            pVar.p(jSONObject.optString("pkg_name"));
            pVar.ox(jSONObject.optString(abn.EXTRA_UA_APP_NAME));
            pVar.d(str2);
            dq.dq(pVar);
            JSONObject optJSONObject3 = jSONObject.optJSONObject("download_config_json");
            if (optJSONObject3 != null) {
                dq.dq(new r(optJSONObject3));
                if (!optJSONObject3.optBoolean("has_valid_download_url", true)) {
                    dq.ia(true);
                }
            }
            JSONObject optJSONObject4 = jSONObject.optJSONObject("app_manage_json");
            if (optJSONObject4 != null) {
                com.bytedance.sdk.openadsdk.core.r.s hy = dq.hy();
                if (hy == null) {
                    hy = new com.bytedance.sdk.openadsdk.core.r.s();
                }
                hy.dq(optJSONObject4.optInt("score"));
                hy.dq(optJSONObject4.optJSONArray("creative_tags"));
                dq.dq(hy);
                dq.ig(optJSONObject4.toString());
                ji wq = dq.wq();
                if (wq == null) {
                    wq = new ji();
                }
                wq.dq(optJSONObject4.optString("icon_url"));
                dq.dq(wq);
                dq.cd(optJSONObject4.optString("desc"));
            }
            JSONObject optJSONObject5 = jSONObject.optJSONObject("app_manage_type_json");
            if (optJSONObject5 != null) {
                dq.e(optJSONObject5.optInt("app_manage_type"));
            }
            int optInt = jSONObject.optInt("live_interaction_type");
            String optString = jSONObject.optString("live_room_id");
            if (optInt > 0 && !TextUtils.isEmpty(optString)) {
                dq.vw(optInt);
                dq.u(optString);
            }
            dq.ds(jSONObject.optInt("ad_type"));
            io dq2 = io.dq(jSONObject.optJSONObject("wc_miniapp_info"));
            if (dq2 != null) {
                dq.dq(dq2);
            }
            String optString2 = jSONObject.optString("quick_app_url");
            if (!TextUtils.isEmpty(optString2)) {
                com.bytedance.sdk.openadsdk.core.r.p gm = dq.gm() != null ? dq.gm() : new com.bytedance.sdk.openadsdk.core.r.p();
                gm.dq(optString2);
                dq.dq(gm);
            }
        } else {
            dq = com.bytedance.sdk.openadsdk.core.d.dq(jVar.ve());
        }
        if (!TextUtils.isEmpty(str)) {
            dq.i(str);
        }
        if (jSONObject != null && (optJSONObject = jSONObject.optJSONObject("deep_link")) != null) {
            fw fwVar = new fw();
            if (jVar.kf() != null) {
                fwVar.dq(jVar.kf());
            }
            fwVar.dq(new fw(optJSONObject));
            dq.dq(fwVar);
        }
        return dq;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void dq(Context context, j jVar, String str) {
        if (context == 0 || jVar == null) {
            return;
        }
        if (jVar.gm() == null) {
            com.bytedance.sdk.openadsdk.core.o.d.ox d2 = s.d(context, jVar, str, false);
            if (d2 instanceof ia) {
                ((ia) d2).ox(this.ox);
            }
            d2.dq(jVar, false);
        } else {
            final String fx = jVar.fx();
            com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = (com.bytedance.sdk.openadsdk.core.o.d.p) this.p.get(jVar.gm().d());
            if (oxVar != null) {
                oxVar.d(this.mn);
                if (oxVar instanceof ia) {
                    ((ia) oxVar).no().dq(this.s);
                } else if (oxVar instanceof ig) {
                    ((ig) oxVar).d().dq(this.s);
                }
                oxVar.dq(jVar, false);
                oxVar.dq(new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.jy.dq.1
                    @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                    public void d(long j, long j2, String str2, String str3) {
                        if (j > 0) {
                            C0166dq.dq(fx, 2, (int) ((j2 * 100) / j));
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                    public void dq() {
                        C0166dq.dq(fx, 1, 0);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                    public void dq(long j, long j2, String str2, String str3) {
                        if (j > 0) {
                            C0166dq.dq(fx, 3, (int) ((j2 * 100) / j));
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                    public void dq(long j, String str2, String str3) {
                        C0166dq.dq(fx, 5, 100);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                    public void dq(String str2, String str3) {
                        C0166dq.dq(fx, 6, 100);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                    public void ox(long j, long j2, String str2, String str3) {
                        if (j > 0) {
                            C0166dq.dq(fx, 4, (int) ((j2 * 100) / j));
                        }
                    }
                });
            }
        }
        if (context instanceof com.bytedance.sdk.openadsdk.core.mn.d) {
            ((com.bytedance.sdk.openadsdk.core.mn.d) context).dq(1);
        }
    }

    private void dq(Context context, j jVar, JSONObject jSONObject, int i, int i2, boolean z) {
        if (context == null || jVar == null || jVar.gm() == null || jSONObject == null || this.f3114d == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.o.d.p pVar = this.p.get(jVar.gm().d());
        if (pVar != null) {
            pVar.dq(i2);
            return;
        }
        String dq = c.dq(i);
        if (TextUtils.isEmpty(dq)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.o.d.p dq2 = dq(context, jVar, jSONObject, dq);
        dq2.dq(i2);
        if (dq2 instanceof iw) {
            ((iw) dq2).ox(z);
        }
        this.p.put(jVar.gm().d(), dq2);
    }

    private void dq(j jVar, JSONObject jSONObject) {
        if (this.f3114d == null || jVar == null || jVar.gm() == null) {
            return;
        }
        String d2 = jVar.gm().d();
        if (this.p.containsKey(d2)) {
            com.bytedance.sdk.openadsdk.core.o.d.p remove = this.p.remove(d2);
            if (remove != null) {
                try {
                    remove.kk();
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("message", "success");
            jSONObject2.put("status", "unsubscribed");
            jSONObject2.put("appad", jSONObject);
            this.f3114d.dq("app_ad_event", jSONObject2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.ox
    public void d() {
        Iterator<com.bytedance.sdk.openadsdk.core.o.d.p> it = this.p.values().iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.ox
    public void d(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null || this.f3114d == null || (optJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.o.d.p pVar = this.p.get(dq(this.dq, optJSONObject, (String) null).gm().d());
        if (pVar != null) {
            pVar.mn();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.ox
    public void d(boolean z) {
        this.mn = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.ox
    public void dq() {
        for (com.bytedance.sdk.openadsdk.core.o.d.p pVar : this.p.values()) {
            if (pVar != null) {
                pVar.ia();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.ox
    public void dq(Context context, JSONObject jSONObject, String str, int i, boolean z, boolean z2) {
        JSONObject optJSONObject;
        if (context == null || jSONObject == null || (optJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        j dq = dq(this.dq, optJSONObject, str);
        dq(context, dq, optJSONObject, i, z ? jy.dq(dq) : 0, z2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.ox
    public void dq(Context context, JSONObject jSONObject, String str, String str2) {
        JSONObject optJSONObject;
        if (context == null || jSONObject == null || (optJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        dq(context, dq(this.dq, optJSONObject, str2), str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.ox
    public void dq(String str, boolean z) {
        com.bytedance.sdk.openadsdk.core.o.d.p pVar;
        if (TextUtils.isEmpty(str) || (pVar = this.p.get(str)) == null) {
            return;
        }
        pVar.iw(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.ox
    public void dq(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        dq(dq(this.dq, optJSONObject, (String) null), optJSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.ox
    public void dq(boolean z) {
        this.s = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.ox
    public void ox() {
        d();
        for (com.bytedance.sdk.openadsdk.core.o.d.p pVar : this.p.values()) {
            if (pVar != null) {
                pVar.kk();
            }
        }
        this.p.clear();
    }
}
