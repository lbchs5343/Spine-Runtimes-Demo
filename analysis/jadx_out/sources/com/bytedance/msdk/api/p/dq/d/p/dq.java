package com.bytedance.msdk.api.p.dq.d.p;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.msdk.api.p.dq.d.d.d;
import com.bytedance.msdk.api.p.dq.d.ia.iw;
import com.bytedance.msdk.api.p.dq.d.ia.kk;
import com.bytedance.msdk.api.p.dq.d.ia.o;
import com.bytedance.msdk.api.p.dq.d.ox;
import com.bytedance.msdk.api.p.dq.mn.no;
import com.bytedance.msdk.api.p.dq.ox.p;
import com.bytedance.msdk.api.p.dq.ox.s;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;

/* loaded from: classes.dex */
public abstract class dq extends com.bytedance.msdk.api.p.dq.d.ia.dq {

    /* renamed from: d, reason: collision with root package name */
    private int f776d = 0;
    private int ox = 0;
    private boolean p = false;
    private List<View> s;

    /* JADX INFO: Access modifiers changed from: private */
    public final void by() {
        try {
            iw();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, no noVar) {
        try {
            this.p = true;
            this.s = list3;
            dq(activity, viewGroup, list, list2, noVar);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void gx() {
        try {
            s();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uh() {
        try {
            mn();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void cd() {
        ox oxVar = this.dq;
        if (oxVar == null || oxVar.op() == null) {
            return;
        }
        this.dq.op().uh();
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.dq
    public View d() {
        return null;
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
        ox oxVar = this.dq;
        if (oxVar == null || oxVar.c() == null) {
            return;
        }
        try {
            ((s) this.dq.c()).dq(f2, f3);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void dq(int i, String str) {
        ox oxVar = this.dq;
        if (oxVar == null || oxVar.wn() == null) {
            return;
        }
        this.dq.wn().dq(i, str, false);
    }

    public void dq(long j, long j2) {
        ox oxVar = this.dq;
        if (oxVar == null || oxVar.op() == null) {
            return;
        }
        this.dq.op().dq(j, j2);
    }

    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, no noVar) {
    }

    public void dq(View view, String str, int i) {
        ox oxVar = this.dq;
        if (oxVar == null || oxVar.c() == null) {
            return;
        }
        try {
            ((s) this.dq.c()).dq(view, str, i);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void dq(d.dq dqVar) {
        if (!this.p) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter show方法回调必须由GroMore触发show时才会生效");
            return;
        }
        int i = this.f776d;
        if (i >= 2) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter show方法回调次数需要小于2次");
            return;
        }
        this.f776d = i + 1;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    public void dq(com.bytedance.msdk.api.p.dq.d.dq dqVar) {
        ox oxVar = this.dq;
        if (oxVar == null || oxVar.op() == null) {
            return;
        }
        this.dq.op().dq(new com.bytedance.msdk.api.dq(49016, com.bytedance.msdk.api.dq.dq(49016), dqVar == null ? -1 : dqVar.dq(), dqVar == null ? "" : dqVar.d()));
    }

    public void f() {
        d(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.p.dq.7
            @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
            public void dq() {
                if (((com.bytedance.msdk.api.p.dq.d.d.dq) dq.this).dq == null || ((com.bytedance.msdk.api.p.dq.d.d.dq) dq.this).dq.c() == null) {
                    return;
                }
                ((com.bytedance.msdk.api.p.dq.d.d.dq) dq.this).dq.c().dq(null);
            }
        });
    }

    public void fw() {
        dq(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.p.dq.8
            @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
            public void dq() {
                if (((com.bytedance.msdk.api.p.dq.d.d.dq) dq.this).dq == null || ((com.bytedance.msdk.api.p.dq.d.d.dq) dq.this).dq.c() == null) {
                    return;
                }
                ((com.bytedance.msdk.api.p.dq.d.d.dq) dq.this).dq.c().dq();
            }
        });
    }

    public void gh() {
        ox oxVar = this.dq;
        if (oxVar == null || oxVar.op() == null) {
            return;
        }
        this.dq.op().xz();
    }

    public void i() {
        ox oxVar = this.dq;
        if (oxVar == null || oxVar.op() == null) {
            return;
        }
        this.dq.op().v();
    }

    public MediationConstant.AdIsReadyStatus ia() {
        return MediationConstant.AdIsReadyStatus.ADN_NO_READY_API;
    }

    public void iw() {
    }

    public final p jy() {
        try {
            return ox();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void k() {
        ox oxVar = this.dq;
        if (oxVar == null || oxVar.wn() == null) {
            return;
        }
        this.dq.wn().d();
    }

    public void le() {
        ox oxVar = this.dq;
        if (oxVar == null || oxVar.wn() == null) {
            return;
        }
        this.dq.wn().dq();
    }

    public void mn() {
    }

    public final void mp() {
        try {
            this.p = true;
            dq();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.dq
    public ox no() {
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
        this.dq.dq(new com.bytedance.msdk.api.p.dq.d.ia.p() { // from class: com.bytedance.msdk.api.p.dq.d.p.dq.1
            @Override // com.bytedance.msdk.api.p.dq.d.ia.p
            public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, no noVar) {
                dq.this.dq(activity, viewGroup, list, list2, list3, noVar);
            }
        });
        this.dq.dq(new kk() { // from class: com.bytedance.msdk.api.p.dq.d.p.dq.2
            @Override // com.bytedance.msdk.api.p.dq.d.ia.kk
            public View d() {
                return dq.this.q();
            }

            @Override // com.bytedance.msdk.api.p.dq.d.ia.kk
            public void dq() {
                dq.this.mp();
            }
        });
        this.dq.dq(new com.bytedance.msdk.api.p.dq.d.ia.no() { // from class: com.bytedance.msdk.api.p.dq.d.p.dq.3
            @Override // com.bytedance.msdk.api.p.dq.d.ia.no
            public void d() {
                dq.this.by();
            }

            @Override // com.bytedance.msdk.api.p.dq.d.ia.no
            public void dq() {
                dq.this.gx();
            }

            @Override // com.bytedance.msdk.api.p.dq.d.ia.no
            public void ox() {
                dq.this.uh();
            }
        });
        this.dq.dq(new iw() { // from class: com.bytedance.msdk.api.p.dq.d.p.dq.4
            @Override // com.bytedance.msdk.api.p.dq.d.ia.iw
            public boolean dq() {
                return dq.this.p();
            }
        });
        if (wp() > 0.0d) {
            this.dq.dq(wp());
        }
        this.dq.dq(new com.bytedance.msdk.api.p.dq.d.ia.s() { // from class: com.bytedance.msdk.api.p.dq.d.p.dq.5
            @Override // com.bytedance.msdk.api.p.dq.d.ia.s
            public com.bytedance.msdk.api.p.dq.mn.iw d() {
                return dq.this.jy();
            }

            @Override // com.bytedance.msdk.api.p.dq.d.ia.s
            public String dq() {
                return dq.this.t();
            }

            @Override // com.bytedance.msdk.api.p.dq.d.ia.s
            public View ox() {
                return null;
            }
        });
        this.dq.dq(new o() { // from class: com.bytedance.msdk.api.p.dq.d.p.dq.6
            @Override // com.bytedance.msdk.api.p.dq.d.ia.o
            public MediationConstant.AdIsReadyStatus dq() {
                return dq.this.ia();
            }
        });
        return this.dq;
    }

    public List<View> o() {
        return this.s;
    }

    public p ox() {
        return null;
    }

    public boolean p() {
        return false;
    }

    public final View q() {
        try {
            return d();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void r() {
        ox oxVar = this.dq;
        if (oxVar == null || oxVar.op() == null) {
            return;
        }
        this.dq.op().yy();
    }

    public void s() {
    }
}
