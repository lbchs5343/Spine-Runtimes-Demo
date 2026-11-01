package com.bytedance.sdk.openadsdk.core.r;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.bytedance.sdk.component.d.dq.kk;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import g.abn;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class n {
    public static final Set<String> dq;
    private static final Set<String> ia;
    private static volatile boolean ig;
    private static final Set<String> iw;
    private static final Set<String> kk;
    private static final Set<String> mn;
    private static final Map<String, String> no;
    private static boolean o;
    private static final Set<String> ox;
    private static final Set<String> p;
    private static final Set<String> s;

    /* renamed from: d, reason: collision with root package name */
    private int f3489d;

    static {
        HashSet hashSet = new HashSet();
        ox = hashSet;
        p = new CopyOnWriteArraySet();
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        s = copyOnWriteArraySet;
        iw = new CopyOnWriteArraySet();
        mn = new CopyOnWriteArraySet();
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        ia = copyOnWriteArraySet2;
        kk = new CopyOnWriteArraySet();
        o = false;
        no = new HashMap();
        dq = new CopyOnWriteArraySet();
        ig = false;
        hashSet.addAll(Arrays.asList("dragon1967", "snssdk1128", "snssdk2329", "snssdk141", "snssdk35", "snssdk32", "snssdk1112"));
        copyOnWriteArraySet2.addAll(Arrays.asList(".*thefatherofsalmon\\.com.*@3", ".*qallzmx\\.quicklyopen\\.com.*@3", ".*fastappjump-drcn\\.hispace\\.hicloud\\.com.*@3", ".*fastappjump-drcn\\.hispace\\.dbankcloud\\.cn.*@3"));
        copyOnWriteArraySet.addAll(Arrays.asList("^hap://app", "^hwfastapp://", ".*thefatherofsalmon\\.com.*", ".*qallzmx\\.quicklyopen\\.com.*", ".*fastappjump-drcn\\.hispace\\.hicloud\\.com.*", ".*fastappjump-drcn\\.hispace\\.dbankcloud\\.cn.*"));
    }

    public n(JSONObject jSONObject) {
        this.f3489d = jSONObject.optInt("block_auto_open");
    }

    public static com.bytedance.sdk.component.d.dq.kk d() {
        return new com.bytedance.sdk.component.d.dq.kk() { // from class: com.bytedance.sdk.openadsdk.core.r.n.5
            @Override // com.bytedance.sdk.component.d.dq.kk
            public com.bytedance.sdk.component.d.dq.f dq(kk.dq dqVar) throws IOException {
                String str;
                com.bytedance.sdk.component.d.dq.f dq2 = dqVar.dq(dqVar.dq());
                String str2 = "";
                final String dq3 = dq2.dq("csj-location-record", "");
                final String dq4 = dq2.dq("csj-source-from", "");
                final String dq5 = dq2.dq("csj-extra-info", "");
                if (dq2.ox() == 8848) {
                    final String s2 = dq2.s();
                    com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.r.n.5.1
                        @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                        public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.putOpt(abn.EXTRA_URL, s2);
                            jSONObject.putOpt("sourceFrom", dq4);
                            jSONObject.putOpt(MediationConstant.KEY_EXTRA_INFO, dq5);
                            return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("stats_net_block_url").d(jSONObject.toString());
                        }
                    }, "stats_net_block_url");
                }
                int i = 0;
                try {
                    String[] dq6 = n.dq(dq3);
                    if (dq6 == null || dq6.length <= 1) {
                        str = "";
                    } else {
                        String str3 = dq6[0];
                        try {
                            str = dq6[dq6.length - 1];
                            str2 = str3;
                        } catch (Exception unused) {
                            str = "";
                            str2 = str3;
                        }
                    }
                    try {
                        i = Integer.parseInt(dq4);
                    } catch (Exception unused2) {
                    }
                } catch (Exception unused3) {
                    str = "";
                }
                final String str4 = str2;
                final String str5 = str;
                if (!TextUtils.isEmpty(dq3) && i != 0 && TextUtils.isEmpty(n.d(str4, n.p))) {
                    com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.r.n.5.2
                        @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                        public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.putOpt(abn.EXTRA_URL, dq3);
                            jSONObject.putOpt("sourceFrom", dq4);
                            jSONObject.putOpt("sourceUrl", str4);
                            jSONObject.putOpt("destUrl", str5);
                            jSONObject.putOpt(MediationConstant.KEY_EXTRA_INFO, dq5);
                            return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("stats_net_locations_url").d(jSONObject.toString());
                        }
                    }, "stats_net_locations_url");
                }
                return dq2;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str, Set<String> set) {
        if (str == null) {
            return null;
        }
        try {
            for (String str2 : set) {
                if (!TextUtils.isEmpty(str2) && Pattern.compile(str2).matcher(str).find()) {
                    return str2;
                }
            }
            return null;
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.p("JumpModel", e2.getMessage());
            return null;
        }
    }

    public static void d(com.bytedance.sdk.component.mn.dq dqVar) {
        Set<String> set = p;
        set.addAll(dqVar.d("turn_up_white_list", set));
        Set<String> set2 = s;
        set2.addAll(dqVar.d("turn_up_black_list_1", set2));
        Set<String> set3 = iw;
        set3.addAll(dqVar.d("turn_up_black_list_2", set3));
        Set<String> set4 = mn;
        set4.addAll(dqVar.d("url_report_rule_list", set4));
        Set<String> set5 = ia;
        set5.addAll(dqVar.d("net_url_block_list", set5));
        o = dqVar.d("_turn_up_is_get_list", false);
        Set<String> set6 = kk;
        set6.addAll(dqVar.d("dialog_black_list", set6));
    }

    public static void d(final j jVar, final String str, final String str2) {
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.r.n.4
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt(abn.EXTRA_URL, str);
                jSONObject.putOpt("pattern", str2);
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("stats_url_report_rule").ia(jVar.dn()).d(jSONObject.toString());
            }
        }, "stats_url_report_rule");
    }

    public static void d(JSONObject jSONObject) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("turn_up_white_list");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                p.clear();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    String optString = optJSONArray.optString(i);
                    if (!TextUtils.isEmpty(optString)) {
                        p.add(optString);
                    }
                }
            }
        } catch (Exception unused) {
        }
        try {
            JSONArray optJSONArray2 = jSONObject.optJSONArray("turn_up_black_list_1");
            if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                s.clear();
                for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                    String optString2 = optJSONArray2.optString(i2);
                    if (!TextUtils.isEmpty(optString2)) {
                        s.add(optString2);
                    }
                }
            }
        } catch (Exception unused2) {
        }
        try {
            JSONArray optJSONArray3 = jSONObject.optJSONArray("turn_up_black_list_2");
            if (optJSONArray3 != null && optJSONArray3.length() > 0) {
                iw.clear();
                for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                    String optString3 = optJSONArray3.optString(i3);
                    if (!TextUtils.isEmpty(optString3)) {
                        iw.add(optString3);
                    }
                }
            }
        } catch (Exception unused3) {
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("app_common_config");
        if (optJSONObject != null) {
            try {
                JSONArray optJSONArray4 = optJSONObject.optJSONArray("url_report_rule_list");
                if (optJSONArray4 != null && optJSONArray4.length() > 0) {
                    mn.clear();
                    for (int i4 = 0; i4 < optJSONArray4.length(); i4++) {
                        String optString4 = optJSONArray4.optString(i4);
                        if (!TextUtils.isEmpty(optString4)) {
                            mn.add(optString4);
                        }
                    }
                }
                JSONArray optJSONArray5 = optJSONObject.optJSONArray("net_url_block_list");
                if (optJSONArray5 != null && optJSONArray5.length() > 0) {
                    ia.clear();
                    for (int i5 = 0; i5 < optJSONArray5.length(); i5++) {
                        String optString5 = optJSONArray5.optString(i5);
                        if (!TextUtils.isEmpty(optString5)) {
                            ia.add(optString5);
                        }
                    }
                }
                JSONArray optJSONArray6 = optJSONObject.optJSONArray("dialog_black_list");
                if (optJSONArray6 != null && optJSONArray6.length() > 0) {
                    kk.clear();
                    for (int i6 = 0; i6 < optJSONArray6.length(); i6++) {
                        String optString6 = optJSONArray6.optString(i6);
                        if (!TextUtils.isEmpty(optString6)) {
                            kk.add(optString6);
                        }
                    }
                }
            } catch (Exception unused4) {
            }
        }
        o = true;
    }

    public static int dq(j jVar) {
        n qo;
        if (jVar == null || (qo = jVar.qo()) == null) {
            return 0;
        }
        return qo.f3489d;
    }

    private static String dq(String str, int i, boolean z, boolean z2) {
        boolean z3 = (!z2 || str.startsWith("http://") || str.startsWith("https://")) ? false : true;
        if (i == 1) {
            if (o) {
                return d(str, iw);
            }
            return null;
        }
        if (i == 2) {
            if (!o) {
                if (z) {
                    return "local://no-setting";
                }
                return null;
            }
            if (z3) {
                return "local://short-internal";
            }
            String d2 = d(str, s);
            if (!TextUtils.isEmpty(d2)) {
                return d2;
            }
            String d3 = d(str, iw);
            if (TextUtils.isEmpty(d3)) {
                return null;
            }
            return d3;
        }
        if (i != 3) {
            return null;
        }
        if (z || !o) {
            return "local://preload-setting:" + o;
        }
        if (z3) {
            return "local://short-internal";
        }
        String d4 = d(str, s);
        if (!TextUtils.isEmpty(d4)) {
            return d4;
        }
        String d5 = d(str, iw);
        if (TextUtils.isEmpty(d5)) {
            return null;
        }
        return d5;
    }

    public static Set<String> dq() {
        return ia;
    }

    public static void dq(com.bytedance.sdk.component.mn.dq dqVar) {
        dqVar.dq("turn_up_white_list", p);
        dqVar.dq("turn_up_black_list_1", s);
        dqVar.dq("turn_up_black_list_2", iw);
        dqVar.dq("url_report_rule_list", mn);
        dqVar.dq("net_url_block_list", ia);
        dqVar.dq("_turn_up_is_get_list", o);
        dqVar.dq("dialog_black_list", kk);
    }

    public static void dq(final j jVar, final String str, final String str2) {
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.r.n.3
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt(abn.EXTRA_URL, str);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("aid", jVar.fa());
                jSONObject2.put("cid", jVar.fx());
                jSONObject2.put("req_id", jVar.el());
                jSONObject2.put("customer_id", com.bytedance.sdk.openadsdk.core.ir.c.no(jVar));
                jSONObject.putOpt("pattern", str2);
                jSONObject.putOpt(MediationConstant.KEY_EXTRA_INFO, jSONObject2.toString());
                return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("stats_block_report").ia(jVar.dn()).d(jSONObject.toString());
            }
        }, "stats_block_report");
    }

    public static boolean dq(WebView webView, AtomicInteger atomicInteger, com.bytedance.sdk.openadsdk.core.c cVar, WebResourceRequest webResourceRequest, boolean z, boolean z2) {
        Uri url;
        if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) {
            return false;
        }
        return dq(webView, atomicInteger, cVar, url.toString(), z, z2);
    }

    public static boolean dq(WebView webView, AtomicInteger atomicInteger, com.bytedance.sdk.openadsdk.core.c cVar, String str, boolean z, boolean z2) {
        if (!str.startsWith("bytedance") && !str.startsWith("nativeapp") && !str.startsWith("bds")) {
            if (!com.bytedance.sdk.openadsdk.core.ir.c.dq(str, atomicInteger) && dq(webView, atomicInteger, str, true)) {
                return true;
            }
            if (cVar == null || !TextUtils.isEmpty(d(str, ox)) || !TextUtils.isEmpty(d(str, p))) {
                return false;
            }
            String d2 = d(str, mn);
            if (!TextUtils.isEmpty(d2)) {
                d(cVar.kk(), str, d2);
            }
            String dq2 = dq(str, cVar.s(z2), z, z2);
            if (!TextUtils.isEmpty(dq2) && o) {
                dq(cVar.kk(), str, dq2);
            }
            if (!TextUtils.isEmpty(dq2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean dq(WebView webView, AtomicInteger atomicInteger, String str, boolean z) {
        if (TextUtils.isEmpty(str) || webView == null) {
            return false;
        }
        final String[] strArr = {""};
        try {
            final String path = Uri.parse(str).getPath();
            Map<String, String> map = no;
            if (map.containsKey(path)) {
                return dq(atomicInteger, map.get(path), str, webView, z);
            }
            if (!ig) {
                for (String str2 : com.bytedance.sdk.openadsdk.core.ir.n.dq("cloud_path_check_res").d("cloud_path_check_res", new HashSet())) {
                    if (!TextUtils.isEmpty(str2)) {
                        String[] split = str2.split(",");
                        no.put(split[0], split[1]);
                    }
                }
                Map<String, String> map2 = no;
                if (map2.containsKey(path)) {
                    return dq(atomicInteger, map2.get(path), str, webView, z);
                }
            }
            com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().d();
            d2.dq(Uri.parse("https://scc.bytedance.com/scc_sdk/url_scan_v4").buildUpon().appendQueryParameter("aid", "1181").appendQueryParameter("device_platform", "android").appendQueryParameter("device_id", com.bytedance.sdk.openadsdk.core.i.ox()).appendQueryParameter("scc_mode", "raw").appendQueryParameter("scc_from", "App").toString());
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put("scene", "common");
            jSONObject.put(abn.EXTRA_URL, str);
            jSONObject.put("extra", "");
            d2.dq(jSONObject);
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            d2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.r.n.1
                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                    try {
                        strArr[0] = new JSONObject(dVar.p()).optJSONObject("data").optString(TTDownloadField.TT_LABEL);
                    } catch (Throwable unused) {
                    }
                    if (TextUtils.isEmpty(strArr[0])) {
                        return;
                    }
                    if (n.no.size() > 1000) {
                        Iterator it = n.no.entrySet().iterator();
                        for (int i = 0; i < 200; i++) {
                            it.next();
                            it.remove();
                        }
                    }
                    n.no.put(path, strArr[0]);
                    if (!n.ig) {
                        boolean unused2 = n.ig = true;
                        com.bytedance.sdk.component.utils.ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.r.n.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.openadsdk.core.ir.n.dq("cloud_path_check_res");
                                dq2.d();
                                HashSet hashSet = new HashSet();
                                for (Map.Entry entry : n.no.entrySet()) {
                                    hashSet.add(((String) entry.getKey()) + "," + ((String) entry.getValue()));
                                }
                                dq2.dq("cloud_path_check_res", hashSet);
                                boolean unused3 = n.ig = false;
                            }
                        }, 1800000L);
                    }
                    countDownLatch.countDown();
                }

                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                    countDownLatch.countDown();
                }
            });
            countDownLatch.await();
            return dq(atomicInteger, strArr[0], str, webView, z);
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean dq(final com.bytedance.sdk.openadsdk.core.c cVar, final int i, final String str) {
        final String d2 = d(str, kk);
        final boolean z = (o && TextUtils.isEmpty(d2)) ? false : true;
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.r.n.2
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.putOpt(abn.EXTRA_URL, str);
                    jSONObject.putOpt("type", Integer.valueOf(i));
                    jSONObject.putOpt("is_block", Boolean.valueOf(z));
                    jSONObject.putOpt("is_get_setting", Boolean.valueOf(n.o));
                    jSONObject.putOpt("pattern", d2);
                    jSONObject.putOpt("customer_id", com.bytedance.sdk.openadsdk.core.ir.c.no(cVar.kk()));
                    return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("stats_dialog_report_rule").ia(cVar.kk().dn()).d(jSONObject.toString());
                } catch (Throwable unused) {
                    return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d();
                }
            }
        }, "stats_dialog_report_rule");
        return z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static boolean dq(AtomicInteger atomicInteger, String str, String str2, WebView webView, boolean z) {
        String str3;
        if (webView == null || TextUtils.isEmpty(str) || atomicInteger == null) {
            return false;
        }
        if (atomicInteger.get() == 1) {
            return true;
        }
        switch (str.hashCode()) {
            case -284840886:
                str3 = MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
                str.equals(str3);
                break;
            case 3181155:
                str3 = "gray";
                str.equals(str3);
                break;
            case 93818879:
                if (str.equals("black")) {
                    atomicInteger.set(1);
                    com.bytedance.sdk.openadsdk.core.ir.iw.dq(webView.getContext(), (String) null, true, (iw.dq) null);
                    break;
                }
                break;
            case 113101865:
                str3 = "white";
                str.equals(str3);
                break;
        }
        return false;
    }

    public static String[] dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.substring(1, str.length() - 1).split(",");
    }

    public void dq(JSONObject jSONObject) {
        try {
            jSONObject.put("block_auto_open", this.f3489d);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }
}
