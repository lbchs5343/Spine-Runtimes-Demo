package com.bytedance.msdk.iw.d;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.o;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s {

    public static class dq extends mn {
        public dq(com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.d dVar) {
            super(dVar);
        }

        @Override // com.bytedance.msdk.iw.d.mn
        public boolean d() {
            int vw = com.bytedance.msdk.core.dq.d().vw();
            if (vw > 0) {
                return false;
            }
            if (vw < 0) {
                return true;
            }
            return super.d();
        }

        @Override // com.bytedance.msdk.iw.d.mn
        public boolean dq() {
            int ds = com.bytedance.msdk.core.dq.d().ds();
            if (ds > 0) {
                return true;
            }
            if (ds < 0) {
                return false;
            }
            return super.dq();
        }
    }

    public static JSONObject d() {
        try {
            JSONObject jSONObject = new JSONObject();
            Map<String, com.bytedance.msdk.dq.dq.p> d2 = d.dq().d();
            if (d2 != null && d2.size() > 0) {
                for (Map.Entry<String, com.bytedance.msdk.dq.dq.p> entry : d2.entrySet()) {
                    String key = entry.getKey();
                    com.bytedance.msdk.dq.dq.p value = entry.getValue();
                    long s = value.s();
                    int iw = value.iw();
                    if (s != 0) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("status", iw);
                        jSONObject2.put(MediationConstant.EXTRA_DURATION, s);
                        jSONObject.put(key, jSONObject2);
                        value.mn();
                    }
                }
            }
            if (com.bytedance.sdk.gromore.init.iw.iw > 0) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("status", 1);
                jSONObject3.put(MediationConstant.EXTRA_DURATION, com.bytedance.sdk.gromore.init.iw.iw);
                jSONObject.put(MediationConstant.ADN_PANGLE, jSONObject3);
                com.bytedance.sdk.gromore.init.iw.iw = 0L;
            }
            if (com.bytedance.sdk.gromore.init.iw.mn > 0) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("status", 1);
                jSONObject4.put(MediationConstant.EXTRA_DURATION, com.bytedance.sdk.gromore.init.iw.mn);
                jSONObject.put("fusion", jSONObject4);
                com.bytedance.sdk.gromore.init.iw.mn = 0L;
            }
            if (com.bytedance.msdk.iw.d.dq.p() != null && com.bytedance.msdk.iw.d.dq.p().dq() != null && com.bytedance.msdk.iw.d.dq.p().dq().size() > 0) {
                for (Map.Entry<String, com.bytedance.msdk.api.p.dq.d.iw.dq> entry2 : com.bytedance.msdk.iw.d.dq.p().dq().entrySet()) {
                    String key2 = entry2.getKey();
                    com.bytedance.msdk.api.p.dq.d.iw.dq value2 = entry2.getValue();
                    long s2 = value2.s();
                    int iw2 = value2.iw();
                    if (s2 != 0) {
                        JSONObject jSONObject5 = new JSONObject();
                        jSONObject5.put("status", iw2);
                        jSONObject5.put(MediationConstant.EXTRA_DURATION, s2);
                        jSONObject.put(key2, jSONObject5);
                        value2.mn();
                    }
                }
            }
            if (jSONObject.length() == 0) {
                return null;
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static ValueSet dq(com.bytedance.sdk.openadsdk.f.d.ox.p pVar) {
        hat f2 = hat.f();
        if (pVar != null) {
            f2.m(8311, new dq(pVar.q()));
            f2.i(8023, pVar.ox());
            f2.i(8024, pVar.dq());
            f2.i(8025, pVar.s());
            f2.i(8026, pVar.d());
            f2.i(8480, pVar.p());
            f2.i(8479, pVar.iw());
            f2.m(8312, new iw(pVar.ia()));
            f2.m(8483, pVar.ia());
            f2.n(8484, pVar.kk());
            f2.n(8485, pVar.ig());
            f2.n(8486, pVar.no());
            f2.n(8487, pVar.o());
            f2.m(8554, pVar.mp());
            f2.i(8549, pVar.mn());
        } else {
            f2.m(8311, new dq(null));
            f2.i(8023, true);
            f2.i(8024, true);
            f2.i(8025, true);
            f2.i(8026, true);
            f2.i(8480, true);
            f2.i(8479, true);
            f2.m(8312, new iw(null));
            f2.m(8483, new ValueSet.ValueGetter<com.bytedance.sdk.openadsdk.f.d.ox.ox>() { // from class: com.bytedance.msdk.iw.d.s.1
                @Override // com.bykv.vk.openvk.api.proto.ValueSet.ValueGetter
                /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                public com.bytedance.sdk.openadsdk.f.d.ox.ox get() {
                    return null;
                }
            });
            f2.n(8484, "");
            f2.n(8485, "");
            f2.n(8486, "");
            f2.n(8487, "");
            f2.i(8549, true);
        }
        return f2.k();
    }

    public static ValueSet dq(com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar) {
        if (dqVar == null) {
            return null;
        }
        hat f2 = hat.f();
        f2.i(8458, dqVar.s());
        f2.n(8459, dqVar.no());
        f2.n(8460, dqVar.dq());
        f2.i(8461, dqVar.d());
        f2.m(8310, new ia(dqVar.ox()));
        f2.m(8462, dqVar.p());
        f2.m(8463, dqVar.iw());
        f2.n(8464, dqVar.mn());
        f2.i(8465, dqVar.ia());
        f2.i(8466, dqVar.kk());
        f2.i(8467, dqVar.o());
        return f2.k();
    }

    public static void dq() {
        o.dq(new com.bytedance.sdk.openadsdk.f.d.ox.dq(com.bytedance.msdk.core.d.no().l()).no());
    }

    public static void dq(hat hatVar) {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = new com.bytedance.sdk.openadsdk.f.d.ox.dq(com.bytedance.msdk.core.d.no().l());
        hatVar.m(8475, dq(dqVar.no()));
        hatVar.m(8457, dq(dqVar.q()));
        hatVar.i(1, com.bytedance.msdk.mn.dq.dq.jy().no());
    }
}
