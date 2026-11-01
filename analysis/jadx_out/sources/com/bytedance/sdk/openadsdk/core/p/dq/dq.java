package com.bytedance.sdk.openadsdk.core.p.dq;

import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.component.reward.dq.p;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.p.p.s;
import com.bytedance.sdk.openadsdk.core.r.h;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.t;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq extends ox {
    public dq(com.bytedance.sdk.openadsdk.core.p.p.d dVar) {
        super(dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.dq.ox, com.bytedance.sdk.openadsdk.core.p.dq.d
    public com.bytedance.sdk.openadsdk.core.p.p.ox dq(final j jVar, final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final s sVar, Bundle bundle) {
        final com.bytedance.sdk.openadsdk.core.component.reward.d dVar2 = new com.bytedance.sdk.openadsdk.core.component.reward.d(wp.getContext(), jVar, dVar);
        final boolean z = bundle.getBoolean("is_cache", false);
        final long j = bundle.getLong("start_time");
        dVar2.d(z);
        dVar2.dq(z ? 101 : 102);
        if (jVar.ix() <= 0) {
            dVar2.dq(System.currentTimeMillis() + 10500000);
        } else {
            dVar2.dq(jVar.ix() * 1000);
        }
        if (!com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar) && !i.s(jVar) && !t.dq(jVar)) {
            dVar2.iw();
        }
        return new com.bytedance.sdk.openadsdk.core.p.p.ox() { // from class: com.bytedance.sdk.openadsdk.core.p.dq.dq.1
            @Override // com.bytedance.sdk.openadsdk.core.p.p.ox
            public void d() {
                com.bytedance.sdk.openadsdk.core.ig.ox.d(jVar, c.d(dVar.k()), j);
                dVar2.d(1);
                s sVar2 = sVar;
                if (sVar2 != null) {
                    sVar2.d(dVar2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.p.p.ox
            public void dq() {
                com.bytedance.sdk.openadsdk.core.p.p.d dVar3 = dq.this.dq;
                if (dVar3 != null) {
                    dVar3.dq().dq(dVar, jVar, dVar2, z);
                }
                s sVar2 = sVar;
                if (sVar2 != null) {
                    sVar2.dq(dVar2);
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("is_from_cache", z);
                    jSONObject.put("is_adm", !TextUtils.isEmpty(dVar.wp()));
                    jSONObject.put("cache_strategy", p.dq(dq.this.dq()));
                    jSONObject.put("src_req_id", jVar.hz());
                    jSONObject.put("is_map", jVar.ml());
                    jSONObject.put("load_duration", System.currentTimeMillis() - j);
                } catch (JSONException unused) {
                }
                ig.dq().dq(jVar, "stats_reward_full_ad_loaded", jSONObject);
                dq.this.dq(this, jVar, dVar);
            }

            @Override // com.bytedance.sdk.openadsdk.core.p.p.ox
            public void ox() {
                if (z) {
                    com.bytedance.sdk.openadsdk.core.p.p.d dVar3 = dq.this.dq;
                    if (dVar3 != null) {
                        dVar3.dq().ox(dVar, jVar);
                        return;
                    }
                    return;
                }
                com.bytedance.sdk.openadsdk.core.p.p.d dVar4 = dq.this.dq;
                if (dVar4 != null) {
                    dVar4.dq().d(dVar, jVar);
                }
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.dq.ox
    public boolean dq() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.dq.ox
    public boolean dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        List<j> d2;
        if (dqVar != null && (d2 = dqVar.d()) != null) {
            j jVar = d2.get(0);
            if (h.dq(jVar) && jVar.eo().ox() != 1) {
                return true;
            }
        }
        return false;
    }
}
