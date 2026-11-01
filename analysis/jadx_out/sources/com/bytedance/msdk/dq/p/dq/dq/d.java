package com.bytedance.msdk.dq.p.dq.dq;

import android.app.Activity;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.dq.s.ox;
import g.hat;
import java.util.Map;

/* loaded from: classes.dex */
public class d extends com.bytedance.msdk.dq.p.dq.dq {
    private dq ox;

    public d(String str, com.bytedance.msdk.api.p.dq.d.d.d dVar) {
        super(str, dVar);
        com.bytedance.msdk.api.p.dq.d.d.d dVar2 = this.f1071d;
        if (dVar2 instanceof dq) {
            this.ox = (dq) dVar2;
        }
    }

    @Override // com.bytedance.msdk.dq.p.dq.dq
    public <T> T dq(int i, ValueSet valueSet, Class<T> cls) {
        double d2;
        Map<String, Object> map;
        if (i == 8123) {
            int intValue = valueSet.intValue(8014);
            String stringValue = valueSet.stringValue(8015);
            ox.d("TTMediationSDK", "GMCustomInterstitialLoader4csjm callLoaderFail  code:" + intValue + " msg:" + stringValue);
            dq(intValue, stringValue);
        } else if (i == 8107) {
            if (valueSet != null) {
                d2 = valueSet.doubleValue(8409);
                map = (Map) valueSet.objectValue(8075, Map.class);
            } else {
                d2 = 0.0d;
                map = null;
            }
            ox.d("TTMediationSDK", "GMCustomInterstitialLoader4csjm callLoadSucceed price:".concat(String.valueOf(d2)));
            dq(d2, map);
        } else if (i == 1008) {
            ox.d("TTMediationSDK", "GMCustomInterstitialLoader4csjm callInterstitialShow");
            dq dqVar = this.ox;
            if (dqVar != null) {
                dqVar.s();
            }
        } else if (i == 1009) {
            ox.d("TTMediationSDK", "GMCustomInterstitialLoader4csjm callInterstitialAdClick");
            dq dqVar2 = this.ox;
            if (dqVar2 != null) {
                dqVar2.iw();
            }
        } else if (i == 1014) {
            ox.d("TTMediationSDK", "GMCustomInterstitialLoader4csjm callInterstitialClosed");
            dq dqVar3 = this.ox;
            if (dqVar3 != null) {
                dqVar3.mn();
            }
        } else if (i == 1015) {
            ox.d("TTMediationSDK", "GMCustomInterstitialLoader4csjm callInterstitialAdOpened");
            dq dqVar4 = this.ox;
            if (dqVar4 != null) {
                dqVar4.ia();
            }
        } else if (i == 1016) {
            ox.d("TTMediationSDK", "GMCustomInterstitialLoader4csjm callInterstitialAdLeftApplication");
            dq dqVar5 = this.ox;
            if (dqVar5 != null) {
                dqVar5.kk();
            }
        }
        return null;
    }

    public void dq(double d2, Map<String, Object> map) {
        dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq(d2, map);
        }
    }

    public void dq(int i, String str) {
        dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq(new com.bytedance.msdk.api.p.dq.d.dq(i, str));
        }
    }

    public void dq(Activity activity) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(20033, activity);
            this.dq.call(8113, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.msdk.dq.p.dq.dq
    public void dq(Map<String, Object> map) {
        super.dq(map);
        if (this.ox == null || map == null || map.size() <= 0) {
            return;
        }
        this.ox.dq(map);
    }
}
