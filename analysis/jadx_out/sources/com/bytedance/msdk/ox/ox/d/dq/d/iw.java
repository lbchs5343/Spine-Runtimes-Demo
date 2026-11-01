package com.bytedance.msdk.ox.ox.d.dq.d;

import android.app.Activity;
import android.content.Context;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.u;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class iw extends d {

    public class dq extends com.bytedance.msdk.d.s {
        com.bytedance.sdk.openadsdk.r.dq.d.dq.p dq = new com.bytedance.sdk.openadsdk.r.dq.d.dq.p(null) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.iw.dq.1
            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.p
            public void d(com.bytedance.sdk.openadsdk.f.d.d.ig igVar) {
                com.bytedance.msdk.dq.s.ox.dq("TMe", "pangle full cached 2");
                dq.this.p = true;
                dq.this.jy.dq(dq.this, (com.bytedance.msdk.api.dq) null);
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.p
            public void dq() {
                com.bytedance.msdk.dq.s.ox.dq("TMe", "pangle full cached");
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.p
            public void dq(int i, String str) {
                dq.this.p = false;
                dq.this.jy.dq(new com.bytedance.msdk.api.dq(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.p
            public void dq(com.bytedance.sdk.openadsdk.f.d.d.ig igVar) {
                if (igVar == null) {
                    dq.this.jy.dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "请求成功，但无广告可用"));
                    return;
                }
                dq.this.ox = igVar;
                dq.this.mn(true);
                dq dqVar = dq.this;
                dqVar.mp(dqVar.ox.dq());
                Map<String, Object> d2 = dq.this.ox.d();
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "PangleFullVideoLoader WaterfallPangleFullVideoLoader extraInfo :".concat(String.valueOf(d2)));
                if (dq.this.q.dq() && d2 != null) {
                    double dq = com.bytedance.msdk.dq.ox.d.dq(d2.get("price"));
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_ECMP", com.bytedance.msdk.dq.s.s.d(dq.this.q.d(), dq.this.q.ig()) + "pangle 全屏 返回的 cpm价格：" + dq);
                    dq dqVar2 = dq.this;
                    if (dq <= 0.0d) {
                        dq = 0.0d;
                    }
                    dqVar2.dq(dq);
                }
                if (d2 != null) {
                    dq.this.p(d2);
                    Object obj = d2.get("materialMetaIsFromPreload");
                    if (obj instanceof Boolean) {
                        dq.this.s = ((Boolean) obj).booleanValue();
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "pangle 全屏 返回的adnPreload：" + dq.this.s);
                    }
                }
                Bridge bridge = null;
                dq.this.ox.dq(new com.bytedance.sdk.openadsdk.f.d.dq.d(bridge) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.iw.dq.1.1
                    @Override // com.bytedance.sdk.openadsdk.f.d.dq.d
                    public void d(long j, long j2, String str, String str2) {
                        if (((com.bytedance.msdk.d.s) dq.this).ia != null) {
                            ((com.bytedance.msdk.d.s) dq.this).ia.dq(j, j2, str, str2);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.f.d.dq.d
                    public void dq() {
                        if (((com.bytedance.msdk.d.s) dq.this).ia != null) {
                            ((com.bytedance.msdk.d.s) dq.this).ia.dq();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.f.d.dq.d
                    public void dq(long j, long j2, String str, String str2) {
                        if (((com.bytedance.msdk.d.s) dq.this).ia != null) {
                            ((com.bytedance.msdk.d.s) dq.this).ia.dq(j, j2, (int) (j != 0 ? j2 / j : 0L), -1, str, str2);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.f.d.dq.d
                    public void dq(long j, String str, String str2) {
                        if (((com.bytedance.msdk.d.s) dq.this).ia != null) {
                            ((com.bytedance.msdk.d.s) dq.this).ia.dq(j, str, str2);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.f.d.dq.d
                    public void dq(String str, String str2) {
                        if (((com.bytedance.msdk.d.s) dq.this).ia != null) {
                            ((com.bytedance.msdk.d.s) dq.this).ia.dq(str, str2);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.f.d.dq.d
                    public void ox(long j, long j2, String str, String str2) {
                        if (((com.bytedance.msdk.d.s) dq.this).ia != null) {
                            ((com.bytedance.msdk.d.s) dq.this).ia.d(j, j2, str, str2);
                        }
                    }
                });
                dq.this.ox.dq(new com.bytedance.sdk.openadsdk.k.dq.d.dq.dq(bridge) { // from class: com.bytedance.msdk.ox.ox.d.dq.d.iw.dq.1.2
                    @Override // com.bytedance.sdk.openadsdk.k.dq.d.dq.dq
                    public void d() {
                        if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.d) {
                            dq.this.u().o_();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.k.dq.d.dq.dq
                    public void dq() {
                        if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.d) {
                            dq.this.u().D_();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.k.dq.d.dq.dq
                    public void ox() {
                        if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.d) {
                            dq.this.u().p_();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.k.dq.d.dq.dq
                    public void p() {
                        if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.d) {
                            dq.this.u().q_();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.k.dq.d.dq.dq
                    public void s() {
                        if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.d) {
                            dq.this.u().iw();
                        }
                    }
                });
                dq.this.p = true;
                dq.this.jy.dq(dq.this);
            }
        };

        /* renamed from: f, reason: collision with root package name */
        private com.bytedance.msdk.api.dq.d f1155f;
        private com.bytedance.msdk.ox.ox.d.dq.d jy;
        private com.bytedance.sdk.openadsdk.f.d.d.ig ox;
        private boolean p;
        private com.bytedance.msdk.ox.s.d.d q;
        private boolean s;

        public dq() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.bytedance.msdk.dq.d.d u() {
            return (com.bytedance.msdk.dq.d.d) this.ig;
        }

        @Override // com.bytedance.msdk.d.s
        public void d(boolean z) {
            com.bytedance.sdk.openadsdk.f.d.d.ig igVar = this.ox;
            if (igVar != null) {
                igVar.dq(z);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public Map<String, Object> dq() {
            Map<String, Object> d2;
            com.bytedance.sdk.openadsdk.f.d.d.ig igVar = this.ox;
            if (igVar == null || (d2 = igVar.d()) == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("coupon", d2.get("coupon"));
            hashMap.put("live_room", d2.get("live_room"));
            hashMap.put("product", d2.get("product"));
            ox(hashMap);
            return super.dq();
        }

        @Override // com.bytedance.msdk.d.s
        public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "PangleFullVideoLoader WaterfallPangleFullVideoLoader showAd ritScenes:" + ritScenes + "  ritScenesContent: " + str + "  mTTFullScreenVideoAd:" + this.ox + "  activity:" + activity);
            com.bytedance.sdk.openadsdk.f.d.d.ig igVar = this.ox;
            if (igVar != null) {
                if (ritScenes != null) {
                    igVar.dq(activity, ritScenes, str);
                } else {
                    igVar.dq(activity);
                }
            }
        }

        public void dq(Context context, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.ox.s.d.d dVar2, com.bytedance.msdk.ox.ox.d.dq.d dVar3) {
            this.q = dVar2;
            this.jy = dVar3;
            this.f1155f = dVar;
            u dq = iw.this.dq(context);
            if (dq == null) {
                return;
            }
            d.dq dq2 = com.bytedance.msdk.dq.ox.d.dq(this.f1155f, this.q, false);
            dq2.dq(1080).d(1920).p(this.f1155f.u());
            dq.dq(dq2.dq(), this.dq);
        }

        @Override // com.bytedance.msdk.d.s
        public boolean e() {
            return true;
        }

        @Override // com.bytedance.msdk.d.s
        public boolean h() {
            return this.s;
        }

        @Override // com.bytedance.msdk.d.s
        public long ia() {
            com.bytedance.sdk.openadsdk.f.d.d.ig igVar = this.ox;
            if (igVar != null) {
                return com.bytedance.msdk.dq.ox.d.d(igVar.d());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public String iw() {
            com.bytedance.sdk.openadsdk.f.d.d.ig igVar = this.ox;
            return igVar != null ? com.bytedance.msdk.dq.ox.d.ox(igVar.d()) : "";
        }

        @Override // com.bytedance.msdk.d.s
        public MediationConstant.AdIsReadyStatus kx() {
            com.bytedance.sdk.openadsdk.f.d.d.ig igVar = this.ox;
            return (igVar == null || igVar.p() <= System.currentTimeMillis()) ? MediationConstant.AdIsReadyStatus.AD_IS_EXPIRED : MediationConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @Override // com.bytedance.msdk.d.s
        public long mn() {
            com.bytedance.sdk.openadsdk.f.d.d.ig igVar = this.ox;
            if (igVar != null) {
                return com.bytedance.msdk.dq.ox.d.dq(igVar.d());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public void p() {
            com.bytedance.sdk.openadsdk.f.d.d.ig igVar = this.ox;
            if (igVar != null) {
                igVar.dq((com.bytedance.sdk.openadsdk.k.dq.d.dq.dq) null);
                this.ox.dq((com.bytedance.sdk.openadsdk.f.d.dq.d) null);
                this.ox = null;
            }
        }

        @Override // com.bytedance.msdk.d.s
        public boolean s() {
            return this.ox == null;
        }
    }

    public iw(com.bytedance.msdk.ox.dq.d dVar) {
        super(dVar);
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.d
    public void d(Context context, com.bytedance.msdk.ox.s.d.d dVar, com.bytedance.msdk.api.dq.d dVar2, Map<String, Object> map) {
        if (dVar2 == null) {
            dq(new com.bytedance.msdk.api.dq("load ad fail adSlot is null"));
        } else {
            new dq().dq(context.getApplicationContext(), dVar2, dVar, this);
        }
    }
}
