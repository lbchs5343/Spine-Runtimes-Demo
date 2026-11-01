package com.bytedance.msdk.api.p.dq.d;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.msdk.api.p.dq.d.ia.ia;
import com.bytedance.msdk.api.p.dq.d.ia.iw;
import com.bytedance.msdk.api.p.dq.d.ia.kk;
import com.bytedance.msdk.api.p.dq.d.ia.mn;
import com.bytedance.msdk.api.p.dq.d.ia.no;
import com.bytedance.msdk.api.p.dq.d.ia.o;
import com.bytedance.msdk.api.p.dq.d.ia.p;
import com.bytedance.msdk.api.p.jy;
import com.bytedance.msdk.d.s;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ox extends s {
    private com.bytedance.msdk.api.p.dq.d.ia.s cd;

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq f771d;
    private com.bytedance.msdk.api.p.dq.d.d.d dq;

    /* renamed from: f, reason: collision with root package name */
    private iw f772f;
    private o fw;
    private ia gh;
    private no jy;
    private mn ox;
    private jy p;
    private kk q;
    private p s;

    @Override // com.bytedance.msdk.d.s
    public com.bytedance.msdk.api.p.dq.ox.d c() {
        return this.no;
    }

    @Override // com.bytedance.msdk.d.s
    public int cd() {
        ia iaVar = this.gh;
        if (iaVar != null) {
            return iaVar.dq();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.d.s
    public void ce() {
        super.ce();
        no noVar = this.jy;
        if (noVar != null) {
            noVar.dq();
            return;
        }
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.dq;
        if (dVar != null) {
            try {
                dVar.d();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void d(String str) {
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(this, str);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void d(Map<String, Object> map) {
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(true, dk(), -1, null);
        }
        jy jyVar = this.p;
        if (jyVar != null) {
            jyVar.dq(true, dk(), -1, null);
        }
    }

    @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
    public com.bytedance.sdk.openadsdk.f.d.d.ia dq(Activity activity) {
        mn mnVar = this.ox;
        return mnVar != null ? mnVar.dq(activity) : super.dq(activity);
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.msdk.api.p.dq.mn.no noVar, List<View> list4) {
        p pVar = this.s;
        if (pVar != null) {
            pVar.dq(activity, viewGroup, list, list2, list3, noVar);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.dq;
        if (dVar == null || !(dVar instanceof com.bytedance.msdk.api.p.dq.d.d.ox)) {
            return;
        }
        ((com.bytedance.msdk.api.p.dq.d.d.ox) dVar).d(activity);
    }

    @Override // com.bytedance.msdk.d.s, com.bytedance.msdk.d.ox
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        this.f771d = dqVar;
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(ViewGroup viewGroup) {
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.dq;
        if (dVar == null || !(dVar instanceof com.bytedance.msdk.api.p.dq.d.o.d)) {
            return;
        }
        ((com.bytedance.msdk.api.p.dq.d.o.d) dVar).d(viewGroup);
    }

    public void dq(com.bytedance.msdk.api.p.dq.d.d.d dVar) {
        this.dq = dVar;
    }

    public void dq(ia iaVar) {
        this.gh = iaVar;
    }

    public void dq(iw iwVar) {
        this.f772f = iwVar;
    }

    public void dq(kk kkVar) {
        this.q = kkVar;
    }

    public void dq(mn mnVar) {
        this.ox = mnVar;
    }

    public void dq(no noVar) {
        this.jy = noVar;
    }

    public void dq(o oVar) {
        this.fw = oVar;
    }

    public void dq(p pVar) {
        this.s = pVar;
    }

    public void dq(com.bytedance.msdk.api.p.dq.d.ia.s sVar) {
        this.cd = sVar;
    }

    public void dq(jy jyVar) {
        this.p = jyVar;
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        int lossReason = MediationConstant.BiddingLossReason.OTHER.getLossReason();
        try {
            Object obj = map.get(MediationConstant.BIDDING_LOSE_REASON);
            if (obj instanceof MediationConstant.BiddingLossReason) {
                lossReason = ((MediationConstant.BiddingLossReason) obj).getLossReason();
            }
        } catch (Exception unused) {
        }
        int i = lossReason;
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(false, -1.0d, i, null);
        }
        jy jyVar = this.p;
        if (jyVar != null) {
            jyVar.dq(false, -1.0d, i, null);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void er() {
        super.er();
        no noVar = this.jy;
        if (noVar != null) {
            noVar.d();
            return;
        }
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.dq;
        if (dVar != null) {
            try {
                dVar.ox();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void f() {
    }

    @Override // com.bytedance.msdk.d.s
    public void fw() {
    }

    @Override // com.bytedance.msdk.d.s
    public View gh() {
        com.bytedance.msdk.api.p.dq.d.ia.s sVar = this.cd;
        return sVar != null ? sVar.ox() : super.gh();
    }

    @Override // com.bytedance.msdk.d.s
    public View ig() {
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.dq;
        if (dVar != null && (dVar instanceof com.bytedance.msdk.api.p.dq.d.dq.d)) {
            return ((com.bytedance.msdk.api.p.dq.d.dq.d) dVar).iw();
        }
        kk kkVar = this.q;
        if (kkVar != null) {
            return kkVar.d();
        }
        return null;
    }

    @Override // com.bytedance.msdk.d.s
    public com.bytedance.msdk.api.p.dq.d ir() {
        return this.ia;
    }

    @Override // com.bytedance.msdk.d.s
    public void jy() {
    }

    @Override // com.bytedance.msdk.d.s
    public final MediationConstant.AdIsReadyStatus kx() {
        o oVar = this.fw;
        if (oVar != null) {
            return oVar.dq();
        }
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.dq;
        return dVar != null ? dVar.mp() : super.kx();
    }

    @Override // com.bytedance.msdk.d.s
    public String mp() {
        com.bytedance.msdk.api.p.dq.d.ia.s sVar = this.cd;
        if (sVar != null) {
            return sVar.dq();
        }
        return null;
    }

    @Override // com.bytedance.msdk.d.s
    public com.bytedance.msdk.api.p.dq.mn.ox n() {
        return this.iw;
    }

    @Override // com.bytedance.msdk.d.s
    public void no() {
        kk kkVar = this.q;
        if (kkVar != null) {
            kkVar.dq();
        }
    }

    @Override // com.bytedance.msdk.d.s
    public boolean o() {
        try {
            iw iwVar = this.f772f;
            if (iwVar != null) {
                return iwVar.dq();
            }
        } catch (Exception unused) {
        }
        return super.o();
    }

    @Override // com.bytedance.msdk.d.s
    public com.bytedance.msdk.api.p.dq.mn.kk op() {
        return this.mn;
    }

    @Override // com.bytedance.msdk.d.s
    public void p() {
        super.p();
        no noVar = this.jy;
        if (noVar != null) {
            noVar.ox();
            return;
        }
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.dq;
        if (dVar != null) {
            try {
                dVar.p();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.bytedance.msdk.d.s
    public com.bytedance.msdk.api.p.dq.mn.iw q() {
        com.bytedance.msdk.api.p.dq.d.ia.s sVar = this.cd;
        if (sVar != null) {
            return sVar.d();
        }
        return null;
    }

    @Override // com.bytedance.msdk.d.s
    public boolean s() {
        return false;
    }

    public com.bytedance.msdk.dq.d.iw u() {
        return this.ig;
    }

    @Override // com.bytedance.msdk.d.s
    public com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq wn() {
        return this.f771d;
    }
}
