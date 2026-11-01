package com.bytedance.sdk.openadsdk.core.component.reward;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.d;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoLandscapeActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.dq.p;
import com.bytedance.sdk.openadsdk.core.e;
import com.bytedance.sdk.openadsdk.core.ig.dq;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.ir.ji;
import com.bytedance.sdk.openadsdk.core.o.d.dq;
import com.bytedance.sdk.openadsdk.core.o.s;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.f.d.d.ig;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.mediation.MediationFullScreenManagerDefault;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class d extends ig {

    /* renamed from: d, reason: collision with root package name */
    private final j f2550d;
    private final Context dq;

    /* renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.o.d.dq f2551f;
    private boolean ia;
    private com.bytedance.sdk.openadsdk.k.dq.d.dq.dq jy;
    private final String mn;
    private String p;
    private com.bytedance.sdk.openadsdk.f.d.ox.d q;
    private long s;
    private final AtomicBoolean iw = new AtomicBoolean(false);
    private int kk = 102;
    private int o = -1;
    private Double no = null;
    private boolean ig = false;
    private boolean mp = false;
    private boolean ox = false;

    public d(Context context, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        this.dq = context;
        this.f2550d = jVar;
        this.q = dVar;
        this.mn = jVar.hashCode() + jVar.el() + hashCode();
    }

    private void dq(Context context, Intent intent) {
        com.bytedance.sdk.component.utils.d.dq(context, intent, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.2
            @Override // com.bytedance.sdk.component.utils.d.dq
            public void dq() {
            }

            @Override // com.bytedance.sdk.component.utils.d.dq
            public void dq(Throwable th) {
                com.bytedance.sdk.component.utils.ig.d("TTFullScreenVideoAdImpl", "show full screen video error: ", th);
            }
        });
        com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.d dq = com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.d.dq();
        com.bytedance.sdk.openadsdk.f.d.ox.d dVar = this.q;
        dq.dq(dVar, dVar.mn());
        p.dq(false, false).dq(this.q.mn(), this.f2550d);
        mn();
    }

    private void ia() {
        com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dqVar = this.jy;
        if (dqVar != null) {
            dq.dq(this.mn, dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public Map<String, Object> d() {
        j jVar = this.f2550d;
        if (jVar == null) {
            return null;
        }
        Map<String, Object> ps = jVar.ps();
        ps.put("expireTimestamp", Long.valueOf(p()));
        ps.put("materialMetaIsFromPreload", Boolean.valueOf(this.ia));
        ps.put("adSceneType", Integer.valueOf(com.bytedance.sdk.openadsdk.core.component.reward.p.p.dq(this.f2550d)));
        return ps;
    }

    public void d(int i) {
        this.o = i;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
        this.no = d2;
    }

    public void d(boolean z) {
        this.ia = z;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public int dq() {
        j jVar = this.f2550d;
        if (jVar == null) {
            return -1;
        }
        return jVar.y();
    }

    public void dq(int i) {
        this.kk = i;
    }

    public void dq(long j) {
        this.s = j;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(Activity activity) {
        j jVar = this.f2550d;
        String dn = jVar != null ? jVar.dn() : "";
        j jVar2 = this.f2550d;
        new dq.C0163dq().s(jVar2 != null ? jVar2.fx() : "0").dq("fullscreen_interstitial_ad").d("show_start").p(dn).dq((com.bytedance.sdk.openadsdk.iw.dq.dq) null);
        if (activity != null && activity.isFinishing()) {
            com.bytedance.sdk.component.utils.ig.p("TTFullScreenVideoAdImpl", "showFullScreenVideoAd error1: activity is finishing");
            activity = null;
        }
        if (this.iw.get()) {
            return;
        }
        this.iw.set(true);
        j jVar3 = this.f2550d;
        if (jVar3 != null) {
            if (pa.q(jVar3) == null && this.f2550d.oh() == null) {
                return;
            }
            if (dq() == 4) {
                mn.dq(new kk("full_register_download") { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.1
                    @Override // java.lang.Runnable
                    public void run() {
                        s.dq(d.this.dq, d.this.f2550d, "fullscreen_interstitial_ad", false).dq(d.this.f2551f);
                    }
                });
            }
            com.bytedance.sdk.openadsdk.core.ox.dq().d("full_video_show_time", System.currentTimeMillis());
            Context context = activity == null ? this.dq : activity;
            if (context == null) {
                context = wp.getContext();
            }
            ia();
            Intent intent = this.f2550d.ho() == 2 ? new Intent(context, (Class<?>) TTFullScreenVideoLandscapeActivity.class) : new Intent(context, (Class<?>) TTFullScreenVideoActivity.class);
            if (activity == null) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            intent.putExtra("is_preload", this.ox);
            intent.putExtra("is_adm", !TextUtils.isEmpty(this.q.wp()));
            Double d2 = this.no;
            intent.putExtra("_client_bidding_aution_price", d2 != null ? String.valueOf(d2) : "");
            if (!TextUtils.isEmpty(this.p)) {
                intent.putExtra("rit_scene", this.p);
            }
            this.f2550d.iw(this.ia);
            this.f2550d.u(this.kk);
            int i = this.o;
            if (i != -1) {
                intent.putExtra("key_video_cache_callback", i);
            }
            c.dq(intent, this.f2550d);
            intent.putExtra("multi_process_key", this.mn);
            dq(context, intent);
            com.bytedance.sdk.openadsdk.core.iw.p.dq().dq(this.f2550d).dq(8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (ritScenes == null) {
            com.bytedance.sdk.component.utils.ig.p("TTFullScreenVideoAdImpl", "The param ritScenes can not be null!");
            return;
        }
        if (ritScenes == TTAdConstant.RitScenes.CUSTOMIZE_SCENES) {
            this.p = str;
        } else {
            this.p = ritScenes.getScenesName();
        }
        dq(activity);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        this.f2551f = dq.C0176dq.dq(dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar) {
        j jVar = this.f2550d;
        if (jVar != null) {
            e.dq(jVar.ff(), dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dqVar) {
        if (this.iw.get()) {
            dq.dq(this.mn, dqVar);
        }
        this.jy = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
        if (this.ig) {
            return;
        }
        ji.dq(this.f2550d, d2);
        this.ig = true;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
        if (this.mp) {
            return;
        }
        ji.dq(this.f2550d, d2, str, str2);
        this.mp = true;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(boolean z) {
    }

    public void iw() {
        if (this.iw.get()) {
            return;
        }
        this.ox = true;
    }

    public void mn() {
        if (this.f2550d == null || this.q == null || wp.d().ml() != 0) {
            return;
        }
        try {
            boolean z = this.ox;
            if (this.q == null || !z) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.dq().dq(this.q);
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public int ox() {
        j jVar = this.f2550d;
        if (jVar == null) {
            return -1;
        }
        if (i.s(jVar)) {
            return 2;
        }
        if (i.iw(this.f2550d)) {
            return 1;
        }
        return com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.f2550d) ? 3 : 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public long p() {
        return this.s;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.p s() {
        return new MediationFullScreenManagerDefault();
    }
}
