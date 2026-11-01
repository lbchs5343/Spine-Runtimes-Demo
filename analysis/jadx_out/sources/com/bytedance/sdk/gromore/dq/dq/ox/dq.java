package com.bytedance.sdk.gromore.dq.dq.ox;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Map;

/* loaded from: classes.dex */
public class dq extends com.bytedance.sdk.openadsdk.mediation.dq.d.kk {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.k.dq.d.dq.dq f2341d;
    private com.bytedance.msdk.core.admanager.mn dq;

    public dq(com.bytedance.msdk.core.admanager.mn mnVar) {
        this.dq = mnVar;
        iw();
    }

    private void iw() {
        com.bytedance.msdk.core.admanager.mn mnVar = this.dq;
        if (mnVar == null) {
            return;
        }
        mnVar.dq(new com.bytedance.msdk.api.p.dq.p.dq() { // from class: com.bytedance.sdk.gromore.dq.dq.ox.dq.1
            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void D_() {
                if (dq.this.f2341d != null) {
                    dq.this.f2341d.dq();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void b_(com.bytedance.msdk.api.dq dqVar) {
                if (dqVar == null || !(dq.this.f2341d instanceof com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d)) {
                    return;
                }
                ((com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) dq.this.f2341d).dq(dqVar.dq, dqVar.f756d);
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
                if (dq.this.f2341d instanceof com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) {
                    ((com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) dq.this.f2341d).dq(p.dq(dqVar));
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void iw() {
                if (dq.this.f2341d != null) {
                    dq.this.f2341d.s();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void o_() {
                if (dq.this.f2341d != null) {
                    dq.this.f2341d.d();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void p_() {
                if (dq.this.f2341d != null) {
                    dq.this.f2341d.ox();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void q_() {
                if (dq.this.f2341d != null) {
                    dq.this.f2341d.p();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void r_() {
                if (dq.this.f2341d instanceof com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) {
                    ((com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) dq.this.f2341d).iw();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public Map<String, Object> d() {
        com.bytedance.msdk.core.admanager.mn mnVar = this.dq;
        if (mnVar != null) {
            return mnVar.xi();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public int dq() {
        com.bytedance.msdk.core.admanager.mn mnVar = this.dq;
        if (mnVar != null) {
            return mnVar.z();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(Activity activity) {
        com.bytedance.msdk.core.admanager.mn mnVar = this.dq;
        if (mnVar != null) {
            mnVar.dq(activity);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        com.bytedance.msdk.core.admanager.mn mnVar = this.dq;
        if (mnVar != null) {
            mnVar.d(activity, ritScenes, str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(final com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        com.bytedance.msdk.core.admanager.mn mnVar = this.dq;
        if (mnVar != null) {
            mnVar.dq(new com.bytedance.msdk.api.p.dq.d() { // from class: com.bytedance.sdk.gromore.dq.dq.ox.dq.2
                @Override // com.bytedance.msdk.api.p.dq.d
                public void d(long j, long j2, String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.ox(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq() {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.dq();
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, long j2, int i, int i2, String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.dq(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, long j2, String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.d(j, j2, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(long j, String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.dq(j, str, str2);
                    }
                }

                @Override // com.bytedance.msdk.api.p.dq.d
                public void dq(String str, String str2) {
                    com.bytedance.sdk.openadsdk.f.d.dq.d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.dq(str, str2);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dqVar) {
        this.f2341d = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(boolean z) {
        com.bytedance.msdk.core.admanager.mn mnVar = this.dq;
        if (mnVar != null) {
            mnVar.d(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public int ox() {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public long p() {
        return Long.MAX_VALUE;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.p s() {
        return new kk(new d(this.dq));
    }
}
