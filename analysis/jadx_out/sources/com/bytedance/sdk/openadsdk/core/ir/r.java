package com.bytedance.sdk.openadsdk.core.ir;

import android.net.Uri;
import android.text.TextUtils;

/* loaded from: classes3.dex */
public class r {
    public static void dq(final Uri uri, final com.bytedance.sdk.openadsdk.core.c cVar) {
        if (cVar == null || !cVar.dq(uri)) {
            return;
        }
        try {
            com.bytedance.sdk.component.utils.ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.r.1
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.c.this.d(uri);
                }
            });
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.d("WebView", "TTAndroidObj handleUri exception: ".concat(String.valueOf(e2)));
        }
    }

    public static void dq(final com.bytedance.sdk.component.mp.dq dqVar, final int i, final boolean z) {
        if (dqVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.r.2
            @Override // java.lang.Runnable
            public void run() {
                String userAgentString = com.bytedance.sdk.component.mp.dq.this.getUserAgentString();
                if (TextUtils.isEmpty(userAgentString)) {
                    return;
                }
                StringBuilder sb = new StringBuilder(userAgentString);
                sb.append(" open_news open_news_u_s/");
                sb.append(i);
                if (z) {
                    sb.append("/");
                    sb.append(c.kk());
                }
                com.bytedance.sdk.component.mp.dq.this.setUserAgentString(sb.toString());
            }
        });
    }
}
