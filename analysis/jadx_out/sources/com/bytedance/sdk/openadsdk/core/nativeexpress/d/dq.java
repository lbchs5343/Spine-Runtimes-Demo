package com.bytedance.sdk.openadsdk.core.nativeexpress.d;

import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bytedance.sdk.component.adexpress.p.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class dq {

    /* renamed from: com.bytedance.sdk.openadsdk.core.nativeexpress.d.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0175dq {
        com.bytedance.sdk.component.adexpress.dq.d.dq dq(String str, kk.dq dqVar, String str2);

        boolean dq();
    }

    private static WebResourceResponse dq(String str, String str2) {
        WebResourceResponse webResourceResponse = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            InputStream dq = com.bytedance.sdk.openadsdk.ia.d.dq(str, str2);
            if (dq == null) {
                return null;
            }
            WebResourceResponse webResourceResponse2 = new WebResourceResponse(kk.dq.IMAGE.getType(), "utf-8", dq);
            try {
                Map<String, String> responseHeaders = webResourceResponse2.getResponseHeaders();
                if (responseHeaders == null) {
                    responseHeaders = new HashMap<>();
                }
                responseHeaders.put("Access-Control-Allow-Origin", "*");
                webResourceResponse2.setResponseHeaders(responseHeaders);
                return webResourceResponse2;
            } catch (Throwable th) {
                th = th;
                webResourceResponse = webResourceResponse2;
                ig.d("CacheInterceptUtil", "get image WebResourceResponse error", th);
                return webResourceResponse;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static com.bytedance.sdk.component.adexpress.dq.d.dq dq(WebView webView, j jVar, String str, InterfaceC0175dq interfaceC0175dq) {
        ji jiVar;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        kk.dq dq = kk.dq(str);
        boolean z = interfaceC0175dq != null && interfaceC0175dq.dq();
        if (dq != kk.dq.IMAGE && z && jVar != null) {
            Iterator<ji> it = jVar.oh().iterator();
            while (it.hasNext()) {
                jiVar = it.next();
                if (!TextUtils.isEmpty(jiVar.dq()) && !TextUtils.isEmpty(str)) {
                    String dq2 = jiVar.dq();
                    if (dq2.startsWith("https")) {
                        dq2 = dq2.replaceFirst("https", "http");
                    }
                    if ((str.startsWith("https") ? str.replaceFirst("https", "http") : str).equals(dq2)) {
                        break;
                    }
                }
            }
        }
        jiVar = null;
        if (dq == kk.dq.IMAGE) {
            com.bytedance.sdk.component.adexpress.dq.d.dq dqVar = new com.bytedance.sdk.component.adexpress.dq.d.dq();
            dqVar.dq(5);
            dqVar.dq(dq(str, d.dq(jVar, str)));
            return dqVar;
        }
        if (jiVar == null) {
            if (interfaceC0175dq == null) {
                return null;
            }
            return interfaceC0175dq.dq(str, dq, "");
        }
        com.bytedance.sdk.component.adexpress.dq.d.dq dqVar2 = new com.bytedance.sdk.component.adexpress.dq.d.dq();
        dqVar2.dq(dq(str, jiVar.mn()));
        dqVar2.dq(5);
        return dqVar2;
    }
}
