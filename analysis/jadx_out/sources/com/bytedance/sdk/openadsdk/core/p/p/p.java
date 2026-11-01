package com.bytedance.sdk.openadsdk.core.p.p;

import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.mn;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class p extends d {
    private final long s;

    public p(int i) {
        super(i);
        this.s = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int d() {
        mn.dq dqVar = this.dq;
        return (dqVar == null || dqVar.ia() == -1) ? dq.dq(this.f3382d) : this.dq.ia();
    }

    private void d(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final s sVar, nh nhVar) {
        com.bytedance.sdk.openadsdk.core.p.p.dq.p pVar = new com.bytedance.sdk.openadsdk.core.p.p.dq.p(this.dq) { // from class: com.bytedance.sdk.openadsdk.core.p.p.p.3
            @Override // com.bytedance.sdk.openadsdk.core.p.p.dq.p
            public void dq() {
                p.this.dq(dVar, sVar, this);
                dq(true);
            }
        };
        pVar.d();
        dq(dVar, sVar, nhVar, pVar);
    }

    private void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final s sVar, final nh nhVar) {
        com.bytedance.sdk.openadsdk.core.p.p.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.p.p.dq.dq(this.dq) { // from class: com.bytedance.sdk.openadsdk.core.p.p.p.2
            @Override // com.bytedance.sdk.openadsdk.core.p.p.dq.dq
            public void dq() {
                p.this.dq(dVar, sVar, nhVar, this);
            }
        };
        if (dq(dVar, sVar, dqVar)) {
            return;
        }
        dqVar.dq(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final s sVar, final nh nhVar, final com.bytedance.sdk.openadsdk.core.p.p.dq.d dVar2) {
        dVar.mn();
        wp.dq().dq(dVar, nhVar, this.f3382d, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.p.p.p.4
            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar3) {
                com.bytedance.sdk.openadsdk.core.p.dq.d dVar4 = p.this.p;
                if (dVar4 != null) {
                    dVar4.dq(dVar, i, str, dVar3);
                }
                com.bytedance.sdk.openadsdk.core.p.p.dq.d dVar5 = dVar2;
                if (dVar5 != null) {
                    dVar5.dq(sVar, i, str);
                    return;
                }
                s sVar2 = sVar;
                if (sVar2 != null) {
                    sVar2.dq(i, str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar3) {
                com.bytedance.sdk.openadsdk.core.p.dq.d dVar4 = p.this.p;
                ox dq = dVar4 == null ? null : dVar4.dq(dqVar, dVar3, nhVar, dVar, sVar);
                if (dq != null) {
                    com.bytedance.sdk.openadsdk.core.p.p.dq.d dVar5 = dVar2;
                    if (dVar5 == null) {
                        dq.dq();
                    } else {
                        dVar5.dq(dq);
                    }
                }
                com.bytedance.sdk.openadsdk.core.p.p.dq.d dVar6 = dVar2;
                if (dVar6 != null) {
                    dVar6.ox();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, s sVar, com.bytedance.sdk.openadsdk.core.p.p.dq.d dVar2) {
        j jVar;
        com.bytedance.sdk.openadsdk.core.p.dq.d dVar3;
        dVar.mn();
        if (!TextUtils.isEmpty(dVar.wp())) {
            return false;
        }
        String mn = dVar.mn();
        com.bytedance.sdk.openadsdk.core.p.d.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.d(mn);
            jVar = this.ox.ox(mn);
        } else {
            jVar = null;
        }
        if (jVar == null || !dq(jVar) || (dVar3 = this.p) == null || !dVar3.dq(dVar, jVar)) {
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_playAgain", false);
        bundle.putBoolean("is_cache", true);
        bundle.putLong("start_time", this.s);
        ox dq = this.p.dq(jVar, dVar, sVar, bundle);
        if (dVar2 != null) {
            dVar2.d(dq);
            dVar2.dq(true);
        } else {
            dq.dq();
        }
        return true;
    }

    private void ox(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, s sVar, nh nhVar) {
        com.bytedance.sdk.openadsdk.core.p.p.dq.ox oxVar = new com.bytedance.sdk.openadsdk.core.p.p.dq.ox(this.dq);
        dq(dVar, sVar, nhVar, oxVar);
        if (dq(dVar, sVar, oxVar)) {
            return;
        }
        oxVar.dq(false);
    }

    private void p(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, s sVar, nh nhVar) {
        dq(dVar, sVar, nhVar, (com.bytedance.sdk.openadsdk.core.p.p.dq.d) null);
    }

    public void d(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, nh nhVar, int i, s sVar) {
        if (i == -1) {
            i = d();
        }
        mn.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq();
        }
        if (i == 1) {
            dq(dVar, sVar, nhVar);
            return;
        }
        if (i == 2) {
            d(dVar, sVar, nhVar);
        } else if (i != 3) {
            p(dVar, sVar, nhVar);
        } else {
            ox(dVar, sVar, nhVar);
        }
    }

    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final nh nhVar) {
        if (dVar == null) {
            return;
        }
        dVar.mn();
        if (com.bytedance.sdk.openadsdk.core.live.p.p.dq(dVar.e())) {
            com.bytedance.sdk.openadsdk.h.mn.ox(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.p.p.p.5
                @Override // java.lang.Runnable
                public void run() {
                    if (!TextUtils.isEmpty(dVar.wp())) {
                        com.bytedance.sdk.openadsdk.core.p.dq.d dVar2 = p.this.p;
                        if (dVar2 != null) {
                            dVar2.dq(dVar);
                            return;
                        }
                        return;
                    }
                    if (p.this.d() != 0 && p.this.ox.dq(dVar.mn())) {
                        dVar.mn();
                        p.this.dq(dVar, (s) null, nhVar, (com.bytedance.sdk.openadsdk.core.p.p.dq.d) null);
                    }
                }
            });
        }
    }

    public void dq(final com.bytedance.sdk.openadsdk.f.d.ox.d dVar, final nh nhVar, final int i, final s sVar) {
        com.bytedance.sdk.openadsdk.h.mn.ox(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.p.p.p.1
            @Override // java.lang.Runnable
            public void run() {
                p.this.d(dVar, nhVar, i, new iw(sVar));
            }
        });
    }
}
