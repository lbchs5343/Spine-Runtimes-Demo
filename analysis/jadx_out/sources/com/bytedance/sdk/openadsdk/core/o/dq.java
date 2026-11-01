package com.bytedance.sdk.openadsdk.core.o;

import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class dq {
    private static final LruCache<String, com.bytedance.sdk.openadsdk.core.r.ox> dq = new LruCache<>(10);

    public static com.bytedance.sdk.openadsdk.core.r.ox dq(String str) {
        com.bytedance.sdk.openadsdk.core.r.ox oxVar;
        if (wp.d().az() && (oxVar = dq.get(str)) != null && oxVar.s()) {
            return oxVar;
        }
        return null;
    }

    public static void dq(final j jVar) {
        if (wp.d().az() && jVar != null) {
            final String d2 = jVar.gm() != null ? jVar.gm().d() : "";
            if (!TextUtils.isEmpty(d2) && jVar.y() == 4 && TextUtils.isEmpty(jVar.gn())) {
                if ((jVar.zi() == null || jVar.zi().d() == 0) && jy.dq(jVar) == 2) {
                    com.bytedance.sdk.openadsdk.h.mn.dq(new com.bytedance.sdk.component.o.kk("preloadAppInfo") { // from class: com.bytedance.sdk.openadsdk.core.o.dq.1
                        @Override // java.lang.Runnable
                        public void run() {
                            wp.dq().dq(jVar, d2);
                        }
                    });
                }
            }
        }
    }

    public static void dq(String str, com.bytedance.sdk.openadsdk.core.r.ox oxVar) {
        if (wp.d().az() && !TextUtils.isEmpty(str) && oxVar != null && oxVar.s()) {
            dq.put(str, oxVar);
        }
    }
}
