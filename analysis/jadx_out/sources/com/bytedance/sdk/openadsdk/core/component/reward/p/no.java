package com.bytedance.sdk.openadsdk.core.component.reward.p;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.d;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.h;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class no extends dq {
    private final List<com.bytedance.sdk.openadsdk.core.component.reward.swiper.dq> ir;
    private int u;

    public no(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity, jVar);
        this.ir = new ArrayList();
        this.u = 0;
    }

    private int bu() {
        int s;
        com.bytedance.sdk.openadsdk.core.component.reward.swiper.dq dqVar;
        j dq;
        h eo;
        com.bytedance.sdk.openadsdk.core.component.reward.layout.o oVar = (com.bytedance.sdk.openadsdk.core.component.reward.layout.o) this.kk;
        if (oVar == null || (s = oVar.s()) < 0 || s >= this.ir.size() || (dqVar = this.ir.get(s)) == null || (dq = dqVar.dq()) == null || (eo = dq.eo()) == null) {
            return 0;
        }
        return eo.ox();
    }

    public static int d(j jVar) {
        return 11;
    }

    public static boolean dq(j jVar) {
        if (jVar == null || !h.dq(jVar)) {
            return false;
        }
        if (!com.bytedance.sdk.openadsdk.core.mp.s.dq(String.valueOf(c.kk(jVar)))) {
            return true;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", jVar.fa());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(jVar, "refresh_max", jSONObject);
        com.bytedance.sdk.openadsdk.core.ig.ox.mn(jVar, c.d(jVar), "refresh_max", null);
        return false;
    }

    private com.bytedance.sdk.openadsdk.core.component.reward.layout.o fd() {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.d dVar = this.kk;
        if (dVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.layout.o) {
            return (com.bytedance.sdk.openadsdk.core.component.reward.layout.o) dVar;
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int bl() {
        return d(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void cv() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void d(View view) {
        super.d(view);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void d(Map<String, Object> map) {
        super.d(map);
        map.put("refresh_num", Integer.valueOf(bu()));
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void d(boolean z) {
        super.d(z);
        ((com.bytedance.sdk.openadsdk.core.component.reward.layout.o) this.kk).ox();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void dc() {
        this.gh.dq(false);
        this.gh.d(false);
        this.gh.s(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public com.bytedance.sdk.openadsdk.core.component.reward.layout.d dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.o oVar = new com.bytedance.sdk.openadsdk.core.component.reward.layout.o(this.dq, this.f2635d, z);
        oVar.dq(new float[]{this.s, this.iw});
        this.kk = oVar;
        return oVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public d.dq dq(final com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar) {
        this.dq.nh();
        com.bytedance.sdk.openadsdk.core.component.reward.ox.s sVar = new com.bytedance.sdk.openadsdk.core.component.reward.ox.s(this.dq, this.f2635d);
        sVar.dq(wn());
        return sVar.d(new com.bytedance.sdk.openadsdk.core.component.reward.ox.o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.no.1
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
                no.this.dq.vf();
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void ox() {
                super.ox();
                com.bytedance.sdk.openadsdk.core.component.reward.ox.o oVar2 = oVar;
                if (oVar2 != null) {
                    oVar2.ox();
                }
                no.this.dq.vf();
                no.this.dq.xz().dq("reward_retain_dialog_next", 0, "");
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void dq(Map<String, Object> map) {
        super.dq(map);
        map.put("refresh_num", Integer.valueOf(bu()));
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void dq(JSONObject jSONObject) {
        super.dq(jSONObject);
        try {
            jSONObject.put("refresh_num", bu());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int er() {
        return t.ox(this.f2635d) - this.u;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void i() {
        super.i();
        ((com.bytedance.sdk.openadsdk.core.component.reward.layout.o) this.kk).d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void ia() {
        super.ia();
        com.bytedance.sdk.openadsdk.core.component.reward.swiper.dq dqVar = new com.bytedance.sdk.openadsdk.core.component.reward.swiper.dq(this.dq, this.f2635d, this.ig, xz(), true);
        dqVar.dq(this.mp);
        this.ir.add(dqVar);
        if (h.d(this.f2635d)) {
            try {
                JSONArray jSONArray = new JSONArray(this.f2635d.tt());
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(com.bytedance.sdk.openadsdk.core.d.dq(jSONArray.getJSONObject(i)));
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(this.f2635d);
                arrayList2.addAll(arrayList);
                if (h.dq(arrayList2)) {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        com.bytedance.sdk.openadsdk.core.component.reward.swiper.dq dqVar2 = new com.bytedance.sdk.openadsdk.core.component.reward.swiper.dq(this.dq, (j) arrayList.get(i2), this.ig, xz(), false);
                        dqVar2.dq(this.mp);
                        this.ir.add(dqVar2);
                    }
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void ir() {
        super.ir();
        com.bytedance.sdk.openadsdk.core.component.reward.layout.d dVar = this.kk;
        if (dVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.layout.o) {
            ((com.bytedance.sdk.openadsdk.core.component.reward.layout.o) dVar).p();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public boolean iw() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int j() {
        return this.u;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void jy() {
        super.jy();
        this.kk.o();
        List<com.bytedance.sdk.openadsdk.core.component.reward.swiper.dq> list = this.ir;
        if (list != null) {
            Iterator<com.bytedance.sdk.openadsdk.core.component.reward.swiper.dq> it = list.iterator();
            while (it.hasNext()) {
                it.next().kk();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public View kk() {
        FrameLayout frameLayout = new FrameLayout(this.dq);
        frameLayout.setId(2114387959);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setBackgroundColor(0);
        return frameLayout;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void le() {
        super.le();
        ((com.bytedance.sdk.openadsdk.core.component.reward.layout.o) this.kk).ox();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int mn(boolean z) {
        return z ? er() : t.mn(this.f2635d) - this.u;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq, com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void ox() {
        this.kk.ox(true);
        if (fd() != null) {
            fd().dq(this.ir);
        }
        this.dq.d(false, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void q() {
        super.q();
        ((com.bytedance.sdk.openadsdk.core.component.reward.layout.o) this.kk).d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void s(boolean z) {
        super.s(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean uh() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void wp() {
        super.wp();
        com.bytedance.sdk.openadsdk.core.component.reward.layout.d dVar = this.kk;
        if (dVar instanceof com.bytedance.sdk.openadsdk.core.component.reward.layout.o) {
            ((com.bytedance.sdk.openadsdk.core.component.reward.layout.o) dVar).o();
        }
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
