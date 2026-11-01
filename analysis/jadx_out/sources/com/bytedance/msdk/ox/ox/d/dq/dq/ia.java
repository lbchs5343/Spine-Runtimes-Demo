package com.bytedance.msdk.ox.ox.d.dq.dq;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.dq.d.d.d;
import com.bytedance.msdk.ox.dq.dq.o;
import java.util.Map;

/* loaded from: classes.dex */
public class ia extends d {
    private com.bytedance.msdk.ox.dq.dq.ox kk;

    public ia(String str, com.bytedance.msdk.ox.dq.d dVar) {
        super(str, dVar);
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.dq.d
    public <T> T dq(int i, ValueSet valueSet, Class<T> cls) {
        double d2;
        Map<String, Object> map;
        if (i == 8123) {
            int intValue = valueSet.intValue(8014);
            String stringValue = valueSet.stringValue(8015);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom splash loader : callLoaderFail  code:" + intValue + " msg:" + stringValue);
            dq(intValue, stringValue);
        } else if (i == 8107) {
            if (valueSet != null) {
                d2 = valueSet.doubleValue(8409);
                map = (Map) valueSet.objectValue(8075, Map.class);
            } else {
                d2 = 0.0d;
                map = null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom splash loader : callLoadSucceed price:" + d2 + " mextraMsg:" + map);
            dq(d2, map);
        } else if (i == 1009) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom splash loader : callSplashAdClicked");
            ox();
        } else if (i == 1008) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom splash loader : callSplashAdShow");
            p();
        } else if (i == 1019) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom splash loader : callSplashAdSkip");
            s();
        } else if (i == 1011) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom splash loader : callSplashAdDismiss");
            q();
        }
        return null;
    }

    public void dq(double d2, Map<String, Object> map) {
        if (d()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
            return;
        }
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter callLoadSuccess");
        o oVar = new o(this, ((d) this).ox);
        this.kk = oVar;
        dq(oVar, d2, map);
    }

    public void ox() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.ia.1
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    ia.this.ox(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.ia.1.1
                        @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                        public void dq() {
                            com.bytedance.msdk.api.p.dq.kk.d dVar = (com.bytedance.msdk.api.p.dq.kk.d) ia.this.kk.gm();
                            if (dVar != null) {
                                dVar.mn();
                            }
                        }
                    });
                }
            });
        }
    }

    public void p() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.ia.2
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    ia.this.d(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.ia.2.1
                        @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                        public void dq() {
                            com.bytedance.msdk.api.p.dq.kk.d dVar = (com.bytedance.msdk.api.p.dq.kk.d) ia.this.kk.gm();
                            if (dVar != null) {
                                dVar.w_();
                            }
                        }
                    });
                }
            });
        }
    }

    public void q() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.ia.4
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.kk.d dVar = (com.bytedance.msdk.api.p.dq.kk.d) ia.this.kk.gm();
                    if (dVar != null) {
                        dVar.d(2);
                    }
                }
            });
        }
    }

    public void s() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.ia.3
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.kk.d dVar = (com.bytedance.msdk.api.p.dq.kk.d) ia.this.kk.gm();
                    if (dVar != null) {
                        dVar.dq(1);
                    }
                }
            });
        }
    }
}
