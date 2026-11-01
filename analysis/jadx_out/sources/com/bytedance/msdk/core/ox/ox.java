package com.bytedance.msdk.core.ox;

import android.text.TextUtils;
import com.bytedance.msdk.core.no.no;
import g.awf;
import g.ekq;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {
    public static void d(String str, String str2, String str3) {
        if (com.bytedance.msdk.core.dq.d().nh() != null) {
            com.bytedance.msdk.ia.dq.ox.dq().insert(str, str2, str3, "send");
        }
    }

    private static boolean d(int i) {
        return i == 3 || i == 4 || i == 5 || i == 6 || i == 7 || i == 8 || i == 9;
    }

    private static int dq(com.bytedance.msdk.core.no.d dVar, d dVar2, int i) {
        if (!com.bytedance.msdk.core.dq.d().wn()) {
            return 0;
        }
        if (dVar2 == null || dVar2.s() == null) {
            return 1;
        }
        if (!dVar2.dq(i)) {
            return 2;
        }
        if (dVar2.d() == 0) {
            return 3;
        }
        if (dVar2.dq() == 0) {
            return 4;
        }
        if (!dVar2.mn()) {
            return 5;
        }
        if (dVar == null || !dVar2.dq(dVar.c())) {
            return 6;
        }
        if (dVar.xz() == 0) {
            return 7;
        }
        if (dq(dVar, dVar2)) {
            return dq(dVar) ? 9 : 200;
        }
        return 8;
    }

    public static com.bytedance.msdk.core.no.d dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.no.d dVar2) {
        d dVar3;
        com.bytedance.msdk.core.no.d dVar4;
        com.bytedance.msdk.core.no.d dVar5;
        List<no> list;
        d dVar6;
        com.bytedance.msdk.core.no.d dVar7 = dVar2;
        d nh = com.bytedance.msdk.core.dq.d().nh();
        com.bytedance.msdk.dq.s.ox.d("TMe", "----预缓存优化判断是否可以发起预缓存开始");
        HashMap hashMap = null;
        if (dVar == null) {
            return null;
        }
        com.bytedance.msdk.dq.s.ox.d("TMe", "待检测的 behaviorState = " + dVar.o());
        int dq = dq(dVar7, nh, dVar.o());
        HashSet hashSet = new HashSet();
        if (dq == 200) {
            List<no> t = dVar7.t();
            HashSet hashSet2 = new HashSet();
            for (no noVar : t) {
                com.bytedance.msdk.dq.s.ox.d("TMe", "adnName = " + noVar.fw() + " adnrit = " + noVar.cd());
                hashSet2.add(noVar.fw());
            }
            LinkedList<no> linkedList = new LinkedList();
            HashMap hashMap2 = new HashMap();
            for (no noVar2 : t) {
                if (noVar2 != null) {
                    dq dqVar = (dq) hashMap2.get(noVar2.fw());
                    if (dqVar == null) {
                        String fw = noVar2.fw();
                        String c2 = dVar7.c();
                        int xz = dVar7.xz();
                        double dq2 = nh.dq(fw, c2);
                        double d2 = nh.d(fw, c2);
                        list = t;
                        if (dq2 == 0.0d && d2 == 0.0d) {
                            com.bytedance.msdk.dq.s.ox.d("TMe", "没有配置规则，直接添加到adn list中 adnName = " + noVar2.fw() + " adnRit " + noVar2.cd());
                            linkedList.add(noVar2);
                            t = list;
                        } else {
                            long currentTimeMillis = System.currentTimeMillis();
                            dVar6 = nh;
                            List<com.bytedance.msdk.ia.dq.d> query = com.bytedance.msdk.ia.dq.ox.dq().query(fw, c2, currentTimeMillis - (xz * 3600000), currentTimeMillis);
                            if (query == null || query.size() == 0) {
                                com.bytedance.msdk.dq.s.ox.d("TMe", "数据库里没有查询到数据，直接添加到adn list中 adnName = " + noVar2.fw() + " adnRit " + noVar2.cd());
                                linkedList.add(noVar2);
                            } else {
                                int i = 0;
                                int i2 = 0;
                                int i3 = 0;
                                for (com.bytedance.msdk.ia.dq.d dVar8 : query) {
                                    if (TextUtils.equals(dVar8.dq(), "send")) {
                                        i3++;
                                    } else if (TextUtils.equals(dVar8.dq(), "fill")) {
                                        i++;
                                    } else if (TextUtils.equals(dVar8.dq(), "show")) {
                                        i2++;
                                    }
                                }
                                dq dqVar2 = new dq(i != 0 ? i2 / i : 0.0d, i3 != 0 ? i / i3 : 0.0d, dq2, d2, dVar6.dq(), dVar6.iw());
                                dqVar2.d(i);
                                dqVar2.dq(i3);
                                dqVar2.ox(i2);
                                hashMap2.put(noVar2.fw(), dqVar2);
                                dqVar = dqVar2;
                            }
                        }
                    } else {
                        list = t;
                        dVar6 = nh;
                    }
                    if (dqVar != null) {
                        dqVar.dq(noVar2.fw());
                        dqVar.d(noVar2.cd());
                        com.bytedance.msdk.dq.s.ox.d("TMe", "compareData ".concat(String.valueOf(dqVar)));
                    }
                    if (dqVar != null && dqVar.dq()) {
                        linkedList.add(noVar2);
                    }
                } else {
                    list = t;
                    dVar6 = nh;
                }
                dVar7 = dVar2;
                t = list;
                nh = dVar6;
            }
            List<no> list2 = t;
            dVar3 = nh;
            com.bytedance.msdk.dq.s.ox.d("TMe", "筛选掉代码位 后留下的代码位 ------- ");
            HashSet hashSet3 = new HashSet();
            for (no noVar3 : linkedList) {
                com.bytedance.msdk.dq.s.ox.d("TMe", "adnName = " + noVar3.fw() + " adnrit = " + noVar3.cd());
                hashSet3.add(noVar3.fw());
            }
            Iterator it = hashSet2.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (!hashSet3.contains(str)) {
                    hashSet.add(str);
                }
            }
            dq = list2.size() == linkedList.size() ? 11 : 10;
            com.bytedance.msdk.core.no.d clone = dVar2.clone();
            clone.dq(linkedList);
            if (clone.no()) {
                clone.d(linkedList);
            } else {
                clone.dq(linkedList);
            }
            dVar4 = clone;
            hashMap = hashMap2;
        } else {
            dVar3 = nh;
            dVar4 = null;
        }
        int i4 = dq;
        if (dVar4 == null) {
            dq(dVar, dVar2, dVar3, i4, hashSet, hashMap);
            dVar5 = dVar4;
        } else {
            dVar5 = dVar4;
            dq(dVar, dVar5, dVar3, i4, hashSet, hashMap);
        }
        if (dVar2 != null) {
            dq(dVar.k(), dVar2.xz());
        }
        return dVar5;
    }

    private static JSONArray dq(d dVar) {
        List<Integer> list;
        JSONArray jSONArray = new JSONArray();
        if (dVar != null && (list = dVar.dq) != null) {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
        }
        return jSONArray;
    }

    private static JSONObject dq(int i, d dVar, Map<String, dq> map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("rule_id", dVar.ox());
        jSONObject.put("rule_timestamp", dVar.p());
        if (!d(i)) {
            jSONObject.put("condition", dVar.dq());
            jSONObject.put("rule_inuse", (i == 10 || i == 11) ? 1 : 0);
            if (map != null) {
                try {
                    DecimalFormat decimalFormat = new DecimalFormat("#0.000");
                    JSONObject jSONObject2 = new JSONObject();
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    for (Map.Entry<String, dq> entry : map.entrySet()) {
                        dq value = entry.getValue();
                        if (value != null) {
                            jSONObject3.put(entry.getKey(), decimalFormat.format(value.d()));
                            jSONObject4.put(entry.getKey(), decimalFormat.format(value.ox()));
                        }
                    }
                    jSONObject2.put("ssr", jSONObject3);
                    jSONObject2.put("srr", jSONObject4);
                    jSONObject.put("res", jSONObject2);
                } catch (JSONException unused) {
                }
            }
        }
        return jSONObject;
    }

    private static void dq(com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.no.d dVar2, d dVar3, int i, Set<String> set, Map<String, dq> map) {
        if (dVar.no() != null) {
            com.bytedance.msdk.dq.s.ox.d("TMe", "预缓存优化存在埋点数据 无需重新存储");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ekq.EXTRA_PERMISSION_RESULT, i);
            if (dq(i)) {
                dVar.dq(jSONObject);
                return;
            }
            jSONObject.put("perform", dq(i, dVar3, map));
            if (d(i)) {
                dVar.dq(jSONObject);
                return;
            }
            jSONObject.put("behavior_state", dq(dVar3));
            jSONObject.put("condition", dVar3.d());
            if (dVar2 != null) {
                try {
                    jSONObject.put("behavior_ttl", dVar2.xz());
                } catch (JSONException unused) {
                }
            }
            if (set != null && set.size() != 0) {
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = set.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next());
                }
                jSONObject.put("filtered_adn", jSONArray);
            }
            dVar.dq(jSONObject);
        } catch (JSONException unused2) {
        }
    }

    public static void dq(String str, int i) {
        if (com.bytedance.msdk.core.dq.d().nh() == null || TextUtils.isEmpty(str)) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - (i * 3600000);
        StringBuilder p = awf.p("---预缓存优化删除存储的过期数据 primeRit = ", str, " startTime = ");
        p.append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(currentTimeMillis)));
        com.bytedance.msdk.dq.s.ox.d("TMe", p.toString());
        com.bytedance.msdk.ia.dq.ox.dq().dq(str, currentTimeMillis);
    }

    public static void dq(String str, String str2, String str3) {
        if (com.bytedance.msdk.core.dq.d().nh() != null) {
            com.bytedance.msdk.ia.dq.ox.dq().insert(str, str2, str3, "show");
        }
    }

    private static boolean dq(int i) {
        return i == 0 || i == 1 || i == 2;
    }

    private static boolean dq(com.bytedance.msdk.core.no.d dVar) {
        if (dVar == null) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        List<com.bytedance.msdk.ia.dq.d> query = com.bytedance.msdk.ia.dq.ox.dq().query("", dVar.c(), currentTimeMillis - (dVar.xz() * 3600000), currentTimeMillis);
        return query == null || query.isEmpty();
    }

    private static boolean dq(com.bytedance.msdk.core.no.d dVar, d dVar2) {
        if (dVar == null || dVar.t() == null || dVar2 == null) {
            return false;
        }
        for (no noVar : dVar.t()) {
            double dq = dVar2.dq(noVar.fw(), dVar.c());
            double d2 = dVar2.d(noVar.fw(), dVar.c());
            if (dq != 0.0d || d2 != 0.0d) {
                return true;
            }
        }
        return false;
    }

    public static void ox(String str, String str2, String str3) {
        if (com.bytedance.msdk.core.dq.d().nh() != null) {
            com.bytedance.msdk.ia.dq.ox.dq().insert(str, str2, str3, "fill");
        }
    }
}
