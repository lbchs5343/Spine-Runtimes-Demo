package com.bytedance.sdk.gromore.dq.dq.p;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class kk extends com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq {
    private final com.bytedance.msdk.api.p.dq.mn.dq dq;

    public kk(com.bytedance.msdk.api.p.dq.mn.dq dqVar) {
        this.dq = dqVar;
    }

    private com.bytedance.msdk.api.p.d dq(Activity activity, com.bytedance.msdk.api.p.dq.mn.dq dqVar) {
        final com.bytedance.sdk.openadsdk.f.d.d.ia dq = dqVar.dq(activity);
        return new com.bytedance.msdk.api.p.d() { // from class: com.bytedance.sdk.gromore.dq.dq.p.kk.1
            @Override // com.bytedance.msdk.api.p.d
            public void dq() {
                com.bytedance.sdk.openadsdk.f.d.d.ia iaVar = dq;
                if (iaVar != null) {
                    iaVar.dq();
                }
            }

            @Override // com.bytedance.msdk.api.p.d
            public void dq(final com.bytedance.msdk.api.p.mn mnVar) {
                com.bytedance.sdk.openadsdk.f.d.d.ia iaVar = dq;
                if (iaVar != null) {
                    iaVar.dq(new com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq(null) { // from class: com.bytedance.sdk.gromore.dq.dq.p.kk.1.1
                        @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                        public void d() {
                            com.bytedance.msdk.api.p.mn mnVar2 = mnVar;
                            if (mnVar2 != null) {
                                mnVar2.dq();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                        public void dq() {
                            com.bytedance.msdk.api.p.mn mnVar2 = mnVar;
                            if (mnVar2 != null) {
                                mnVar2.d();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq
                        public void dq(int i, String str, boolean z) {
                            com.bytedance.msdk.api.p.mn mnVar2 = mnVar;
                            if (mnVar2 != null) {
                                mnVar2.dq(i, str);
                            }
                        }
                    });
                }
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public com.bytedance.sdk.openadsdk.f.d.d.ia d(Activity activity) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.dq(activity);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public com.bytedance.sdk.openadsdk.f.d.d.ia d(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.dq(tTDislikeDialogAbstract);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public String d() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.p();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.ox dq(Activity activity) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar;
        if (activity == null || (dqVar = this.dq) == null) {
            return null;
        }
        return new com.bytedance.sdk.gromore.dq.dq.dq.s(dq(activity, dqVar));
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.ox dq(Activity activity, Map<String, Object> map) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar;
        if (activity == null || map == null || (dqVar = this.dq) == null) {
            return null;
        }
        return new com.bytedance.sdk.gromore.dq.dq.dq.s(dq(activity, dqVar));
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public String dq() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.p();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.p pVar) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(activity, viewGroup, list, list2, list3, com.bytedance.msdk.api.p.dq.mn.no.dq(pVar));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar2 = this.dq;
        if (dqVar2 != null) {
            dqVar2.dq(activity, dqVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public void dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq((Dialog) tTDislikeDialogAbstract);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public String ia() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.f();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public boolean ig() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.u();
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public double iw() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.q();
        }
        return 0.0d;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public int kk() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.e();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public List<String> mn() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.jy();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public com.bytedance.sdk.openadsdk.f.d.d.p mp() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.kk();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.p no() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar == null || dqVar.ob() == null) {
            return null;
        }
        return new com.bytedance.sdk.gromore.dq.dq.dq.iw(this.dq.ob());
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public int o() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.kx();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public String ox() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.iw();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public String p() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.mn();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d.dq
    public String s() {
        com.bytedance.msdk.api.p.dq.mn.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.no();
        }
        return null;
    }
}
