package com.bytedance.sdk.openadsdk.kk.dq;

import com.bytedance.sdk.component.dq.fw;
import com.bytedance.sdk.component.dq.p;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.no;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq extends com.bytedance.sdk.component.dq.p<JSONObject, JSONObject> {
    private WeakReference<c> dq;

    public dq(c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(fw fwVar, final c cVar) {
        fwVar.dq("interstitial_webview_close", new p.d() { // from class: com.bytedance.sdk.openadsdk.kk.dq.dq.1
            @Override // com.bytedance.sdk.component.dq.p.d
            public com.bytedance.sdk.component.dq.p dq() {
                return new dq(c.this);
            }
        });
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        no.ia().c();
        ig.p("DoInterstitialWebViewCloseMethod", "DoInterstitialWebViewCloseMethod invoke ");
        c cVar = this.dq.get();
        if (cVar != null) {
            cVar.fw();
        } else {
            ig.p("DoInterstitialWebViewCloseMethod", "invoke error");
            ox();
        }
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void p() {
    }
}
