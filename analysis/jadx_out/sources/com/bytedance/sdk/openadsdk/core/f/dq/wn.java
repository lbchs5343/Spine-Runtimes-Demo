package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.component.widget.SSWebView;
import g.he;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class wn extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private String f2865d;
    private SSWebView dq;
    private com.bytedance.sdk.openadsdk.core.c ox;

    public wn(SSWebView sSWebView, String str, com.bytedance.sdk.openadsdk.core.c cVar) {
        this.dq = sSWebView;
        this.f2865d = str;
        this.ox = cVar;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, SSWebView sSWebView, com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("closeWebview", (com.bytedance.sdk.component.dq.s<?, ?>) new wn(sSWebView, "closeWebview", cVar));
        fwVar.dq("makeVisible", (com.bytedance.sdk.component.dq.s<?, ?>) new wn(sSWebView, "makeVisible", cVar));
        fwVar.dq("getCurrentVisibleState", (com.bytedance.sdk.component.dq.s<?, ?>) new wn(sSWebView, "getCurrentVisibleState", cVar));
        fwVar.dq("changeSize", (com.bytedance.sdk.component.dq.s<?, ?>) new wn(sSWebView, "changeSize", cVar));
        fwVar.dq("changeFrame", (com.bytedance.sdk.component.dq.s<?, ?>) new wn(sSWebView, "changeFrame", cVar));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        JSONObject jSONObject2;
        int i;
        int i2;
        int i3;
        jSONObject2 = new JSONObject();
        String str = this.f2865d;
        str.getClass();
        switch (str) {
            case "changeSize":
                JSONArray optJSONArray = jSONObject.optJSONArray("size");
                if (optJSONArray != null && optJSONArray.length() == 2) {
                    int optInt = optJSONArray.optInt(0);
                    int optInt2 = optJSONArray.optInt(1);
                    com.bytedance.sdk.openadsdk.core.c cVar = this.ox;
                    if (cVar != null) {
                        cVar.dq(optInt, optInt2);
                    }
                }
                return jSONObject2;
            case "changeFrame":
                JSONArray optJSONArray2 = jSONObject.optJSONArray("point");
                JSONArray optJSONArray3 = jSONObject.optJSONArray("size");
                int i4 = he.UNDEFINED_ITEM_ID;
                if (optJSONArray2 == null || optJSONArray2.length() != 2) {
                    i = he.UNDEFINED_ITEM_ID;
                    i2 = he.UNDEFINED_ITEM_ID;
                } else {
                    i2 = optJSONArray2.optInt(0);
                    i = optJSONArray2.optInt(1);
                }
                if (optJSONArray3 == null || optJSONArray3.length() != 2) {
                    i3 = he.UNDEFINED_ITEM_ID;
                } else {
                    i4 = optJSONArray3.optInt(0);
                    i3 = optJSONArray3.optInt(1);
                }
                com.bytedance.sdk.openadsdk.core.c cVar2 = this.ox;
                if (cVar2 != null) {
                    cVar2.dq(i2, i, i4, i3);
                    return jSONObject2;
                }
                return jSONObject2;
            case "getCurrentVisibleState":
                jSONObject2.put("visibleState", !com.bytedance.sdk.openadsdk.core.er.dq(this.dq, 50, 5) ? 1 : 0);
                return jSONObject2;
            case "closeWebview":
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.wn.1
                    @Override // java.lang.Runnable
                    public void run() {
                        wn.this.dq.setVisibility(8);
                    }
                });
                com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk ox = this.ox.ox();
                if (ox == null) {
                    jSONObject2.put("success", false);
                    return jSONObject2;
                }
                ox.Z_();
                jSONObject2.put("success", true);
                return jSONObject2;
            case "makeVisible":
                if (this.dq == null) {
                    jSONObject2.put("success", false);
                    return jSONObject2;
                }
                jSONObject2.put("success", true);
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.wn.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (wn.this.dq != null) {
                            wn.this.dq.setVisibility(0);
                        }
                        com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk ox2 = wn.this.ox.ox();
                        if (ox2 != null) {
                            ox2.d();
                        }
                    }
                });
                return jSONObject2;
            default:
                return jSONObject2;
        }
    }
}
