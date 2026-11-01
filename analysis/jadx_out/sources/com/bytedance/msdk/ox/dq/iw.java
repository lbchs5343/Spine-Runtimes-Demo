package com.bytedance.msdk.ox.dq;

import android.app.Activity;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;

/* loaded from: classes.dex */
public class iw extends p {
    public iw(com.bytedance.msdk.ox.s.d.dq dqVar) {
        super(dqVar);
    }

    private com.bytedance.msdk.api.p.dq.s.dq kf() {
        return (com.bytedance.msdk.api.p.dq.s.dq) this.ig;
    }

    @Override // com.bytedance.msdk.ox.dq.p
    public <T> T dq(int i, ValueSet valueSet, Class<T> cls) {
        String str;
        if (i == 8143) {
            return (T) Double.valueOf(dk());
        }
        if (i == 8111) {
            if (valueSet == null) {
                return null;
            }
            if (!u() && !jv()) {
                return null;
            }
            dq(valueSet.doubleValue(8016));
            return null;
        }
        int i2 = 0;
        if (i == 8129) {
            if (valueSet == null) {
                return null;
            }
            mn(valueSet.booleanValue(8033, false));
            return null;
        }
        if (i == 1008) {
            if (kf() == null) {
                return null;
            }
            kf().dq();
            return null;
        }
        if (i == 1017) {
            if (kf() == null) {
                return null;
            }
            if (valueSet != null) {
                i2 = valueSet.intValue(8014, 0);
                str = valueSet.stringValue(8015);
            } else {
                str = "";
            }
            kf().dq(new com.bytedance.msdk.api.dq(i2, str));
            return null;
        }
        if (i == 1009) {
            if (kf() == null) {
                return null;
            }
            kf().d();
            return null;
        }
        if (i == 1014) {
            if (kf() == null) {
                return null;
            }
            kf().ox();
            return null;
        }
        if (i == 1015) {
            if (kf() == null) {
                return null;
            }
            kf().p();
            return null;
        }
        if (i != 1016 || kf() == null) {
            return null;
        }
        kf().s();
        return null;
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        super.dq(activity, ritScenes, str);
        if (((p) this).dq != null) {
            hat f2 = hat.f();
            f2.m(20033, activity);
            ((p) this).dq.call(8113, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public String iw() {
        Bridge bridge = ((p) this).dq;
        return bridge != null ? (String) bridge.call(8147, null, String.class) : super.iw();
    }

    @Override // com.bytedance.msdk.d.s
    public MediationConstant.AdIsReadyStatus kx() {
        MediationConstant.AdIsReadyStatus adIsReadyStatus;
        Bridge bridge = ((p) this).dq;
        return (bridge == null || (adIsReadyStatus = (MediationConstant.AdIsReadyStatus) bridge.call(8121, null, MediationConstant.AdIsReadyStatus.class)) == null) ? super.kx() : adIsReadyStatus;
    }
}
