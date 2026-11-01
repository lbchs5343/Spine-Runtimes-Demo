package com.bytedance.sdk.openadsdk.core.q;

import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.bytedance.sdk.openadsdk.core.q.ox.d;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private String f3421d;
    public s dq;
    private volatile com.bytedance.sdk.openadsdk.core.q.ox.d ox;

    public p(String str) {
        this.f3421d = str;
        if (this.ox == null) {
            this.ox = com.bytedance.sdk.openadsdk.core.q.ox.dq.dq().dq(this.f3421d);
        }
        s sVar = new s();
        this.dq = sVar;
        sVar.dq((this.ox == null || this.ox.dq == null) ? 0.0d : this.ox.dq.size());
    }

    private WebResourceResponse d(WebResourceRequest webResourceRequest) {
        d.dq dqVar;
        if (this.ox == null) {
            this.ox = com.bytedance.sdk.openadsdk.core.q.ox.dq.dq().dq(this.f3421d);
            s sVar = this.dq;
            if (sVar != null) {
                sVar.dq((this.ox == null || this.ox.dq == null) ? 0.0d : this.ox.dq.size());
            }
        }
        if (this.ox != null && webResourceRequest != null) {
            String d2 = com.bytedance.sdk.component.utils.s.d(webResourceRequest.getUrl() != null ? webResourceRequest.getUrl().toString() : null);
            if (d2 != null && (dqVar = this.ox.dq.get(d2)) != null && dqVar.ia != null) {
                return dq(new ByteArrayInputStream(dqVar.ia), dqVar.ox());
            }
        }
        return null;
    }

    public static boolean dq(String str) {
        return "GET".equalsIgnoreCase(str);
    }

    public WebResourceResponse dq(WebResourceRequest webResourceRequest) {
        s sVar = this.dq;
        if (sVar != null) {
            sVar.dq();
        }
        WebResourceResponse d2 = d(webResourceRequest);
        s sVar2 = this.dq;
        if (sVar2 != null) {
            if (d2 == null) {
                sVar2.ox();
                return d2;
            }
            sVar2.d();
        }
        return d2;
    }

    public WebResourceResponse dq(InputStream inputStream, Map<String, String> map) {
        if (inputStream == null) {
            return null;
        }
        if (map == null) {
            try {
                map = new HashMap<>();
            } catch (Throwable unused) {
                return null;
            }
        }
        Map<String, String> map2 = map;
        String str = map2.get("content-type");
        if (TextUtils.isEmpty(str)) {
            str = map2.get("Content-Type");
        }
        String str2 = str;
        if (str2 != null ? str2.contains("font/ttf") : false) {
            return new WebResourceResponse(str2, "", 200, "OK", map2, inputStream);
        }
        WebResourceResponse webResourceResponse = new WebResourceResponse(str2, "", inputStream);
        webResourceResponse.setResponseHeaders(map2);
        return webResourceResponse;
    }

    public void dq() {
        if (this.dq != null) {
            this.dq = null;
        }
    }
}
