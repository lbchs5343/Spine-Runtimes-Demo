package com.bytedance.sdk.openadsdk.core.p.dq;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.dq;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ig.dq;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.nativeexpress.q;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.p.ox.p;
import com.bytedance.sdk.openadsdk.core.p.p.s;
import com.bytedance.sdk.openadsdk.core.playable.dq;
import com.bytedance.sdk.openadsdk.core.r.bl;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.h;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.r.ob;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.t;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.r.xi;
import com.bytedance.sdk.openadsdk.core.ugeno.kk;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox implements d {
    protected com.bytedance.sdk.openadsdk.core.p.p.d dq;

    /* renamed from: com.bytedance.sdk.openadsdk.core.p.dq.ox$7, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] dq;

        static {
            int[] iArr = new int[TTAdLoadType.values().length];
            dq = iArr;
            try {
                iArr[TTAdLoadType.LOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dq[TTAdLoadType.PRELOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public ox(com.bytedance.sdk.openadsdk.core.p.p.d dVar) {
        this.dq = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(String str, j jVar) {
        if (!wp.d().d(str) || jVar == null) {
            return false;
        }
        int i = dq() ? 7 : 8;
        j d2 = com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.d.dq().d(dq(), str);
        if (d2 == null) {
            return false;
        }
        if (d2.h() + d2.f() < System.currentTimeMillis()) {
            p.dq(i).dq(str);
            return true;
        }
        if (!TextUtils.equals(d2.wp(), jVar.wp())) {
            if (com.bytedance.sdk.openadsdk.core.d.dq(jVar, dq() ? 7 : 8) != 200) {
                return true;
            }
        }
        try {
            JSONObject jSONObject = new JSONObject(jVar.k());
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                jSONObject.get(next);
                d2.hg().put(next, jSONObject.get(next));
            }
            d2.i(d2.hg().toString());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar) {
        if (dqVar.d().size() <= 1) {
            return;
        }
        List<j> subList = dqVar.d().subList(1, dqVar.d().size());
        JSONArray jSONArray = new JSONArray();
        for (j jVar : subList) {
            h eo = jVar.eo();
            if (eo != null) {
                eo.dq(true);
            }
            jSONArray.put(jVar.ve());
        }
        if (jSONArray.length() > 0) {
            dqVar.d().get(0).ce(jSONArray.toString());
        }
    }

    private void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final j jVar, final com.bytedance.sdk.openadsdk.core.p.p.ox oxVar) {
        if (pa.q(jVar) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 23) {
            com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.dq.dq(dq(), jVar, new dq.InterfaceC0145dq<Object>() { // from class: com.bytedance.sdk.openadsdk.core.p.dq.ox.5
                @Override // com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.dq.InterfaceC0145dq
                public void dq(boolean z, Object obj) {
                    com.bytedance.sdk.openadsdk.core.p.p.ox oxVar2 = oxVar;
                    if (oxVar2 != null) {
                        oxVar2.d();
                    }
                }
            });
            return;
        }
        com.bykv.vk.openvk.component.video.api.ox.p dq = pa.dq(1, jVar);
        dq.dq("material_meta", jVar);
        dq.dq("ad_slot", dVar);
        com.bytedance.sdk.openadsdk.core.video.p.d.dq(dq, new com.bykv.vk.openvk.component.video.api.s.d() { // from class: com.bytedance.sdk.openadsdk.core.p.dq.ox.4
            @Override // com.bykv.vk.openvk.component.video.api.s.dq.InterfaceC0005dq
            public void dq(com.bykv.vk.openvk.component.video.api.ox.p pVar, int i) {
                ig.dq("RewardAdStrategyCacher", "RewardFullLog: Cached ad onVideoPreloadSuccess");
                com.bytedance.sdk.openadsdk.core.p.p.ox oxVar2 = oxVar;
                if (oxVar2 != null) {
                    oxVar2.d();
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.s.dq.InterfaceC0005dq
            public void dq(com.bykv.vk.openvk.component.video.api.ox.p pVar, int i, String str) {
                ig.dq("RewardAdStrategyCacher", "RewardFullLog: Cached ad onVideoPreloadFail");
                if (!pa.ig(jVar)) {
                    ig.dq("RewardAdStrategyCacher", "RewardFullLog: Cached ad onVideoPreloadFail and block onCached");
                    return;
                }
                com.bytedance.sdk.openadsdk.core.p.p.ox oxVar2 = oxVar;
                if (oxVar2 != null) {
                    oxVar2.d();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, int i, String str2, com.bytedance.sdk.openadsdk.core.r.d dVar) {
        dVar.dq(i);
        dVar.d(str2);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cache_strategy", com.bytedance.sdk.openadsdk.core.component.reward.dq.p.dq(dq()));
            jSONObject.put(PluginConstants.KEY_APP_ID, no.ia().mp());
            jSONObject.put("rit", str);
        } catch (Exception unused) {
        }
        dVar.dq(jSONObject);
        com.bytedance.sdk.openadsdk.core.r.d.dq(dVar);
    }

    private void dq(String str, j jVar) {
        try {
            ji wq = jVar.wq();
            if (wq == null || TextUtils.isEmpty(wq.dq())) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.le.ox oxVar = new com.bytedance.sdk.openadsdk.core.le.ox(true);
            oxVar.dq(str);
            oxVar.dq(8);
            oxVar.ox(jVar.fx());
            oxVar.p(jVar.dn());
            oxVar.d(c.mp(jVar));
            com.bytedance.sdk.openadsdk.ia.d.dq(wq).dq(oxVar);
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.dq.d
    public com.bytedance.sdk.openadsdk.core.p.p.ox dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar, nh nhVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar2, s sVar) {
        if (dqVar.d() == null || dqVar.d().isEmpty()) {
            if (sVar != null) {
                sVar.dq(-3, o.dq(-3));
            }
            dq(dVar2.mn(), -3, o.dq(-3), dVar);
            return null;
        }
        Bundle bundle = nhVar == null ? null : nhVar.f3497f;
        boolean z = bundle != null && bundle.getBoolean("is_preload", false);
        boolean z2 = bundle != null && bundle.getBoolean("is_playAgain", false);
        long j = bundle != null ? bundle.getLong("start_time", 0L) : 0L;
        dqVar.d().size();
        j jVar = dqVar.d().get(0);
        if (d(dVar2.mn(), jVar)) {
            return null;
        }
        if (!jVar.xo() || dq(dqVar, dVar2)) {
            if (sVar != null) {
                sVar.dq(-4, o.dq(-4));
            }
            dq(dVar2.mn(), -4, o.dq(-4), dVar);
            return null;
        }
        dq(dqVar);
        if (!z) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong("start_time", j);
            bundle2.putBoolean("is_playAgain", z2);
            bundle2.putBoolean("is_cache", false);
            return dq(jVar, dVar2, sVar, bundle2);
        }
        com.bytedance.sdk.openadsdk.core.p.p.d dVar3 = this.dq;
        if (dVar3 != null) {
            dVar3.dq().dq(dVar2, jVar);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cache_strategy", com.bytedance.sdk.openadsdk.core.component.reward.dq.p.dq(dq()));
            jSONObject.put("src_req_id", jVar.hz());
            jSONObject.put("is_map", jVar.ml());
        } catch (Exception unused) {
        }
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(jVar, "stats_reward_full_preload", jSONObject);
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.dq.d
    public com.bytedance.sdk.openadsdk.core.p.p.ox dq(final j jVar, final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final s sVar, Bundle bundle) {
        final com.bytedance.sdk.openadsdk.core.component.reward.ox oxVar = new com.bytedance.sdk.openadsdk.core.component.reward.ox(wp.getContext(), jVar, dVar);
        final boolean z = bundle.getBoolean("is_cache", false);
        final boolean z2 = bundle.getBoolean("is_playAgain", false);
        final long j = bundle.getLong("start_time");
        oxVar.d(z);
        oxVar.ox(z ? 101 : 102);
        if (jVar.ix() <= 0) {
            oxVar.dq(System.currentTimeMillis() + 10500000);
        } else {
            oxVar.dq(jVar.ix() * 1000);
        }
        if (!com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar) && !i.s(jVar) && !t.dq(jVar) && z) {
            oxVar.iw();
        }
        return new com.bytedance.sdk.openadsdk.core.p.p.ox() { // from class: com.bytedance.sdk.openadsdk.core.p.dq.ox.1
            private final AtomicBoolean kk = new AtomicBoolean(false);

            @Override // com.bytedance.sdk.openadsdk.core.p.p.ox
            public void d() {
                if (j != 0) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.d(jVar, c.d(dVar.k()), j);
                }
                oxVar.p(1);
                s sVar2 = sVar;
                if (sVar2 != null) {
                    sVar2.d(oxVar);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.p.p.ox
            public void dq() {
                com.bytedance.sdk.openadsdk.core.p.p.d dVar2 = ox.this.dq;
                if (dVar2 != null) {
                    dVar2.dq().dq(dVar, jVar, oxVar, z);
                }
                s sVar2 = sVar;
                if (sVar2 != null) {
                    sVar2.dq(oxVar);
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("is_play_again", z2);
                    jSONObject.put("is_from_cache", z);
                    jSONObject.put("is_adm", !TextUtils.isEmpty(dVar.wp()));
                    jSONObject.put("cache_strategy", com.bytedance.sdk.openadsdk.core.component.reward.dq.p.dq(ox.this.dq()));
                    jSONObject.put("src_req_id", jVar.hz());
                    jSONObject.put("is_map", jVar.ml());
                    jSONObject.put("load_duration", System.currentTimeMillis() - j);
                } catch (JSONException unused) {
                }
                com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(jVar, "stats_reward_full_ad_loaded", jSONObject);
                ox.this.dq(this, jVar, dVar);
            }

            @Override // com.bytedance.sdk.openadsdk.core.p.p.ox
            public void ox() {
                if (this.kk.compareAndSet(false, true)) {
                    if (z) {
                        com.bytedance.sdk.openadsdk.core.p.p.d dVar2 = ox.this.dq;
                        if (dVar2 != null) {
                            dVar2.dq().ox(dVar, jVar);
                            return;
                        }
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.p.p.d dVar3 = ox.this.dq;
                    if (dVar3 != null) {
                        dVar3.dq().d(dVar, jVar);
                    }
                }
            }
        };
    }

    public void dq(final com.bytedance.sdk.openadsdk.core.p.p.ox oxVar, j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        dq(jVar, dVar);
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            com.bytedance.sdk.openadsdk.core.video.ox.dq.d(jVar);
            oxVar.d();
        } else {
            if (!i.s(jVar)) {
                dq(dVar, jVar, oxVar);
                return;
            }
            com.bytedance.sdk.openadsdk.core.playable.dq.dq().dq(jVar, new dq.InterfaceC0180dq() { // from class: com.bytedance.sdk.openadsdk.core.p.dq.ox.3
                @Override // com.bytedance.sdk.openadsdk.core.playable.dq.InterfaceC0180dq
                public void dq(boolean z) {
                    oxVar.d();
                }
            });
            if (gh.dq(jVar) && com.bytedance.sdk.openadsdk.h.o.dq(jVar)) {
                dq(dVar, jVar, oxVar);
            }
        }
    }

    public void dq(j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        j.dq tv;
        dVar.mn();
        dq(dVar.mn(), jVar);
        if (kk.kk(jVar) && !kk.no(jVar) && (tv = jVar.tv()) != null) {
            kk.dq(tv.o(), tv.kk(), (q) null);
        }
        if (dq()) {
            Iterator<xi> it = uh.r(jVar).iterator();
            while (it.hasNext()) {
                xi next = it.next();
                com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dqVar = new com.bytedance.sdk.openadsdk.core.ugeno.mn.dq();
                dqVar.dq(next.p());
                dqVar.d(next.s());
                dqVar.ox(next.p());
                kk.dq(next.s(), next.p(), (q) null);
            }
            Iterator<xi> it2 = ob.s(jVar).iterator();
            while (it2.hasNext()) {
                xi next2 = it2.next();
                com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dqVar2 = new com.bytedance.sdk.openadsdk.core.ugeno.mn.dq();
                dqVar2.dq(next2.p());
                dqVar2.d(next2.s());
                dqVar2.ox(next2.p());
                kk.dq(next2.s(), next2.p(), (q) null);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.dq.d
    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        if (wp.d().d(dVar.mn())) {
            nh nhVar = new nh();
            nhVar.f3496d = 2;
            if (wp.d().no(dVar.mn()) || dVar.no() > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                nhVar.mn = 2;
            }
            wp.dq().d(dVar, nhVar, dq() ? 7 : 8, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.p.dq.ox.6
                @Override // com.bytedance.sdk.openadsdk.core.h.d
                public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                    dVar2.dq(i);
                    dVar2.d(str);
                    com.bytedance.sdk.openadsdk.core.r.d.dq(dVar2);
                }

                @Override // com.bytedance.sdk.openadsdk.core.h.d
                public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
                    if (dqVar.d() == null || dqVar.d().isEmpty()) {
                        ox.this.dq(dVar.mn(), -3, o.dq(-3), dVar2);
                        return;
                    }
                    j jVar = dqVar.d().get(0);
                    if (ox.this.d(dVar.mn(), jVar)) {
                        return;
                    }
                    if (!jVar.xo() || ox.this.dq(dqVar, dVar)) {
                        ox.this.dq(dVar.mn(), -4, o.dq(-4), dVar2);
                        return;
                    }
                    ox.this.dq(dqVar);
                    com.bytedance.sdk.openadsdk.core.p.p.d dVar3 = ox.this.dq;
                    if (dVar3 != null) {
                        dVar3.dq().dq(dVar, jVar);
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("cache_strategy", com.bytedance.sdk.openadsdk.core.component.reward.dq.p.dq(ox.this.dq()));
                        jSONObject.put("src_req_id", jVar.hz());
                        jSONObject.put("is_map", jVar.ml());
                    } catch (Exception unused) {
                    }
                    com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(jVar, "stats_reward_full_preload", jSONObject);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.dq.d
    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar2) {
        if (dVar != null) {
            dq(dVar.mn(), i, str, dVar2);
        }
    }

    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, j jVar, boolean z) {
        if (jVar == null) {
            return;
        }
        new dq.C0163dq().s(jVar.fx()).dq(z ? "rewarded_video" : "fullscreen_interstitial_ad").p(jVar.dn()).d("get_preload_ad").dq(new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.p.dq.ox.2
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                JSONObject jSONObject2 = new JSONObject();
                if (dVar.kx() != null) {
                    int i = AnonymousClass7.dq[dVar.kx().ordinal()];
                    if (i == 1) {
                        jSONObject2.put("req_type", 3);
                    } else if (i != 2) {
                        jSONObject2.put("req_type", -1);
                    } else {
                        jSONObject2.put("req_type", 1);
                    }
                }
                jSONObject2.put("preload_ad_type", 2);
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        });
    }

    public boolean dq() {
        return true;
    }

    public boolean dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        List<j> d2;
        if (dqVar != null && (d2 = dqVar.d()) != null) {
            j jVar = d2.get(0);
            if (bl.p(jVar, false) && bl.p(jVar) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.dq.d
    public boolean dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, j jVar) {
        if (!com.bytedance.sdk.openadsdk.core.p.dq.dq(dVar, jVar, dq())) {
            return false;
        }
        dq(dVar, jVar, dq());
        return true;
    }
}
