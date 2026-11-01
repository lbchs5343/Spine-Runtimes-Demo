package com.bytedance.msdk.api.p.dq.d.ia;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.msdk.api.p.dq.d.d.d;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;

/* loaded from: classes.dex */
public abstract class d extends dq {
    private List<View> iw;
    private Activity s;

    /* renamed from: d, reason: collision with root package name */
    private int f766d = 0;
    private int ox = 0;
    private boolean p = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.msdk.api.p.dq.mn.no noVar) {
        try {
            this.s = activity;
            this.p = true;
            this.iw = list3;
            dq(viewGroup, list, list2, noVar);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediationConstant.AdIsReadyStatus ds() {
        return o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v() {
        try {
            mn();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void vw() {
        try {
            this.s = null;
            ia();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void yy() {
        try {
            iw();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void by() {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.wn() == null) {
            return;
        }
        this.dq.wn().dq();
    }

    public void cd() {
        d(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.ia.d.8
            @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
            public void dq() {
                if (((com.bytedance.msdk.api.p.dq.d.d.dq) d.this).dq == null || ((com.bytedance.msdk.api.p.dq.d.d.dq) d.this).dq.n() == null) {
                    return;
                }
                ((com.bytedance.msdk.api.p.dq.d.d.dq) d.this).dq.n().dq(null);
            }
        });
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.dq
    public View d() {
        return null;
    }

    public void d(long j, long j2, String str, String str2) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.ir() == null) {
            return;
        }
        this.dq.ir().dq(j, j2, str, str2);
    }

    public final void d(d.dq dqVar) {
        int i = this.ox;
        if (i >= 60) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter click方法回调次数需要小于60次");
            return;
        }
        this.ox = i + 1;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    public void dq() {
    }

    public void dq(float f2, float f3) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.n() == null) {
            return;
        }
        try {
            ((com.bytedance.msdk.api.p.dq.mn.mn) this.dq.n()).dq(f2, f3);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void dq(int i, String str) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.wn() == null) {
            return;
        }
        this.dq.d(str);
        this.dq.wn().dq(i, str, false);
    }

    public void dq(long j, long j2) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.op() == null) {
            return;
        }
        this.dq.op().dq(j, j2);
    }

    public void dq(long j, long j2, String str, String str2) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.ir() == null) {
            return;
        }
        this.dq.ir().dq(j, j2, -1, 1, str, str2);
    }

    public void dq(long j, String str, String str2) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.ir() == null) {
            return;
        }
        this.dq.ir().dq(j, str, str2);
    }

    public void dq(View view, String str, int i) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.n() == null) {
            return;
        }
        try {
            ((com.bytedance.msdk.api.p.dq.mn.mn) this.dq.n()).dq(view, str, i);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, com.bytedance.msdk.api.p.dq.mn.no noVar) {
    }

    public final void dq(d.dq dqVar) {
        if (!this.p) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter show方法回调必须由GroMore触发show时才会生效");
            return;
        }
        int i = this.f766d;
        if (i >= 2) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter show方法回调次数需要小于2次");
            return;
        }
        this.f766d = i + 1;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.d.dq dqVar) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.op() == null) {
            return;
        }
        this.dq.op().dq(new com.bytedance.msdk.api.dq(49012, com.bytedance.msdk.api.dq.dq(49012), dqVar == null ? -1 : dqVar.dq(), dqVar == null ? "" : dqVar.d()));
    }

    public void dq(String str, String str2) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.ir() == null) {
            return;
        }
        this.dq.ir().dq(str, str2);
    }

    public final View f() {
        try {
            return ox();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final com.bytedance.msdk.api.p.dq.mn.iw fw() {
        try {
            return p();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public Activity getActivity() {
        return this.s;
    }

    public void gh() {
        dq(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.ia.d.9
            @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
            public void dq() {
                if (((com.bytedance.msdk.api.p.dq.d.d.dq) d.this).dq == null || ((com.bytedance.msdk.api.p.dq.d.d.dq) d.this).dq.n() == null) {
                    return;
                }
                ((com.bytedance.msdk.api.p.dq.d.d.dq) d.this).dq.n().dq();
            }
        });
    }

    public void gx() {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.ir() == null) {
            return;
        }
        this.dq.ir().dq();
    }

    public void i() {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.op() == null) {
            return;
        }
        this.dq.op().xz();
    }

    public void ia() {
    }

    public void iw() {
    }

    public final View jy() {
        try {
            return d();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void k() {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.op() == null) {
            return;
        }
        this.dq.op().v();
    }

    public void le() {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.op() == null) {
            return;
        }
        this.dq.op().yy();
    }

    public void mn() {
    }

    public List<View> mp() {
        return this.iw;
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.dq
    public com.bytedance.msdk.api.p.dq.d.ox no() {
        this.dq.n(e());
        this.dq.op(kx());
        this.dq.kx(h());
        this.dq.h(ji());
        this.dq.gh(bl());
        this.dq.r(n());
        this.dq.le(op());
        this.dq.k(ir());
        this.dq.ji(u());
        this.dq.bl(c());
        this.dq.p(ce());
        this.dq.dq(er());
        this.dq.ir(wn());
        this.dq.ig(j());
        this.dq.mp(nh());
        if (vf() != null) {
            this.dq.i(vf().ox());
            this.dq.le(vf().p());
            this.dq.d(vf().s());
            this.dq.k(vf().iw());
            this.dq.wp(vf().ia());
            this.dq.e(vf().kk());
            this.dq.s(vf().mn());
        }
        this.dq.dq(new p() { // from class: com.bytedance.msdk.api.p.dq.d.ia.d.1
            @Override // com.bytedance.msdk.api.p.dq.d.ia.p
            public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.msdk.api.p.dq.mn.no noVar) {
                d.this.dq(activity, viewGroup, list, list2, list3, noVar);
            }
        });
        this.dq.dq(new kk() { // from class: com.bytedance.msdk.api.p.dq.d.ia.d.2
            @Override // com.bytedance.msdk.api.p.dq.d.ia.kk
            public View d() {
                return d.this.jy();
            }

            @Override // com.bytedance.msdk.api.p.dq.d.ia.kk
            public void dq() {
                d.this.q();
            }
        });
        this.dq.dq(new no() { // from class: com.bytedance.msdk.api.p.dq.d.ia.d.3
            @Override // com.bytedance.msdk.api.p.dq.d.ia.no
            public void d() {
                d.this.v();
            }

            @Override // com.bytedance.msdk.api.p.dq.d.ia.no
            public void dq() {
                d.this.yy();
            }

            @Override // com.bytedance.msdk.api.p.dq.d.ia.no
            public void ox() {
                d.this.vw();
            }
        });
        this.dq.dq(new iw() { // from class: com.bytedance.msdk.api.p.dq.d.ia.d.4
            @Override // com.bytedance.msdk.api.p.dq.d.ia.iw
            public boolean dq() {
                return d.this.s();
            }
        });
        if (wp() > 0.0d) {
            this.dq.dq(wp());
        }
        this.dq.dq(new o() { // from class: com.bytedance.msdk.api.p.dq.d.ia.d.5
            @Override // com.bytedance.msdk.api.p.dq.d.ia.o
            public MediationConstant.AdIsReadyStatus dq() {
                return d.this.ds();
            }
        });
        this.dq.dq(new s() { // from class: com.bytedance.msdk.api.p.dq.d.ia.d.6
            @Override // com.bytedance.msdk.api.p.dq.d.ia.s
            public com.bytedance.msdk.api.p.dq.mn.iw d() {
                return d.this.fw();
            }

            @Override // com.bytedance.msdk.api.p.dq.d.ia.s
            public String dq() {
                return d.this.t();
            }

            @Override // com.bytedance.msdk.api.p.dq.d.ia.s
            public View ox() {
                return d.this.f();
            }
        });
        this.dq.dq(new ia() { // from class: com.bytedance.msdk.api.p.dq.d.ia.d.7
            @Override // com.bytedance.msdk.api.p.dq.d.ia.ia
            public int dq() {
                return d.this.xz();
            }
        });
        return this.dq;
    }

    public MediationConstant.AdIsReadyStatus o() {
        return MediationConstant.AdIsReadyStatus.ADN_NO_READY_API;
    }

    public View ox() {
        return null;
    }

    public void ox(long j, long j2, String str, String str2) {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.ir() == null) {
            return;
        }
        this.dq.ir().d(j, j2, str, str2);
    }

    public com.bytedance.msdk.api.p.dq.mn.iw p() {
        return null;
    }

    public final void q() {
        try {
            this.p = true;
            dq();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void r() {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.op() == null) {
            return;
        }
        this.dq.op().uh();
    }

    public boolean s() {
        return false;
    }

    public void uh() {
        com.bytedance.msdk.api.p.dq.d.ox oxVar = this.dq;
        if (oxVar == null || oxVar.wn() == null) {
            return;
        }
        this.dq.wn().d();
    }

    public int xz() {
        return -1;
    }
}
