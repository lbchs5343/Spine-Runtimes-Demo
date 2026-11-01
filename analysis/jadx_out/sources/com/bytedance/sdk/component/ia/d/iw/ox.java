package com.bytedance.sdk.component.ia.d.iw;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.abn;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox implements d {

    /* renamed from: d, reason: collision with root package name */
    private final s f1916d;
    private final Context dq;
    private com.bytedance.sdk.component.ia.dq.s ox;

    @SuppressLint({"StaticFieldLeak"})
    public class dq extends com.bytedance.sdk.component.ia.d.s.d {

        /* renamed from: d, reason: collision with root package name */
        private final p f1918d;
        private final String ox;
        private final Map<String, String> p;

        private dq(p pVar, String str, Map<String, String> map) {
            super("AdsStats");
            this.f1918d = pVar;
            this.ox = str;
            this.p = map;
        }

        private JSONObject dq(com.bytedance.sdk.component.ia.dq.dq.s sVar, p pVar, String str, String str2) {
            JSONObject jSONObject = new JSONObject();
            if (pVar != null) {
                try {
                    jSONObject.put("retry_count", 5 - pVar.s());
                    JSONObject dq = pVar.dq();
                    if (dq != null) {
                        jSONObject.put("track_type", dq.optString("track_type", ""));
                    }
                    jSONObject.put(abn.EXTRA_URL, str);
                    jSONObject.put("current", System.currentTimeMillis());
                    jSONObject.put("error_msg", str2);
                    if (sVar != null) {
                        jSONObject.put("http_code", sVar.ox());
                        String d2 = sVar.d();
                        if (!TextUtils.isEmpty(d2)) {
                            if (d2.length() > 5000) {
                                d2 = d2.substring(0, MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
                            }
                            jSONObject.put("http_response", d2);
                        }
                        jSONObject.put("success", sVar.dq() ? 1 : 0);
                    }
                } catch (JSONException unused) {
                }
            }
            return jSONObject;
        }

        private void dq(com.bytedance.sdk.component.ia.dq.dq.s sVar, com.bytedance.sdk.component.ia.dq.p pVar, p pVar2, String str, String str2) {
            try {
                pVar.dq(this.f1918d.dq(), dq(sVar, pVar2, str, str2));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        private String ox(String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            if (str.contains("{TS}") || str.contains("__TS__")) {
                long currentTimeMillis = System.currentTimeMillis();
                str = str.replace("{TS}", String.valueOf(currentTimeMillis)).replace("__TS__", String.valueOf(currentTimeMillis));
            }
            return ((str.contains("{UID}") || str.contains("__UID__")) && !TextUtils.isEmpty(this.ox)) ? str.replace("{UID}", this.ox).replace("__UID__", this.ox) : str;
        }

        public String d(String str) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    return str.replace("[ss_random]", String.valueOf(ox.d().nextLong())).replace("[ss_timestamp]", String.valueOf(System.currentTimeMillis()));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            return str;
        }

        public boolean dq(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return str.startsWith("http://") || str.startsWith("https://");
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.component.ia.dq.p p = ox.this.ox.p();
            if (p == null || ox.this.ox.getContext() == null || !p.p()) {
                return;
            }
            if (!dq(this.f1918d.ox())) {
                p pVar = this.f1918d;
                dq(null, p, pVar, pVar.ox(), "not http url");
                return;
            }
            if (this.f1918d.s() == 0) {
                ox.this.f1916d.delete(this.f1918d);
                p pVar2 = this.f1918d;
                dq(null, p, pVar2, pVar2.ox(), "retry max");
                return;
            }
            try {
                if (this.f1918d.s() == 5) {
                    ox.this.f1916d.insert(this.f1918d);
                }
                if (!p.dq(ox.this.getContext())) {
                    p pVar3 = this.f1918d;
                    dq(null, p, pVar3, pVar3.ox(), "no net");
                    return;
                }
                System.currentTimeMillis();
                String ox = this.f1918d.ox();
                if (p.o() == 0) {
                    ox = ox(this.f1918d.ox());
                    if (this.f1918d.p()) {
                        ox = d(ox);
                    }
                }
                String str = ox;
                com.bytedance.sdk.component.ia.dq.dq.d mn = p.mn();
                com.bytedance.sdk.component.ia.dq.dq.s sVar = null;
                if (mn == null) {
                    dq(null, this.f1918d, str, "no executor");
                    return;
                }
                mn.dq("User-Agent", p.s());
                mn.dq("csj_client_source_from", "1");
                if (this.p != null) {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry<String, String> entry : this.p.entrySet()) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                    mn.dq("csj_extra_info", jSONObject.toString());
                }
                mn.dq(str);
                try {
                    sVar = mn.dq();
                } catch (Throwable unused) {
                }
                if (sVar == null || !sVar.dq()) {
                    if (sVar != null && sVar.ox() == 8848) {
                        sVar.p();
                        ox.this.f1916d.delete(this.f1918d);
                    }
                    com.bytedance.sdk.component.ia.dq.s unused2 = ox.this.ox;
                    this.f1918d.dq(r0.s() - 1);
                    if (this.f1918d.s() == 0) {
                        ox.this.f1916d.delete(this.f1918d);
                        com.bytedance.sdk.component.ia.dq.s unused3 = ox.this.ox;
                    } else {
                        ox.this.f1916d.update(this.f1918d);
                    }
                    if (sVar != null) {
                        sVar.p();
                        System.currentTimeMillis();
                    } else {
                        System.currentTimeMillis();
                    }
                } else {
                    ox.this.f1916d.delete(this.f1918d);
                    com.bytedance.sdk.component.ia.dq.s unused4 = ox.this.ox;
                    System.currentTimeMillis();
                }
                dq(sVar, p, this.f1918d, str, null);
            } catch (Throwable unused5) {
            }
        }
    }

    public ox(s sVar, com.bytedance.sdk.component.ia.dq.s sVar2) {
        this.dq = sVar2.getContext();
        this.f1916d = sVar;
        this.ox = sVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Random d() {
        SecureRandom instanceStrong;
        if (Build.VERSION.SDK_INT < 26) {
            return new SecureRandom();
        }
        try {
            instanceStrong = SecureRandom.getInstanceStrong();
            return instanceStrong;
        } catch (Throwable unused) {
            return new SecureRandom();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(List<p> list, String str) {
        String str2;
        if (list == null || list.size() == 0) {
            return;
        }
        com.bytedance.sdk.component.ia.dq.p p = this.ox.p();
        for (p pVar : list) {
            if (p == null || p.ia() == null) {
                str2 = str;
            } else {
                str2 = str;
                p.ia().execute(new dq(pVar, str2, null));
            }
            str = str2;
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.iw.d
    public void dq(final String str) {
        com.bytedance.sdk.component.ia.dq.p p = this.ox.p();
        if (p == null || this.ox.getContext() == null || !p.p()) {
            return;
        }
        com.bytedance.sdk.component.ia.d.s.d dVar = new com.bytedance.sdk.component.ia.d.s.d("trackFailedUrls") { // from class: com.bytedance.sdk.component.ia.d.iw.ox.1
            @Override // java.lang.Runnable
            public void run() {
                ox.this.dq(ox.this.f1916d.dq(), str);
            }
        };
        dVar.dq(1);
        if (p.ia() != null) {
            p.ia().execute(dVar);
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.iw.d
    public void dq(String str, List<String> list, boolean z, Map<String, String> map, JSONObject jSONObject) {
        com.bytedance.sdk.component.ia.dq.p p = this.ox.p();
        if (p == null || this.ox.getContext() == null || p.ia() == null || !p.p() || list == null || list.size() == 0) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            p.ia().execute(new dq(new p(UUID.randomUUID().toString() + "_" + System.currentTimeMillis(), it.next(), z, 5, jSONObject, 1), str, map));
        }
    }

    public Context getContext() {
        Context context = this.dq;
        return context == null ? this.ox.getContext() : context;
    }
}
