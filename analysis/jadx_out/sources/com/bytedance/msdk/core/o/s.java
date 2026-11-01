package com.bytedance.msdk.core.o;

import android.text.TextUtils;
import com.bytedance.msdk.core.s.d.ig;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.ir;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s extends dq {
    private static volatile s s;
    protected final Map<String, String> ox;
    private final Map<String, double[]> p;

    private s() {
        super("label_v_v_s");
        this.ox = new ConcurrentHashMap();
        this.p = new ConcurrentHashMap();
        d();
    }

    private Map<String, double[]> d(Map<String, String> map) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        if (map != null && map.size() != 0) {
            Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                try {
                    String value = it.next().getValue();
                    if (!TextUtils.isEmpty(value)) {
                        String[] split = value.split("_");
                        String str = split[0];
                        String str2 = split[1];
                        String str3 = split[2];
                        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                            if (com.bytedance.msdk.core.dq.d().dq(System.currentTimeMillis() - Long.parseLong(split[2]))) {
                                double[] dArr = (double[]) concurrentHashMap.get(str);
                                if (dArr == null) {
                                    dArr = new double[2];
                                }
                                dArr[0] = dArr[0] + 1.0d;
                                dArr[1] = dArr[1] + Double.parseDouble(str2);
                                concurrentHashMap.put(str, dArr);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        return concurrentHashMap;
    }

    private void d(JSONObject jSONObject) {
        Map<String, com.bytedance.msdk.core.no.p> l = com.bytedance.msdk.core.dq.d().l();
        if (l.size() > 0 && jSONObject == null) {
            jSONObject = new JSONObject();
        }
        for (Map.Entry<String, com.bytedance.msdk.core.no.p> entry : l.entrySet()) {
            String key = entry.getKey();
            com.bytedance.msdk.core.no.p value = entry.getValue();
            if (value != null) {
                try {
                    JSONObject optJSONObject = jSONObject.optJSONObject(String.valueOf(key));
                    if (optJSONObject == null) {
                        optJSONObject = new JSONObject();
                        jSONObject.put(String.valueOf(key), optJSONObject);
                        optJSONObject.put("ecpm_info", new JSONObject());
                    }
                    optJSONObject.putOpt("label_info", dq(value));
                    optJSONObject.putOpt("ecpm_ttl", Integer.valueOf(com.bytedance.msdk.core.dq.d().uh()));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    private Map<String, JSONObject> dq(String str, double[] dArr) {
        JSONObject jSONObject;
        JSONException e2;
        HashMap hashMap = new HashMap();
        String dq = dq(dArr);
        JSONObject jSONObject2 = null;
        try {
        } catch (JSONException e3) {
            jSONObject = null;
            e2 = e3;
        }
        if (!dq.equals("-1")) {
            jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("input", d(dq));
                jSONObject.putOpt("timestamp", String.valueOf(System.currentTimeMillis()));
            } catch (JSONException e4) {
                e2 = e4;
                e2.printStackTrace();
                jSONObject2 = jSONObject;
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.putOpt(MediationConstant.KEY_ECPM, dq);
                jSONObject4.putOpt("timestamp", String.valueOf(System.currentTimeMillis()));
                jSONObject3.putOpt("ecpm_info", jSONObject4);
                hashMap.put("config_req_label_value", jSONObject2);
                hashMap.put("event_label_value", jSONObject3);
                return hashMap;
            }
            jSONObject2 = jSONObject;
        }
        JSONObject jSONObject32 = new JSONObject();
        JSONObject jSONObject42 = new JSONObject();
        try {
            jSONObject42.putOpt(MediationConstant.KEY_ECPM, dq);
            jSONObject42.putOpt("timestamp", String.valueOf(System.currentTimeMillis()));
            jSONObject32.putOpt("ecpm_info", jSONObject42);
        } catch (JSONException e5) {
            e5.printStackTrace();
        }
        hashMap.put("config_req_label_value", jSONObject2);
        hashMap.put("event_label_value", jSONObject32);
        return hashMap;
    }

    public static String ox(int i) {
        com.bytedance.msdk.core.no.p pVar;
        if (com.bytedance.msdk.core.dq.d().by() && (pVar = com.bytedance.msdk.core.dq.d().l().get(String.valueOf(i))) != null) {
            return pVar.dq();
        }
        return null;
    }

    public static s p() {
        if (s == null) {
            synchronized (s.class) {
                try {
                    if (s == null) {
                        s = new s();
                    }
                } finally {
                }
            }
        }
        return s;
    }

    private void p(int i) {
        if (i == 2) {
            this.p.clear();
            return;
        }
        this.ox.clear();
        bl blVar = this.f1000d;
        if (blVar != null) {
            blVar.ox();
        }
    }

    public static String s() {
        if (!com.bytedance.msdk.core.dq.d().by()) {
            return null;
        }
        Set<Map.Entry<String, com.bytedance.msdk.core.no.p>> entrySet = com.bytedance.msdk.core.dq.d().l().entrySet();
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, com.bytedance.msdk.core.no.p> entry : entrySet) {
            String key = entry.getKey();
            com.bytedance.msdk.core.no.p value = entry.getValue();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.putOpt("label_name", value.dq());
                jSONObject2.putOpt("timestamp", value.d());
                jSONObject2.putOpt("lower_bound", Double.valueOf(value.iw()));
                jSONObject2.putOpt("upper_bound", Double.valueOf(value.s()));
                jSONObject.putOpt(dq.dq(Integer.parseInt(key)), jSONObject2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return jSONObject.toString();
    }

    public Map<String, JSONObject> d(int i) {
        if (!com.bytedance.msdk.core.dq.d().by()) {
            return new HashMap();
        }
        HashMap hashMap = new HashMap();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = null;
        for (Map.Entry<String, double[]> entry : (i == 2 ? this.p : d(this.ox)).entrySet()) {
            String key = entry.getKey();
            double[] value = entry.getValue();
            try {
                if (!TextUtils.isEmpty(key)) {
                    Map<String, JSONObject> dq = dq(key, value);
                    JSONObject jSONObject3 = dq.get("config_req_label_value");
                    JSONObject jSONObject4 = dq.get("event_label_value");
                    if (jSONObject4 != null) {
                        jSONObject.putOpt(key, jSONObject4);
                    }
                    if (jSONObject3 != null) {
                        if (jSONObject2 == null) {
                            jSONObject2 = new JSONObject();
                        }
                        jSONObject2.putOpt(key, jSONObject3);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        hashMap.put("event_label_value_root", jSONObject);
        if (jSONObject2 != null) {
            hashMap.put("config_req_label_value_root", jSONObject2);
        }
        p(i);
        return hashMap;
    }

    public void d(int i, double d2) {
        if (com.bytedance.msdk.core.dq.d().by()) {
            String valueOf = String.valueOf(i);
            double[] dArr = this.p.get(valueOf);
            if (dArr == null) {
                dArr = new double[2];
            }
            dArr[0] = dArr[0] + 1.0d;
            dArr[1] = dArr[1] + d2;
            this.p.put(valueOf, dArr);
        }
    }

    @Override // com.bytedance.msdk.core.o.dq
    public boolean d(String str, JSONObject jSONObject, Map<String, Object> map) {
        com.bytedance.msdk.core.no.p pVar = com.bytedance.msdk.core.dq.d().l().get(str);
        if (pVar == null) {
            return false;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(str, jSONObject2);
            jSONObject2.putOpt("label_info", dq(pVar));
            jSONObject2.putOpt("ecpm_ttl", Integer.valueOf(com.bytedance.msdk.core.dq.d().uh()));
            return true;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.bytedance.msdk.core.o.dq
    public Map<String, String> dq() {
        return this.ox;
    }

    @Override // com.bytedance.msdk.core.o.dq
    public JSONObject dq(com.bytedance.msdk.core.no.p pVar) {
        if (pVar == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("label_name", pVar.dq());
            jSONObject.putOpt("label_id", Integer.valueOf(pVar.ox()));
            jSONObject.putOpt("label_version", pVar.p());
            jSONObject.putOpt("upper_bound", Double.valueOf(pVar.s()));
            jSONObject.putOpt("lower_bound", Double.valueOf(pVar.iw()));
            jSONObject.putOpt("timestamp", pVar.d());
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void dq(int i, double d2) {
        if (com.bytedance.msdk.core.dq.d().by()) {
            dq(2, String.valueOf(i), 1, d2);
        }
    }

    @Override // com.bytedance.msdk.core.o.dq
    public void dq(String str, int i, String str2) {
        if (i == 2) {
            this.ox.put(str, str2);
        }
    }

    @Override // com.bytedance.msdk.core.o.dq
    public void dq(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !str.startsWith("cpm_key_")) {
            return;
        }
        this.ox.put(str, str2);
    }

    public void dq(Map<String, ConcurrentHashMap<String, List<ig>>> map) {
        int i;
        ConcurrentHashMap<String, List<ig>> value;
        if (com.bytedance.msdk.core.dq.d().by() && map != null && map.size() > 0) {
            for (Map.Entry<String, ConcurrentHashMap<String, List<ig>>> entry : map.entrySet()) {
                String key = entry.getKey();
                ConcurrentHashMap<String, List<ig>> value2 = entry.getValue();
                if (value2 != null) {
                    Iterator<Map.Entry<String, List<ig>>> it = value2.entrySet().iterator();
                    while (it.hasNext()) {
                        List<ig> value3 = it.next().getValue();
                        if (value3 != null && value3.size() > 0 && value3.get(0) != null && value3.get(0).dq != null) {
                            i = value3.get(0).dq.qz();
                            break;
                        }
                    }
                }
                i = 0;
                com.bytedance.msdk.core.no.d dq = com.bytedance.msdk.mn.dq.dq.jy().dq(key, i, 101);
                if (dq != null && dq.iw() == 1 && (value = entry.getValue()) != null) {
                    Iterator<Map.Entry<String, List<ig>>> it2 = value.entrySet().iterator();
                    while (it2.hasNext()) {
                        List<ig> value4 = it2.next().getValue();
                        if (value4 != null && value4.size() > 0 && value4.get(0) != null && value4.get(0).dq != null) {
                            ir.dq(value4);
                            ig igVar = value4.get(0);
                            d(igVar.dq.qz(), igVar.dq.dk());
                        }
                    }
                }
            }
            com.bytedance.msdk.core.f.d.dq(com.bytedance.msdk.core.dq.d()).dq(2);
        }
    }

    public void dq(JSONObject jSONObject) {
        if (com.bytedance.msdk.core.dq.d().by()) {
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<String, com.bytedance.msdk.core.no.p> entry : com.bytedance.msdk.core.dq.d().l().entrySet()) {
                String key = entry.getKey();
                com.bytedance.msdk.core.no.p value = entry.getValue();
                if (value != null) {
                    try {
                        jSONObject2.putOpt(key, dq(value));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
            if (jSONObject != null) {
                jSONObject2.length();
            }
            try {
                jSONObject.putOpt("last_label_outputs", jSONObject2);
            } catch (JSONException e3) {
                e3.printStackTrace();
            }
        }
    }

    public void dq(JSONObject jSONObject, JSONObject jSONObject2) {
        if (com.bytedance.msdk.core.dq.d().by() && jSONObject2 != null) {
            try {
                jSONObject.putOpt("label_inputs", jSONObject2);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void dq(boolean z, com.bytedance.msdk.s.p pVar, JSONObject jSONObject, Map<String, Object> map) {
        pVar.dq(MediationConstant.KEY_REASON, Integer.valueOf(!z ? 1 : 0));
        if (map != null) {
            d(jSONObject);
            if (jSONObject != null) {
                map.put(TTDownloadField.TT_LABEL, jSONObject);
            }
        }
    }
}
