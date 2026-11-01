package com.bytedance.msdk.core.dq;

import android.app.Activity;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.Map;

/* loaded from: classes.dex */
public class ox extends d {
    public ox(com.bytedance.msdk.dq.dq dqVar) {
        super(dqVar);
    }

    private com.bytedance.msdk.api.p.dq.p.dq kf() {
        return (com.bytedance.msdk.api.p.dq.p.dq) this.ig;
    }

    @Override // com.bytedance.msdk.core.dq.d
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
            kf().D_();
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
            kf().b_(new com.bytedance.msdk.api.dq(i2, str));
            return null;
        }
        if (i == 1009) {
            if (kf() == null) {
                return null;
            }
            kf().o_();
            return null;
        }
        if (i == 1014) {
            if (kf() == null) {
                return null;
            }
            kf().p_();
            return null;
        }
        if (i == 1026) {
            if (kf() == null) {
                return null;
            }
            kf().q_();
            return null;
        }
        if (i == 1021) {
            if (kf() == null) {
                return null;
            }
            kf().r_();
            return null;
        }
        if (i == 1037) {
            if (kf() == null) {
                return null;
            }
            kf().iw();
            return null;
        }
        if (i != 1018 || kf() == null) {
            return null;
        }
        final boolean booleanValue = valueSet.booleanValue(8017);
        final float intValue = valueSet.intValue(8018);
        final String stringValue = valueSet.stringValue(8019);
        kf().dq(new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.core.dq.ox.1
            @Override // com.bytedance.msdk.api.ox.dq
            public float d() {
                return intValue;
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public boolean dq() {
                return booleanValue;
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public String ox() {
                return stringValue;
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public Map<String, Object> p() {
                return null;
            }
        });
        return null;
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        super.dq(activity, ritScenes, str);
        if (((d) this).dq != null) {
            hat f2 = hat.f();
            f2.m(20033, activity);
            ((d) this).dq.call(8113, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public boolean e() {
        Boolean bool;
        Bridge bridge = ((d) this).dq;
        if (bridge != null && (bool = (Boolean) bridge.call(8211, null, Boolean.class)) != null) {
            return bool.booleanValue();
        }
        return super.e();
    }

    @Override // com.bytedance.msdk.d.s
    public String iw() {
        Bridge bridge = ((d) this).dq;
        return bridge != null ? (String) bridge.call(8147, null, String.class) : super.iw();
    }

    @Override // com.bytedance.msdk.d.s
    public MediationConstant.AdIsReadyStatus kx() {
        MediationConstant.AdIsReadyStatus adIsReadyStatus;
        Bridge bridge = ((d) this).dq;
        return (bridge == null || (adIsReadyStatus = (MediationConstant.AdIsReadyStatus) bridge.call(8121, null, MediationConstant.AdIsReadyStatus.class)) == null) ? super.kx() : adIsReadyStatus;
    }
}
