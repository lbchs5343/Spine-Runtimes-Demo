package com.bytedance.sdk.openadsdk.core.component.reward.top;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class ox implements d {

    /* renamed from: d, reason: collision with root package name */
    protected j f2660d;
    protected boolean dq;
    protected int iw = 0;
    protected com.bytedance.sdk.openadsdk.core.component.reward.d.d ox;
    protected com.bytedance.sdk.openadsdk.core.component.reward.d.s p;
    protected TTBaseVideoActivity s;

    public ox(TTBaseVideoActivity tTBaseVideoActivity, j jVar, com.bytedance.sdk.openadsdk.core.component.reward.d.d dVar, com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar, boolean z) {
        this.s = tTBaseVideoActivity;
        this.f2660d = jVar;
        this.ox = dVar;
        this.p = sVar;
        this.dq = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void d(View view) {
        dq(3);
    }

    public void dq(int i) {
        this.s.ha();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("topImpl", getClass().getName());
            jSONObject.put("topType", i);
        } catch (Throwable unused) {
        }
        ig.dq().dq(this.f2660d, "stats_reward_full_top_handle", jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void dq(View view) {
        dq(2);
    }

    public boolean dq() {
        if (gh.no(this.f2660d)) {
            return false;
        }
        int i = this.iw;
        this.iw = i + 1;
        if (i < uh.d()) {
            return false;
        }
        ig.dq().dq(this.f2660d, "stats_reward_full_close_force", this.s.xz().dq(new JSONObject()));
        this.s.finish();
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void iw(View view) {
        dq(6);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void ox(View view) {
        dq(1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void p(View view) {
        dq(4);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.top.d
    public void s(View view) {
        dq(5);
        this.s.kk(3);
    }
}
