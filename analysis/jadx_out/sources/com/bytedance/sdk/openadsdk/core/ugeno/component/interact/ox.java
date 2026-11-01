package com.bytedance.sdk.openadsdk.core.ugeno.component.interact;

import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kx;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox {
    j dq;

    public ox(j jVar) {
        this.dq = jVar;
    }

    public void d(final int i) {
        ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.ox.3
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("render_type", Integer.valueOf(i));
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().ia(ox.this.dq.dn()).dq("stats_easy_playable_inject_view").d(jSONObject.toString());
            }
        }, "stats_easy_playable_inject_view");
    }

    public void dq(final int i) {
        ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.ox.2
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("render_type", Integer.valueOf(i));
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().ia(ox.this.dq.dn()).dq("stats_easy_playable_render_exec").d(jSONObject.toString());
            }
        }, "stats_easy_playable_render_exec");
    }

    public void dq(final int i, final boolean z) {
        ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.ox.1
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("render_type", Integer.valueOf(i));
                jSONObject.putOpt("is_root_container", Boolean.valueOf(z));
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().ia(ox.this.dq.dn()).dq("stats_easy_playable_render_start").d(jSONObject.toString());
            }
        }, "stats_easy_playable_render_start");
    }

    public void dq(boolean z, Map<String, Object> map) {
        int i;
        String ox = kx.ox(this.dq);
        if (map != null) {
            Object obj = map.get("render_type");
            if (obj instanceof Integer) {
                int intValue = ((Integer) obj).intValue();
                i = 1;
                if (intValue != 1) {
                    if (intValue == 0) {
                        i = 2;
                    }
                }
                o.dq(this.dq, z, ox, i, map);
            }
        }
        i = -1;
        o.dq(this.dq, z, ox, i, map);
    }
}
