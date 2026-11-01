package com.bytedance.sdk.openadsdk.core.i;

import android.content.Context;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kx;
import com.bytedance.sdk.openadsdk.core.ugeno.component.interact.PlayableFeedWebView;
import com.bytedance.sdk.openadsdk.core.wp;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private JSONObject f2917d;
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.d dq;
    private PlayableFeedWebView ox;
    private final Context p = wp.getContext();
    private j s;

    public d(j jVar) {
        this.s = jVar;
    }

    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        if (kx.dq()) {
            try {
                com.bytedance.sdk.openadsdk.wp.dq.d.dq.d dVar = this.dq;
                if (dVar != null) {
                    JSONObject dq = dVar.dq();
                    this.f2917d = dq;
                    return dq;
                }
            } catch (Exception e2) {
                ig.d("xeasy", e2.getMessage());
                return jSONObject;
            }
        }
        return jSONObject;
    }

    public j dq() {
        return this.s;
    }

    public void dq(j jVar) {
        if (this.dq != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("style_category", String.valueOf(kx.p(jVar)));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            this.dq.dq(jSONObject);
        }
    }

    public void dq(PlayableFeedWebView playableFeedWebView) {
        this.ox = playableFeedWebView;
    }

    public void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.d dVar) {
        this.dq = dVar;
    }

    public void dq(boolean z, JSONObject jSONObject) {
        if (kx.dq()) {
            ig.dq("xeasy", "er:".concat(String.valueOf(z)));
            if (this.dq != null) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("success", z ? 1 : 0);
                    jSONObject2.put("estimatedArea", this.f2917d);
                    jSONObject2.put("realArea", this.ox.getMaxRectJson());
                    jSONObject2.put("exceedAreaRate", this.ox.getExceedAreaRate());
                    jSONObject2.put("widgetArea", this.ox.getActualRectJson());
                    com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.s, "easy_play_show", jSONObject2);
                } catch (Exception e2) {
                    ig.dq("xeasy", "fail:" + e2.getMessage());
                }
                if (z) {
                    this.dq.d(jSONObject);
                } else {
                    this.dq.ox(jSONObject);
                }
            }
        }
    }

    public Context getContext() {
        return this.p;
    }

    public void ox() {
        if (kx.dq()) {
            ig.dq("xeasy", "oc");
            com.bytedance.sdk.openadsdk.wp.dq.d.dq.d dVar = this.dq;
            if (dVar != null) {
                dVar.d();
            }
        }
    }
}
