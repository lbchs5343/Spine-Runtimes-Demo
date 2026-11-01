package com.bytedance.sdk.gromore.init;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.gromore.dq.dq.p.fw;
import com.bytedance.sdk.gromore.dq.dq.p.jy;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import g.abn;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mn implements Loader {

    /* renamed from: d, reason: collision with root package name */
    private Context f2365d;
    private Loader dq;

    public mn(Context context, Loader loader) {
        this.dq = loader;
        this.f2365d = context;
    }

    private ValueSet dq(ValueSet valueSet) {
        if (valueSet == null) {
            return null;
        }
        String e2 = new com.bytedance.sdk.openadsdk.f.d.ox.d(valueSet).e();
        try {
            JSONArray jSONArray = TextUtils.isEmpty(e2) ? new JSONArray() : new JSONArray(e2);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null && TextUtils.equals("personal_ads_type", optJSONObject.optString(abn.EXTRA_UA_APP_NAME))) {
                    return valueSet;
                }
            }
            JSONObject jSONObject = new JSONObject();
            com.bytedance.msdk.dq.ox.q d2 = com.bytedance.msdk.core.d.no().d();
            if (d2 == null) {
                return valueSet;
            }
            String str = d2.mn() ? "0" : "1";
            jSONObject.put(abn.EXTRA_UA_APP_NAME, "personal_ads_type");
            jSONObject.put("value", str);
            jSONArray.put(jSONObject);
            return com.bytedance.sdk.openadsdk.mediation.dq.d.dq.dq(valueSet, jSONArray.toString());
        } catch (Throwable th) {
            th.printStackTrace();
            return valueSet;
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Loader
    public void load(int i, ValueSet valueSet, EventListener eventListener) {
        if (valueSet == null) {
            return;
        }
        if (!com.bytedance.msdk.core.mp.dq.dq().ox()) {
            if (this.dq != null) {
                com.bytedance.msdk.dq.s.ox.d("TMe", "load csj 代码位未开启聚合开关");
                this.dq.load(i, valueSet, eventListener);
                return;
            }
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "CSJM_loadAD Type:".concat(String.valueOf(i)));
        final com.bytedance.sdk.gromore.dq.dq dqVar = new com.bytedance.sdk.gromore.dq.dq(valueSet);
        final Bridge bridge = (Bridge) valueSet.objectValue(1, Bridge.class);
        d.dq dqVar2 = new d.dq(new com.bytedance.sdk.openadsdk.f.d.ox.d(valueSet));
        com.bytedance.msdk.core.mp.dq.dq().dq(dqVar.ia());
        if (dqVar.dq() == 0 || !(dqVar.dq() == dqVar.ox() || dqVar.ox() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) {
            dqVar2.dq(dqVar.ox());
        } else {
            dqVar2.dq(com.bytedance.msdk.api.s.d(this.f2365d, dqVar.dq()));
        }
        if (dqVar.ox() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && dqVar.p() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            dqVar2.d(dqVar.p());
        } else if (dqVar.d() == 0 || !(dqVar.d() == dqVar.p() || dqVar.p() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) {
            dqVar2.d(dqVar.p());
        } else {
            dqVar2.d(com.bytedance.msdk.api.s.d(this.f2365d, dqVar.d()));
        }
        if (dqVar.dq() == 0 && dqVar.ox() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            dqVar2.dq(com.bytedance.msdk.api.s.dq(this.f2365d, dqVar.ox()));
        }
        if (dqVar.d() == 0 && dqVar.p() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            dqVar2.d(com.bytedance.msdk.api.s.dq(this.f2365d, dqVar.p()));
        }
        final com.bytedance.sdk.openadsdk.mediation.dq.d.dq dqVar3 = new com.bytedance.sdk.openadsdk.mediation.dq.d.dq(com.bytedance.msdk.core.mp.dq.dq().p() ? com.bytedance.msdk.ox.mn.ox.dq(dqVar.s(), dqVar2) : com.bytedance.sdk.openadsdk.mediation.dq.d.dq.dq(dqVar2.dq()));
        if (i == 1) {
            if (!com.bytedance.msdk.core.mp.dq.dq().dq(dqVar3.mn(), 1)) {
                if (this.dq != null) {
                    com.bytedance.msdk.dq.s.ox.d("TMe", "load csj banner 代码位 = " + dqVar.s());
                    this.dq.load(i, dq(valueSet), eventListener);
                    return;
                }
                return;
            }
            com.bytedance.sdk.gromore.dq.dq.dq.p pVar = new com.bytedance.sdk.gromore.dq.dq.dq.p(bridge);
            com.bytedance.msdk.dq.s.ox.d("TMe", "load m banner 广告位 = " + dqVar.s() + ",ritId:" + dqVar3.mn());
            com.bytedance.msdk.ox.mn.d.dq(this.f2365d, dqVar3, pVar);
            return;
        }
        if (i == 3) {
            if (com.bytedance.msdk.core.mp.dq.dq().dq(dqVar3.mn(), 3)) {
                com.bytedance.msdk.dq.s.ox.d("TMe", "load m splash 广告位 = " + dqVar.s() + ",ritId:" + dqVar3.mn());
            } else {
                if (!com.bytedance.msdk.mn.dq.dq.jy().mp() || dqVar.mn() == null || TextUtils.isEmpty(dqVar.mn().dq()) || TextUtils.isEmpty(dqVar.mn().ox()) || TextUtils.isEmpty(dqVar.mn().d())) {
                    if (this.dq != null) {
                        com.bytedance.msdk.dq.s.ox.d("TMe", "load csj splash 代码位 = " + dqVar.s());
                        this.dq.load(i, dq(valueSet), eventListener);
                        return;
                    }
                    return;
                }
                com.bytedance.msdk.dq.s.ox.d("TMe", "load m splash 开屏兜底代码位 = " + dqVar.mn().d());
            }
            com.bytedance.msdk.api.p.o.dq(new com.bytedance.msdk.api.p.dq.kk.dq() { // from class: com.bytedance.sdk.gromore.init.mn.1
                @Override // com.bytedance.msdk.api.p.dq.kk.dq
                public void dq() {
                    com.bytedance.msdk.ox.mn.d.dq(mn.this.f2365d, dqVar3, dqVar, new com.bytedance.sdk.gromore.dq.dq.iw.s(bridge));
                }
            });
            return;
        }
        if (i == 5) {
            boolean booleanValue = valueSet.booleanValue(2);
            if (!com.bytedance.msdk.core.mp.dq.dq().dq(dqVar3.mn(), 5)) {
                if (this.dq != null) {
                    com.bytedance.msdk.dq.s.ox.d("TMe", "load csj feed 代码位 = " + dqVar.s() + ", isExpress: " + booleanValue);
                    this.dq.load(i, dq(valueSet), eventListener);
                    return;
                }
                return;
            }
            com.bytedance.msdk.dq.s.ox.d("TMe", "load m feed 广告位 = " + dqVar.s() + ",ritId:" + dqVar3.mn() + ", isExpress: " + booleanValue);
            if (booleanValue) {
                jy jyVar = new jy(bridge);
                Context context = this.f2365d;
                if (context != null) {
                    com.bytedance.msdk.ox.mn.d.dq(context, dqVar3, jyVar);
                    return;
                } else {
                    jyVar.dq(81005, "context is null");
                    return;
                }
            }
            fw fwVar = new fw(bridge);
            Context context2 = this.f2365d;
            if (context2 != null) {
                com.bytedance.msdk.ox.mn.d.dq(context2, dqVar3, fwVar);
                return;
            } else {
                fwVar.dq(81005, "context is null");
                return;
            }
        }
        if (i == 7) {
            if (!com.bytedance.msdk.core.mp.dq.dq().dq(dqVar3.mn(), 7)) {
                if (this.dq != null) {
                    com.bytedance.msdk.dq.s.ox.d("TMe", "load csj reward video 代码位 = " + dqVar.s());
                    this.dq.load(i, dq(valueSet), eventListener);
                    return;
                }
                return;
            }
            com.bytedance.sdk.gromore.dq.dq.s.s sVar = new com.bytedance.sdk.gromore.dq.dq.s.s(bridge);
            com.bytedance.msdk.dq.s.ox.d("TMe", "load m reward video 广告位 = " + dqVar.s() + ",ritId:" + dqVar3.mn());
            com.bytedance.msdk.ox.mn.d.dq(this.f2365d, dqVar3, sVar);
            return;
        }
        if (i == 8) {
            if (!com.bytedance.msdk.core.mp.dq.dq().dq(dqVar3.mn(), 8) && !com.bytedance.msdk.core.mp.dq.dq().dq(dqVar3.mn(), 10)) {
                if (this.dq != null) {
                    com.bytedance.msdk.dq.s.ox.d("TMe", "load csj full");
                    this.dq.load(i, dq(valueSet), eventListener);
                    return;
                }
                return;
            }
            com.bytedance.sdk.gromore.dq.dq.ox.ia iaVar = new com.bytedance.sdk.gromore.dq.dq.ox.ia(bridge);
            com.bytedance.msdk.core.no.d dq = com.bytedance.msdk.core.dq.d().dq(dqVar3.mn(), 8, 101);
            if (dq == null) {
                dq = com.bytedance.msdk.core.dq.d().dq(dqVar3.mn(), 10, 101);
            }
            if (dq == null || dq.ce() != 8) {
                com.bytedance.msdk.dq.s.ox.d("TMe", "load m interstitial full 广告位 = " + dqVar.s() + ",ritId:" + dqVar3.mn());
                com.bytedance.msdk.ox.mn.d.d(this.f2365d, dqVar3, iaVar);
                return;
            }
            com.bytedance.msdk.dq.s.ox.d("TMe", "load m full 广告位 = " + dqVar.s() + ",ritId:" + dqVar3.mn());
            com.bytedance.msdk.ox.mn.d.dq(this.f2365d, dqVar3, iaVar);
            return;
        }
        if (i != 9) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "CSJM_loadAD load default mCSJLoader = " + this.dq);
            Loader loader = this.dq;
            if (loader != null) {
                loader.load(i, dq(valueSet), eventListener);
                return;
            }
            return;
        }
        if (!com.bytedance.msdk.core.mp.dq.dq().dq(dqVar3.mn(), 9)) {
            if (this.dq != null) {
                com.bytedance.msdk.dq.s.ox.d("TMe", "load csj draw 代码位 = " + dqVar.s());
                this.dq.load(i, dq(valueSet), eventListener);
                return;
            }
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TMe", "load m draw 广告位 = " + dqVar.s() + ",ritId:" + dqVar3.mn());
        com.bytedance.sdk.gromore.dq.dq.d.iw iwVar = new com.bytedance.sdk.gromore.dq.dq.d.iw(bridge);
        Context context3 = this.f2365d;
        if (context3 != null) {
            com.bytedance.msdk.ox.mn.d.dq(context3, dqVar3, iwVar);
        } else {
            iwVar.dq(81005, "context is null");
        }
    }
}
