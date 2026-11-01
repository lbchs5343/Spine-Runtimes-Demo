package com.bytedance.msdk.api.dq;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements ox, p {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.core.no.d f757d;
    private p dq;
    private ox ox;

    public d() {
    }

    public d(int i, ValueSet valueSet) {
        dq(i, valueSet, null);
    }

    public d(d dVar) {
        if (dVar != null) {
            dq(dVar.le(), dVar.j(), dVar.ig());
        }
    }

    private void dq(int i, ValueSet valueSet, ox oxVar) {
        this.dq = new s(i, valueSet);
        dq dqVar = new dq();
        this.ox = dqVar;
        if (oxVar != null) {
            dqVar.s(oxVar.ia());
        }
    }

    private void ds() {
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "------------- 服务端配置 start ----------------------");
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getWaterfallId = " + ob());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getVersion = " + l());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getBidFloor = " + t());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getParalleType = " + gx());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getReqParallelNum = " + by());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getWaterfallABTest = " + uh());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getSegmentId = " + xz());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getSegmentVersion = " + yy());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getWaterfallExtra = " + v());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "getAdCount = " + h());
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "------------- 服务端配置 end ----------------------");
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String bl() {
        p pVar = this.dq;
        return pVar != null ? pVar.bl() : "";
    }

    public int by() {
        com.bytedance.msdk.core.no.d dVar = this.f757d;
        if (dVar != null) {
            return dVar.uh();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean c() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.c();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean cd() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.cd();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String ce() {
        p pVar = this.dq;
        return pVar != null ? pVar.ce() : "";
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int d() {
        ox oxVar = this.ox;
        if (oxVar != null) {
            return oxVar.d();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void d(int i) {
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.d(i);
        }
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void d(String str) {
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.d(str);
        }
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public String dq() {
        ox oxVar = this.ox;
        return oxVar != null ? oxVar.dq() : "";
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void dq(int i) {
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.dq(i);
        }
    }

    public void dq(com.bytedance.msdk.core.no.d dVar) {
        this.f757d = dVar;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void dq(String str) {
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.dq(str);
        }
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void dq(JSONObject jSONObject) {
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.dq(jSONObject);
        }
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void dq(boolean z) {
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.dq(z);
        }
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int e() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.e();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean er() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.er();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean f() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.f();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int fw() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.fw();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean gh() {
        p pVar = this.dq;
        if (pVar == null) {
            return false;
        }
        pVar.gh();
        return false;
    }

    public int gx() {
        com.bytedance.msdk.core.no.d dVar = this.f757d;
        if (dVar != null) {
            return dVar.by();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int h() {
        p pVar;
        if (5 != le() && 9 != le()) {
            return 1;
        }
        com.bytedance.msdk.core.no.d dVar = this.f757d;
        int fw = dVar != null ? dVar.fw() : 0;
        if (fw == 0 && (pVar = this.dq) != null) {
            fw = pVar.h();
        }
        if (fw <= 0) {
            return 1;
        }
        if (fw >= 3) {
            return 3;
        }
        return fw;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public com.bytedance.sdk.openadsdk.mediation.dq.d.dq i() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.i();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int ia() {
        ox oxVar = this.ox;
        if (oxVar != null) {
            return oxVar.ia();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public void ia(int i) {
        p pVar = this.dq;
        if (pVar != null) {
            pVar.ia(i);
        }
    }

    public ox ig() {
        return this.ox;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String ir() {
        p pVar = this.dq;
        return pVar != null ? pVar.ir() : "";
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public String iw() {
        ox oxVar = this.ox;
        return oxVar != null ? oxVar.iw() : "";
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void iw(int i) {
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.iw(i);
        }
    }

    @Override // com.bytedance.msdk.api.dq.p
    public ValueSet j() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.j();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean ji() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.ji();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public float jy() {
        p pVar = this.dq;
        return pVar != null ? pVar.jy() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String k() {
        p pVar = this.dq;
        return pVar != null ? pVar.k() : "";
    }

    @Override // com.bytedance.msdk.api.dq.ox, com.bytedance.msdk.api.dq.p
    public void kk() {
        com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "--------------------------- 请求参数 --------------------------");
        if (this.ox != null) {
            com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "---- 聚合内部生成参数 start ------ ");
            this.ox.kk();
            com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "---- 聚合内部生成参数 end ----- ");
        }
        if (this.dq != null) {
            com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "---- 请求参数 start ------");
            this.dq.kk();
            com.bytedance.msdk.dq.s.ox.d("AdLinkInfo", "---- 请求参数 end ------");
        }
        ds();
    }

    @Override // com.bytedance.msdk.api.dq.p
    public void kk(int i) {
        p pVar = this.dq;
        if (pVar != null) {
            pVar.kk(i);
        }
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int kx() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.kx();
        }
        return 0;
    }

    public String l() {
        com.bytedance.msdk.core.no.d dVar = this.f757d;
        return dVar != null ? dVar.ir() : "";
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int le() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.le();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void mn(int i) {
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.mn(i);
        }
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public boolean mn() {
        ox oxVar = this.ox;
        if (oxVar != null) {
            return oxVar.mn();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int mp() {
        ox oxVar = this.ox;
        if (oxVar != null) {
            return oxVar.mp();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int n() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.n();
        }
        return 0;
    }

    public com.bytedance.msdk.core.no.d nh() {
        return this.f757d;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public JSONObject no() {
        ox oxVar = this.ox;
        if (oxVar != null) {
            return oxVar.no();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int o() {
        ox oxVar = this.ox;
        if (oxVar != null) {
            return oxVar.o();
        }
        return 0;
    }

    public long ob() {
        com.bytedance.msdk.core.no.d dVar = this.f757d;
        if (dVar != null) {
            return dVar.h();
        }
        return 0L;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String op() {
        p pVar = this.dq;
        return pVar != null ? pVar.op() : "";
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int ox() {
        ox oxVar = this.ox;
        if (oxVar != null) {
            return oxVar.ox();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void ox(int i) {
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.ox(i);
        }
    }

    @Override // com.bytedance.msdk.api.dq.p
    public void ox(String str) {
        p pVar = this.dq;
        if (pVar != null) {
            pVar.ox(str);
        }
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int p() {
        ox oxVar = this.ox;
        if (oxVar != null) {
            return oxVar.p();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void p(int i) {
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.p(i);
        }
    }

    @Override // com.bytedance.msdk.api.dq.p
    public float q() {
        p pVar = this.dq;
        return pVar != null ? pVar.q() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public boolean r() {
        p pVar = this.dq;
        if (pVar == null) {
            return false;
        }
        pVar.r();
        return false;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public int s() {
        ox oxVar = this.ox;
        if (oxVar != null) {
            return oxVar.s();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.dq.ox
    public void s(int i) {
        ox oxVar = this.ox;
        if (oxVar != null) {
            oxVar.s(i);
        }
    }

    public double t() {
        com.bytedance.msdk.core.no.d dVar = this.f757d;
        if (dVar != null) {
            return dVar.cd();
        }
        return 0.0d;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public int u() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.u();
        }
        return 0;
    }

    public String uh() {
        com.bytedance.msdk.core.no.d dVar = this.f757d;
        return dVar != null ? dVar.gx() : "";
    }

    public String v() {
        com.bytedance.msdk.core.no.d dVar = this.f757d;
        return dVar != null ? dVar.gh() : "";
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String vf() {
        p pVar = this.dq;
        if (pVar != null) {
            return pVar.vf();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.dq.p
    public Map<String, Object> wn() {
        p pVar = this.dq;
        return pVar != null ? pVar.wn() : new HashMap();
    }

    @Override // com.bytedance.msdk.api.dq.p
    public String wp() {
        p pVar = this.dq;
        return pVar != null ? pVar.wp() : "";
    }

    public int xz() {
        com.bytedance.msdk.core.no.d dVar = this.f757d;
        if (dVar != null) {
            return dVar.ji();
        }
        return 0;
    }

    public String yy() {
        com.bytedance.msdk.core.no.d dVar = this.f757d;
        return dVar != null ? dVar.bl() : "";
    }
}
