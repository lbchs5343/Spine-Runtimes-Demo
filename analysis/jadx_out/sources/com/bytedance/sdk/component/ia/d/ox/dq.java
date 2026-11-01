package com.bytedance.sdk.component.ia.d.ox;

import android.text.TextUtils;
import com.bytedance.sdk.component.ia.dq.p;
import com.bytedance.sdk.component.ia.dq.s;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import g.awf;
import g.tn;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    private static final LinkedList<String> dq = new LinkedList<>();

    /* renamed from: d, reason: collision with root package name */
    private static final LinkedList<String> f1921d = new LinkedList<>();
    private static final LinkedList<String> ox = new LinkedList<>();
    private static final LinkedList<String> p = new LinkedList<>();
    private static final Map<String, Integer> s = new HashMap();
    private static String iw = "upload_init";
    private static int mn = 0;
    private static int ia = 0;
    private static AtomicLong kk = new AtomicLong();

    private static synchronized String d() {
        String sb;
        synchronized (dq.class) {
            try {
                StringBuilder sb2 = new StringBuilder();
                Iterator<String> it = p.iterator();
                while (it.hasNext()) {
                    sb2.append(it.next());
                    sb2.append(",");
                }
                sb = sb2.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
        return sb;
    }

    public static String d(int i) {
        switch (i) {
            case 1:
                return "flush once";
            case 2:
                return "flush memory db";
            case 3:
                return "flush memory";
            case 4:
                return "new event";
            case 5:
                return "server busy";
            case 6:
                return "empty message";
            case 7:
                return "net error";
            default:
                return "default";
        }
    }

    public static String d(com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        if (dVar == null || dVar.mn() == null || d(sVar) || p(sVar)) {
            return null;
        }
        return dVar.mn().optString("type");
    }

    public static synchronized String d(String str) {
        String sb;
        synchronized (dq.class) {
            try {
                LinkedList<String> linkedList = dq;
                if (linkedList.size() >= 10) {
                    linkedList.removeFirst();
                    linkedList.add(str);
                } else {
                    linkedList.add(str);
                }
                StringBuilder sb2 = new StringBuilder();
                Iterator<String> it = linkedList.iterator();
                while (it.hasNext()) {
                    sb2.append(it.next());
                    sb2.append(",");
                }
                sb = sb2.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
        return sb;
    }

    public static boolean d(com.bytedance.sdk.component.ia.dq.d dVar) {
        return dVar != null && dVar.p() == 3 && dVar.s() == 2;
    }

    public static boolean d(s sVar) {
        return sVar != null && TextUtils.equals(sVar.s(), "csj_mediation");
    }

    public static synchronized int dq(String str) {
        synchronized (dq.class) {
            if (TextUtils.isEmpty(str)) {
                return 0;
            }
            Map<String, Integer> map = s;
            Integer num = map.get(str);
            if (num == null) {
                map.put(str, 1);
                return 1;
            }
            int intValue = num.intValue() + 1;
            map.put(str, Integer.valueOf(intValue));
            return intValue;
        }
    }

    public static int dq(List<com.bytedance.sdk.component.ia.dq.d> list, s sVar) {
        JSONObject mn2;
        if (list != null && list.size() == 1) {
            try {
                com.bytedance.sdk.component.ia.dq.d dVar = list.get(0);
                if (dVar != null && dVar.s() == 1 && (mn2 = dVar.mn()) != null && dVar.p() == 0) {
                    JSONObject optJSONObject = mn2.optJSONObject("params");
                    JSONObject jSONObject = new JSONObject(optJSONObject == null ? mn2.optString("ad_extra_data") : optJSONObject.optString("ad_extra_data"));
                    int optInt = jSONObject.optInt("inner_appid", 0);
                    if (optInt != 0) {
                        jSONObject.remove("inner_appid");
                        if (optJSONObject == null) {
                            mn2.put("ad_extra_data", jSONObject.toString());
                            return optInt;
                        }
                        optJSONObject.put("ad_extra_data", jSONObject.toString());
                        mn2.put("params", optJSONObject);
                        return optInt;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return 0;
    }

    public static long dq(s sVar, com.bytedance.sdk.component.ia.dq.d dVar) {
        if (dVar != null && dVar.mn() != null) {
            try {
                return new JSONObject(dVar.mn().optString("ad_extra_data")).optLong("sdk_event_index");
            } catch (Exception e2) {
                ox.ox(e2.getMessage(), sVar);
            }
        }
        return 0L;
    }

    public static String dq() {
        return iw;
    }

    public static String dq(com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        if (dVar == null || dVar.mn() == null || d(sVar) || p(sVar)) {
            return null;
        }
        return dVar.d() == 3 ? dVar.mn().optString("event") : dVar.mn().optString(TTDownloadField.TT_LABEL);
    }

    public static String dq(List<com.bytedance.sdk.component.ia.dq.d> list) {
        com.bytedance.sdk.component.ia.dq.d dVar;
        if (list == null || list.size() == 0 || (dVar = list.get(0)) == null) {
            return null;
        }
        byte p2 = dVar.p();
        byte s2 = dVar.s();
        if (p2 == 0 && s2 == 1) {
            return "loghighpriority";
        }
        if (p2 == 0 && s2 == 2) {
            return "adevent";
        }
        if (p2 == 1 && s2 == 2) {
            return "logstats";
        }
        if (p2 == 1 && s2 == 3) {
            return "logstatsbatch";
        }
        return null;
    }

    public static String dq(JSONObject jSONObject, s sVar) {
        if (jSONObject != null && !d(sVar) && !p(sVar)) {
            String optString = jSONObject.optString("log_extra");
            if (!TextUtils.isEmpty(optString)) {
                try {
                    return new JSONObject(optString).optString("rit");
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return "";
    }

    public static void dq(int i, com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        p mn2;
        if (d(sVar) || sVar == null || p(sVar) || (mn2 = com.bytedance.sdk.component.ia.d.dq.ox(sVar.s()).mn()) == null || !mn2.dq()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        String d2 = d(dVar, sVar);
        if (!TextUtils.isEmpty(d2)) {
            awf.a("type:", d2, "_", sb);
            sb.append(p(dVar, sVar));
        }
        String dq2 = dq(dVar, sVar);
        if (!TextUtils.isEmpty(dq2)) {
            awf.a("label:", dq2, "_", sb);
            sb.append(dq(sVar, dVar));
        }
        sb.append(", message:");
        sb.append(d(i));
        ox.d("_save", sb.toString(), sVar);
    }

    public static void dq(int i, List<com.bytedance.sdk.component.ia.dq.d> list, long j, s sVar) {
        if (sVar == null || !sVar.p().ox()) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - j;
        if (i == 200) {
            com.bytedance.sdk.component.ia.d.d.dq.dq dqVar = com.bytedance.sdk.component.ia.d.d.d.dq;
            dqVar.h().getAndAdd(currentTimeMillis);
            dqVar.e().incrementAndGet();
            dqVar.le().getAndAdd(list.size());
            dqVar.mn().getAndAdd(list.size());
            return;
        }
        ox.ox("-------AdThread code is " + i + " error  ------------", sVar);
        if (i == -1) {
            com.bytedance.sdk.component.ia.d.d.d.dq.k().getAndAdd(list.size());
        } else {
            com.bytedance.sdk.component.ia.d.d.d.dq.no().getAndAdd(list.size());
        }
        com.bytedance.sdk.component.ia.d.d.dq.dq dqVar2 = com.bytedance.sdk.component.ia.d.d.d.dq;
        dqVar2.ji().getAndAdd(currentTimeMillis);
        dqVar2.kx().incrementAndGet();
    }

    private static void dq(com.bytedance.sdk.component.ia.dq.d dVar, String str, p pVar, s sVar) {
        String dq2 = dq(dVar, sVar);
        if (ox(dq2)) {
            return;
        }
        String iw2 = iw(dVar, sVar);
        if (dVar.p() == 0 && pVar.q()) {
            iw(dq2 + "_" + iw2 + "_" + str);
        }
    }

    public static void dq(List<com.bytedance.sdk.component.ia.dq.d> list, int i, s sVar) {
        try {
            if (sVar.p().ox()) {
                for (com.bytedance.sdk.component.ia.dq.d dVar : list) {
                    if (dVar != null && dVar.kk() != 0) {
                        long currentTimeMillis = System.currentTimeMillis() - dVar.kk();
                        com.bytedance.sdk.component.ia.d.d.dq.dq dqVar = com.bytedance.sdk.component.ia.d.d.d.dq;
                        dqVar.ig().incrementAndGet();
                        dqVar.fw().getAndAdd(currentTimeMillis);
                        dVar.ox(System.currentTimeMillis());
                    }
                    if (dVar != null) {
                        mn(dVar, sVar);
                    }
                }
                com.bytedance.sdk.component.ia.d.d.d.dq.q().getAndAdd(list.size());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void dq(List<com.bytedance.sdk.component.ia.dq.d> list, int i, String str, s sVar) {
        p p2;
        if (sVar == null || (p2 = sVar.p()) == null || !p2.dq() || list == null || d(sVar) || p(sVar)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        for (com.bytedance.sdk.component.ia.dq.d dVar : list) {
            if (dVar.p() == 0) {
                JSONObject mn2 = dVar.mn();
                String dq2 = dq(dVar, sVar);
                if (dVar.d() == 3) {
                    if (mn2 != null) {
                        dq2 = mn2.optString("event");
                    }
                    awf.a(" [v3:", dq2, "] ", sb);
                } else {
                    long dq3 = dq(sVar, dVar);
                    int s2 = s(dVar, sVar);
                    sb.append(" [");
                    sb.append(dq3);
                    sb.append("_");
                    sb.append(dq2);
                    if (s2 == 0) {
                        sb.append("] ");
                    } else {
                        sb.append("_");
                        sb.append(s2);
                        sb.append("] ");
                    }
                }
                z = true;
            } else if (dVar.p() == 1) {
                String d2 = d(dVar, sVar);
                int p3 = p(dVar, sVar);
                sb.append(" [");
                sb.append(p3);
                sb.append("_");
                sb.append(d2);
                sb.append("] ");
            }
        }
        if (z) {
            ox.d("_upload", "ads:" + ((Object) sb) + d(i) + "," + str + ",total:" + list.size(), sVar);
            return;
        }
        ox.d("_upload", "stats:" + ((Object) sb) + d(i) + "," + str + ",total:" + list.size(), sVar);
    }

    public static void dq(List<com.bytedance.sdk.component.ia.dq.d> list, String str, com.bytedance.sdk.component.ia.d.dq.d dVar) {
        JSONObject mn2;
        if (list != null) {
            try {
                if (list.size() != 0) {
                    com.bytedance.sdk.component.ia.dq.d dVar2 = list.get(0);
                    if (dVar2 == null || dVar2.p() == 0) {
                        long incrementAndGet = kk.incrementAndGet();
                        for (com.bytedance.sdk.component.ia.dq.d dVar3 : list) {
                            if (dVar3 != null && (mn2 = dVar3.mn()) != null) {
                                String optString = mn2.optString("ad_extra_data");
                                if (!TextUtils.isEmpty(optString)) {
                                    JSONObject jSONObject = new JSONObject(optString);
                                    jSONObject.put("upload_count", incrementAndGet);
                                    jSONObject.put("upload_ts", System.currentTimeMillis());
                                    if (dVar != null) {
                                        String d2 = dVar.d();
                                        boolean dq2 = dVar.dq();
                                        if (!TextUtils.isEmpty(d2)) {
                                            jSONObject.put("delete_msg", d2 + " success:" + dq2);
                                        }
                                    }
                                    mn2.put("ad_extra_data", jSONObject.toString());
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void dq(List<com.bytedance.sdk.component.ia.dq.d> list, String str, s sVar) {
        try {
            p p2 = sVar.p();
            if (p2 != null && p2.ox() && list != null && p2.q()) {
                for (com.bytedance.sdk.component.ia.dq.d dVar : list) {
                    if (dVar != null) {
                        dq(dVar, str, p2, sVar);
                    }
                }
            }
        } catch (Exception e2) {
            ox.ox(e2.getMessage(), sVar);
        }
    }

    public static void dq(JSONObject jSONObject, com.bytedance.sdk.component.ia.d.p.dq.dq dqVar, s sVar, int i) {
        p p2;
        if (sVar != null && (p2 = sVar.p()) != null && p2.dq() && s(sVar)) {
            jSONObject.optString(TTDownloadField.TT_LABEL);
        }
    }

    public static void dq(boolean z, int i, String str, String str2, int i2, String str3) {
        mn++;
        if (z) {
            ia++;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("suc", z);
            jSONObject.put("scnt", ia);
            jSONObject.put("acnt", mn);
            jSONObject.put(PluginConstants.KEY_ERROR_CODE, i);
            jSONObject.put("reqid", str2);
            jSONObject.put("len:", i2);
            jSONObject.put("rit", str3);
            jSONObject.put("msg", str);
            p mn2 = com.bytedance.sdk.component.ia.d.dq.ox("csj").mn();
            if (mn2 != null) {
                jSONObject.put(abn.EXTRA_URL, mn2.ig().iw());
            } else {
                jSONObject.put(abn.EXTRA_URL, "emptyurl");
            }
            iw = jSONObject.toString();
        } catch (Exception unused) {
            iw = "unknown_json";
        }
    }

    public static boolean dq(int i) {
        return i == 2 || i == 1;
    }

    public static boolean dq(com.bytedance.sdk.component.ia.dq.d dVar) {
        return dVar != null && dVar.p() == 0 && dVar.s() == 1;
    }

    private static boolean dq(com.bytedance.sdk.component.ia.dq.d dVar, com.bytedance.sdk.component.ia.dq.d dVar2) {
        if (dVar == null || dVar2 == null || dVar.s() != dVar2.s() || dVar.p() != dVar2.p()) {
            return false;
        }
        String ox2 = dVar.ox();
        String ox3 = dVar2.ox();
        if (!TextUtils.isEmpty(ox2) && !TextUtils.isEmpty(ox3)) {
            return TextUtils.equals(ox2, ox3);
        }
        return false;
    }

    public static boolean dq(s sVar) {
        return sVar != null && TextUtils.equals(sVar.s(), "csj");
    }

    private static boolean dq(List<com.bytedance.sdk.component.ia.dq.d> list, com.bytedance.sdk.component.ia.dq.d dVar) {
        Iterator<com.bytedance.sdk.component.ia.dq.d> it = list.iterator();
        while (it.hasNext()) {
            if (dq(it.next(), dVar)) {
                return true;
            }
        }
        return false;
    }

    public static boolean dq(List<com.bytedance.sdk.component.ia.dq.d> list, List<com.bytedance.sdk.component.ia.dq.d> list2, s sVar) {
        if (list != null && list2 != null) {
            try {
                int size = list.size();
                int size2 = list2.size();
                if (size != 0 && size2 != 0 && size == size2) {
                    Iterator<com.bytedance.sdk.component.ia.dq.d> it = list.iterator();
                    while (it.hasNext()) {
                        if (!dq(list2, it.next())) {
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            } catch (Exception e2) {
                ox.ox(e2.getMessage(), sVar);
            }
        }
        return false;
    }

    public static void ia(com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        if (sVar == null || sVar.p() == null || !sVar.p().ox()) {
            return;
        }
        try {
            com.bytedance.sdk.component.ia.d.d.d.dq.dq(System.currentTimeMillis() - dVar.ia());
            dVar.d(System.currentTimeMillis());
            if (dVar.p() == 0 && sVar.p() != null && sVar.p().q()) {
                String dq2 = dq(dVar, sVar);
                if (ox(dq2)) {
                    return;
                }
                JSONObject mn2 = dVar.mn();
                String optString = dVar.mn().optString("ad_extra_data");
                if (TextUtils.isEmpty(optString)) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("save_success_labels", p(dq2));
                    mn2.put("ad_extra_data", jSONObject.toString());
                } else {
                    JSONObject jSONObject2 = new JSONObject(optString);
                    if (TextUtils.isEmpty(jSONObject2.optString("save_success_labels"))) {
                        jSONObject2.put("save_success_labels", p(dq2));
                    }
                    mn2.put("ad_extra_data", jSONObject2.toString());
                }
            }
        } catch (Exception unused) {
        }
    }

    public static String iw(com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        if (dVar != null && dVar.mn() != null && !d(sVar) && !p(sVar)) {
            String optString = dVar.mn().optString("log_extra");
            if (!TextUtils.isEmpty(optString)) {
                try {
                    return new JSONObject(optString).optString("req_id");
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return null;
    }

    private static synchronized void iw(String str) {
        synchronized (dq.class) {
            LinkedList<String> linkedList = p;
            if (linkedList.size() < 10) {
                linkedList.add(str);
            } else {
                linkedList.removeFirst();
                linkedList.add(str);
            }
        }
    }

    public static boolean iw(com.bytedance.sdk.component.ia.dq.d dVar) {
        return dVar != null && dVar.p() == 2 && dVar.s() == 3;
    }

    public static void kk(com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        if (sVar == null) {
            return;
        }
        try {
            p p2 = sVar.p();
            if (p2 == null || !p2.dq()) {
                return;
            }
            if (!TextUtils.isEmpty(dVar.ox())) {
                d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.gh(), 1, sVar);
            }
            if (dVar.p() == 1) {
                ox.d("_delete", "stats,[type:" + d(dVar, sVar) + ",index:" + p(dVar, sVar) + ",localId:" + dVar.ox() + ",sessionId:" + o(dVar, sVar) + "]", sVar);
                return;
            }
            if (dVar.p() == 0) {
                if (dVar.d() != 3) {
                    StringBuilder sb = new StringBuilder("ad [label:");
                    sb.append(dq(dVar, sVar));
                    long dq2 = dq(sVar, dVar);
                    if (dq2 != 0) {
                        sb.append(", index:");
                        sb.append(dq2);
                    }
                    sb.append(", localId:");
                    sb.append(dVar.ox());
                    sb.append(", sessionId:");
                    sb.append(o(dVar, sVar));
                    sb.append("]");
                    ox.d("_delete", sb.toString(), sVar);
                    return;
                }
                if (dVar.mn() == null) {
                    ox.d("_delete", "v3_error", sVar);
                    return;
                }
                String optString = dVar.mn().optString("event");
                StringBuilder sb2 = new StringBuilder("v3,[label:");
                sb2.append(optString);
                long dq3 = dq(sVar, dVar);
                if (dq3 != 0) {
                    sb2.append(", index:");
                    sb2.append(dq3);
                }
                sb2.append(", localId:");
                sb2.append(dVar.ox());
                sb2.append(", sessionId:");
                sb2.append(o(dVar, sVar));
                sb2.append("]");
                ox.d("_delete", sb2.toString(), sVar);
            }
        } catch (Exception e2) {
            ox.ox("_delete error", e2.getMessage(), sVar);
        }
    }

    public static void mn(com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        try {
            if (dVar.p() == 0 && sVar.p() != null && sVar.p().q()) {
                JSONObject mn2 = dVar.mn();
                String dq2 = dq(dVar, sVar);
                if (ox(dq2)) {
                    return;
                }
                String optString = mn2.optString("ad_extra_data");
                if (TextUtils.isEmpty(optString)) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("will_send_labels", s(dq2));
                    jSONObject.put("send_success_valid_labels", d());
                    mn2.put("ad_extra_data", jSONObject.toString());
                    return;
                }
                JSONObject jSONObject2 = new JSONObject(optString);
                if (TextUtils.isEmpty(jSONObject2.optString("will_send_labels"))) {
                    jSONObject2.put("will_send_labels", s(dq2));
                    jSONObject2.put("send_success_valid_labels", d());
                }
                mn2.put("ad_extra_data", jSONObject2.toString());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static String o(com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        if (dVar == null || dVar.mn() == null || !dq(sVar)) {
            return null;
        }
        JSONObject mn2 = dVar.mn();
        try {
            return new JSONObject(dVar.p() == 1 ? mn2.optString("event_extra") : mn2.optString("ad_extra_data")).optString("sdk_session_id");
        } catch (JSONException e2) {
            ox.ox(e2.getMessage(), sVar);
            return null;
        }
    }

    public static String ox(com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        String dq2 = dq(dVar, sVar);
        if (!TextUtils.isEmpty(dq2)) {
            return tn.x("label:", dq2);
        }
        if (TextUtils.isEmpty(d(dVar, sVar))) {
            return null;
        }
        return "type:" + d(dVar, sVar);
    }

    public static boolean ox(com.bytedance.sdk.component.ia.dq.d dVar) {
        return dVar != null && dVar.p() == 0 && dVar.s() == 2;
    }

    public static boolean ox(s sVar) {
        return sVar != null && TextUtils.equals(sVar.s(), MediationConstant.ADN_PANGLE);
    }

    public static boolean ox(String str) {
        return false;
    }

    public static int p(com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        if (dVar != null && dVar.mn() != null && dVar.p() == 1) {
            try {
                return new JSONObject(dVar.mn().optString("event_extra")).optInt("stats_index");
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return -1;
    }

    private static synchronized String p(String str) {
        String sb;
        synchronized (dq.class) {
            try {
                LinkedList<String> linkedList = f1921d;
                if (linkedList.size() >= 10) {
                    linkedList.removeFirst();
                    linkedList.add(str);
                } else {
                    linkedList.add(str);
                }
                StringBuilder sb2 = new StringBuilder();
                Iterator<String> it = linkedList.iterator();
                while (it.hasNext()) {
                    sb2.append(it.next());
                    sb2.append(",");
                }
                sb = sb2.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
        return sb;
    }

    public static boolean p(com.bytedance.sdk.component.ia.dq.d dVar) {
        return dVar != null && dVar.p() == 1 && dVar.s() == 2;
    }

    public static boolean p(s sVar) {
        return sVar != null && TextUtils.equals(sVar.s(), "pgl_mediation");
    }

    public static synchronized int s(com.bytedance.sdk.component.ia.dq.d dVar, s sVar) {
        synchronized (dq.class) {
            if (dVar != null) {
                if (dVar.mn() != null) {
                    try {
                        return new JSONObject(dVar.mn().optString("ad_extra_data")).optInt("sdk_event_self_count");
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return 0;
                    }
                }
            }
            return 0;
        }
    }

    private static synchronized String s(String str) {
        String sb;
        synchronized (dq.class) {
            try {
                LinkedList<String> linkedList = ox;
                if (linkedList.size() >= 10) {
                    linkedList.removeFirst();
                    linkedList.add(str);
                } else {
                    linkedList.add(str);
                }
                StringBuilder sb2 = new StringBuilder();
                Iterator<String> it = linkedList.iterator();
                while (it.hasNext()) {
                    sb2.append(it.next());
                    sb2.append(",");
                }
                sb = sb2.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
        return sb;
    }

    public static boolean s(com.bytedance.sdk.component.ia.dq.d dVar) {
        return dVar != null && dVar.p() == 1 && dVar.s() == 3;
    }

    public static boolean s(s sVar) {
        return dq(sVar) || ox(sVar);
    }
}
