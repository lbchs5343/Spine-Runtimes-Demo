package com.bytedance.msdk.core.dq;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.dq.mn.no;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class dq extends d {
    public dq(com.bytedance.msdk.dq.dq dqVar) {
        super(dqVar);
    }

    private com.bytedance.msdk.api.p.dq.dq.dq kf() {
        return (com.bytedance.msdk.api.p.dq.dq.dq) this.ig;
    }

    @Override // com.bytedance.msdk.core.dq.d
    public <T> T dq(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 1008) {
            if (!(this.ig instanceof com.bytedance.msdk.api.p.dq.dq.dq)) {
                return null;
            }
            kf().d(null);
            return null;
        }
        if (i != 1009) {
            if (i != 1014) {
                if (i != 1016) {
                    if (i == 8111) {
                        dq(valueSet.doubleValue(8016));
                    } else if (i == 8140) {
                        String stringValue = valueSet.stringValue(8045);
                        String stringValue2 = valueSet.stringValue(8046);
                        int intValue = valueSet.intValue(8047);
                        String stringValue3 = valueSet.stringValue(8048);
                        String stringValue4 = valueSet.stringValue(8049);
                        String stringValue5 = valueSet.stringValue(8050);
                        int intValue2 = valueSet.intValue(8051);
                        int intValue3 = valueSet.intValue(8052);
                        List<String> list = (List) valueSet.objectValue(8053, List.class);
                        String stringValue6 = valueSet.stringValue(8054);
                        boolean booleanValue = valueSet.booleanValue(8055);
                        String stringValue7 = valueSet.stringValue(8056);
                        String stringValue8 = valueSet.stringValue(8057);
                        Object objectValue = valueSet.objectValue(8036, Object.class);
                        String stringValue9 = valueSet.stringValue(8058);
                        double doubleValue = valueSet.doubleValue(8016);
                        boolean booleanValue2 = valueSet.booleanValue(8033);
                        int intValue4 = valueSet.intValue(8060);
                        String stringValue10 = valueSet.stringValue(8061);
                        String stringValue11 = valueSet.stringValue(8061);
                        long longValue = valueSet.longValue(8078);
                        String stringValue12 = valueSet.stringValue(8079);
                        Map<String, String> map = (Map) valueSet.objectValue(8427, Map.class);
                        String stringValue13 = valueSet.stringValue(8080);
                        String stringValue14 = valueSet.stringValue(8081);
                        double doubleValue2 = valueSet.doubleValue(8082);
                        int intValue5 = valueSet.intValue(8059);
                        String stringValue15 = valueSet.stringValue(8551);
                        n(stringValue);
                        op(stringValue2);
                        i(intValue);
                        kx(stringValue3);
                        ir(stringValue4);
                        h(stringValue5);
                        r(intValue2);
                        gh(intValue3);
                        dq(list);
                        bl(stringValue6);
                        ia(booleanValue);
                        i(stringValue7);
                        le(stringValue8);
                        if (TextUtils.equals(m(), MediationConstant.ADN_BAIDU)) {
                            dq(MediationConstant.BAIDU_DISLIKE_INFO, objectValue);
                        }
                        mp(stringValue9);
                        dq(doubleValue);
                        mn(booleanValue2);
                        ig(intValue4);
                        mp(intValue5);
                        ji(stringValue10);
                        r(stringValue11);
                        d(longValue);
                        k(stringValue12);
                        s(map);
                        wp(stringValue13);
                        e(stringValue14);
                        p(doubleValue2);
                        no(stringValue15);
                    } else if (i == 8207) {
                        mp(valueSet.stringValue(8058));
                    }
                }
            } else if (this.ig instanceof com.bytedance.msdk.api.p.dq.dq.dq) {
                com.bytedance.msdk.dq.dq dqVar = ((d) this).f853d;
                if (dqVar != null) {
                    com.bytedance.msdk.core.d.dq.dq(dqVar.ig());
                }
                kf().C_();
            }
        } else if (this.ig instanceof com.bytedance.msdk.api.p.dq.dq.dq) {
            kf().dq(null);
            return null;
        }
        return null;
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, no noVar, List<View> list4) {
        if (((d) this).dq != null) {
            hat f2 = hat.f();
            f2.m(20033, activity);
            f2.m(8067, viewGroup);
            f2.m(8068, list);
            f2.m(8069, list2);
            f2.m(8070, list3);
            f2.m(8071, no.dq(noVar));
            ((d) this).dq.call(8159, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.msdk.d.s
    public View ig() {
        Bridge bridge = ((d) this).dq;
        return bridge != null ? (View) bridge.call(6081, null, View.class) : super.ig();
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

    @Override // com.bytedance.msdk.d.s
    public boolean o() {
        try {
            Bridge bridge = ((d) this).dq;
            if (bridge != null) {
                return ((Boolean) bridge.call(8135, null, Boolean.class)).booleanValue();
            }
        } catch (Exception unused) {
        }
        return super.o();
    }
}
