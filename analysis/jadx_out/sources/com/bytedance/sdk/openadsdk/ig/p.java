package com.bytedance.sdk.openadsdk.ig;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.bytedance.sdk.component.d.dq.o;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.ig.dq;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import j$.util.Objects;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p extends dq {
    public p(d dVar, String str, String str2, String str3, String str4) {
        super(dVar, str, str2, str3, str4);
    }

    private void dq(JSONObject jSONObject, JSONObject jSONObject2, String str) {
        try {
            JSONArray optJSONArray = jSONObject2.optJSONArray(str);
            if (optJSONArray != null) {
                optJSONArray.put(jSONObject);
                this.iw.putOpt(str, optJSONArray);
            } else {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
                this.iw.putOpt(str, jSONArray);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ig.dq
    public void dq() {
        try {
            this.iw.putOpt("html", new JSONArray());
            this.iw.putOpt("js", new JSONArray());
            this.iw.putOpt("css", new JSONArray());
            this.iw.putOpt("sub_pic", new JSONArray());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ig.dq
    public void dq(WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse, o oVar, dq.InterfaceC0201dq interfaceC0201dq) {
        interfaceC0201dq.dq(true, null);
    }

    @Override // com.bytedance.sdk.openadsdk.ig.dq
    public void dq(final String str, final String str2) {
        ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.ig.p.1
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("cid", str);
                    jSONObject.put("req_id", str2);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("web_upload_start").d(jSONObject.toString());
            }
        }, "web_upload_start");
    }

    @Override // com.bytedance.sdk.openadsdk.ig.dq
    public void dq(final String str, final String str2, final long j, final String str3, final long j2, final long j3) {
        ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.ig.p.2
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("cid", str);
                    jSONObject.put("req_id", str2);
                    jSONObject.put(MediationConstant.EXTRA_DURATION, System.currentTimeMillis() - j);
                    jSONObject.put("weburl", str3);
                    jSONObject.put("size", j2);
                    jSONObject.put("avail_mem", j3);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("web_upload_finish").d(jSONObject.toString());
            }
        }, "web_upload_finish");
    }

    @Override // com.bytedance.sdk.openadsdk.ig.dq
    public void dq(JSONObject jSONObject, String str, o oVar, String str2, String str3, Map<String, String> map, Map<String, Object> map2) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt(abn.EXTRA_UA_APP_NAME, str2);
            jSONObject2.putOpt(abn.EXTRA_URL, str3);
            jSONObject2.putOpt("request_headers", new JSONObject(map));
            String lowerCase = oVar.toString().toLowerCase();
            if (lowerCase.contains("image")) {
                dq(jSONObject2, jSONObject, "sub_pic");
                return;
            }
            if (!lowerCase.contains("js") && !lowerCase.contains("javascript")) {
                if (lowerCase.contains("css")) {
                    dq(jSONObject2, jSONObject, "css");
                    return;
                } else {
                    if (lowerCase.contains("html")) {
                        dq(jSONObject2, jSONObject, "html");
                        return;
                    }
                    return;
                }
            }
            dq(jSONObject2, jSONObject, "js");
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ig.dq
    public boolean dq(o oVar) {
        try {
            Set<String> wn = wp.d().wn();
            String str = oVar.dq().trim().toLowerCase() + "/" + oVar.d().trim().toLowerCase();
            Objects.toString(wn);
            return wn.contains(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
