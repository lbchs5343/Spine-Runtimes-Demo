package com.bytedance.msdk.ox.ox.d.dq.dq;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.dq.d.d.d;
import com.bytedance.msdk.ox.dq.dq.kk;
import java.util.Map;

/* loaded from: classes.dex */
public class mn extends d {
    private volatile com.bytedance.msdk.ox.dq.dq.ox kk;

    public mn(String str, com.bytedance.msdk.ox.dq.d dVar) {
        super(str, dVar);
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.dq.d
    public <T> T dq(int i, ValueSet valueSet, Class<T> cls) {
        double d2;
        Map<String, Object> map;
        if (i == 8123) {
            int intValue = valueSet.intValue(8014);
            String stringValue = valueSet.stringValue(8015);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom reward loader : callLoaderFail  code:" + intValue + " msg:" + stringValue);
            dq(intValue, stringValue);
        } else if (i == 8107) {
            if (valueSet != null) {
                d2 = valueSet.doubleValue(8409);
                map = (Map) valueSet.objectValue(8075, Map.class);
            } else {
                d2 = 0.0d;
                map = null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom reward loader : callLoadSucceed price:" + d2 + " mextraMsg:" + map);
            dq(d2, map);
        } else if (i == 8112) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom reward loader : callAdVideoCache");
            ox();
        } else if (i == 1008) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom reward loader : callRewardedAdShow");
            p();
        } else if (i == 1009) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom reward loader : callRewardClick");
            s();
        } else if (i == 1014) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom reward loader : callRewardedAdClosed");
            q();
        } else if (i == 1026) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom reward loader : callRewardVideoComplete");
            jy();
        } else if (i == 1021) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom reward loader : callRewardVideoError");
            f();
        } else if (i == 1037) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom reward loader : callRewardSkippedVideo");
            fw();
        } else if (i == 1018 && valueSet != null) {
            final boolean booleanValue = valueSet.booleanValue(8017);
            final float floatValue = valueSet.floatValue(8018);
            final String stringValue2 = valueSet.stringValue(8019);
            final Map map2 = (Map) valueSet.objectValue(8075, Map.class);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom reward loader : callRewardVerify rewardVerify:" + booleanValue + " amount:" + floatValue + " name:" + stringValue2 + " map:" + map2);
            dq(new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.mn.8
                @Override // com.bytedance.msdk.api.ox.dq
                public float d() {
                    return floatValue;
                }

                @Override // com.bytedance.msdk.api.ox.dq
                public boolean dq() {
                    return booleanValue;
                }

                @Override // com.bytedance.msdk.api.ox.dq
                public String ox() {
                    return stringValue2;
                }

                @Override // com.bytedance.msdk.api.ox.dq
                public Map<String, Object> p() {
                    return map2;
                }
            });
            return null;
        }
        return null;
    }

    public void dq(double d2, Map<String, Object> map) {
        if (d()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
            return;
        }
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter callLoadSuccess");
        if (this.kk == null) {
            this.kk = new kk(this, ((d) this).ox);
        }
        dq(this.kk, d2, map);
    }

    public final void dq(final com.bytedance.msdk.api.ox.dq dqVar) {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.mn.7
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.ia.dq dqVar2 = (com.bytedance.msdk.api.p.dq.ia.dq) mn.this.kk.gm();
                    if (dqVar2 != null) {
                        dqVar2.dq(dqVar);
                    }
                }
            });
        }
    }

    public final void f() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.mn.5
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.ia.dq dqVar = (com.bytedance.msdk.api.p.dq.ia.dq) mn.this.kk.gm();
                    if (dqVar != null) {
                        dqVar.v_();
                    }
                }
            });
        }
    }

    public final void fw() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.mn.6
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.ia.dq dqVar = (com.bytedance.msdk.api.p.dq.ia.dq) mn.this.kk.gm();
                    if (dqVar != null) {
                        dqVar.iw();
                    }
                }
            });
        }
    }

    public final void jy() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.mn.4
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.ia.dq dqVar = (com.bytedance.msdk.api.p.dq.ia.dq) mn.this.kk.gm();
                    if (dqVar != null) {
                        dqVar.u_();
                    }
                }
            });
        }
    }

    public void ox() {
        if (this.kk == null) {
            this.kk = new kk(this, ((d) this).ox);
        }
        dq(this.kk, (com.bytedance.msdk.api.dq) null);
    }

    public void p() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.mn.1
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    mn.this.d(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.mn.1.1
                        @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                        public void dq() {
                            com.bytedance.msdk.api.p.dq.ia.dq dqVar = (com.bytedance.msdk.api.p.dq.ia.dq) mn.this.kk.gm();
                            if (dqVar != null) {
                                dqVar.E_();
                            }
                        }
                    });
                }
            });
        }
    }

    public final void q() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.mn.3
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.ia.dq dqVar = (com.bytedance.msdk.api.p.dq.ia.dq) mn.this.kk.gm();
                    if (dqVar != null) {
                        dqVar.t_();
                    }
                }
            });
        }
    }

    public final void s() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.mn.2
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    mn.this.ox(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.mn.2.1
                        @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                        public void dq() {
                            com.bytedance.msdk.api.p.dq.ia.dq dqVar = (com.bytedance.msdk.api.p.dq.ia.dq) mn.this.kk.gm();
                            if (dqVar != null) {
                                dqVar.s_();
                            }
                        }
                    });
                }
            });
        }
    }
}
