package com.bytedance.msdk.ox.ox.d.dq.dq;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.dq.d.d.d;
import java.util.Map;

/* loaded from: classes.dex */
public class dq extends d {
    private com.bytedance.msdk.ox.dq.dq.ox kk;

    public dq(String str, com.bytedance.msdk.ox.dq.d dVar) {
        super(str, dVar);
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.dq.d
    public <T> T dq(int i, ValueSet valueSet, Class<T> cls) {
        double d2;
        Map<String, Object> map;
        if (i == 8123) {
            int intValue = valueSet.intValue(8014);
            String stringValue = valueSet.stringValue(8015);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom banner loader : callLoaderFail  code:" + intValue + " msg:" + stringValue);
            dq(intValue, stringValue);
        } else if (i == 8107) {
            if (valueSet != null) {
                d2 = valueSet.doubleValue(8409);
                map = (Map) valueSet.objectValue(8075, Map.class);
            } else {
                d2 = 0.0d;
                map = null;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom banner loader : callLoadSucceed price:" + d2 + " mextraMsg:" + map);
            dq(d2, map);
        } else if (i == 1008) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom banner loader : callBannerAdShow");
            ox();
        } else if (i == 1009) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom banner loader : callBannerAdClick");
            p();
        } else if (i == 1014) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom banner loader : callBannerAdClosed");
            s();
        }
        return null;
    }

    public void dq(double d2, Map<String, Object> map) {
        if (d()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
            return;
        }
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter callLoadSuccess");
        com.bytedance.msdk.ox.dq.dq.d dVar = new com.bytedance.msdk.ox.dq.dq.d(this, ((d) this).ox);
        this.kk = dVar;
        dVar.ox(this.s);
        this.kk.jy(this.p.kx());
        if (d2 > 0.0d && kk() == 1) {
            this.kk.dq(d2);
        }
        if (map != null) {
            this.s.putAll(map);
        }
        this.kk.p(this.s);
        dq(this.kk);
    }

    public void ox() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.dq.1
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.dq.dq dqVar = (com.bytedance.msdk.api.p.dq.dq.dq) dq.this.kk.gm();
                    if (dqVar != null) {
                        dqVar.d(null);
                    }
                }
            });
        }
    }

    public void p() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.dq.2
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    dq.this.ox(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.dq.2.1
                        @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                        public void dq() {
                            com.bytedance.msdk.api.p.dq.dq.dq dqVar = (com.bytedance.msdk.api.p.dq.dq.dq) dq.this.kk.gm();
                            if (dqVar != null) {
                                dqVar.dq(null);
                            }
                        }
                    });
                }
            });
        }
    }

    public void s() {
        if (this.kk != null) {
            dq(new d.dq() { // from class: com.bytedance.msdk.ox.ox.d.dq.dq.dq.3
                @Override // com.bytedance.msdk.api.p.dq.d.d.d.dq
                public void dq() {
                    com.bytedance.msdk.api.p.dq.dq.dq dqVar = (com.bytedance.msdk.api.p.dq.dq.dq) dq.this.kk.gm();
                    if (dqVar != null) {
                        dqVar.C_();
                    }
                }
            });
        }
    }
}
