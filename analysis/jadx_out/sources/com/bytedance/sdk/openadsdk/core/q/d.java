package com.bytedance.sdk.openadsdk.core.q;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.iw;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ig.ox;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.q.ox.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    private static String dq = "gecko.zijieapi.com";

    /* renamed from: com.bytedance.sdk.openadsdk.core.q.d$d, reason: collision with other inner class name */
    public static class C0182d implements com.bykv.vk.openvk.preload.geckox.q.dq {
        private Map<String, j> dq;

        public C0182d(Map<String, j> map) {
            this.dq = map;
        }

        @Override // com.bykv.vk.openvk.preload.geckox.q.dq
        public void dq(String str, JSONObject jSONObject) {
            if ("geckosdk_update_stats".equals(str)) {
                j jVar = this.dq.get(jSONObject.optString("channel"));
                if (jVar != null) {
                    ox.dq.dq(str, jSONObject, jVar);
                }
            }
        }
    }

    public static class dq {
        private static d dq = new d();
    }

    private d() {
        if (no.ia().ce()) {
            com.bykv.vk.openvk.preload.geckox.no.d.dq();
            com.bykv.vk.openvk.preload.geckox.dq.dq(new com.bykv.vk.openvk.preload.geckox.d() { // from class: com.bytedance.sdk.openadsdk.core.q.d.1
                @Override // com.bykv.vk.openvk.preload.geckox.d
                public ExecutorService dq() {
                    return mn.dq();
                }
            });
        }
    }

    private String d(String str, Object obj) {
        String str2 = null;
        if (obj == null) {
            return null;
        }
        try {
            str2 = com.bykv.vk.openvk.component.video.api.iw.dq.dq(((com.bykv.vk.openvk.preload.ox.dq.dq) obj).dq(str + "/manifest.json"));
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(str2)) {
            ig.p("GeckoHub", "getFileInfoInManifest error null");
        }
        return str2;
    }

    public static d dq() {
        return dq.dq;
    }

    private String ox() {
        String[] rp = wp.d().rp();
        if (rp == null) {
            return dq;
        }
        String str = rp[com.bytedance.sdk.component.utils.dq.ox().nextInt(rp.length)];
        return TextUtils.isEmpty(str) ? dq : str;
    }

    public Object d() {
        try {
            return com.bykv.vk.openvk.preload.geckox.dq.dq(wp.getContext()).dq();
        } catch (Throwable th) {
            ig.d("GeckoHub", "getGeckoResLoader error", th);
            return null;
        }
    }

    public com.bytedance.sdk.openadsdk.core.q.ox.d dq(String str, Object obj) {
        try {
            String d2 = d(str, obj);
            if (TextUtils.isEmpty(d2)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(d2);
            Iterator<String> keys = jSONObject.keys();
            com.bytedance.sdk.openadsdk.core.q.ox.d dVar = new com.bytedance.sdk.openadsdk.core.q.ox.d(str);
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                if (optJSONObject != null) {
                    d.dq dqVar = new d.dq();
                    dqVar.dq = optJSONObject.optString(TTDownloadField.TT_FILE_NAME);
                    dqVar.f3417d = optJSONObject.optString("fileMd5");
                    dqVar.ox = optJSONObject.optLong("filSize");
                    dqVar.p = optJSONObject.optString("resourceType");
                    dqVar.s = optJSONObject.optString(abn.EXTRA_URL);
                    JSONObject optJSONObject2 = optJSONObject.optJSONObject("respHeader");
                    if (optJSONObject2 != null && optJSONObject2.length() > 0) {
                        Iterator<String> keys2 = optJSONObject2.keys();
                        while (keys2.hasNext()) {
                            String next2 = keys2.next();
                            dqVar.dq(next2, optJSONObject2.optString(next2));
                        }
                    }
                    dqVar.iw = optJSONObject.optLong("type");
                    dqVar.mn = optJSONObject.optString("charset");
                    dVar.dq.put(next, dqVar);
                }
            }
            if (dVar.dq.isEmpty()) {
                return null;
            }
            return dVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.q.ox.d dVar, Object obj) {
        Map<String, d.dq> map;
        if (dVar == null || (map = dVar.dq) == null || obj == null) {
            return;
        }
        com.bykv.vk.openvk.preload.ox.dq.dq dqVar = (com.bykv.vk.openvk.preload.ox.dq.dq) obj;
        try {
            for (Map.Entry<String, d.dq> entry : map.entrySet()) {
                if (entry != null && entry.getValue() != null) {
                    d.dq value = entry.getValue();
                    value.ia = iw.p(dqVar.d(dVar.ox + File.separator + value.dq));
                    dVar.dq(value);
                }
            }
        } catch (Throwable unused) {
            dVar.dq();
        }
    }

    public void dq(String str, com.bykv.vk.openvk.preload.geckox.o.dq dqVar, j jVar) {
        if (Build.VERSION.SDK_INT <= 23) {
            return;
        }
        String ox = i.ox();
        if (TextUtils.isEmpty(ox)) {
            return;
        }
        long parseLong = Long.parseLong("1371");
        HashMap hashMap = new HashMap();
        hashMap.put(str, jVar);
        com.bykv.vk.openvk.preload.geckox.dq.dq(ox());
        com.bykv.vk.openvk.preload.geckox.dq.dq(wp.getContext()).dq(parseLong, ox, new C0182d(hashMap), hashMap.keySet(), new com.bytedance.sdk.openadsdk.core.q.dq(), dqVar);
    }
}
