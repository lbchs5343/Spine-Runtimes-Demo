package com.bytedance.msdk.dq.p.dq.p;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.dq.d.ia.mn;
import com.bytedance.msdk.api.p.dq.mn.no;
import com.bytedance.sdk.openadsdk.f.d.d.ia;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.dq.d.iw;
import g.hat;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ox extends com.bytedance.msdk.api.p.dq.d.ia.d implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.msdk.api.p.dq.d.d.d f1075d;
    private Bridge ox;

    public ox(com.bytedance.msdk.api.p.dq.d.d.d dVar, Bridge bridge) {
        this.f1075d = dVar;
        this.ox = bridge;
        if (bridge != null) {
            hat f2 = hat.f();
            f2.m(8034, this);
            bridge.call(8127, f2.k(), Void.class);
            yy();
            v();
        }
    }

    private void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, no noVar) {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.m(20033, activity);
            f2.m(8067, viewGroup);
            f2.m(8068, list);
            f2.m(8069, list2);
            f2.m(8070, list3);
            f2.m(8071, no.dq(noVar));
            this.ox.call(8159, f2.k(), Void.class);
        }
    }

    private boolean ds() {
        com.bytedance.msdk.api.p.dq.d.d.d dVar = this.f1075d;
        return dVar != null && dVar.q() == 1;
    }

    private void v() {
        dq(new mn() { // from class: com.bytedance.msdk.dq.p.dq.p.ox.1
            @Override // com.bytedance.msdk.api.p.dq.d.ia.mn
            public ia dq(Activity activity) {
                if (ox.this.ox == null) {
                    return null;
                }
                hat f2 = hat.f();
                f2.m(20033, activity);
                Bridge bridge = (Bridge) ox.this.ox.call(6072, f2.k(), Bridge.class);
                if (bridge == null) {
                    return null;
                }
                final iw iwVar = new iw(bridge);
                return new ia() { // from class: com.bytedance.msdk.dq.p.dq.p.ox.1.1
                    @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
                    public void d() {
                    }

                    @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
                    public void dq() {
                        iwVar.dq();
                    }

                    @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
                    public void dq(com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
                        iwVar.dq(new s(dqVar));
                    }

                    @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
                    public void dq(String str) {
                    }

                    @Override // com.bytedance.sdk.openadsdk.f.d.d.ia
                    public boolean ox() {
                        return false;
                    }
                };
            }
        });
    }

    private void yy() {
        ValueSet values = this.ox.values();
        if (values != null) {
            Map<String, Object> map = (Map) values.objectValue(AVMDLDataLoader.KeyIsLiveCacheThresholdHttpToP2p, Map.class);
            String stringValue = values.stringValue(8045);
            String stringValue2 = values.stringValue(8046);
            String stringValue3 = values.stringValue(8048);
            String stringValue4 = values.stringValue(8049);
            String stringValue5 = values.stringValue(8050);
            int intValue = values.intValue(8051);
            int intValue2 = values.intValue(8052);
            List<String> list = (List) values.objectValue(8053, List.class);
            String stringValue6 = values.stringValue(8054);
            double doubleValue = values.doubleValue(8016);
            boolean booleanValue = values.booleanValue(8033);
            int intValue3 = values.intValue(8060);
            String stringValue7 = values.stringValue(8061);
            double doubleValue2 = values.doubleValue(8082);
            int intValue4 = values.intValue(8420);
            int intValue5 = values.intValue(8421);
            int intValue6 = values.intValue(8059);
            Bridge bridge = (Bridge) values.objectValue(8315, Bridge.class);
            d(doubleValue);
            dq(map);
            dq(stringValue);
            d(stringValue2);
            ox(stringValue3);
            p(stringValue5);
            d(intValue2);
            ox(intValue);
            s(stringValue7);
            iw(stringValue6);
            p(intValue4);
            s(intValue5);
            ox(doubleValue2);
            dq(list);
            mn(stringValue4);
            dq(booleanValue);
            iw(intValue3);
            mn(intValue6);
            if (bridge != null) {
                dq(new p(bridge));
            }
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 8134) {
            int intValue = valueSet.intValue(8014);
            dq((View) valueSet.objectValue(8042, View.class), valueSet.stringValue(8015), intValue);
        } else if (i == 8133) {
            dq(valueSet.floatValue(8040), valueSet.floatValue(8041));
        } else if (i == 8130) {
            cd();
        } else if (i == 8113) {
            gh();
        } else if (i == 8145) {
            r();
        } else if (i == 8146) {
            i();
        } else if (i == 8150) {
            le();
        } else if (i == 8118) {
            k();
        } else if (i == 8117) {
            dq(new com.bytedance.msdk.api.p.dq.d.dq(valueSet.intValue(8014), valueSet.stringValue(8015)));
        } else if (i == 8154) {
            dq(valueSet.longValue(8072), valueSet.longValue(8073));
        } else if (i == 8152) {
            gx();
        } else if (i == 8187) {
            long longValue = valueSet.longValue(8062);
            long longValue2 = valueSet.longValue(8063);
            valueSet.intValue(8064);
            valueSet.intValue(8065);
            dq(longValue, longValue2, "", "");
        } else if (i == 8158) {
            d(valueSet.longValue(8062), valueSet.longValue(8063), valueSet.stringValue(8066), valueSet.stringValue(8056));
        } else if (i == 8157) {
            ox(valueSet.longValue(8062), valueSet.longValue(8063), valueSet.stringValue(8066), valueSet.stringValue(8056));
        } else if (i == 8155) {
            dq(valueSet.longValue(8062), valueSet.stringValue(8066), valueSet.stringValue(8056));
        } else if (i == 8156) {
            dq(valueSet.stringValue(8066), valueSet.stringValue(8056));
        } else if (i == 8185) {
            by();
        } else if (i == 8184) {
            uh();
        } else if (i == 6085) {
            v();
        } else {
            if (i == 8110) {
                return (T) Boolean.valueOf(ds());
            }
            if (i == 8136) {
                return (T) Boolean.valueOf(ob());
            }
            if (i == 8160) {
                return (T) Boolean.valueOf(l());
            }
            if (i == 8226) {
                com.bytedance.msdk.api.p.dq.d.d.d dVar = this.f1075d;
                if (dVar != null) {
                    return (T) Integer.valueOf(dVar.q());
                }
            } else if (i == 8132) {
                dq(valueSet.intValue(8038), valueSet.stringValue(8039));
            }
        }
        return (T) com.bytedance.msdk.core.cd.dq.dq(cls);
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.d, com.bytedance.msdk.api.p.dq.d.ia.dq
    public View d() {
        Bridge bridge = this.ox;
        return bridge != null ? (View) bridge.call(6081, null, View.class) : super.d();
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.d
    public void dq() {
        Bridge bridge = this.ox;
        if (bridge != null) {
            bridge.call(6083, null, Void.class);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.d
    public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, no noVar) {
        super.dq(viewGroup, list, list2, noVar);
        dq(getActivity(), viewGroup, list, list2, mp(), noVar);
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.dq
    public void dq(boolean z, double d2, int i, Map<String, Object> map) {
        if (this.ox != null) {
            hat f2 = hat.f();
            f2.i(8406, z);
            f2.j(8407, d2);
            f2.o(8408, i);
            f2.m(8075, map);
            this.ox.call(8225, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.d
    public void ia() {
        Bridge bridge = this.ox;
        if (bridge != null) {
            bridge.call(8109, null, Void.class);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.d
    public void iw() {
        Bridge bridge = this.ox;
        if (bridge != null) {
            bridge.call(8149, null, Void.class);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.dq
    public String kk() {
        Bridge bridge = this.ox;
        return bridge != null ? (String) bridge.call(8228, null, String.class) : super.kk();
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.d
    public void mn() {
        Bridge bridge = this.ox;
        if (bridge != null) {
            bridge.call(8148, null, Void.class);
        }
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.d
    public MediationConstant.AdIsReadyStatus o() {
        MediationConstant.AdIsReadyStatus adIsReadyStatus;
        Bridge bridge = this.ox;
        return (bridge == null || (adIsReadyStatus = (MediationConstant.AdIsReadyStatus) bridge.call(8121, null, MediationConstant.AdIsReadyStatus.class)) == null) ? MediationConstant.AdIsReadyStatus.ADN_NO_READY_API : adIsReadyStatus;
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.d
    public View ox() {
        Bridge bridge = this.ox;
        return bridge != null ? (View) bridge.call(6164, null, View.class) : super.ox();
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.d
    public com.bytedance.msdk.api.p.dq.mn.iw p() {
        Bridge bridge;
        Bridge bridge2 = this.ox;
        return (bridge2 == null || (bridge = (Bridge) bridge2.call(8320, null, Bridge.class)) == null) ? super.p() : com.bytedance.msdk.core.dq.iw.dq(bridge);
    }

    @Override // com.bytedance.msdk.api.p.dq.d.ia.d
    public boolean s() {
        Bridge bridge = this.ox;
        return bridge != null ? ((Boolean) bridge.call(8135, null, Boolean.class)).booleanValue() : super.s();
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
