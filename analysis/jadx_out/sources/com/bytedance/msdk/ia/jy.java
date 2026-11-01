package com.bytedance.msdk.ia;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class jy {
    private static String d(com.bytedance.msdk.d.s sVar) {
        if (sVar == null) {
            return null;
        }
        switch (sVar.cv()) {
            case 1:
                break;
            case 2:
            case 7:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            default:
                int qz = sVar.qz();
                if (qz != 1) {
                    if (qz != 5) {
                        if (qz != 7) {
                        }
                    }
                }
                break;
        }
        return null;
    }

    private static boolean d() {
        return com.bytedance.msdk.core.dq.d().e();
    }

    public static com.bytedance.msdk.api.dq dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.dq dqVar, List<com.bytedance.msdk.api.d> list) {
        if (dqVar != null && dVar != null && list != null && list.size() != 0 && dq(dVar.wn())) {
            JSONArray jSONArray = new JSONArray();
            for (com.bytedance.msdk.api.d dVar2 : list) {
                if (dVar2 != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put(MediationConstant.EXTRA_ADN_NAME, TextUtils.isEmpty(dVar2.ox()) ? dVar2.p() : dVar2.ox());
                        jSONObject.put("mediation_rit", dVar2.d());
                        jSONObject.put("ad_type", dVar2.dq());
                        jSONObject.put("error_code", dVar2.s());
                        jSONObject.put("error_msg", dVar2.iw());
                        jSONArray.put(jSONObject);
                    } catch (JSONException e2) {
                        throw new RuntimeException(e2);
                    }
                }
            }
            dqVar.f756d = jSONArray.toString();
        }
        return dqVar;
    }

    public static com.bytedance.msdk.api.ox dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.d.s sVar, boolean z) {
        if (sVar == null) {
            return null;
        }
        com.bytedance.msdk.api.ox oxVar = new com.bytedance.msdk.api.ox();
        oxVar.dq(sVar.hf());
        oxVar.ia(sVar.m());
        oxVar.kk(sVar.xv());
        oxVar.o(sVar.b());
        oxVar.ig(sVar.ij());
        if (z) {
            if (dq() || !(sVar.ip() || sVar.xx() || sVar.jv())) {
                oxVar.no(sVar.sc());
            } else {
                oxVar.no("-3");
            }
        } else if (d() || !sVar.ip()) {
            oxVar.no(sVar.hy());
        } else {
            oxVar.no("-3");
        }
        oxVar.q(sVar.iw());
        oxVar.d(sVar.y());
        oxVar.mp(sVar.ws());
        oxVar.dq(dq(dVar));
        oxVar.d(d(sVar));
        oxVar.mn(dVar != null ? dVar.wp() : null);
        oxVar.iw(dq(dVar != null ? dVar.uh() : null));
        StringBuilder sb = new StringBuilder();
        sb.append(dVar.xz());
        oxVar.ox(sb.toString());
        com.bytedance.msdk.api.p.iw ji = com.bytedance.msdk.core.d.no().ji();
        oxVar.p(ji != null ? ji.ox() : null);
        oxVar.s(ji != null ? ji.p() : null);
        Map<String, Object> wn = dVar.wn();
        if (wn != null && !wn.isEmpty()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, Object> entry : wn.entrySet()) {
                Object value = entry.getValue();
                hashMap.put(entry.getKey(), value == null ? null : value.toString());
            }
            oxVar.dq(hashMap);
        }
        return oxVar;
    }

    private static String dq(com.bytedance.msdk.api.dq.d dVar) {
        if (dVar == null) {
            return null;
        }
        switch (dVar.le()) {
        }
        return null;
    }

    public static String dq(com.bytedance.msdk.d.s sVar) {
        Map<String, Object> pa;
        if (sVar == null || (pa = sVar.pa()) == null) {
            return null;
        }
        Object obj = pa.get("waterfall_abtest");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    private static String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new JSONObject(str).optString("experiment_detail_id");
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static boolean dq() {
        return com.bytedance.msdk.core.dq.d().k();
    }

    public static boolean dq(List<com.bytedance.msdk.d.s> list, List<com.bytedance.msdk.d.s> list2, List<com.bytedance.msdk.d.s> list3, com.bytedance.msdk.api.dq.d dVar, boolean z, AtomicBoolean atomicBoolean, String str, int i, List<com.bytedance.msdk.core.no.no> list4, String str2) {
        int d2 = com.bytedance.msdk.core.admanager.p.d(str);
        com.bytedance.msdk.s.iw.dq(list, list2, list3, dVar, str2, d2);
        if (z || d2 != 0) {
            return false;
        }
        if (list.size() > 0) {
            for (com.bytedance.msdk.d.s sVar : list) {
                if (sVar != null) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(str, sVar.b()) + "isReady-》广告类型：" + com.bytedance.msdk.d.dq.dq(sVar.hf()) + ",是否已准备好？isReady()：" + sVar.u(str));
                    if (sVar.u(str) && !sVar.xi()) {
                        return true;
                    }
                }
            }
        }
        if (list3 != null && list3.size() > 0) {
            for (com.bytedance.msdk.d.s sVar2 : list3) {
                if (sVar2 != null) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(str, sVar2.b()) + "isReady-》广告类型：" + com.bytedance.msdk.d.dq.dq(sVar2.hf()) + ",是否已准备好？isReady()：" + sVar2.u(str));
                    if (sVar2.u(str) && !sVar2.xi()) {
                        return true;
                    }
                }
            }
        }
        if (list2 != null && list2.size() > 0) {
            for (com.bytedance.msdk.d.s sVar3 : list2) {
                if (sVar3 != null) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(str, sVar3.b()) + "isReady--->biding-->广告类型：" + com.bytedance.msdk.d.dq.dq(sVar3.hf()) + ",是否已准备好？isReady()：" + sVar3.u(str));
                    if (sVar3.u(str) && !sVar3.xi()) {
                        return true;
                    }
                }
            }
        }
        if (list4 != null && list4.size() > 0) {
            for (com.bytedance.msdk.core.no.no noVar : list4) {
                String cd = noVar.cd();
                if (noVar.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(str, cd, i) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, dVar, false) == 3) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean dq(Map<String, Object> map) {
        if (map == null) {
            return false;
        }
        Object obj = map.get("show_adn_load_error_detail");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }
}
