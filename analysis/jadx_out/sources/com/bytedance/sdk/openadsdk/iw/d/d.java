package com.bytedance.sdk.openadsdk.iw.d;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.ox.ox;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp.mp;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.h.o;
import com.bytedance.sdk.openadsdk.iw.ox.f;
import com.bytedance.sdk.openadsdk.iw.ox.fw;
import com.bytedance.sdk.openadsdk.iw.ox.ia;
import com.bytedance.sdk.openadsdk.iw.ox.iw;
import com.bytedance.sdk.openadsdk.iw.ox.jy;
import com.bytedance.sdk.openadsdk.iw.ox.no;
import com.bytedance.sdk.openadsdk.iw.ox.q;
import com.bytedance.sdk.openadsdk.iw.ox.s;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import j$.util.DesugarCollections;
import java.io.File;
import java.util.Map;
import java.util.UUID;
import java.util.WeakHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    private static final Map<com.bykv.vk.openvk.component.video.api.d.dq, fw> dq = DesugarCollections.synchronizedMap(new WeakHashMap());

    public static void d(com.bykv.vk.openvk.component.video.api.d.dq dqVar, fw.dq dqVar2) {
        fw fwVar;
        if (dqVar == null || dqVar2 == null || (fwVar = dq.get(dqVar)) == null) {
            return;
        }
        p p = fwVar.p();
        j s = fwVar.s();
        if (p == null || s == null) {
            return;
        }
        long dq2 = dqVar2.dq();
        long ox = dqVar2.ox();
        if (ox <= 0 || dq2 <= 0) {
            return;
        }
        ia iaVar = new ia();
        iaVar.dq(dqVar2.d());
        iaVar.d(ox);
        JSONObject dq3 = dq(p, fwVar.d(), fwVar.ox(), p.cd(), s);
        dq(dq3, p.s("EXTRA_PLAY_ACTION"));
        com.bytedance.sdk.openadsdk.iw.ox.d dVar = new com.bytedance.sdk.openadsdk.iw.ox.d(s, c.d(s), dq3, iaVar);
        dVar.dq(dqVar2.ig());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediationConstant.EXTRA_DURATION, dq2);
            jSONObject.put("percent", dqVar2.ia());
            dq(dVar, "feed_pause", jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static void d(final j jVar, final com.bykv.vk.openvk.component.video.api.d.dq dqVar, final p pVar) {
        mn.d(new kk("play_start") { // from class: com.bytedance.sdk.openadsdk.iw.d.d.1
            @Override // java.lang.Runnable
            public void run() {
                if (jVar == null || dqVar == null || pVar == null) {
                    return;
                }
                String uuid = UUID.randomUUID().toString();
                com.bykv.vk.openvk.component.video.api.dq.d dq2 = com.bytedance.sdk.openadsdk.h.kk.dq(jVar.mx());
                int i = d.dq(jVar, dqVar, pVar) ? 1 : 2;
                d.dq.put(dqVar, new fw(SystemClock.elapsedRealtime(), uuid, i, pVar, jVar));
                long d2 = dq2.d(pVar);
                f fVar = new f();
                if (d2 > 0) {
                    fVar.dq(d2);
                }
                mp.dq(i, d2, jVar, pVar);
                p pVar2 = pVar;
                JSONObject dq3 = d.dq(pVar2, uuid, i, pVar2.cd(), jVar);
                d.dq(dq3, pVar.s("EXTRA_PLAY_START"));
                com.bytedance.sdk.openadsdk.iw.ox.d dVar = new com.bytedance.sdk.openadsdk.iw.ox.d(jVar, c.d(jVar), dq3, fVar);
                dVar.dq(pVar.cd() == -1);
                d.d(dVar, "play_start");
            }
        });
    }

    public static void d(com.bytedance.sdk.openadsdk.iw.ox.d<com.bytedance.sdk.openadsdk.iw.ox.mp> dVar) {
        d(dVar, "load_video_success");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(com.bytedance.sdk.openadsdk.iw.ox.d dVar, String str) {
        dq(dVar, str, (JSONObject) null);
    }

    public static synchronized p dq(com.bykv.vk.openvk.component.video.api.d.dq dqVar) {
        synchronized (d.class) {
            if (dqVar == null) {
                return null;
            }
            fw fwVar = dq.get(dqVar);
            if (fwVar == null) {
                return null;
            }
            return fwVar.p();
        }
    }

    public static String dq(j jVar, String str) {
        if (jVar == null || !c.iw(jVar) || !c.mn(jVar)) {
            return str;
        }
        str.getClass();
        switch (str) {
        }
        return str;
    }

    public static JSONObject dq(p pVar, String str, int i, int i2, j jVar) {
        ox k;
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("session_id", str);
            }
            if (i > 0) {
                jSONObject.put("play_type", String.valueOf(i));
            }
            if (o.dq(jVar)) {
                jSONObject.put("is_audio", 1);
            }
            if (pVar != null) {
                if (pVar.q()) {
                    k = pVar.wp();
                    jSONObject.put("codec", "h265");
                } else {
                    k = pVar.k();
                }
                if (k != null) {
                    jSONObject.put("video_resolution", k.kk());
                    jSONObject.put("video_size", Long.valueOf(k.s()));
                    jSONObject.put("video_url", k.ig());
                    jSONObject.put("player_type", i2);
                    jSONObject.put("play_speed_ratio", k.ia());
                    if (k.mn() > 0.0d) {
                        jSONObject.put("start", k.mn());
                    }
                }
            }
            if (jVar != null) {
                jSONObject.put("dynamic_join_type", jVar.kr());
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public static void dq(com.bykv.vk.openvk.component.video.api.d.dq dqVar, fw.dq dqVar2) {
        fw fwVar;
        if (dqVar == null || dqVar2 == null || (fwVar = dq.get(dqVar)) == null) {
            return;
        }
        p p = fwVar.p();
        j s = fwVar.s();
        if (p == null || s == null) {
            return;
        }
        if (!o.dq(s) || gh.d(s)) {
            if (!dqVar2.ig()) {
                dq(s, p, dqVar2);
            }
            com.bytedance.sdk.openadsdk.iw.ox.kk kkVar = new com.bytedance.sdk.openadsdk.iw.ox.kk();
            kkVar.dq(dqVar2.mp() ? 1 : 0);
            kkVar.d(com.bytedance.sdk.openadsdk.h.kk.dq(s.mx()).d(p));
            kkVar.dq(SystemClock.elapsedRealtime() - fwVar.dq());
            JSONObject dq2 = dq(p, fwVar.d(), fwVar.ox(), p.cd(), s);
            dq(dq2, p.s("EXTRA_PLAY_START"));
            com.bytedance.sdk.openadsdk.iw.ox.d dVar = new com.bytedance.sdk.openadsdk.iw.ox.d(s, c.d(s), dq2, kkVar);
            dVar.dq(dqVar2.ig());
            d(dVar, dq(s, "feed_play"));
        }
    }

    public static void dq(com.bykv.vk.openvk.component.video.api.d.dq dqVar, fw.dq dqVar2, String str) {
        fw fwVar;
        if (dqVar == null || dqVar2 == null || (fwVar = dq.get(dqVar)) == null) {
            return;
        }
        p p = fwVar.p();
        j s = fwVar.s();
        if (p == null || s == null) {
            return;
        }
        long dq2 = dqVar2.dq();
        long ox = dqVar2.ox();
        if (ox < 0) {
            return;
        }
        jy jyVar = new jy();
        jyVar.dq(dqVar2.d());
        jyVar.d(ox);
        jyVar.dq(dqVar2.p());
        jyVar.d(dqVar2.s());
        jyVar.dq(str);
        JSONObject dq3 = dq(p, fwVar.d(), fwVar.ox(), p.cd(), s);
        dq(dq3, p.s("EXTRA_PLAY_START"));
        com.bytedance.sdk.openadsdk.iw.ox.d dVar = new com.bytedance.sdk.openadsdk.iw.ox.d(s, c.d(s), dq3, jyVar);
        dVar.dq(dqVar2.ig());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediationConstant.EXTRA_DURATION, dq2);
            jSONObject.put("percent", dqVar2.ia());
            dq(dVar, "play_error", jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static void dq(com.bykv.vk.openvk.component.video.api.d.dq dqVar, fw.dq dqVar2, Map<String, Object> map) {
        fw fwVar;
        if (dqVar == null || dqVar2 == null || (fwVar = dq.get(dqVar)) == null) {
            return;
        }
        p p = fwVar.p();
        j s = fwVar.s();
        if (p == null || s == null) {
            return;
        }
        long dq2 = dqVar2.dq();
        long ox = dqVar2.ox();
        if (ox <= 0) {
            return;
        }
        s sVar = new s();
        sVar.d(dqVar2.d());
        sVar.dq(ox);
        sVar.dq(dqVar2.kk());
        sVar.d(dqVar2.o());
        JSONObject dq3 = dq(p, fwVar.d(), fwVar.ox(), p.cd(), s);
        dq(dq3, map);
        com.bytedance.sdk.openadsdk.iw.ox.d dVar = new com.bytedance.sdk.openadsdk.iw.ox.d(s, c.d(s), dq3, sVar);
        dVar.dq(dqVar2.ig());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediationConstant.EXTRA_DURATION, dq2);
            jSONObject.put("percent", dqVar2.ia());
            mp.dq(dq2, s, p);
            dq(dVar, dq(s, "feed_break"), jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        dq.remove(dqVar);
    }

    private static void dq(final j jVar, final p pVar, final fw.dq dqVar) {
        ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.iw.d.d.3
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("service_duration", d.ox(p.this));
                jSONObject.put("player_duration", dqVar.ox());
                jSONObject.put("cache_path_type", com.bytedance.sdk.openadsdk.h.kk.p());
                jSONObject.put(abn.EXTRA_URL, p.this.f());
                jSONObject.put("path", d.p(p.this));
                jSONObject.put("player_type", p.this.cd());
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("pangle_video_play_state").dq(c.ia(jVar)).d(jSONObject.toString());
            }
        }, "pangle_video_play_state");
    }

    public static void dq(com.bytedance.sdk.openadsdk.iw.ox.d<com.bytedance.sdk.openadsdk.iw.ox.ig> dVar) {
        d(dVar, "load_video_start");
    }

    private static void dq(final com.bytedance.sdk.openadsdk.iw.ox.d dVar, String str, JSONObject jSONObject) {
        if (dVar == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        if (dVar.s() && !TextUtils.isEmpty(dVar.d()) && !s(dVar)) {
            String d2 = dVar.d();
            d2.getClass();
            switch (d2) {
                case "stream":
                case "embeded_ad":
                case "draw_ad":
                    str = "customer_".concat(String.valueOf(str));
                    break;
            }
        }
        dq.dq(str, dVar.dq());
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(dVar.dq(), dVar.d(), str, jSONObject, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.iw.d.d.2
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject2) throws JSONException {
                JSONObject ox = com.bytedance.sdk.openadsdk.iw.ox.d.this.ox();
                if (com.bytedance.sdk.openadsdk.iw.ox.d.this.p() != null) {
                    com.bytedance.sdk.openadsdk.iw.ox.d.this.p().a_(ox);
                }
                jSONObject2.put("ad_extra_data", ox.toString());
            }
        });
    }

    public static void dq(JSONObject jSONObject, Object obj) {
        if (jSONObject == null) {
            return;
        }
        Map map = null;
        try {
            if (obj instanceof Map) {
                map = (Map) obj;
            }
        } catch (Exception unused) {
        }
        if (map != null) {
            try {
                for (Map.Entry entry : map.entrySet()) {
                    jSONObject.put((String) entry.getKey(), entry.getValue());
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static boolean dq(j jVar, com.bykv.vk.openvk.component.video.api.d.dq dqVar, p pVar) {
        int mx = jVar.mx();
        com.bykv.vk.openvk.component.video.api.dq.d dq2 = com.bytedance.sdk.openadsdk.h.kk.dq(mx);
        if (mx != 0) {
            if (mx == 1) {
                return dq2.dq(pVar);
            }
            return false;
        }
        long d2 = dq2.d(pVar);
        boolean mp = pVar.mp();
        int iw = pVar.iw();
        if (mp) {
            iw = (int) pVar.ig();
        }
        int d3 = pVar.d();
        if (d3 > 0) {
            iw = d3;
        }
        return d2 >= ((long) iw);
    }

    public static void iw(com.bykv.vk.openvk.component.video.api.d.dq dqVar, fw.dq dqVar2) {
        if (dqVar == null || dqVar2 == null) {
            return;
        }
        if (dqVar2.no() <= 0) {
            com.bytedance.sdk.component.utils.ig.dq("VideoEventManager", "Cancel log report when buffer count is 0");
            return;
        }
        fw fwVar = dq.get(dqVar);
        if (fwVar == null) {
            return;
        }
        p p = fwVar.p();
        j s = fwVar.s();
        if (p == null || s == null) {
            return;
        }
        long ox = dqVar2.ox();
        if (ox <= 0) {
            return;
        }
        q qVar = new q();
        qVar.dq(dqVar2.d());
        qVar.d(ox);
        qVar.dq(dqVar2.no());
        JSONObject dq2 = dq(p, fwVar.d(), fwVar.ox(), p.cd(), s);
        dq(dq2, p.s("EXTRA_PLAY_ACTION"));
        com.bytedance.sdk.openadsdk.iw.ox.d dVar = new com.bytedance.sdk.openadsdk.iw.ox.d(s, c.d(s), dq2, qVar);
        dVar.dq(dqVar2.ig());
        d(dVar, "play_buffer");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long ox(p pVar) {
        if (pVar == null) {
            return 0L;
        }
        ox wp = pVar.q() ? pVar.wp() : pVar.k();
        if (wp != null) {
            return Double.valueOf(wp.iw() * 1000.0d).longValue();
        }
        return 0L;
    }

    public static void ox(com.bykv.vk.openvk.component.video.api.d.dq dqVar, fw.dq dqVar2) {
        fw fwVar;
        if (dqVar == null || dqVar2 == null || (fwVar = dq.get(dqVar)) == null) {
            return;
        }
        p p = fwVar.p();
        j s = fwVar.s();
        if (p == null || s == null) {
            return;
        }
        long dq2 = dqVar2.dq();
        long ox = dqVar2.ox();
        if (ox <= 0 || dq2 <= 0) {
            return;
        }
        iw iwVar = new iw();
        iwVar.dq(dqVar2.d());
        iwVar.d(ox);
        JSONObject dq3 = dq(p, fwVar.d(), fwVar.ox(), p.cd(), s);
        dq(dq3, p.s("EXTRA_PLAY_ACTION"));
        com.bytedance.sdk.openadsdk.iw.ox.d dVar = new com.bytedance.sdk.openadsdk.iw.ox.d(s, c.d(s), dq3, iwVar);
        dVar.dq(dqVar2.ig());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediationConstant.EXTRA_DURATION, dq2);
            jSONObject.put("percent", dqVar2.ia());
            dq(dVar, "feed_continue", jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static void ox(com.bytedance.sdk.openadsdk.iw.ox.d<no> dVar) {
        d(dVar, "load_video_error");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String p(p pVar) {
        return new File(pVar.s(), pVar.fw()).getAbsolutePath();
    }

    public static void p(com.bykv.vk.openvk.component.video.api.d.dq dqVar, fw.dq dqVar2) {
        Map<com.bykv.vk.openvk.component.video.api.d.dq, fw> map;
        fw fwVar;
        if (dqVar == null || dqVar2 == null || (fwVar = (map = dq).get(dqVar)) == null) {
            return;
        }
        p p = fwVar.p();
        j s = fwVar.s();
        if (p == null || s == null) {
            return;
        }
        map.remove(dqVar);
        long dq2 = dqVar2.dq();
        long ox = dqVar2.ox();
        com.bytedance.sdk.openadsdk.iw.ox.ox oxVar = new com.bytedance.sdk.openadsdk.iw.ox.ox();
        oxVar.dq(dqVar2.d());
        oxVar.d(ox);
        oxVar.dq(dqVar2.iw());
        oxVar.d(dqVar2.mn());
        JSONObject dq3 = dq(p, fwVar.d(), fwVar.ox(), p.cd(), s);
        dq(dq3, p.s("EXTRA_PLAY_START"));
        com.bytedance.sdk.openadsdk.iw.ox.d dVar = new com.bytedance.sdk.openadsdk.iw.ox.d(s, c.d(s), dq3, oxVar);
        dVar.dq(dqVar2.ig());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediationConstant.EXTRA_DURATION, dq2);
            jSONObject.put("percent", dqVar2.ia());
            dq(dVar, "endcard_skip", jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static void p(com.bytedance.sdk.openadsdk.iw.ox.d<com.bytedance.sdk.openadsdk.iw.ox.o> dVar) {
        d(dVar, "load_video_cancel");
    }

    public static void s(com.bykv.vk.openvk.component.video.api.d.dq dqVar, fw.dq dqVar2) {
        if (dqVar == null || dqVar2 == null) {
            return;
        }
        iw(dqVar, dqVar2);
        fw fwVar = dq.get(dqVar);
        if (fwVar == null) {
            return;
        }
        p p = fwVar.p();
        j s = fwVar.s();
        if (p == null || s == null) {
            return;
        }
        long dq2 = dqVar2.dq();
        long ox = dqVar2.ox();
        if (ox <= 0) {
            return;
        }
        com.bytedance.sdk.openadsdk.iw.ox.mn mnVar = new com.bytedance.sdk.openadsdk.iw.ox.mn();
        mnVar.d(dqVar2.d());
        mnVar.dq(ox);
        mnVar.dq(dqVar2.o());
        JSONObject dq3 = dq(p, fwVar.d(), fwVar.ox(), p.cd(), s);
        dq(dq3, p.s("EXTRA_PLAY_ACTION"));
        com.bytedance.sdk.openadsdk.iw.ox.d dVar = new com.bytedance.sdk.openadsdk.iw.ox.d(s, c.d(s), dq3, mnVar);
        dVar.dq(dqVar2.ig());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediationConstant.EXTRA_DURATION, dq2);
            jSONObject.put("percent", dqVar2.ia());
            mp.dq(dq2, s, p);
            dq(dVar, dq(s, "feed_over"), jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        dq.remove(dqVar);
    }

    private static boolean s(com.bytedance.sdk.openadsdk.iw.ox.d dVar) {
        j dq2;
        if (dVar == null || !dVar.s() || (dq2 = dVar.dq()) == null) {
            return false;
        }
        String e2 = dq2.ds().e();
        if (TextUtils.isEmpty(e2)) {
            return false;
        }
        try {
            JSONArray jSONArray = new JSONArray(e2);
            int length = jSONArray.length();
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            for (int i = 0; i < length; i++) {
                String optString = jSONArray.getJSONObject(i).optString(abn.EXTRA_UA_APP_NAME);
                if ("content_did".equalsIgnoreCase(optString)) {
                    z = true;
                } else if ("content_utmsource".equalsIgnoreCase(optString)) {
                    z2 = true;
                } else if ("content_sdk_version".equalsIgnoreCase(optString)) {
                    z3 = true;
                }
            }
            return z && z2 && z3;
        } catch (JSONException e3) {
            e3.getMessage();
            return false;
        }
    }
}
