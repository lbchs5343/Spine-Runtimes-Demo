package com.bytedance.sdk.openadsdk.core.component.reward.p;

import android.app.Dialog;
import android.content.Intent;
import android.service.quicksettings.TileService;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.view.d;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ji;
import com.bytedance.sdk.openadsdk.core.r.by;
import com.bytedance.sdk.openadsdk.core.r.c;
import com.bytedance.sdk.openadsdk.core.r.gx;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mn extends dq {

    /* renamed from: c, reason: collision with root package name */
    private boolean f2645c;
    private com.bytedance.sdk.openadsdk.core.component.reward.view.d ce;
    private com.bytedance.sdk.openadsdk.core.d.dq er;
    protected boolean ir;
    protected final AtomicBoolean u;

    public mn(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity, jVar);
        this.ir = false;
        this.u = new AtomicBoolean(false);
    }

    private JSONObject bu() {
        JSONObject jSONObject = new JSONObject();
        c eb = this.f2635d.eb();
        if (eb != null) {
            String p = eb.p();
            if (!TextUtils.isEmpty(p)) {
                try {
                    String optString = new JSONObject(p).optString(TileService.EXTRA_TOKEN);
                    jSONObject.put("req_id", eb.iw());
                    jSONObject.put(TileService.EXTRA_TOKEN, optString);
                    jSONObject.put("action", "query_box");
                    return jSONObject;
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    return jSONObject;
                }
            }
        }
        return jSONObject;
    }

    public static int d(j jVar) {
        return 2;
    }

    private void d(int i, int i2) {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.d dVar = this.kk;
        if (dVar != null && (dVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.layout.ia)) {
            ((com.bytedance.sdk.openadsdk.core.component.reward.layout.ia) dVar).dq(i, i2);
        }
    }

    private void dq(long j) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("showTime", j);
            com.bytedance.sdk.openadsdk.core.component.reward.layout.s sVar = this.o;
            if (sVar == null || !sVar.iw()) {
                return;
            }
            this.o.dq("rewardInnerLiveShowTime", jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static boolean dq(j jVar) {
        return com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ia(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("showSkip", z);
            com.bytedance.sdk.openadsdk.core.component.reward.layout.s sVar = this.o;
            if (sVar != null) {
                sVar.dq("showSkipInLiveScene", jSONObject);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    private void ij() {
        if (this.ia == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("is_auto_click", Boolean.TRUE);
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.ia.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(hashMap);
        this.ia.dq(null, new com.bytedance.sdk.openadsdk.core.r.o());
    }

    private void s(int i) {
        com.bytedance.sdk.openadsdk.core.d.mn mnVar = this.ia;
        if (mnVar != null) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) mnVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(i);
        }
        com.bytedance.sdk.openadsdk.core.nativeexpress.s sVar = this.wp;
        if (sVar != null) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) sVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(i);
        }
        com.bytedance.sdk.openadsdk.core.nativeexpress.iw iwVar = this.k;
        if (iwVar != null) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) iwVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(i);
        }
    }

    private void ws() {
        com.bytedance.sdk.openadsdk.core.d.mn mnVar;
        if (this.ir || (mnVar = this.ia) == null) {
            return;
        }
        if (((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) mnVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).d().f()) {
            this.ir = true;
            d(8, 0);
            return;
        }
        if (gx.dq(this.f2635d)) {
            int s = gx.s(this.f2635d);
            if (this.f2635d.ho() == 2) {
                d(0, -1);
            }
            if (s != 3) {
                return;
            }
            long mn = gx.mn(this.f2635d) * 1000;
            if (this.r.op() < mn) {
                d(0, (int) ((mn - this.r.op()) / 1000));
                return;
            }
            d(8, 0);
            ij();
            this.ir = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int bl() {
        return d(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void d(boolean z) {
        super.d(z);
        if (!com.bytedance.sdk.openadsdk.core.ox.dq().d("is_reward_deep_link_to_live", false) || gx.ox(this.f2635d) || z) {
            return;
        }
        wp.dq().dq(bu(), new h.p() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.mn.1
            @Override // com.bytedance.sdk.openadsdk.core.h.p
            public void dq(int i, String str) {
                mn.this.ia(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.p
            public void dq(ji.ox oxVar) {
                by byVar = oxVar.ox;
                if (byVar == null) {
                    return;
                }
                boolean dq = byVar.dq();
                mn.this.ia(dq);
                if (dq) {
                    mn.this.dq.p(0);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void dc() {
        if (iw()) {
            this.gh.d(false);
            this.gh.s(false);
            this.kk.iw(8);
            this.kk.s(8);
            this.kk.ox(8);
            return;
        }
        this.gh.d(this.f2635d.qc());
        this.gh.s(true);
        this.kk.iw(0);
        this.kk.s(0);
        this.kk.ox(0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public com.bytedance.sdk.openadsdk.core.component.reward.layout.d dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.ia iaVar = new com.bytedance.sdk.openadsdk.core.component.reward.layout.ia(this.dq, this.f2635d, z);
        this.kk = iaVar;
        return iaVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void dq(int i, int i2, Intent intent) {
        super.dq(i, i2, intent);
        if (gx.ox(this.f2635d) || i != 1 || intent == null || intent.getExtras() == null || this.f2645c) {
            return;
        }
        long j = intent.getExtras().getLong("csj.reward_countdown_duration_ms");
        int ce = (int) (ce() - j);
        this.dq.dq(ce, false);
        if (j > 0) {
            dq(ce);
            return;
        }
        ia(true);
        s(0);
        this.f2645c = true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void f() {
        super.f();
        this.gh.d(this.f2635d.qc());
        this.gh.s(true);
        this.kk.iw(0);
        this.kk.s(0);
        this.kk.ox(0);
    }

    public void fd() {
        if (gx.dq(this.f2635d)) {
            c eb = this.f2635d.eb();
            if (eb != null || com.bytedance.sdk.openadsdk.core.live.d.dq().d(this.f2635d)) {
                int ce = ce();
                if (eb != null) {
                    eb.dq(ce);
                }
                s(ce);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public boolean fw() {
        if (this.f2645c) {
            return true;
        }
        return (com.bytedance.sdk.openadsdk.core.live.d.dq().d(this.f2635d) || gx.ox(this.f2635d)) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public View kk() {
        return this.ox == 2 ? com.bytedance.sdk.openadsdk.res.s.jy(this.dq) : com.bytedance.sdk.openadsdk.res.s.f(this.dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public boolean n() {
        return this.u.get();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void r() {
        super.r();
        fd();
        if (!this.o.iw()) {
            if (com.bytedance.sdk.openadsdk.core.live.d.dq().d(this.f2635d)) {
                ws();
                return;
            }
            if (gx.dq(this.f2635d) && this.ce == null && !com.bytedance.sdk.openadsdk.core.ox.dq().d("is_reward_deep_link_to_live", false) && gx.s(this.f2635d) != 1 && this.r.op() >= gx.mn(this.f2635d) * 1000) {
                this.u.set(true);
                com.bytedance.sdk.openadsdk.core.component.reward.d.iw iwVar = this.r;
                if (iwVar != null && iwVar.d()) {
                    this.dq.nh();
                }
                this.ce = new com.bytedance.sdk.openadsdk.core.component.reward.view.d(this.dq, this.f2635d, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.mn.2
                    @Override // com.bytedance.sdk.openadsdk.core.component.reward.view.d.dq
                    public void d(Dialog dialog) {
                        if (mn.this.er != null) {
                            HashMap hashMap = new HashMap();
                            hashMap.put("is_auto_click", Boolean.TRUE);
                            ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) mn.this.er.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(hashMap);
                            mn.this.er.dq(null, new com.bytedance.sdk.openadsdk.core.r.o());
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.component.reward.view.d.dq
                    public void dq(Dialog dialog) {
                        mn.this.ce.dismiss();
                        mn.this.dq.vf();
                        mn.this.u.set(false);
                    }
                });
                com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(this.dq, this.f2635d, this.ig, 7) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.mn.3
                    @Override // com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
                    public void dq(View view, com.bytedance.sdk.openadsdk.core.r.o oVar) {
                        super.dq(view, oVar);
                        mn.this.ce.dismiss();
                    }
                };
                this.er = dqVar;
                this.dq.dq((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class));
                this.ce.dq(this.er);
                if (this.dq.isFinishing()) {
                    return;
                }
                this.ce.show();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean uh() {
        return xz() && this.f2635d.ce() == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean vw() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean xz() {
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean yy() {
        return true;
    }
}
