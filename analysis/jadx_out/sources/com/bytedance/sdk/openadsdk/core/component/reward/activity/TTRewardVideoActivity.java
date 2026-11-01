package com.bytedance.sdk.openadsdk.core.component.reward.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.component.sdk.annotation.HungeonFlag;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.bytedance.sdk.component.ia.dq.ox;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.component.reward.business.d.d;
import com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq;
import com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.ox;
import com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.p;
import com.bytedance.sdk.openadsdk.core.component.reward.d.iw;
import com.bytedance.sdk.openadsdk.core.component.reward.layout.s;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.ir.k;
import com.bytedance.sdk.openadsdk.core.ji;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.bl;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ob;
import com.bytedance.sdk.openadsdk.core.r.t;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TTRewardVideoActivity extends TTBaseVideoActivity {
    private String bu;
    private String ij;
    private ox pa;
    private String ws;
    private int xi;
    private final int vw = 10111;
    private final int ha = 10112;
    private final int cv = 10113;
    private final int dc = 10114;
    private final int jw = 10115;
    private final int fd = 10116;
    private final AtomicBoolean z = new AtomicBoolean();
    private final dq io = new d(new dq.InterfaceC0139dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.1
        @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.InterfaceC0139dq
        public String d() {
            return TTRewardVideoActivity.this.vf;
        }

        @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.InterfaceC0139dq
        public j dq() {
            return TTRewardVideoActivity.this.j;
        }

        @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.InterfaceC0139dq
        public void dq(int i, TTProgressBar tTProgressBar) {
            try {
                TTRewardVideoActivity.this.kx.dq(i, tTProgressBar);
            } catch (Exception unused) {
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.InterfaceC0139dq
        public void dq(boolean z, String str, String str2) {
            if (i.s(TTRewardVideoActivity.this.j)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("visible", z);
                jSONObject.put("entrance_text", ob.dq(TTRewardVideoActivity.this.j, str, str2));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            TTRewardVideoActivity.this.ji.dq("showPlayAgainEntrance", jSONObject);
            TTRewardVideoActivity.this.op.dq(jSONObject);
            if (TTRewardVideoActivity.this.op.er()) {
                return;
            }
            TTRewardVideoActivity.this.n.mn(z);
            TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
            tTRewardVideoActivity.n.dq(ob.dq(tTRewardVideoActivity.j, str, str2));
        }

        @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.InterfaceC0139dq
        public Activity getActivity() {
            return TTRewardVideoActivity.this.wn;
        }

        @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.InterfaceC0139dq
        public void ox() {
            TTRewardVideoActivity.super.d();
        }

        @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.InterfaceC0139dq
        public void p() {
            TTRewardVideoActivity.this.nh();
        }

        @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.InterfaceC0139dq
        public void s() {
            iw iwVar = TTRewardVideoActivity.this.u;
            if (iwVar != null) {
                iwVar.mn();
            }
        }
    });

    private void bu() {
        this.ji.dq("cancelClickLandingRewardTip", (JSONObject) null);
    }

    @DungeonFlag
    private JSONObject d(int i, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("oversea_version_type", 0);
            jSONObject.put(MediationConstant.REWARD_NAME, n());
            jSONObject.put(MediationConstant.REWARD_AMOUNT, bl());
            jSONObject.put("network", q.ox(wp.getContext()));
            jSONObject.put(PluginConstants.KEY_SDK_VERSION, op.ox);
            jSONObject.put("user_agent", c.mn());
            jSONObject.put("extra", this.j.hg());
            jSONObject.put("media_extra", this.bu);
            jSONObject.put("video_duration", this.u.bl());
            jSONObject.put("play_start_ts", this.t);
            jSONObject.put("play_end_ts", System.currentTimeMillis() / 1000);
            jSONObject.put(MediationConstant.EXTRA_DURATION, this.u.le());
            jSONObject.put("user_id", this.ws);
            jSONObject.put("trans_id", UUID.randomUUID().toString().replace("-", ""));
            jSONObject.put("reward_type", i);
            if (uh.p(this.j)) {
                jSONObject.put("show_result", z ? 1 : 0);
            }
            com.bytedance.sdk.openadsdk.jy.d.dq(this.wn, jSONObject);
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    private void dc() {
        s sVar;
        if (uh.mn(this.j) && this.u.le() >= uh.o(this.j)) {
            if (!this.er.mn() || (sVar = this.ji) == null || sVar.kk() != 0) {
                ce.dq(this.wn, uh.kk(this.j), 0);
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("toast_text", uh.kk(this.j));
                this.ji.dq("showToast", jSONObject);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DungeonFlag
    public Bundle dq(int i, boolean z, int i2, String str, int i3, String str2, boolean z2) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("callback_extra_key_reward_valid", z);
        bundle.putInt("callback_extra_key_reward_type", i);
        bundle.putInt("callback_extra_key_reward_amount", i3);
        bundle.putString("callback_extra_key_reward_name", str2);
        bundle.putFloat("callback_extra_key_reward_propose", uh.dq(this.j, i));
        bundle.putBoolean("callback_extra_key_is_server_verify", z2);
        if (!z) {
            bundle.putInt("callback_extra_key_error_code", i2);
            bundle.putString("callback_extra_key_error_msg", str);
        }
        if (i == 0 && uh.mn(this.j) && this.u.le() >= uh.o(this.j)) {
            bundle.putBoolean("callback_extra_key_video_complete_reward", true);
        }
        return bundle;
    }

    private void dq(String str, Bundle bundle) {
        com.bytedance.sdk.openadsdk.core.component.reward.dq.dq(0, this.io.dq() ? ob.dq(this.vf) : this.vf, str, bundle);
    }

    @DungeonFlag
    private int fd() {
        final int i = 0;
        if (uh.p(this.j)) {
            if (this.jy.get()) {
                i = 10116;
            } else if (!jw()) {
                i = 10111;
            }
        }
        if (wp.d().dn() == 0) {
            return i;
        }
        boolean iw = k.iw();
        int dq = k.dq(this.j.lq() + "_" + this.j.yw());
        if (iw) {
            i = 10115;
        } else if (dq == k.f3059d) {
            i = 10114;
        } else if (dq == k.ox) {
            i = 10113;
        }
        ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.7
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                com.bytedance.sdk.openadsdk.core.gh.dq.ox<com.bytedance.sdk.openadsdk.core.gh.dq.ox> d2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d();
                d2.dq("armor_reward");
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(MediationConstant.KEY_ERROR_CODE, i);
                d2.d(jSONObject.toString());
                return d2;
            }
        }, "armor_reward");
        return i;
    }

    private boolean jw() {
        if (TextUtils.isEmpty(this.j.el())) {
            return false;
        }
        return this.z.get();
    }

    private void ox(int i, boolean z) {
        if (i == 0) {
            this.ji.q();
            this.f2519c.d(z);
            dc();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(Bundle bundle) {
        int i = bundle.getInt("callback_extra_key_reward_type");
        if (i == 0) {
            dq("onRewardVerify", bundle);
        }
        dq("onRewardArrived", bundle);
        this.ce.dq(bundle);
        this.er.dq(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public int bl() {
        if (this.xi != 0 && !TextUtils.isEmpty(this.ij)) {
            return this.xi;
        }
        if (uh.d(this.j) == 0 || TextUtils.isEmpty(uh.dq(this.j))) {
            return 0;
        }
        return uh.d(this.j);
    }

    public boolean cv() {
        return Math.round(((float) ((((long) this.er.gx()) * 1000) + this.u.op())) / 1000.0f) >= this.er.by();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void d() {
        if (this.s.containsKey(0) && this.io.ox(2)) {
            return;
        }
        super.d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void d(Intent intent) {
        super.d(intent);
        if (intent == null || TextUtils.isEmpty(intent.getStringExtra("insert_ad_bundle"))) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.ox oxVar = new com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.ox(intent.getStringExtra("insert_ad_bundle"));
        this.vf = oxVar.dq();
        this.no.set(oxVar.p());
        this.gh.set(oxVar.s());
        this.s.putAll(oxVar.kk());
        this.ds.dq(oxVar);
        this.i = oxVar.iw();
        this.io.ox(oxVar.mn());
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void dq(int i, p pVar) {
        int dq;
        if (i.s(this.j) || this.q.get() || this.o.get()) {
            return;
        }
        int i2 = 0;
        if ((i != 1 || this.f2522f.getAndSet(false)) && (dq = this.ds.dq(i)) != 0) {
            if (dq == 3 && pVar != null && pVar.f2549d) {
                i2 = bl.ia();
            }
            this.ds.dq(new ox.dq().dq(this.vf).dq(this.er.ce()).d(i2).dq(this.no.get()).d(this.gh.get()).dq(this.s.keySet()).ox(this.i).dq(this.io).ox(dq).dq(), dq, pVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void dq(Intent intent) {
        super.dq(intent);
        if (intent == null) {
            return;
        }
        this.bu = intent.getStringExtra("media_extra");
        this.ws = intent.getStringExtra("user_id");
        this.ij = intent.getStringExtra(MediationConstant.REWARD_NAME);
        this.xi = intent.getIntExtra(MediationConstant.REWARD_AMOUNT, 0);
        this.io.dq(intent.getBooleanExtra("is_play_again", false));
        this.io.dq(intent.getIntExtra("play_again_count", 0));
        this.io.d(intent.getBooleanExtra("custom_play_again", false));
        this.io.d(intent.getIntExtra("source_rit_id", 0));
        this.io.dq(intent.getStringExtra("reward_again_name"));
        this.io.d(intent.getStringExtra("reward_again_amount"));
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public boolean dq(Bundle bundle) {
        com.bytedance.sdk.component.mn.dq dq = com.bytedance.sdk.openadsdk.core.ox.dq();
        dq.dq("is_reward_deep_link_to_live", false);
        dq.dq("click_to_live_duration", System.currentTimeMillis());
        return super.dq(bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void h() {
        if (this.ox.getAndSet(true) || this.io.dq() || bl.p(this.j, true)) {
            return;
        }
        p("onAdClose");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void i() {
        super.i();
        if (bl.p(this.j, true)) {
            if (this.ds.dq() > this.er.ce()) {
                this.ds.dq(false);
            }
            int max = Math.max(this.er.iw(true) - this.ds.dq(), 0);
            int iw = this.er.iw(false) - this.ds.dq();
            if (this.s.containsKey(0)) {
                max = 200;
                iw = 200;
            }
            no(iw);
            ig(max);
            this.ds.dq(this.kx);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public String ir() {
        if (this.io.dq() && !TextUtils.isEmpty(this.io.mn()) && !TextUtils.isEmpty(this.io.iw())) {
            return this.io.iw();
        }
        return n();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public boolean ji() {
        return this.io.dq() || this.ds.p();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void kk(int i) {
        if (!this.s.containsKey(0)) {
            this.f2520d.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(TTRewardVideoActivity.this.wn, "当前不满足条件，下次记得看完视频哦～", 1).show();
                }
            });
        } else if (t.dq(this.j)) {
            this.f2520d.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.5
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(TTRewardVideoActivity.this.wn, "非常抱歉，当前不支持再看一个", 1).show();
                }
            });
        } else {
            this.io.ox(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public boolean kx() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public String n() {
        return (this.xi == 0 || TextUtils.isEmpty(this.ij)) ? (uh.d(this.j) == 0 || TextUtils.isEmpty(uh.dq(this.j))) ? "" : uh.dq(this.j) : this.ij;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.op.er()) {
            return;
        }
        this.er.dq(i, i2, intent);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity, android.app.Activity
    public void onDestroy() {
        com.bytedance.sdk.component.ia.dq.ox oxVar;
        super.onDestroy();
        this.io.ox();
        List<com.bytedance.sdk.component.ia.dq.ox> dq = com.bytedance.sdk.component.ia.d.dq.dq();
        if (dq == null || dq.size() == 0 || (oxVar = this.pa) == null) {
            return;
        }
        dq.remove(oxVar);
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        if (this.io.d() || this.ds.s()) {
            super.d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (uh.fw(this.j)) {
            this.er.p(com.bytedance.sdk.openadsdk.core.mn.p.f3170d);
            com.bytedance.sdk.openadsdk.core.mn.p.ox = false;
            com.bytedance.sdk.openadsdk.core.mn.p.f3170d = 0;
            com.bytedance.sdk.openadsdk.core.mn.p.dq = this.er.wn();
            ox(0);
        }
        if (uh.gh(this.j) && com.bytedance.sdk.openadsdk.core.mn.p.p) {
            bu();
            p(4);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public String op() {
        if (this.io.dq() && !TextUtils.isEmpty(this.io.mn()) && !TextUtils.isEmpty(this.io.iw())) {
            return this.io.mn();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(bl());
        return sb.toString();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    @HungeonFlag
    @DungeonFlag
    public void ox(int i) {
        if (i != 0) {
            p(i);
            return;
        }
        if (this.er.ce() > 0) {
            return;
        }
        if ((!uh.kx(this.j) || this.mn.get()) && this.er.op()) {
            p(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void ox(boolean z) {
        int i;
        if (this.k) {
            if (wp.d().ml() == 1) {
                i = ZeusPluginEventCallback.EVENT_START_LOAD;
            }
            i = -1;
        } else {
            if (z) {
                i = 0;
            }
            i = -1;
        }
        int i2 = this.io.dq() ? -1 : i;
        if (i2 < 0 || this.r.get()) {
            return;
        }
        if (i2 != 0) {
            this.f2520d.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.6
                @Override // java.lang.Runnable
                public void run() {
                    if (TTRewardVideoActivity.this.r.getAndSet(true)) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.component.reward.dq.s.dq().dq(String.valueOf(TTRewardVideoActivity.this.nh));
                }
            }, i2);
        } else {
            if (this.r.getAndSet(true)) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.component.reward.dq.s.dq().dq(String.valueOf(this.nh));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void p() {
        com.bytedance.sdk.component.ia.dq.ox oxVar = new com.bytedance.sdk.component.ia.dq.ox() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.2
            @Override // com.bytedance.sdk.component.ia.dq.ox
            public void dq(String str, String str2) {
                j jVar = TTRewardVideoActivity.this.j;
                if (jVar != null) {
                    String el = jVar.el();
                    if (TextUtils.equals("show", str) && TextUtils.equals(str2, el)) {
                        TTRewardVideoActivity.this.z.set(true);
                    }
                }
            }
        };
        this.pa = oxVar;
        com.bytedance.sdk.component.ia.d.dq.dq(oxVar);
        super.p();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    @HungeonFlag
    @DungeonFlag
    public void p(final int i) {
        if (!this.fw.getAndSet(true)) {
            this.io.p();
        }
        if (this.s.containsKey(Integer.valueOf(i))) {
            return;
        }
        this.s.put(Integer.valueOf(i), Boolean.TRUE);
        this.ce.ox();
        boolean e2 = uh.e(this.j);
        final int bl = bl();
        final String n = n();
        int fd = fd();
        boolean z = fd == 0;
        if (z && e2) {
            ox(i, true);
            wp.dq().dq(d(i, true), new h.s() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.3
                @Override // com.bytedance.sdk.openadsdk.core.h.s
                public void dq(int i2, String str) {
                    TTRewardVideoActivity.this.ox(TTRewardVideoActivity.this.dq(i, false, i2, str, bl, n, false));
                }

                @Override // com.bytedance.sdk.openadsdk.core.h.s
                public void dq(ji.p pVar) {
                    int dq = pVar.ox.dq();
                    String d2 = pVar.ox.d();
                    TTRewardVideoActivity.this.ox(pVar.f3113d ? TTRewardVideoActivity.this.dq(i, true, 10111, "reward failed", dq, d2, true) : TTRewardVideoActivity.this.dq(i, false, 10112, "server refuse", dq, d2, true));
                }
            });
        } else {
            ox(dq(i, z, fd, "reward failed", bl, n, false));
            ox(i, z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void p(String str) {
        dq(str, (Bundle) null);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public void t() {
        super.t();
        if (uh.fw(this.j) || this.op.ir() || gh.p(this.j)) {
            return;
        }
        if (this.u.c()) {
            this.n.dq(false, null, null, true, true);
            return;
        }
        int iw = this.er.iw(true);
        int iw2 = this.er.iw(bl.p(this.j, true));
        String str = "已领取奖励";
        if (cv() || this.er.fw()) {
            com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar = this.n;
            if (iw2 > 0) {
                str = iw2 + "s";
            }
            sVar.dq(false, str, "跳过", false, true);
        } else {
            com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar2 = this.n;
            if (iw2 > 0) {
                str = iw2 + "s";
            }
            sVar2.dq(false, str, null, false, false);
        }
        this.er.d(iw);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity
    public boolean wp() {
        return super.wp() || this.io.s();
    }
}
