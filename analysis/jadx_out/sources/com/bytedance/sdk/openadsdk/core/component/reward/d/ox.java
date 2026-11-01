package com.bytedance.sdk.openadsdk.core.component.reward.d;

import android.os.Bundle;
import android.view.View;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.ig.dq;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kk;
import com.bytedance.sdk.openadsdk.core.r.o;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private j f2563d;
    private final TTBaseVideoActivity dq;
    private String ox;
    private boolean p = false;
    private View s;

    public static class dq implements com.bytedance.sdk.openadsdk.iw.dq.dq {

        /* renamed from: d, reason: collision with root package name */
        private final long f2569d;
        private final int dq;
        private final JSONObject ox;

        public dq(int i, long j, JSONObject jSONObject) {
            this.dq = i;
            this.f2569d = j;
            this.ox = jSONObject;
        }

        @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
        public void dq(JSONObject jSONObject) throws JSONException {
            JSONObject jSONObject2 = this.ox;
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            jSONObject2.put("group_pos", this.dq);
            jSONObject2.put(MediationConstant.EXTRA_DURATION, this.f2569d);
            jSONObject.put("ad_extra_data", jSONObject2.toString());
        }
    }

    public ox(TTBaseVideoActivity tTBaseVideoActivity) {
        this.dq = tTBaseVideoActivity;
    }

    @DungeonFlag
    private void d(View view, o oVar) {
        if (view == null) {
            return;
        }
        if (view.getId() == 2114387612) {
            dq("click_play_star_level", (JSONObject) null);
        } else if (view.getId() == 2114387633) {
            dq("click_play_star_nums", (JSONObject) null);
        } else if (view.getId() == 2114387880) {
            dq("click_play_source", (JSONObject) null);
        } else if (view.getId() == 2114387798) {
            dq("click_play_logo", (JSONObject) null);
        } else if (view.getId() == 2114387652 || view.getId() == 2114387931 || view.getId() == 2114387964) {
            dq("click_start_play_bar", p());
        } else if (view.getId() == 2114387645) {
            dq("click_video", p());
        } else if (view.getId() == 2114387869) {
            dq("fallback_endcard_click", p());
        }
        ox(view, oVar);
    }

    @DungeonFlag
    private void ox(View view, o oVar) {
        if (s() || this.f2563d == null || view == null) {
            return;
        }
        if (view.getId() == 2114387612 || view.getId() == 2114387633 || view.getId() == 2114387880 || view.getId() == 2114387798 || view.getId() == 2114387652 || view.getId() == 2114387931 || view.getId() == 2114387964 || view.getId() == 2114387835 || view.getId() == 2114387645 || view.getId() == 2114387869) {
            int ia = ce.ia(wp.getContext());
            com.bytedance.sdk.openadsdk.core.ig.ox.dq("click_other", this.f2563d, new kk.dq().iw(oVar.q()).s(oVar.jy()).p(oVar.f()).ox(oVar.fw()).d(System.currentTimeMillis()).dq(0L).d(ce.dq(this.s)).dq(ce.dq((View) null)).ox(ce.ox(this.s)).p(ce.ox((View) null)).ox(oVar.d()).p(oVar.ox()).s(oVar.p()).dq(oVar.o()).d(no.ia().ox() ? 1 : 2).dq(ia).dq(ce.iw(wp.getContext())).d(ce.mn(wp.getContext())).dq(), this.ox, true, this.dq.ob(), -1, false);
        }
    }

    private boolean s() {
        j jVar = this.f2563d;
        return jVar == null || r.no(jVar) != 1;
    }

    public void d() {
        final JSONObject dq2 = dq(new JSONObject());
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.f2563d, this.ox, "skip_endcard", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.ox.2
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                com.bytedance.sdk.openadsdk.s.dq.dq(dq2, ox.this.f2563d);
                jSONObject.put("ad_extra_data", dq2);
            }
        });
    }

    public JSONObject dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            if (this.dq.yy() == null) {
                return jSONObject;
            }
            jSONObject.put("reward_full_scene_type", this.dq.yy().bl());
            this.dq.yy().dq(jSONObject);
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public void dq() {
        final JSONObject dq2 = dq(new JSONObject());
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.f2563d, this.ox, "skip", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.ox.1
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                com.bytedance.sdk.openadsdk.s.dq.dq(dq2, ox.this.f2563d);
                jSONObject.put("ad_extra_data", dq2);
            }
        });
    }

    public void dq(Bundle bundle) {
        int i = bundle.getInt("callback_extra_key_reward_type");
        boolean z = bundle.getBoolean("callback_extra_key_reward_valid");
        int i2 = bundle.getInt("callback_extra_key_error_code");
        String string = bundle.getString("callback_extra_key_error_msg");
        boolean z2 = bundle.getBoolean("callback_extra_key_is_server_verify");
        String str = z ? "reward_arrived_success" : "reward_arrived_failed";
        final JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("isRewardVerify", z);
            jSONObject2.put("isServerCallback", z2);
            jSONObject2.put(MediationConstant.KEY_REWARD_TYPE, i);
            jSONObject2.put(MediationConstant.KEY_ERROR_CODE, i2);
            jSONObject2.put(MediationConstant.KEY_ERROR_MSG, string);
            jSONObject.put("reward_data_bundle", jSONObject2);
        } catch (Exception e2) {
            ig.p("RewardFullEventManager", e2.getMessage());
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.f2563d, this.ox, str, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.ox.4
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject3) throws JSONException {
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject, ox.this.f2563d);
                jSONObject3.put("ad_extra_data", ox.this.dq(jSONObject));
            }
        });
    }

    public void dq(View view, o oVar) {
        try {
            d(view, oVar);
        } catch (Exception e2) {
            ig.p("RewardFullEventManager", "onClickReport error :" + e2.getMessage());
        }
    }

    public void dq(j jVar, String str, View view) {
        if (this.p) {
            return;
        }
        this.p = true;
        this.f2563d = jVar;
        this.ox = str;
        this.s = view;
    }

    public void dq(String str, int i, String str2) {
        final JSONObject dq2 = dq(new JSONObject());
        try {
            dq2.put("dialog_type", i);
            dq2.put("template_url", str2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.f2563d, this.ox, str, new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.ox.5
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                com.bytedance.sdk.openadsdk.s.dq.dq(dq2, ox.this.f2563d);
                jSONObject.put("ad_extra_data", ox.this.dq(dq2));
            }
        });
    }

    public void dq(String str, JSONObject jSONObject) {
        j jVar = this.f2563d;
        String str2 = this.ox;
        if (!this.dq.kx()) {
            jSONObject = null;
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, str2, str, jSONObject);
    }

    public void dq(Map<String, Object> map) {
        if (map == null || this.dq.yy() == null) {
            return;
        }
        map.put("reward_full_scene_type", Integer.valueOf(this.dq.yy().bl()));
        this.dq.yy().dq(map);
    }

    public void dq(boolean z, int i, long j) {
        new dq.C0163dq().s(this.f2563d.fx()).dq(this.ox).d(z ? "scroll_up" : "scroll_down").p(this.f2563d.dn()).dq(new dq(i, j, dq(new JSONObject())));
    }

    public void ox() {
        final JSONObject dq2 = dq(new JSONObject());
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.f2563d, this.ox, "reward_arrived_begin", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.ox.3
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                com.bytedance.sdk.openadsdk.s.dq.dq(dq2, ox.this.f2563d);
                jSONObject.put("ad_extra_data", dq2);
            }
        });
    }

    @DungeonFlag
    public JSONObject p() {
        try {
            long jy = this.dq.uh().jy();
            int f2 = this.dq.uh().f();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(MediationConstant.EXTRA_DURATION, jy);
                jSONObject.put("percent", f2);
                return jSONObject;
            } catch (Throwable unused) {
                return jSONObject;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }
}
