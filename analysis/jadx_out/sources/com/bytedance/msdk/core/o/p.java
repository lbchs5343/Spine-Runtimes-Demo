package com.bytedance.msdk.core.o;

import android.text.TextUtils;
import com.bytedance.msdk.core.no.no;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p {
    public static final Map<String, com.bytedance.msdk.core.no.d> dq = new ConcurrentHashMap();

    public static int dq(String str, int i, Map<String, Object> map) {
        com.bytedance.msdk.core.no.s s;
        int i2;
        if (!TextUtils.isEmpty(str) && i == 1 && (s = com.bytedance.msdk.core.dq.d().s(str)) != null) {
            int ox = s.ox();
            String p = s.p();
            if (ox > 0 && !TextUtils.isEmpty(p)) {
                double dq2 = d.p().dq(3, str, ox);
                List<com.bytedance.msdk.core.no.p> iw = com.bytedance.msdk.core.dq.d().iw(String.valueOf(i));
                if (iw != null && iw.size() > 0) {
                    for (com.bytedance.msdk.core.no.p pVar : iw) {
                        if (dq2 > pVar.iw() && dq2 <= pVar.s()) {
                            i2 = s.dq(String.valueOf(pVar.ox()));
                            map.put("refresh_time", Integer.valueOf(i2));
                            break;
                        }
                    }
                }
                i2 = 0;
                if (i2 >= 10000 && i2 <= 180000) {
                    return i2;
                }
            }
        }
        return 0;
    }

    public static com.bytedance.msdk.core.no.d dq(com.bytedance.msdk.core.no.d dVar, int i) {
        long currentTimeMillis = System.currentTimeMillis();
        if (dVar != null && com.bytedance.msdk.core.dq.d().by()) {
            if (i == 101) {
                return dq.get(dVar.c());
            }
            if (i == 100 && (dVar.iw() == 2 || dVar.iw() == 3 || dVar.iw() == 4)) {
                List<no> dq2 = ox.dq(dVar, dVar.c());
                Object obj = dVar.s().get("rule_in_use");
                int intValue = obj != null ? ((Integer) obj).intValue() : -1;
                dVar.s().put("cost_time", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                if (dq2 == null || intValue == 0) {
                    return dVar;
                }
                com.bytedance.msdk.core.no.d clone = dVar.clone();
                if (clone.no()) {
                    clone.d(dq2);
                } else {
                    clone.dq(dq2);
                }
                Object obj2 = clone.s().get("max_ecpm");
                Object obj3 = clone.s().get("min_ecpm");
                if (obj2 != null) {
                    clone.p(((Double) obj2).doubleValue());
                }
                if (obj3 != null) {
                    clone.s(((Double) obj3).doubleValue());
                }
                dq.put(dVar.c(), clone);
                clone.s().put("cost_time", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                return clone;
            }
        }
        return null;
    }

    public static void dq(int i, String str, int i2, double d2) {
        com.bytedance.msdk.core.no.d dq2;
        com.bytedance.msdk.core.no.s s;
        if (com.bytedance.msdk.core.dq.d().by() && (dq2 = com.bytedance.msdk.core.dq.d().dq(str, i2, 101)) != null) {
            if (dq2.iw() == 1 && i == 1) {
                s.p().dq(i2, d2);
                return;
            }
            if (dq2.iw() != 2 || (s = com.bytedance.msdk.core.dq.d().s(str)) == null) {
                return;
            }
            if (i == 2 && s.ox() == 2) {
                d.p().dq(str, 2, d2);
            } else {
                if (i != 1 || s.ox() == 2) {
                    return;
                }
                d.p().dq(str, s.ox(), d2);
            }
        }
    }

    public static void dq(int i, String str, JSONObject jSONObject) {
        com.bytedance.msdk.core.no.s s;
        if (com.bytedance.msdk.core.dq.d().by() && i == 2 && (s = com.bytedance.msdk.core.dq.d().s(str)) != null) {
            try {
                jSONObject.putOpt("dynamic_rule_id", s.p());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void dq(int i, List<no> list, Map<String, Object> map) {
        if (list == null || list.size() == 0) {
            return;
        }
        JSONArray jSONArray = new JSONArray();
        for (no noVar : list) {
            if (noVar != null && noVar.gh() == 0) {
                jSONArray.put(noVar.cd());
            }
        }
        if (map != null) {
            map.put("rit_ids", jSONArray);
        }
    }

    public static void dq(com.bytedance.msdk.core.no.d dVar, double d2, String str, int i) {
        if (!com.bytedance.msdk.core.dq.d().by() || dVar == null) {
            return;
        }
        if (dVar.iw() == 2) {
            dq(2, str, i, d2);
        } else if (dVar.iw() == 3 || dVar.iw() == 4) {
            d.p().dq(dVar.c(), "_last_load_cpm_", dVar.ir(), d2);
        }
    }

    public static void dq(String str, String str2, int i, JSONObject jSONObject) {
        com.bytedance.msdk.core.no.d dq2;
        if (com.bytedance.msdk.core.dq.d().by() && (dq2 = com.bytedance.msdk.mn.dq.dq.jy().dq(str, i, 101)) != null) {
            if ("mediation_request".equals(str2)) {
                if (dq2.iw() == 1) {
                    s.p().dq(String.valueOf(i), jSONObject, dq2.s());
                    return;
                } else {
                    if (dq2.iw() == 2) {
                        d.p().dq(String.valueOf(i), jSONObject, dq2.s());
                        return;
                    }
                    return;
                }
            }
            if (dq2.iw() != 2 || "sdk_init".equals(str2) || "sdk_init_end".equals(str2) || "get_config_start".equals(str2) || "get_config_final".equals(str2)) {
                return;
            }
            d.p().ox(String.valueOf(i), jSONObject, dq2.s());
        }
    }

    public static void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.core.no.d dVar) {
        Object obj;
        if (!com.bytedance.msdk.core.dq.d().by() || list == null || dVar == null) {
            return;
        }
        for (com.bytedance.msdk.d.s sVar : list) {
            if (sVar != null) {
                if (dVar.iw() == 1) {
                    sVar.dq().put(MediationConstant.KEY_GM_USB, s.ox(dVar.ce()));
                } else if (dVar.iw() == 2 && (obj = dVar.s().get("user_label_value")) != null) {
                    sVar.dq().put(MediationConstant.KEY_GM_USB, ((com.bytedance.msdk.core.no.p) obj).dq());
                }
            }
        }
    }

    public static void dq(boolean z, com.bytedance.msdk.s.p pVar, JSONObject jSONObject, Map<String, Object> map) {
        if (pVar == null || !com.bytedance.msdk.core.dq.d().by()) {
            return;
        }
        s.p().dq(z, pVar, jSONObject, map);
    }
}
