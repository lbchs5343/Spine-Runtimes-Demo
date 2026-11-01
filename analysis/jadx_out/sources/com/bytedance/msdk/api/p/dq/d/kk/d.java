package com.bytedance.msdk.api.p.dq.d.kk;

import android.content.Context;
import com.bytedance.msdk.api.p.dq.d.d.d;
import com.bytedance.msdk.api.p.dq.d.d.ox;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class d extends ox {
    public final void cd() {
        if (this.p != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.kk.d.7
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.ia.dq dqVar = (com.bytedance.msdk.api.p.dq.ia.dq) ((com.bytedance.msdk.api.p.dq.d.d.d) d.this).p.ig();
                    if (dqVar != null) {
                        dqVar.iw();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d.d.d
    public void d(Context context, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.d.ox.ox oxVar) {
        dq(context, dVar, oxVar);
    }

    public void dq(double d2, Map<String, Object> map) {
        if (no()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
            return;
        }
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter callLoadSuccess");
        dq dqVar = new dq();
        this.p = dqVar;
        dqVar.dq(this.mn);
        this.p.dq(this.f764d.mp());
        if (d2 > 0.0d && q() == 1) {
            this.p.dq(d2);
        }
        this.p.d(map);
        this.p.dq(this);
        com.bytedance.msdk.dq.dq dqVar2 = this.ox;
        if (dqVar2 != null) {
            dqVar2.dq(this.p);
        }
    }

    public abstract void dq(Context context, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.d.ox.ox oxVar);

    public final void dq(final com.bytedance.msdk.api.ox.dq dqVar) {
        if (this.p != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.kk.d.6
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.ia.dq dqVar2 = (com.bytedance.msdk.api.p.dq.ia.dq) ((com.bytedance.msdk.api.p.dq.d.d.d) d.this).p.ig();
                    if (dqVar2 != null) {
                        dqVar2.dq(dqVar);
                    }
                }
            });
        }
    }

    public final void dq(com.bytedance.msdk.api.p.dq.d.dq dqVar) {
        if (ig()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
            return;
        }
        com.bytedance.msdk.dq.dq dqVar2 = this.ox;
        if (dqVar2 != null) {
            dqVar2.dq(new com.bytedance.msdk.api.dq(49004, com.bytedance.msdk.api.dq.dq(49004), dqVar == null ? -1 : dqVar.dq(), dqVar == null ? "" : dqVar.d()));
        }
    }

    public final void dq(Map<String, Object> map) {
        if (map != null) {
            HashMap hashMap = new HashMap();
            this.mn = hashMap;
            hashMap.putAll(map);
        }
    }

    public final void fw() {
        if (this.p != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.kk.d.5
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.ia.dq dqVar = (com.bytedance.msdk.api.p.dq.ia.dq) ((com.bytedance.msdk.api.p.dq.d.d.d) d.this).p.ig();
                    if (dqVar != null) {
                        dqVar.v_();
                    }
                }
            });
        }
    }

    public final void ia() {
        if (this.p != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.kk.d.3
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.ia.dq dqVar = (com.bytedance.msdk.api.p.dq.ia.dq) ((com.bytedance.msdk.api.p.dq.d.d.d) d.this).p.ig();
                    if (dqVar != null) {
                        dqVar.t_();
                    }
                }
            });
        }
    }

    public final void iw() {
        if (this.p != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.kk.d.1
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    d.this.d(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.kk.d.1.1
                        @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                        public void dq() {
                            com.bytedance.msdk.api.p.dq.ia.dq dqVar = (com.bytedance.msdk.api.p.dq.ia.dq) ((com.bytedance.msdk.api.p.dq.d.d.d) d.this).p.ig();
                            if (dqVar != null) {
                                dqVar.E_();
                            }
                        }
                    });
                }
            });
        }
    }

    public final void kk() {
        if (this.p != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.kk.d.4
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.ia.dq dqVar = (com.bytedance.msdk.api.p.dq.ia.dq) ((com.bytedance.msdk.api.p.dq.d.d.d) d.this).p.ig();
                    if (dqVar != null) {
                        dqVar.u_();
                    }
                }
            });
        }
    }

    public final void mn() {
        if (this.p != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.kk.d.2
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    d.this.ox(new d.dq() { // from class: com.bytedance.msdk.api.p.dq.d.kk.d.2.1
                        @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                        public void dq() {
                            com.bytedance.msdk.api.p.dq.ia.dq dqVar = (com.bytedance.msdk.api.p.dq.ia.dq) ((com.bytedance.msdk.api.p.dq.d.d.d) d.this).p.ig();
                            if (dqVar != null) {
                                dqVar.s_();
                            }
                        }
                    });
                }
            });
        }
    }

    public final void s() {
        com.bytedance.msdk.api.p.dq.d.d.dq dqVar;
        com.bytedance.msdk.dq.dq dqVar2 = this.ox;
        if (dqVar2 == null || (dqVar = this.p) == null) {
            return;
        }
        dqVar2.dq(dqVar, (com.bytedance.msdk.api.dq) null);
    }
}
