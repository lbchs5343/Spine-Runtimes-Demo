package com.bytedance.msdk.ox.mn;

import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.core.no.iw;
import com.bytedance.msdk.ia.ir;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {
    public static Map<String, List<iw>> dq = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONArray d(List<iw> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (iw iwVar : list) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("csj_rit_id", iwVar.dq());
                jSONObject.put(MediationConstant.KEY_ECPM, iwVar.d());
                jSONObject.put("load_sort", iwVar.ox());
                jSONObject.put("show_sort", iwVar.p());
                jSONArray.put(jSONObject);
            } catch (JSONException e2) {
                throw new RuntimeException(e2);
            }
        }
        return jSONArray;
    }

    public static ValueSet dq(String str, d.dq dqVar) {
        if (!TextUtils.isEmpty(str) && !com.bytedance.msdk.core.mp.dq.dq().dq(str)) {
            String dq2 = dq(str);
            if (TextUtils.isEmpty(dq2)) {
                return com.bytedance.sdk.openadsdk.mediation.dq.d.dq.dq(dqVar.dq());
            }
            dqVar.p(dq2);
            return com.bytedance.sdk.openadsdk.mediation.dq.d.dq.dq(dqVar.dq(), str);
        }
        return com.bytedance.sdk.openadsdk.mediation.dq.d.dq.dq(dqVar.dq());
    }

    private static String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (dq.size() == 0) {
            dq();
        }
        for (String str2 : dq.keySet()) {
            List<iw> list = dq.get(str2);
            if (list != null) {
                Iterator<iw> it = list.iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().dq())) {
                        return str2;
                    }
                }
            }
        }
        return null;
    }

    private static void dq() {
        String d2 = com.bytedance.msdk.mn.s.ox().d("mediation_csj_map");
        if (TextUtils.isEmpty(d2)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(d2);
            Iterator<String> keys = jSONObject.keys();
            if (keys != null) {
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray jSONArray = jSONObject.getJSONArray(next);
                    if (jSONArray.length() > 0) {
                        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject optJSONObject = jSONArray.optJSONObject(i);
                            copyOnWriteArrayList.add(new iw(optJSONObject.optString("csj_rit_id"), optJSONObject.optDouble(MediationConstant.KEY_ECPM), optJSONObject.optInt("load_sort"), optJSONObject.optInt("show_sort")));
                        }
                        dq.put(next, copyOnWriteArrayList);
                    }
                }
            }
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void dq(final Map<String, List<iw>> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        dq.clear();
        dq.putAll(map);
        com.bytedance.msdk.dq.s.iw.p(new Runnable() { // from class: com.bytedance.msdk.ox.mn.ox.1
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                for (String str : map.keySet()) {
                    JSONArray d2 = ox.d((List) map.get(str));
                    if (d2 != null) {
                        try {
                            jSONObject.put(str, d2);
                        } catch (JSONException e2) {
                            throw new RuntimeException(e2);
                        }
                    }
                }
                com.bytedance.msdk.mn.s.ox().dq("mediation_csj_map", jSONObject.toString());
            }
        });
    }

    public static boolean dq(String str, String str2) {
        List<iw> list;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (list = dq.get(str)) == null || list.size() == 0) {
            return true;
        }
        ir.dq(list);
        return str2.equals(list.get(0).dq());
    }
}
