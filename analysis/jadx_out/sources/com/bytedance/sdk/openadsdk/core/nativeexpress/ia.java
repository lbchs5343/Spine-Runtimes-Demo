package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public class ia {
    public static int dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return 5;
        }
        str.getClass();
        switch (str) {
        }
        return 5;
    }

    public static void dq(final int i, final String str, final String str2, final j jVar) {
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().s(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.ia.2
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(ia.dq(str)).ox(str2).iw(c.mp(jVar)).d(i).mn(com.bytedance.sdk.openadsdk.core.o.dq(i));
            }
        });
    }

    public static void dq(final String str, final String str2, final j jVar) {
        final long currentTimeMillis = System.currentTimeMillis() / 1000;
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.ia.1
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox dq = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq(ia.dq(str)).ox(str2).iw(c.mp(jVar)).dq("dynamic_backup_render_new");
                dq.dq(currentTimeMillis);
                return dq;
            }
        }, "dynamic_backup_render_new");
    }
}
