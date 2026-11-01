package com.bytedance.sdk.openadsdk.ig;

import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox implements d {
    private dq dq;

    private ox(String str, String str2, String str3, String str4) {
        if (dq()) {
            p pVar = new p(this, str, str2, str3, str4);
            this.dq = pVar;
            pVar.d();
        }
    }

    public static ox dq(j jVar, String str) {
        if (dq() && jVar != null) {
            String dn = jVar.dn();
            if (!TextUtils.isEmpty(dn)) {
                try {
                    JSONObject jSONObject = new JSONObject(dn);
                    String optString = jSONObject.optString("cid");
                    if (TextUtils.isEmpty(optString)) {
                        return null;
                    }
                    String optString2 = jSONObject.optString("req_id");
                    if (TextUtils.isEmpty(optString2)) {
                        return null;
                    }
                    return new ox(optString, optString2, dn, str);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return null;
    }

    public static boolean dq() {
        return true;
    }

    public void d() {
        dq dqVar;
        if (dq() && wp.d().er() == 1 && (dqVar = this.dq) != null) {
            dqVar.s();
        }
    }

    public WebResourceResponse dq(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        dq dqVar;
        return (!dq() || (dqVar = this.dq) == null) ? webResourceResponse : dqVar.dq(webView, webResourceRequest, webResourceResponse);
    }

    public void dq(WebView webView, String str) {
        dq dqVar;
        if (!dq() || (dqVar = this.dq) == null) {
            return;
        }
        dqVar.dq(webView, str);
    }
}
