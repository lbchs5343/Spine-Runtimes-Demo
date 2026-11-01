package com.bytedance.sdk.openadsdk.d;

import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.le.s;
import com.bytedance.sdk.openadsdk.core.ox;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.kk;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private ReentrantLock f3732d;
    private Map<String, com.bytedance.sdk.openadsdk.d.dq> dq;
    private Set<String> ox;

    public static final class dq {
        private static final d dq = new d();
    }

    private d() {
        this.dq = new HashMap();
        this.f3732d = new ReentrantLock();
        this.ox = new HashSet();
        String d2 = ox.dq().d("sdk_brand_video_cahce", "");
        if (TextUtils.isEmpty(d2)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(d2);
            for (int i = 0; i < jSONArray.length(); i++) {
                d(jSONArray.optJSONObject(i));
            }
        } catch (Throwable unused) {
        }
    }

    private com.bytedance.sdk.component.kk.dq d() {
        return s.dq().d();
    }

    private void d(JSONObject jSONObject) {
        if (jSONObject != null) {
            com.bytedance.sdk.openadsdk.d.dq dqVar = new com.bytedance.sdk.openadsdk.d.dq(jSONObject);
            this.dq.put(dqVar.d(), dqVar);
        }
    }

    private void delete(Map<String, com.bytedance.sdk.openadsdk.d.dq> map) {
        Iterator<String> it = map.keySet().iterator();
        while (it.hasNext()) {
            map.get(it.next()).d(kk.dq());
        }
    }

    private p dq(com.bytedance.sdk.openadsdk.d.dq dqVar) {
        if (dqVar == null) {
            return null;
        }
        String d2 = dqVar.d();
        if (TextUtils.isEmpty(d2)) {
            d2 = com.bytedance.sdk.component.utils.s.d(dqVar.dq());
        }
        com.bykv.vk.openvk.component.video.api.ox.ox oxVar = new com.bykv.vk.openvk.component.video.api.ox.ox();
        oxVar.ox(dqVar.dq());
        oxVar.s(d2);
        oxVar.s(0);
        p pVar = new p(kk.dq(), oxVar, oxVar, 0, 0);
        pVar.dq(kk.dq());
        return pVar;
    }

    public static d dq() {
        return dq.dq;
    }

    private String dq(File file) {
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(".");
        return lastIndexOf != -1 ? name.substring(0, lastIndexOf) : name;
    }

    private void dq(int i) {
        File[] listFiles = new File(kk.dq()).listFiles();
        int gl = wp.d().gl();
        if (listFiles == null || listFiles.length <= gl - i) {
            return;
        }
        for (int i2 = 0; i2 < listFiles.length; i2++) {
            String dq2 = dq(listFiles[i2]);
            if (!this.dq.containsKey(dq2) && listFiles[i2].exists()) {
                listFiles[i2].delete();
                ig.d("BrandVideoCacheManager", "delete not need:".concat(String.valueOf(dq2)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str) {
        try {
            this.f3732d.lock();
            this.ox.remove(str);
        } finally {
            this.f3732d.unlock();
        }
    }

    private void dq(final String str, String str2, final String str3) {
        com.bytedance.sdk.component.kk.d.d p = d().p();
        p.dq(str);
        p.dq(str2, str3);
        p.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.d.d.2
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                d.this.dq(str3);
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                ig.d("BrandVideoCacheManager", "download " + str + " failed: " + iOException);
                d.this.dq(str3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(JSONArray jSONArray) {
        try {
            this.f3732d.lock();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                d(jSONArray.optJSONObject(i));
            }
            Map<String, com.bytedance.sdk.openadsdk.d.dq> s = s();
            int ox = ox();
            p();
            delete(s);
            this.f3732d.unlock();
            dq(ox);
        } catch (Throwable th) {
            this.f3732d.unlock();
            throw th;
        }
    }

    private int ox() {
        Iterator<String> it = this.dq.keySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            p dq2 = dq(this.dq.get(it.next()));
            if (dq2 != null) {
                String s = dq2.s();
                String fw = dq2.fw();
                String f2 = dq2.f();
                File file = new File(s, fw);
                if (!file.exists() || file.length() <= 0) {
                    i++;
                    if (this.ox.contains(fw)) {
                        ig.dq("BrandVideoCacheManager", " task :" + fw + " is running!");
                    } else {
                        this.ox.add(fw);
                        dq(f2, s, fw);
                    }
                }
            }
        }
        return i;
    }

    private JSONArray ox(JSONObject jSONObject) {
        JSONArray optJSONArray;
        JSONArray optJSONArray2 = jSONObject.optJSONArray("creatives");
        JSONArray jSONArray = new JSONArray();
        if (optJSONArray2 != null) {
            for (int i = 0; i < optJSONArray2.length(); i++) {
                JSONObject optJSONObject = optJSONArray2.optJSONObject(i);
                if (optJSONObject != null && (optJSONArray = optJSONObject.optJSONArray("precache_brand_video")) != null) {
                    for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                        jSONArray.put(optJSONArray.opt(i2));
                    }
                }
            }
        }
        return jSONArray;
    }

    private void p() {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = this.dq.keySet().iterator();
        while (it.hasNext()) {
            com.bytedance.sdk.openadsdk.d.dq dqVar = this.dq.get(it.next());
            if (dqVar != null) {
                jSONArray.put(dqVar.s());
            }
        }
        ox.dq().dq("sdk_brand_video_cahce", jSONArray.toString());
    }

    private Map<String, com.bytedance.sdk.openadsdk.d.dq> s() {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, com.bytedance.sdk.openadsdk.d.dq>> it = this.dq.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, com.bytedance.sdk.openadsdk.d.dq> next = it.next();
            if (next.getValue().p()) {
                hashMap.put(next.getKey(), next.getValue());
                it.remove();
            } else {
                arrayList.add(next.getValue());
            }
        }
        int size = this.dq.size() - wp.d().gl();
        if (size > 0) {
            Collections.sort(arrayList, new Comparator<com.bytedance.sdk.openadsdk.d.dq>() { // from class: com.bytedance.sdk.openadsdk.d.d.3
                @Override // java.util.Comparator
                /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                public int compare(com.bytedance.sdk.openadsdk.d.dq dqVar, com.bytedance.sdk.openadsdk.d.dq dqVar2) {
                    long ox = dqVar2.ox() - dqVar.ox();
                    if (ox == 0) {
                        String dq2 = kk.dq();
                        ox = dqVar.dq(dq2) - dqVar2.dq(dq2);
                    }
                    return (int) ox;
                }
            });
            for (int i = 0; i < size; i++) {
                com.bytedance.sdk.openadsdk.d.dq dqVar = (com.bytedance.sdk.openadsdk.d.dq) arrayList.get(i);
                this.dq.remove(dqVar.d());
                hashMap.put(dqVar.d(), dqVar);
            }
        }
        return hashMap;
    }

    public void dq(JSONObject jSONObject) {
        final JSONArray ox = ox(jSONObject);
        if (ox == null || ox.length() == 0) {
            return;
        }
        ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.d.d.1
            @Override // java.lang.Runnable
            public void run() {
                ox.length();
                d.this.dq(ox);
            }
        }, 20000L);
    }
}
