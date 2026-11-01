package com.bytedance.msdk.core.dq;

import android.app.Activity;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;

/* loaded from: classes.dex */
public class ia extends d {
    private com.bytedance.msdk.dq.d.iw ox;

    public ia(com.bytedance.msdk.dq.dq dqVar) {
        super(dqVar);
    }

    private com.bytedance.msdk.dq.d.s kf() {
        return (com.bytedance.msdk.dq.d.s) this.ig;
    }

    @Override // com.bytedance.msdk.d.s
    public void d(ViewGroup viewGroup) {
        super.d(viewGroup);
        if (((d) this).dq != null) {
            hat f2 = hat.f();
            f2.m(20060, viewGroup);
            ((d) this).dq.call(6153, f2.k(), Void.class);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.msdk.core.dq.d
    public <T> T dq(int i, ValueSet valueSet, Class<T> cls) {
        String str;
        if (i == 8143) {
            return (T) Double.valueOf(dk());
        }
        int i2 = 0;
        if (i == 1009) {
            if (!(valueSet != null ? valueSet.booleanValue(20040, false) : false)) {
                if (kf() == null) {
                    return null;
                }
                kf().mn();
                return null;
            }
            com.bytedance.msdk.dq.d.iw iwVar = this.ox;
            if (!(iwVar instanceof com.bytedance.msdk.api.p.dq.kk.d)) {
                return null;
            }
            ((com.bytedance.msdk.api.p.dq.kk.d) iwVar).mn();
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
            kf().d_(new com.bytedance.msdk.api.dq(i2, str));
            return null;
        }
        if (i == 1011) {
            boolean booleanValue = valueSet != null ? valueSet.booleanValue(20040, false) : false;
            if (valueSet != null) {
                valueSet.intValue(8552);
            }
            if (!booleanValue) {
                if (kf() == null) {
                    return null;
                }
                kf().d(2);
                return null;
            }
            com.bytedance.msdk.dq.d.iw iwVar2 = this.ox;
            if (!(iwVar2 instanceof com.bytedance.msdk.api.p.dq.kk.d)) {
                return null;
            }
            ((com.bytedance.msdk.api.p.dq.kk.d) iwVar2).d(2);
            return null;
        }
        if (i == 1008) {
            if (!(valueSet != null ? valueSet.booleanValue(20040, false) : false)) {
                if (kf() == null) {
                    return null;
                }
                kf().w_();
                return null;
            }
            com.bytedance.msdk.dq.d.iw iwVar3 = this.ox;
            if (!(iwVar3 instanceof com.bytedance.msdk.api.p.dq.kk.d)) {
                return null;
            }
            ((com.bytedance.msdk.api.p.dq.kk.d) iwVar3).w_();
            return null;
        }
        if (i == 1019) {
            boolean booleanValue2 = valueSet != null ? valueSet.booleanValue(20040, false) : false;
            if (valueSet != null) {
                valueSet.intValue(8552);
            }
            if (!booleanValue2) {
                if (kf() == null) {
                    return null;
                }
                kf().dq(1);
                return null;
            }
            com.bytedance.msdk.dq.d.iw iwVar4 = this.ox;
            if (!(iwVar4 instanceof com.bytedance.msdk.api.p.dq.kk.d)) {
                return null;
            }
            ((com.bytedance.msdk.api.p.dq.kk.d) iwVar4).dq(1);
            return null;
        }
        if (i == 1074) {
            if (kf() != null) {
                return (T) kf().getActivity();
            }
            return null;
        }
        if (i == 1073) {
            if (kf() == null || valueSet == null) {
                return null;
            }
            valueSet.booleanValue(8428);
            return null;
        }
        if (i == 1072) {
            if (kf() == null) {
                return null;
            }
            kf().z_();
            return null;
        }
        if (i == 1071) {
            if (kf() == null) {
                return null;
            }
            kf().y_();
            return null;
        }
        if (i == 6159) {
            if (kf() == null) {
                return null;
            }
            kf().iw();
            return null;
        }
        if (i == 1051) {
            if (kf() == null) {
                return null;
            }
            kf().F_();
            return null;
        }
        if (i == 1052) {
            if (kf() == null) {
                return null;
            }
            kf().x_();
            return null;
        }
        if (i == 6156) {
            if (kf() == null) {
                return null;
            }
            kf().A_();
            return null;
        }
        if (i != 8111) {
            return null;
        }
        dq(valueSet.doubleValue(8016));
        return null;
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(ViewGroup viewGroup) {
        super.dq(viewGroup);
        if (((d) this).dq != null) {
            hat f2 = hat.f();
            f2.m(20060, viewGroup);
            ((d) this).dq.call(6152, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(ViewGroup viewGroup, Activity activity) {
        super.dq(viewGroup, activity);
        if (((d) this).dq != null) {
            hat f2 = hat.f();
            f2.m(20060, viewGroup);
            f2.m(20033, activity);
            ((d) this).dq.call(6154, f2.k(), Void.class);
        }
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
