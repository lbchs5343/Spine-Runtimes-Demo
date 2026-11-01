package com.bytedance.sdk.openadsdk.core.component.reward;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.d;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoLandscapeActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.dq.p;
import com.bytedance.sdk.openadsdk.core.e;
import com.bytedance.sdk.openadsdk.core.ig.dq;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.ir.ji;
import com.bytedance.sdk.openadsdk.core.o.d.dq;
import com.bytedance.sdk.openadsdk.core.o.s;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ob;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.f.d.d.f;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationRewardManagerDefault;
import com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.iw;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class ox extends f {
    private boolean cd;

    /* renamed from: d, reason: collision with root package name */
    private final j f2622d;
    private final Context dq;

    /* renamed from: e, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.ox f2623e;

    /* renamed from: f, reason: collision with root package name */
    private String f2624f;
    private String fw;
    private boolean gh;
    private com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq ia;
    private String ig;
    private long iw;
    private com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq kk;
    private int mp;
    private com.bytedance.sdk.openadsdk.core.o.d.dq no;
    private com.bytedance.sdk.openadsdk.kx.dq.d.dq.d o;
    private final com.bytedance.sdk.openadsdk.f.d.ox.d ox;
    private boolean q;
    private String s;
    private final AtomicBoolean mn = new AtomicBoolean(false);
    private int jy = 1;
    private int r = 102;
    private int i = -1;
    private Double le = null;
    private boolean k = false;
    private boolean wp = false;
    private boolean p = false;

    public ox(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        this.dq = context;
        this.f2622d = jVar;
        this.ox = dVar;
        this.ig = jVar.hashCode() + jVar.el() + hashCode();
    }

    private void dq(Context context, Intent intent) {
        com.bytedance.sdk.component.utils.d.dq(context, intent, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.ox.2
            @Override // com.bytedance.sdk.component.utils.d.dq
            public void dq() {
            }

            @Override // com.bytedance.sdk.component.utils.d.dq
            public void dq(Throwable th) {
                ig.d("TTRewardVideoAdImpl", "show reward video error: ", th);
            }
        });
        com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.d dq = com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.d.dq();
        com.bytedance.sdk.openadsdk.f.d.ox.d dVar = this.ox;
        dq.dq(dVar, dVar.mn());
        if (ob.dq(this.f2622d)) {
            com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.d.dq().d(this.ox, ob.p(this.f2622d));
        }
        p.dq(true, this.q).dq(this.ox.mn(), this.f2622d);
        mn();
    }

    private void ia() {
        com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar = this.ia;
        if (dqVar != null) {
            dq.dq(this.ig, dqVar);
        }
        if (this.kk != null) {
            dq.dq(ob.dq(this.ig), this.kk);
        }
        if (this.o != null) {
            p(true);
            dq.dq(ob.d(this.ig), this.o);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public Map<String, Object> d() {
        j jVar = this.f2622d;
        if (jVar == null) {
            return null;
        }
        Map<String, Object> ps = jVar.ps();
        ps.put("expireTimestamp", Long.valueOf(p()));
        ps.put("materialMetaIsFromPreload", Boolean.valueOf(this.gh));
        ps.put("adSceneType", Integer.valueOf(com.bytedance.sdk.openadsdk.core.component.reward.p.p.dq(this.f2622d)));
        return ps;
    }

    public void d(int i) {
        this.jy = i;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void d(com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar) {
        if (this.mn.get()) {
            dq.dq(ob.dq(this.ig), dqVar);
        } else {
            this.kk = dqVar;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
        this.le = d2;
    }

    public void d(String str) {
        this.fw = str;
    }

    public void d(boolean z) {
        this.gh = z;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public int dq() {
        j jVar = this.f2622d;
        if (jVar == null) {
            return -1;
        }
        return jVar.y();
    }

    public void dq(int i) {
        this.mp = i;
    }

    public void dq(long j) {
        this.iw = j;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void dq(Activity activity) {
        j jVar = this.f2622d;
        String dn = jVar != null ? jVar.dn() : "";
        j jVar2 = this.f2622d;
        new dq.C0163dq().s(jVar2 != null ? jVar2.fx() : "0").dq("rewarded_video").d("show_start").p(dn).dq((com.bytedance.sdk.openadsdk.iw.dq.dq) null);
        if (activity != null && activity.isFinishing()) {
            ig.p("TTRewardVideoAdImpl", "showRewardVideoAd error1: activity is finishing");
            activity = null;
        }
        if (this.mn.get()) {
            return;
        }
        this.mn.set(true);
        j jVar3 = this.f2622d;
        if (jVar3 == null || pa.q(jVar3) == null) {
            return;
        }
        if (dq() == 4) {
            mn.dq(new kk("reward_register_download") { // from class: com.bytedance.sdk.openadsdk.core.component.reward.ox.1
                @Override // java.lang.Runnable
                public void run() {
                    s.dq(ox.this.dq, ox.this.f2622d, "rewarded_video", false).dq(ox.this.no);
                }
            });
        }
        com.bytedance.sdk.openadsdk.core.ox.dq().dq("reward_video_show_time", System.currentTimeMillis());
        Context context = activity == null ? this.dq : activity;
        if (context == null) {
            context = wp.getContext();
        }
        ia();
        Intent intent = this.f2622d.ho() == 2 ? new Intent(context, (Class<?>) TTRewardVideoLandscapeActivity.class) : new Intent(context, (Class<?>) TTRewardVideoActivity.class);
        if (activity == null) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        if (this.q) {
            intent.putExtra("is_play_again", true);
            intent.putExtra("play_again_count", this.jy);
        } else {
            this.mp = c.kk(this.f2622d);
        }
        intent.putExtra("source_rit_id", this.mp);
        intent.putExtra("custom_play_again", this.cd);
        intent.putExtra("media_extra", this.ox.f());
        intent.putExtra("user_id", this.ox.fw());
        if (this.q && !TextUtils.isEmpty(this.f2624f) && !TextUtils.isEmpty(this.fw)) {
            intent.putExtra("reward_again_name", this.f2624f);
            intent.putExtra("reward_again_amount", this.fw);
        }
        intent.putExtra(MediationConstant.REWARD_NAME, this.ox.h());
        intent.putExtra(MediationConstant.REWARD_AMOUNT, this.ox.ji());
        intent.putExtra("is_preload", this.p);
        intent.putExtra("is_adm", !TextUtils.isEmpty(this.ox.wp()));
        Double d2 = this.le;
        intent.putExtra("_client_bidding_aution_price", d2 != null ? String.valueOf(d2) : "");
        if (!TextUtils.isEmpty(this.s)) {
            intent.putExtra("rit_scene", this.s);
        }
        this.f2622d.iw(this.gh);
        this.f2622d.u(this.r);
        int i = this.i;
        if (i != -1) {
            intent.putExtra("key_video_cache_callback", i);
        }
        c.dq(intent, this.f2622d);
        intent.putExtra("multi_process_key", this.ig);
        com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.ox oxVar = this.f2623e;
        if (oxVar != null) {
            intent.putExtra("insert_ad_bundle", oxVar.o().toString());
        }
        dq(context, intent);
        com.bytedance.sdk.openadsdk.core.iw.p.dq().dq(this.f2622d).dq(7);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (ritScenes == null) {
            ig.p("TTRewardVideoAdImpl", "The param ritScenes can not be null!");
            return;
        }
        if (ritScenes == TTAdConstant.RitScenes.CUSTOMIZE_SCENES) {
            this.s = str;
        } else {
            this.s = ritScenes.getScenesName();
        }
        dq(activity);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.component.reward.business.insertad.ox oxVar) {
        this.f2623e = oxVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        this.no = dq.C0176dq.dq(dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar) {
        j jVar = this.f2622d;
        if (jVar != null) {
            e.dq(jVar.ff(), dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void dq(com.bytedance.sdk.openadsdk.kx.dq.d.dq.d dVar) {
        if (!this.mn.get()) {
            this.o = dVar;
        } else {
            p(true);
            dq.dq(ob.d(this.ig), dVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void dq(com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar) {
        if (this.mn.get()) {
            dq.dq(this.ig, dqVar);
        } else {
            this.ia = dqVar;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
        if (this.k) {
            return;
        }
        ji.dq(this.f2622d, d2);
        this.k = true;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
        if (this.wp) {
            return;
        }
        ji.dq(this.f2622d, d2, str, str2);
        this.wp = true;
    }

    public void dq(String str) {
        this.f2624f = str;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public void dq(boolean z) {
    }

    public void iw() {
        if (this.mn.get()) {
            return;
        }
        this.p = true;
    }

    public void mn() {
        if (this.f2622d == null || this.ox == null || this.q || wp.d().ml() != 0) {
            return;
        }
        try {
            if (this.p) {
                com.bytedance.sdk.openadsdk.core.component.reward.dq.s.dq().dq(this.ox);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public int ox() {
        j jVar = this.f2622d;
        if (jVar == null) {
            return -1;
        }
        if (i.s(jVar)) {
            return 2;
        }
        if (i.iw(this.f2622d)) {
            return 1;
        }
        return com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f2622d) ? 3 : 0;
    }

    public void ox(int i) {
        this.r = i;
    }

    public void ox(String str) {
        this.ig = str;
    }

    public void ox(boolean z) {
        this.q = z;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public long p() {
        return this.iw;
    }

    public void p(int i) {
        this.i = i;
    }

    public void p(boolean z) {
        this.cd = z;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.f
    public iw s() {
        return new MediationRewardManagerDefault();
    }
}
