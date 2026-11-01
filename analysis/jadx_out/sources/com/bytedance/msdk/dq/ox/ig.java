package com.bytedance.msdk.dq.ox;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.core.u;
import com.bytedance.sdk.openadsdk.f.d.d.f;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ig extends com.bytedance.msdk.dq.dq {

    public class dq extends com.bytedance.msdk.d.s {
        com.bytedance.sdk.openadsdk.r.dq.d.dq.mn dq = new AnonymousClass1(null);
        private f ox;
        private boolean p;
        private Map<String, Object> s;

        /* renamed from: com.bytedance.msdk.dq.ox.ig$dq$1, reason: invalid class name */
        public class AnonymousClass1 extends com.bytedance.sdk.openadsdk.r.dq.d.dq.mn {
            public AnonymousClass1(Bridge bridge) {
                super(bridge);
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.mn
            public void d(f fVar) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward_onRewardVideoCached 2");
                dq dqVar = dq.this;
                ig.this.dq(dqVar, (com.bytedance.msdk.api.dq) null);
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.mn
            public void dq() {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward_onRewardVideoCached");
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.mn
            public void dq(int i, String str) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward_onError code:" + i + "  message:" + str);
                ig.this.dq(new com.bytedance.msdk.api.dq(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.mn
            public void dq(f fVar) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward_onRewardVideoAdLoad");
                if (fVar == null) {
                    ig.this.dq(new com.bytedance.msdk.api.dq("请求成功，但无广告可用"));
                    return;
                }
                dq.this.ox = fVar;
                dq.this.mn(true);
                dq dqVar = dq.this;
                dqVar.mp(dqVar.ox.dq());
                Map<String, Object> d2 = dq.this.ox.d();
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "PangleRewardLoader extraInfo :".concat(String.valueOf(d2)));
                if (ig.this.iw() && d2 != null) {
                    double dq = d.dq(d2.get("price"));
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_ECMP", com.bytedance.msdk.dq.s.s.d(ig.this.ig(), ig.this.no()) + "pangle reward 返回的 cpm价格：" + dq);
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
                        dq.this.p = ((Boolean) obj).booleanValue();
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "pangle 激励 返回的adnPreload：" + dq.this.p);
                    }
                }
                Bridge bridge = null;
                dq.this.ox.dq(new com.bytedance.sdk.openadsdk.f.d.dq.d(bridge) { // from class: com.bytedance.msdk.dq.ox.ig.dq.1.1
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
                dq.this.ox.d(new com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq(bridge) { // from class: com.bytedance.msdk.dq.ox.ig.dq.1.2
                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void d() {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onAdVideoBarClick---------2");
                        if (((com.bytedance.msdk.d.s) dq.this).mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.u().s_();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void dq() {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onAdShow-----------2");
                        if (((com.bytedance.msdk.d.s) dq.this).mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.u().E_();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void dq(final boolean z, final int i, final Bundle bundle) {
                        if (dq.this.dn()) {
                            return;
                        }
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onRewardArrived-------------2");
                        if (((com.bytedance.msdk.d.s) dq.this).mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.u().dq(new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.dq.ox.ig.dq.1.2.2
                                @Override // com.bytedance.msdk.api.ox.dq
                                public float d() {
                                    float f2 = bundle != null ? r0.getInt(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_AMOUNT) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                    return f2 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? f2 : ((com.bytedance.msdk.dq.dq) ig.this).ox != null ? ((com.bytedance.msdk.dq.dq) ig.this).ox.n() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                }

                                @Override // com.bytedance.msdk.api.ox.dq
                                public boolean dq() {
                                    return z;
                                }

                                @Override // com.bytedance.msdk.api.ox.dq
                                public String ox() {
                                    Bundle bundle2 = bundle;
                                    String string = bundle2 != null ? bundle2.getString(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_NAME) : "";
                                    return !TextUtils.isEmpty(string) ? string : ((com.bytedance.msdk.dq.dq) ig.this).ox != null ? ((com.bytedance.msdk.dq.dq) ig.this).ox.bl() : "";
                                }

                                @Override // com.bytedance.msdk.api.ox.dq
                                public Map<String, Object> p() {
                                    HashMap hashMap = new HashMap();
                                    hashMap.put(MediationConstant.KEY_EXTRA_INFO, bundle);
                                    hashMap.put(MediationConstant.KEY_REWARD_TYPE, Integer.valueOf(i));
                                    return hashMap;
                                }
                            });
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    @Deprecated
                    public void dq(final boolean z, final int i, final String str, final int i2, final String str2) {
                        if (dq.this.dn()) {
                            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onRewardVerify-------------2");
                            if (((com.bytedance.msdk.d.s) dq.this).mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                                dq.this.u().dq(new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.dq.ox.ig.dq.1.2.1
                                    @Override // com.bytedance.msdk.api.ox.dq
                                    public float d() {
                                        int i3 = i;
                                        return i3 >= 0 ? i3 : ((com.bytedance.msdk.dq.dq) ig.this).ox != null ? ((com.bytedance.msdk.dq.dq) ig.this).ox.n() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                    }

                                    @Override // com.bytedance.msdk.api.ox.dq
                                    public boolean dq() {
                                        return z;
                                    }

                                    @Override // com.bytedance.msdk.api.ox.dq
                                    public String ox() {
                                        return !TextUtils.isEmpty(str) ? str : ((com.bytedance.msdk.dq.dq) ig.this).ox != null ? ((com.bytedance.msdk.dq.dq) ig.this).ox.bl() : "";
                                    }

                                    @Override // com.bytedance.msdk.api.ox.dq
                                    public Map<String, Object> p() {
                                        HashMap hashMap = new HashMap();
                                        hashMap.put(MediationConstant.KEY_ERROR_CODE, Integer.valueOf(i2));
                                        hashMap.put(MediationConstant.KEY_ERROR_MSG, str2);
                                        return hashMap;
                                    }
                                });
                            }
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void iw() {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onSkippedVideo-------------2");
                        if (((com.bytedance.msdk.d.s) dq.this).mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.u().iw();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void ox() {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onAdClose-----------2");
                        if (((com.bytedance.msdk.d.s) dq.this).mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.u().t_();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void p() {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onVideoComplete----------2");
                        if (((com.bytedance.msdk.d.s) dq.this).mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.u().u_();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void s() {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onVideoError-----------2");
                        if (((com.bytedance.msdk.d.s) dq.this).mp instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.u().v_();
                        }
                    }
                });
                dq.this.ox.dq(new com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq(bridge) { // from class: com.bytedance.msdk.dq.ox.ig.dq.1.3
                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void d() {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onAdVideoBarClick");
                        if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.kf().s_();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void dq() {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onAdShow");
                        if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.kf().E_();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void dq(final boolean z, final int i, final Bundle bundle) {
                        if (dq.this.dn()) {
                            return;
                        }
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onRewardArrived-------------2");
                        if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.kf().dq(new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.dq.ox.ig.dq.1.3.2
                                @Override // com.bytedance.msdk.api.ox.dq
                                public float d() {
                                    float f2 = bundle != null ? r0.getInt(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_AMOUNT) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                    return f2 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? f2 : ((com.bytedance.msdk.dq.dq) ig.this).ox != null ? ((com.bytedance.msdk.dq.dq) ig.this).ox.n() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                }

                                @Override // com.bytedance.msdk.api.ox.dq
                                public boolean dq() {
                                    return z;
                                }

                                @Override // com.bytedance.msdk.api.ox.dq
                                public String ox() {
                                    Bundle bundle2 = bundle;
                                    String string = bundle2 != null ? bundle2.getString(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_NAME) : "";
                                    return !TextUtils.isEmpty(string) ? string : ((com.bytedance.msdk.dq.dq) ig.this).ox != null ? ((com.bytedance.msdk.dq.dq) ig.this).ox.bl() : "";
                                }

                                @Override // com.bytedance.msdk.api.ox.dq
                                public Map<String, Object> p() {
                                    HashMap hashMap = new HashMap();
                                    hashMap.put(MediationConstant.KEY_EXTRA_INFO, bundle);
                                    hashMap.put(MediationConstant.KEY_REWARD_TYPE, Integer.valueOf(i));
                                    return hashMap;
                                }
                            });
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    @Deprecated
                    public void dq(final boolean z, final int i, final String str, final int i2, final String str2) {
                        if (dq.this.dn()) {
                            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onRewardVerify-------------2");
                            if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                                dq.this.kf().dq(new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.dq.ox.ig.dq.1.3.1
                                    @Override // com.bytedance.msdk.api.ox.dq
                                    public float d() {
                                        int i3 = i;
                                        return i3 >= 0 ? i3 : ((com.bytedance.msdk.dq.dq) ig.this).ox != null ? ((com.bytedance.msdk.dq.dq) ig.this).ox.n() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                                    }

                                    @Override // com.bytedance.msdk.api.ox.dq
                                    public boolean dq() {
                                        return z;
                                    }

                                    @Override // com.bytedance.msdk.api.ox.dq
                                    public String ox() {
                                        return !TextUtils.isEmpty(str) ? str : ((com.bytedance.msdk.dq.dq) ig.this).ox != null ? ((com.bytedance.msdk.dq.dq) ig.this).ox.bl() : "";
                                    }

                                    @Override // com.bytedance.msdk.api.ox.dq
                                    public Map<String, Object> p() {
                                        HashMap hashMap = new HashMap();
                                        hashMap.put(MediationConstant.KEY_ERROR_CODE, Integer.valueOf(i2));
                                        hashMap.put(MediationConstant.KEY_ERROR_MSG, str2);
                                        return hashMap;
                                    }
                                });
                            }
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void iw() {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onSkippedVideo");
                        if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.kf().iw();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void ox() {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onAdClose");
                        if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.kf().t_();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void p() {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onVideoComplete");
                        if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.kf().u_();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq
                    public void s() {
                        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "pangle_reward:onVideoError");
                        if (((com.bytedance.msdk.d.s) dq.this).ig instanceof com.bytedance.msdk.api.p.dq.ia.dq) {
                            dq.this.kf().v_();
                        }
                    }
                });
                dq dqVar3 = dq.this;
                ig.this.dq(dqVar3);
            }
        }

        public dq(Map<String, Object> map) {
            this.s = map;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean dn() {
            return !"0.0".equals(ig.this.r()) && "4.4.0.0".compareTo(ig.this.r()) > 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:10:0x0025, code lost:
        
            if (android.text.TextUtils.isEmpty(r0) == false) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void dq(Context context) {
            String str;
            u dq = ig.this.dq(context);
            if (dq == null) {
                return;
            }
            Map<String, Object> wn = ((com.bytedance.msdk.dq.dq) ig.this).ox.wn();
            if (wn != null) {
                Object obj = wn.get(MediationConstant.ADN_PANGLE);
                if (obj instanceof String) {
                    str = (String) obj;
                }
            }
            str = "";
            d.dq dq2 = d.dq(((com.bytedance.msdk.dq.dq) ig.this).ox, ig.this.no(), ((com.bytedance.msdk.dq.dq) ig.this).dq, ig.this.q(), ig.this.kk(), false);
            dq2.iw(((com.bytedance.msdk.dq.dq) ig.this).ox.ir()).s(str).o(((com.bytedance.msdk.dq.dq) ig.this).ox.bl()).ia(((com.bytedance.msdk.dq.dq) ig.this).ox.n()).dq(1080).d(1920).p(((com.bytedance.msdk.dq.dq) ig.this).ox.u());
            dq.dq(dq2.dq(), this.dq);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.bytedance.msdk.api.p.dq.ia.dq kf() {
            return (com.bytedance.msdk.api.p.dq.ia.dq) this.ig;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.bytedance.msdk.api.p.dq.ia.dq u() {
            return (com.bytedance.msdk.api.p.dq.ia.dq) this.mp;
        }

        @Override // com.bytedance.msdk.d.s
        public void d(boolean z) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "PangleRewardLoader setShowDownLoadBar b:" + z + "  mTTRewardVideoAd: " + this.ox);
            f fVar = this.ox;
            if (fVar != null) {
                fVar.dq(z);
            }
        }

        @Override // com.bytedance.msdk.d.s
        public Map<String, Object> dq() {
            f fVar = this.ox;
            if (fVar != null) {
                ox(fVar.d());
            }
            return super.dq();
        }

        @Override // com.bytedance.msdk.d.s
        public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
            f fVar = this.ox;
            if (fVar != null) {
                if (ritScenes != null) {
                    fVar.dq(activity, ritScenes, str);
                } else {
                    fVar.dq(activity);
                }
            }
        }

        @Override // com.bytedance.msdk.d.s
        public void dq(Object obj) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "PangleRewardLoader setRewardAdPlayAgainController rewardAdPlayAgainController:" + obj + "  mTTRewardVideoAd: " + this.ox);
            f fVar = this.ox;
            if (fVar == null || !(obj instanceof com.bytedance.sdk.openadsdk.kx.dq.d.dq.d)) {
                return;
            }
            fVar.dq((com.bytedance.sdk.openadsdk.kx.dq.d.dq.d) obj);
        }

        @Override // com.bytedance.msdk.d.s
        public boolean e() {
            return true;
        }

        @Override // com.bytedance.msdk.d.s
        public boolean h() {
            return this.p;
        }

        @Override // com.bytedance.msdk.d.s
        public long ia() {
            f fVar = this.ox;
            if (fVar != null) {
                return d.d(fVar.d());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public String iw() {
            f fVar = this.ox;
            return fVar != null ? d.ox(fVar.d()) : "";
        }

        @Override // com.bytedance.msdk.d.s
        public MediationConstant.AdIsReadyStatus kx() {
            f fVar = this.ox;
            return (fVar == null || fVar.p() <= System.currentTimeMillis()) ? MediationConstant.AdIsReadyStatus.AD_IS_EXPIRED : MediationConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @Override // com.bytedance.msdk.d.s
        public long mn() {
            f fVar = this.ox;
            if (fVar != null) {
                return d.dq(fVar.d());
            }
            return 0L;
        }

        @Override // com.bytedance.msdk.d.s
        public void p() {
            f fVar = this.ox;
            if (fVar != null) {
                fVar.dq((com.bytedance.sdk.openadsdk.f.d.dq.d) null);
                this.ox.dq((com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq) null);
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
            i();
        } else {
            new dq(map).dq(context != null ? context.getApplicationContext() : com.bytedance.msdk.core.dq.getContext());
        }
    }

    @Override // com.bytedance.msdk.dq.dq
    public String fw() {
        return MediationConstant.ADN_PANGLE;
    }

    public void i() {
        dq(new com.bytedance.msdk.api.dq("load ad fail adSlot is null"));
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
