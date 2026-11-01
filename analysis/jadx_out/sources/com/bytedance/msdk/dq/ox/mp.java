package com.bytedance.msdk.dq.ox;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.u;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class mp extends com.bytedance.msdk.dq.dq {
    private int iw = 3000;

    public class dq extends com.bytedance.msdk.d.s {
        boolean dq;
        private com.bytedance.sdk.openadsdk.f.d.d.d ox;
        private Map<String, Object> p;

        public dq(Map<String, Object> map) {
            this.p = map;
        }

        private void dq(u uVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
            uVar.dq(dVar, new com.bytedance.sdk.openadsdk.r.dq.d.dq.dq(null) { // from class: com.bytedance.msdk.dq.ox.mp.dq.1
                @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.dq
                public void d(com.bytedance.sdk.openadsdk.f.d.d.d dVar2) {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashRenderSuccess");
                }

                @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.dq
                public void dq(com.bytedance.sdk.openadsdk.f.d.d.d dVar2) {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashLoadSuccess 111");
                    if (dVar2 == null) {
                        mp.this.dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "渲染成功但广告是空"));
                        return;
                    }
                    dq.this.ox = dVar2;
                    dq.this.mn(true);
                    dq dqVar = dq.this;
                    dqVar.mp(dqVar.ox.p());
                    Map<String, Object> s = dq.this.ox.s();
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "PangleSplashLoader extraInfo :".concat(String.valueOf(s)));
                    if (s != null) {
                        dq.this.p(s);
                    }
                    if (mp.this.iw() && s != null) {
                        double dq = d.dq(s.get("price"));
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_ECMP", com.bytedance.msdk.dq.s.s.d(mp.this.ig(), mp.this.no()) + "pangle Splash 返回的 cpm价格：" + dq);
                        dq dqVar2 = dq.this;
                        if (dq <= 0.0d) {
                            dq = 0.0d;
                        }
                        dqVar2.dq(dq);
                    }
                    Bridge bridge = null;
                    dq.this.ox.dq(new com.bytedance.sdk.openadsdk.f.d.dq.d(bridge) { // from class: com.bytedance.msdk.dq.ox.mp.dq.1.1
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
                    dq.this.ox.dq(new com.bytedance.sdk.openadsdk.p.dq.d.dq.dq(bridge) { // from class: com.bytedance.msdk.dq.ox.mp.dq.1.2
                        @Override // com.bytedance.sdk.openadsdk.p.dq.d.dq.dq
                        public void d(com.bytedance.sdk.openadsdk.f.d.d.d dVar3) {
                            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashAdClick");
                            if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.s) {
                                dq.this.u().mn();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.p.dq.d.dq.dq
                        public void dq(com.bytedance.sdk.openadsdk.f.d.d.d dVar3) {
                            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashAdShow");
                            if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.s) {
                                dq.this.u().w_();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.p.dq.d.dq.dq
                        public void dq(com.bytedance.sdk.openadsdk.f.d.d.d dVar3, int i) {
                            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashAdClose closeType = ".concat(String.valueOf(i)));
                            if (i == 1 || i == 3) {
                                if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.s) {
                                    dq.this.u().dq(i);
                                }
                            } else if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.s) {
                                dq.this.u().d(i);
                            }
                        }
                    });
                    dq.this.ox.dq(new com.bytedance.sdk.openadsdk.p.dq.d.dq.d(bridge) { // from class: com.bytedance.msdk.dq.ox.mp.dq.1.3
                        @Override // com.bytedance.sdk.openadsdk.p.dq.d.dq.d
                        public void d() {
                            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashCardClose");
                            if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.s) {
                                dq.this.u().z_();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.p.dq.d.dq.d
                        public void dq() {
                            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashCardClick");
                            try {
                                if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.s) {
                                    dq.this.u().A_();
                                }
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.p.dq.d.dq.d
                        public void dq(com.bytedance.sdk.openadsdk.f.d.d.d dVar3) {
                            if (dVar3 != null) {
                                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashCardReadyToShow csjSplashAd.getSplashCardView()" + dVar3.ox());
                            }
                            if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.s) {
                                dq.this.u();
                            }
                            if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.s) {
                                dq.this.u().y_();
                            }
                        }
                    });
                    dq.this.ox.dq(new com.bytedance.sdk.openadsdk.p.dq.d.dq.ox(bridge) { // from class: com.bytedance.msdk.dq.ox.mp.dq.1.4
                        @Override // com.bytedance.sdk.openadsdk.p.dq.d.dq.ox
                        public void d() {
                            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashClickEyeClose");
                            if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.s) {
                                dq.this.u().x_();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.p.dq.d.dq.ox
                        public void dq() {
                            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashClickEyeClick");
                            if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.dq.d.s) {
                                dq.this.u().iw();
                            }
                        }

                        @Override // com.bytedance.sdk.openadsdk.p.dq.d.dq.ox
                        public void dq(com.bytedance.sdk.openadsdk.f.d.d.d dVar3) {
                            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashClickEyeReadyToShow");
                            dq dqVar3 = dq.this;
                            dqVar3.dq = true;
                            if (((com.bytedance.msdk.d.s) dqVar3).ig instanceof com.bytedance.msdk.dq.d.s) {
                                dq.this.u().F_();
                            }
                        }
                    });
                    dq dqVar3 = dq.this;
                    mp.this.dq(dqVar3);
                }

                @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.dq
                public void dq(com.bytedance.sdk.openadsdk.f.d.d.d dVar2, com.bytedance.sdk.openadsdk.f.d.d.dq dqVar) {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashRenderFail");
                    if (dqVar != null) {
                        mp.this.dq(new com.bytedance.msdk.api.dq(dqVar.dq(), dqVar.d()));
                    } else {
                        mp.this.dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "csjAdError is null"));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.dq
                public void dq(com.bytedance.sdk.openadsdk.f.d.d.dq dqVar) {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "new api onSplashLoadFail");
                    if (dqVar != null) {
                        mp.this.dq(new com.bytedance.msdk.api.dq(dqVar.dq(), dqVar.d()));
                    } else {
                        mp.this.dq(new com.bytedance.msdk.api.dq(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "csjAdError is null"));
                    }
                }
            }, mp.this.iw);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.bytedance.msdk.dq.d.s u() {
            return (com.bytedance.msdk.dq.d.s) this.ig;
        }

        @Override // com.bytedance.msdk.d.s
        public void bl() {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "PangleSplashLoader hideSkipButton mCSJSplashAd:" + this.ox);
            com.bytedance.sdk.openadsdk.f.d.d.d dVar = this.ox;
            if (dVar != null) {
                dVar.mn();
            }
        }

        @Override // com.bytedance.msdk.d.s
        public void d(ViewGroup viewGroup) {
            com.bytedance.sdk.openadsdk.f.d.d.d dVar = this.ox;
            if (dVar != null) {
                dVar.d(viewGroup);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public Map<String, Object> dq() {
            Map<String, Object> s;
            com.bytedance.sdk.openadsdk.f.d.d.d dVar = this.ox;
            if (dVar != null && (s = dVar.s()) != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("coupon", s.get("coupon"));
                hashMap.put("live_room", s.get("live_room"));
                hashMap.put("product", s.get("product"));
                ox(hashMap);
            }
            return super.dq();
        }

        public void dq(Context context) {
            u dq = mp.this.dq(context);
            if (dq == null) {
                return;
            }
            Map<String, Object> map = this.p;
            if (map == null) {
                mp.this.iw = 3000;
            } else {
                mp.this.iw = map.get("ad_load_timeout") != null ? ((Integer) this.p.get("ad_load_timeout")).intValue() : 3000;
            }
            d.dq dq2 = d.dq(((com.bytedance.msdk.dq.dq) mp.this).ox, mp.this.no(), ((com.bytedance.msdk.dq.dq) mp.this).dq, mp.this.q(), mp.this.kk(), false);
            dq2.dq(((com.bytedance.msdk.dq.dq) mp.this).ox.e()).d(((com.bytedance.msdk.dq.dq) mp.this).ox.kx()).dq(((com.bytedance.msdk.dq.dq) mp.this).ox.q()).d(((com.bytedance.msdk.dq.dq) mp.this).ox.jy());
            dq(dq, dq2.dq());
        }

        @Override // com.bytedance.msdk.d.s
        public void dq(ViewGroup viewGroup) {
            com.bytedance.sdk.openadsdk.f.d.d.d dVar = this.ox;
            if (dVar == null || viewGroup == null) {
                return;
            }
            dVar.dq(viewGroup);
        }

        @Override // com.bytedance.msdk.d.s
        public void dq(ViewGroup viewGroup, Activity activity) {
            com.bytedance.sdk.openadsdk.f.d.d.d dVar = this.ox;
            if (dVar != null) {
                dVar.dq(viewGroup, activity);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public long ia() {
            com.bytedance.sdk.openadsdk.f.d.d.d dVar = this.ox;
            if (dVar != null) {
                return d.d(dVar.s());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public String iw() {
            com.bytedance.sdk.openadsdk.f.d.d.d dVar = this.ox;
            return dVar != null ? d.ox(dVar.s()) : "";
        }

        @Override // com.bytedance.msdk.d.s
        public int[] ji() {
            com.bytedance.sdk.openadsdk.f.d.d.d dVar = this.ox;
            if (dVar != null) {
                return dVar.iw();
            }
            return null;
        }

        @Override // com.bytedance.msdk.d.s
        public long mn() {
            com.bytedance.sdk.openadsdk.f.d.d.d dVar = this.ox;
            if (dVar != null) {
                return d.dq(dVar.s());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public void p() {
            com.bytedance.sdk.openadsdk.f.d.d.d dVar = this.ox;
            if (dVar != null) {
                dVar.dq((com.bytedance.sdk.openadsdk.p.dq.d.dq.dq) null);
                this.ox.dq((com.bytedance.sdk.openadsdk.f.d.dq.d) null);
                this.ox.dq((com.bytedance.sdk.openadsdk.p.dq.d.dq.d) null);
                this.ox.dq((com.bytedance.sdk.openadsdk.p.dq.d.dq.ox) null);
                this.ox = null;
            }
        }

        @Override // com.bytedance.msdk.d.s
        public boolean s() {
            return this.ox == null;
        }
    }

    @Override // com.bytedance.msdk.dq.dq
    public void dq(Context context, Map<String, Object> map) {
        if (this.ox == null) {
            dq(new com.bytedance.msdk.api.dq("load ad fail adSlot is null"));
        } else {
            new dq(map).dq(context != null ? context.getApplicationContext() : com.bytedance.msdk.core.dq.getContext());
        }
    }

    @Override // com.bytedance.msdk.dq.dq
    public String fw() {
        return MediationConstant.ADN_PANGLE;
    }

    @Override // com.bytedance.msdk.dq.dq
    public String r() {
        try {
            return com.bytedance.sdk.gromore.init.dq.ox();
        } catch (Exception unused) {
            return "0.0";
        }
    }
}
