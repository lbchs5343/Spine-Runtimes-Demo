package com.bytedance.sdk.openadsdk.core.ugeno.o;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.core.ig.s;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.r.j;
import g.cmr;
import g.co;
import g.dfp;
import g.dlv;
import g.edq;
import g.efb;
import g.eid;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p extends com.bytedance.sdk.openadsdk.core.ugeno.ia.dq {
    private int k;
    private List<co> le;
    private boolean wp;

    public p(Context context, ViewGroup viewGroup, s sVar, j jVar, String str, int i) {
        super(context, viewGroup, sVar, jVar, str, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public int d() {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void d(int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public long dq() {
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(float f2) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(float f2, float f3, float f4, float f5, int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.p
    public void dq(int i, int i2) {
        if (i2 > 0) {
            this.o.set(1);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(int i, String str) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.p
    public void dq(RecyclerView recyclerView, int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.p
    public void dq(dlv dlvVar, int i, View view, co coVar) {
        JSONObject jSONObject;
        if (coVar == null || (jSONObject = coVar.f13213a) == null) {
            return;
        }
        int hashCode = jSONObject.hashCode();
        if (this.no.get(Integer.valueOf(hashCode)) != null && this.no.containsKey(Integer.valueOf(hashCode)) && this.no.get(Integer.valueOf(hashCode)).booleanValue()) {
            return;
        }
        dq(coVar.f13213a);
        this.no.put(Integer.valueOf(hashCode), Boolean.TRUE);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public long getActualPlayDuration() {
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void ia() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.dq
    public List<co> ig() {
        this.le = new ArrayList();
        JSONObject ve = this.s.ve();
        this.le.add(0, new co(ve, -1221270899));
        this.le.add(new co(ve, -2134548432));
        return this.le;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void iw() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.p
    public void iw(dlv dlvVar) {
        JSONObject o;
        if (dlvVar == null || (o = dlvVar.o()) == null) {
            return;
        }
        dlv ox = dlvVar.ox("video_".concat(String.valueOf(o.optInt("image_mode"))));
        if (ox instanceof com.bytedance.sdk.openadsdk.core.ugeno.component.video.d) {
            ((com.bytedance.sdk.openadsdk.core.ugeno.component.video.d) ox).v();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void kk() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void mn() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void no() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void o() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public int ox() {
        return 0;
    }

    public void ox(int i) {
        this.k = i;
        if (i < 0) {
            return;
        }
        final String format = String.format("浏览%d秒可领金币", Integer.valueOf(i));
        if (this.mn instanceof eid) {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.o.p.1
                @Override // java.lang.Runnable
                public void run() {
                    dfp dfpVar;
                    if (((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) p.this).mn != null) {
                        try {
                            RecyclerView recyclerView = (RecyclerView) ((eid) ((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) p.this).mn).ox();
                            if (recyclerView.getScrollState() != 0 || recyclerView.q() || (dfpVar = ((eid) ((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) p.this).mn).w) == null) {
                                return;
                            }
                            dfpVar.f14098c = "header";
                            dfpVar.dq(0, "header");
                        } catch (Exception unused) {
                        }
                    }
                }
            });
            ((eid) this.mn).w.f14100f = new edq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.o.p.2
                @Override // g.edq
                public void dq(RecyclerView.k kVar, int i2) {
                    dlv ox = ((cmr) kVar).f13138a.ox("count_down");
                    if (ox instanceof efb) {
                        ((efb) ox).mn(format);
                    }
                }
            };
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.ox
    public void ox(dlv dlvVar) {
        j dq;
        if (dlvVar == null || (dq = com.bytedance.sdk.openadsdk.core.d.dq(dlvVar.o())) == null) {
            return;
        }
        dq(dq, dlvVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void p() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.p
    public void p(dlv dlvVar) {
        dq(dlvVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void s() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.p
    public void s(dlv dlvVar) {
        if (dlvVar == null) {
            return;
        }
        if (this.k <= 0 && !this.wp && TextUtils.equals(dlvVar.n(), "header")) {
            ox(0);
            this.wp = true;
        }
        JSONObject o = dlvVar.o();
        if (o == null) {
            return;
        }
        dlv ox = dlvVar.ox("video_".concat(String.valueOf(o.optInt("image_mode"))));
        if (ox instanceof com.bytedance.sdk.openadsdk.core.ugeno.component.video.d) {
            com.bytedance.sdk.openadsdk.core.ugeno.component.video.d dVar = (com.bytedance.sdk.openadsdk.core.ugeno.component.video.d) ox;
            dVar.dq(this.mp);
            dVar.uh();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void setPauseFromExpressView(boolean z) {
    }
}
