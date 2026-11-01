package com.bytedance.sdk.openadsdk.core.component.reward.p;

import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.draw.ox;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.t;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox extends com.bytedance.sdk.openadsdk.core.component.reward.p.dq {

    /* renamed from: c, reason: collision with root package name */
    private int f2648c;
    private int ce;
    private int er;
    private final List<com.bytedance.sdk.openadsdk.core.component.reward.draw.d> ir;
    private final AtomicBoolean j;
    private final AtomicBoolean nh;
    private int u;
    private com.bytedance.sdk.openadsdk.core.component.reward.draw.s vf;
    private int wn;

    public interface dq {
        void d();

        void dq();

        void dq(int i);

        Map<String, Object> ox();

        void p();
    }

    public ox(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity, jVar);
        this.ir = new ArrayList();
        this.u = 0;
        this.f2648c = 0;
        this.ce = 0;
        this.er = 0;
        this.wn = 0;
        this.j = new AtomicBoolean(false);
        this.nh = new AtomicBoolean(false);
    }

    private void bu() {
        com.bytedance.sdk.openadsdk.core.component.reward.draw.s sVar = this.vf;
        if (sVar == null || !sVar.er()) {
            int p = this.ir.get(this.ce).p();
            if (p > 0) {
                this.u += p;
            }
            if (t.ox(this.f2635d) <= this.f2648c && !this.j.get()) {
                this.dq.p(0);
                this.dq.mp();
                this.j.set(true);
            }
            int i = this.f2648c;
            if (i < this.u) {
                this.f2648c = i + 1;
            }
        }
    }

    public static int d(j jVar) {
        return 8;
    }

    public static boolean dq(j jVar) {
        return (jVar == null || !t.dq(jVar) || TextUtils.isEmpty(jVar.tt())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bytedance.sdk.openadsdk.core.component.reward.layout.p fd() {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.d dVar = this.kk;
        if (dVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.layout.p) {
            return (com.bytedance.sdk.openadsdk.core.component.reward.layout.p) dVar;
        }
        return null;
    }

    private void ij() {
        if (this.op.ox() <= t.ia(this.f2635d) || this.nh.get() || fd() == null) {
            return;
        }
        fd().s();
    }

    private void ws() {
        boolean z;
        boolean z2 = Math.max(0, this.op.s() - e()) == 0;
        int p = t.p(this.f2635d);
        int s = t.s(this.f2635d);
        int iw = iw(false);
        String str = "领取成功";
        if (p == 0) {
            if (iw > 0) {
                str = iw + "s后可领取奖励";
            }
            z = true;
        } else {
            if (iw > 0) {
                str = iw + "s";
            }
            z = false;
        }
        d(iw(true));
        this.gh.dq(z, str, (z2 && s == 1) ? "跳过" : null, z2 && s == 0, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void xi() {
        com.bykv.vk.openvk.component.video.api.ox.p pVar;
        com.bytedance.sdk.openadsdk.core.component.reward.draw.s sVar = this.vf;
        j jVar = null;
        com.bykv.vk.openvk.component.video.api.p.ox ce = sVar != null ? sVar.ce() : null;
        com.bytedance.sdk.openadsdk.core.component.reward.draw.d dVar = this.ir.get(this.ce);
        if (dVar != null) {
            jVar = dVar.dq();
            pVar = dVar.no();
        } else {
            pVar = null;
        }
        this.r.dq(jVar, ce, pVar);
        this.r.dq(this.dq.ia());
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int bl() {
        return d(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void cv() {
        ws();
        bu();
        ij();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void d(View view) {
        super.d(view);
        this.vf.dq(view);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void dc() {
        this.gh.dq(true);
        this.gh.d(this.f2635d.qc());
        this.gh.ox(true);
        this.gh.s(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public com.bytedance.sdk.openadsdk.core.component.reward.layout.d dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.p pVar = new com.bytedance.sdk.openadsdk.core.component.reward.layout.p(this.dq, this.f2635d, z);
        float f2 = this.s;
        float f3 = this.iw;
        float[] fArr = {f2, f3};
        if (f2 < 10.0f || f3 < 10.0f) {
            fArr = gh();
        }
        pVar.dq(fArr);
        this.kk = pVar;
        return pVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public d.dq dq(final com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar) {
        this.dq.nh();
        com.bytedance.sdk.openadsdk.core.component.reward.ox.s sVar = new com.bytedance.sdk.openadsdk.core.component.reward.ox.s(this.dq, this.f2635d);
        sVar.dq(wn());
        return sVar.d(new com.bytedance.sdk.openadsdk.core.component.reward.ox.o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.ox.2
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void d() {
                com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.d();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void dq() {
                super.dq();
                com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.dq();
                }
                ox.this.dq.vf();
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void ox() {
                super.ox();
                com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.ox();
                }
                ox.this.dq.vf();
                if (ox.this.fd() != null) {
                    ox.this.fd().d().ox(ox.this.er + 1);
                }
                ox.this.dq.xz().dq("reward_retain_dialog_next", 0, "");
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void dq(Map<String, Object> map) {
        super.dq(map);
        map.put("group_pos", Integer.valueOf(this.er + 1));
        com.bytedance.sdk.openadsdk.core.component.reward.draw.s sVar = this.vf;
        if (sVar != null) {
            map.put(MediationConstant.EXTRA_DURATION, Long.valueOf(sVar.op()));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void dq(JSONObject jSONObject) {
        super.dq(jSONObject);
        try {
            jSONObject.put("group_pos", this.ce + 1);
            jSONObject.put(MediationConstant.EXTRA_DURATION, this.vf.op());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int er() {
        return t.ox(this.f2635d) - this.f2648c;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void i() {
        super.i();
        try {
            com.bytedance.sdk.openadsdk.core.component.reward.draw.s sVar = (com.bytedance.sdk.openadsdk.core.component.reward.draw.s) fd().d().p(this.er);
            if (sVar != null) {
                sVar.dq();
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.d("cubic pause exception:" + e2.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void ia() {
        super.ia();
        this.ir.add(new com.bytedance.sdk.openadsdk.core.component.reward.draw.d(this.dq, this.f2635d, this.ig, xz(), true));
        try {
            JSONArray jSONArray = new JSONArray(this.f2635d.tt());
            for (int i = 0; i < jSONArray.length(); i++) {
                this.ir.add(new com.bytedance.sdk.openadsdk.core.component.reward.draw.d(this.dq, com.bytedance.sdk.openadsdk.core.d.dq(jSONArray.getJSONObject(i)), this.ig, xz(), false));
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        Iterator<com.bytedance.sdk.openadsdk.core.component.reward.draw.d> it = this.ir.iterator();
        while (it.hasNext()) {
            it.next().dq(this.mp);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public boolean iw() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int j() {
        return this.f2648c;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void jy() {
        super.jy();
        List<com.bytedance.sdk.openadsdk.core.component.reward.draw.d> list = this.ir;
        if (list != null) {
            Iterator<com.bytedance.sdk.openadsdk.core.component.reward.draw.d> it = list.iterator();
            while (it.hasNext()) {
                it.next().kk();
            }
        }
        if (fd() != null) {
            fd().ox().p();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public View kk() {
        return com.bytedance.sdk.openadsdk.res.s.o(this.dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void le() {
        if (this.i.er()) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.component.reward.draw.s sVar = (com.bytedance.sdk.openadsdk.core.component.reward.draw.s) fd().d().p(this.er);
            if (sVar != null) {
                sVar.d();
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.d("cubic  resume exception:" + e2.getMessage());
        }
        super.le();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int mn(boolean z) {
        return z ? er() : t.mn(this.f2635d) - this.f2648c;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq, com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void ox() {
        this.kk.ox(true);
        if (fd() != null) {
            fd().ox().dq(this.ir);
            fd().p().dq(new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.ox.1
                private void dq(com.bytedance.sdk.openadsdk.core.component.reward.draw.s sVar) {
                    if (sVar != null) {
                        ox.this.vf = sVar;
                        ox.this.vf.d(true);
                        ox.this.vf.dq(new dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.ox.1.1
                            @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.ox.dq
                            public void d() {
                                ox oxVar = ox.this;
                                oxVar.fw = false;
                                oxVar.fd().dq(true);
                            }

                            @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.ox.dq
                            public void dq() {
                                ox oxVar = ox.this;
                                oxVar.fw = true;
                                oxVar.fd().dq(false);
                            }

                            @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.ox.dq
                            public void dq(int i) {
                                ox.this.u += i;
                                ox.this.f2648c += i;
                            }

                            @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.ox.dq
                            public Map<String, Object> ox() {
                                return ox.this.dq.ia();
                            }

                            @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.ox.dq
                            public void p() {
                                if (!t.iw(ox.this.f2635d) || ox.this.fd() == null) {
                                    return;
                                }
                                ox.this.fd().d().ox(ox.this.er + 1);
                            }
                        });
                        ox.this.fw = sVar.er();
                        ox.this.fd().dq(!sVar.wn());
                    } else {
                        ox.this.fw = false;
                    }
                    ox.this.xi();
                }

                @Override // com.bytedance.sdk.openadsdk.core.component.reward.draw.ox.dq
                public void dq() {
                    ox.this.ce = 0;
                    dq((com.bytedance.sdk.openadsdk.core.component.reward.draw.s) ox.this.fd().d().p(0));
                    ox.this.xi();
                    if (ox.this.ir.size() > 0) {
                        ((com.bytedance.sdk.openadsdk.core.component.reward.draw.d) ox.this.ir.get(1)).mn();
                    }
                    ox.this.dq.d(false, true);
                }

                @Override // com.bytedance.sdk.openadsdk.core.component.reward.draw.ox.dq
                public void dq(boolean z, int i) {
                    com.bytedance.sdk.openadsdk.core.component.reward.draw.s sVar = (com.bytedance.sdk.openadsdk.core.component.reward.draw.s) ox.this.fd().d().p(i);
                    if (sVar != null) {
                        sVar.d(false);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.component.reward.draw.ox.dq
                public void dq(boolean z, int i, boolean z2) {
                    int i2 = ox.this.er;
                    if (ox.this.vf != null) {
                        ox.this.dq.xz().dq(z, i2 + 1, ox.this.vf.op());
                    }
                    ox.this.er = i;
                    ox oxVar = ox.this;
                    oxVar.wn = Math.max(oxVar.wn, i + 1);
                    ox oxVar2 = ox.this;
                    oxVar2.ce = i % oxVar2.ir.size();
                    dq((com.bytedance.sdk.openadsdk.core.component.reward.draw.s) ox.this.fd().d().p(i));
                    ox.this.fd().iw();
                    ox.this.nh.set(true);
                }
            });
        }
        kx();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void s(boolean z) {
        super.s(z);
        com.bytedance.sdk.openadsdk.core.component.reward.draw.s sVar = this.vf;
        if (sVar != null) {
            sVar.ox(z);
        }
        Iterator<com.bytedance.sdk.openadsdk.core.component.reward.draw.d> it = this.ir.iterator();
        while (it.hasNext()) {
            it.next().dq(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean uh() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void wp() {
        super.wp();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("visible", false);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        this.i.dq(jSONObject);
        i();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean xz() {
        return this.f2635d.we() == 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean yy() {
        return true;
    }
}
