package com.bytedance.sdk.gromore.dq.dq.mn.ox;

import android.app.Activity;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.dq.d.kk;
import java.util.Map;

/* loaded from: classes.dex */
public class dq extends kk {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.k.dq.d.dq.dq f2325d;
    private com.bytedance.msdk.ox.p.ia dq;

    public dq(com.bytedance.msdk.ox.p.ia iaVar) {
        this.dq = iaVar;
        iw();
    }

    private void iw() {
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        if (iaVar == null) {
            return;
        }
        iaVar.dq(new com.bytedance.msdk.api.p.dq.p.dq() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.ox.dq.1
            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void D_() {
                if (dq.this.f2325d != null) {
                    dq.this.f2325d.dq();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void b_(com.bytedance.msdk.api.dq dqVar) {
                if (dqVar == null || !(dq.this.f2325d instanceof com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d)) {
                    return;
                }
                ((com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) dq.this.f2325d).dq(dqVar.dq, dqVar.f756d);
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void dq(com.bytedance.msdk.api.ox.dq dqVar) {
                if (dq.this.f2325d instanceof com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) {
                    ((com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) dq.this.f2325d).dq(p.dq(dqVar));
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void iw() {
                if (dq.this.f2325d != null) {
                    dq.this.f2325d.s();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void o_() {
                if (dq.this.f2325d != null) {
                    dq.this.f2325d.d();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void p_() {
                if (dq.this.f2325d != null) {
                    dq.this.f2325d.ox();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void q_() {
                if (dq.this.f2325d != null) {
                    dq.this.f2325d.p();
                }
            }

            @Override // com.bytedance.msdk.api.p.dq.p.dq
            public void r_() {
                if (dq.this.f2325d instanceof com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) {
                    ((com.bytedance.sdk.openadsdk.mediation.dq.d.dq.d) dq.this.f2325d).iw();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public Map<String, Object> d() {
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        if (iaVar != null) {
            return iaVar.r();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void d(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public int dq() {
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        if (iaVar != null) {
            return iaVar.gh();
        }
        return -1;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(Activity activity) {
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        if (iaVar != null) {
            iaVar.dq(activity);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        if (iaVar != null) {
            iaVar.d(activity, ritScenes, str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(final com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        if (iaVar != null) {
            iaVar.dq(new com.bytedance.msdk.api.p.dq.d() { // from class: com.bytedance.sdk.gromore.dq.dq.mn.ox.dq.2
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
        this.f2325d = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.kk
    public void dq(Double d2, String str, String str2) {
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.ig
    public void dq(boolean z) {
        com.bytedance.msdk.ox.p.ia iaVar = this.dq;
        if (iaVar != null) {
            iaVar.d(z);
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
        return new ia(new d(this.dq));
    }
}
