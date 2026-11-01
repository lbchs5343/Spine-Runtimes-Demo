package com.bytedance.msdk.ox.ox.d.dq.dq;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.dq.d.d.d;
import java.util.Map;

/* loaded from: classes.dex */
public class iw extends d {
    private com.bytedance.msdk.ox.dq.dq.ox kk;

    public iw(String str, com.bytedance.msdk.ox.dq.d dVar) {
        super(str, dVar);
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.dq.d
    public <T> T dq(int i, ValueSet valueSet, Class<T> cls) {
        double d2;
        Map<String, Object> map;
        if (i == 8123) {
            int intValue = valueSet.intValue(8014);
            String stringValue = valueSet.stringValue(8015);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom interstitial loader : callLoaderFail  code:" + intValue + " msg:" + stringValue);
            dq(intValue, stringValue);
        } else if (i == 8107) {
            if (valueSet != null) {
                d2 = valueSet.doubleValue(8409);
                map = (Map) valueSet.objectValue(8075, Map.class);
            } else {
                d2 = 0.0d;
                map = null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom interstitial loader : callLoadSucceed price:" + d2 + " mextraMsg:" + map);
            dq(d2, map);
        } else if (i == 1008) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom interstitial loader : callInterstitialShow");
            ox();
        } else if (i == 1009) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom interstitial loader : callInterstitialAdClick");
            p();
        } else if (i == 1014) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom interstitial loader : callInterstitialClosed");
            s();
        } else if (i == 1015) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom interstitial loader : callInterstitialAdOpened");
            q();
        } else if (i == 1016) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom interstitial loader : callInterstitialAdLeftApplication");
            jy();
        }
        return null;
    }

    public void dq(double d2, Map<String, Object> map) {
        if (d()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
            return;
        }
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter callLoadSuccess");
        com.bytedance.msdk.ox.dq.dq.mn mnVar = new com.bytedance.msdk.ox.dq.dq.mn(this, ((d) this).ox);
        this.kk = mnVar;
        dq(mnVar, d2, map);
    }

    public void jy() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.iw.5
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.s.dq dqVar = (com.bytedance.msdk.api.p.dq.s.dq) iw.this.kk.gm();
                    if (dqVar != null) {
                        dqVar.s();
                    }
                }
            });
        }
    }

    public void ox() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.iw.1
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    iw.this.d(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.iw.1.1
                        @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                        public void dq() {
                            com.bytedance.msdk.api.p.dq.s.dq dqVar = (com.bytedance.msdk.api.p.dq.s.dq) iw.this.kk.gm();
                            if (dqVar != null) {
                                dqVar.dq();
                            }
                        }
                    });
                }
            });
        }
    }

    public void p() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.iw.2
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    iw.this.ox(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.iw.2.1
                        @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                        public void dq() {
                            com.bytedance.msdk.api.p.dq.s.dq dqVar = (com.bytedance.msdk.api.p.dq.s.dq) iw.this.kk.gm();
                            if (dqVar != null) {
                                dqVar.d();
                            }
                        }
                    });
                }
            });
        }
    }

    public void q() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.iw.4
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.s.dq dqVar = (com.bytedance.msdk.api.p.dq.s.dq) iw.this.kk.gm();
                    if (dqVar != null) {
                        dqVar.p();
                    }
                }
            });
        }
    }

    public void s() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.iw.3
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.s.dq dqVar = (com.bytedance.msdk.api.p.dq.s.dq) iw.this.kk.gm();
                    if (dqVar != null) {
                        dqVar.ox();
                    }
                }
            });
        }
    }
}
