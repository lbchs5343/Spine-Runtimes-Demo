package com.bytedance.sdk.openadsdk.core.bl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.e;
import com.bytedance.sdk.openadsdk.core.ir.kx;
import com.bytedance.sdk.openadsdk.core.ir.le;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.ir.wn;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox extends kk {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile ox dq;

    /* renamed from: d, reason: collision with root package name */
    private final Context f2487d;
    private volatile AtomicBoolean iw;
    private Comparator<JSONObject> mn;
    private final dq ox;
    private AtomicBoolean p;
    private boolean s;

    public static class d {
        public static String dq(String str) {
            byte[] bytes = str.getBytes();
            for (int i = 0; i < bytes.length; i++) {
                bytes[i] = (byte) (bytes[i] - 3);
            }
            return new String(bytes);
        }
    }

    public class dq {

        /* renamed from: d, reason: collision with root package name */
        private com.bytedance.sdk.component.mn.dq f2489d;

        public dq(Context context) {
            try {
                this.f2489d = dq(context);
            } catch (Throwable unused) {
            }
        }

        private com.bytedance.sdk.component.mn.dq dq(Context context) {
            try {
                return n.dq("tt_sp_app_list");
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        }

        public String d() {
            com.bytedance.sdk.component.mn.dq dqVar = this.f2489d;
            return dqVar == null ? "" : dqVar.d("old_app_list", "");
        }

        public void dq() {
            com.bytedance.sdk.component.mn.dq dqVar = this.f2489d;
            if (dqVar == null) {
                return;
            }
            dqVar.dq("day_update_time", System.currentTimeMillis());
        }

        public void dq(String str) {
            com.bytedance.sdk.component.mn.dq dqVar;
            if (TextUtils.isEmpty(str) || (dqVar = this.f2489d) == null) {
                return;
            }
            dqVar.dq("old_app_list", str);
        }

        public boolean ox() {
            com.bytedance.sdk.component.mn.dq dqVar = this.f2489d;
            return !c.dq(dqVar != null ? dqVar.d("day_update_time", 0L) : 0L, System.currentTimeMillis());
        }
    }

    private ox() {
        super("ApplistHelper");
        this.p = new AtomicBoolean(false);
        this.s = false;
        this.iw = new AtomicBoolean(true);
        this.mn = new Comparator<JSONObject>() { // from class: com.bytedance.sdk.openadsdk.core.bl.ox.1
            @Override // java.util.Comparator
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public int compare(JSONObject jSONObject, JSONObject jSONObject2) {
                return jSONObject.optString("package_name").compareTo(jSONObject2.optString("package_name"));
            }
        };
        Context context = wp.getContext();
        this.f2487d = context;
        this.ox = new dq(context);
    }

    public static ox d() {
        if (dq == null) {
            synchronized (ox.class) {
                try {
                    if (dq == null) {
                        dq = new ox();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private List<JSONObject> d(Context context) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (context != null && this.s && (!e.i() || Build.VERSION.SDK_INT < 29)) {
            try {
                JSONObject jSONObject = new JSONObject(com.bytedance.sdk.component.utils.dq.ox(d.dq("6;37988e9g6h::3<4f9;g437;iei3:d66i5fd<9dde7;f579fUPZmGK\\lXZ2Szig5dHFs58}Sis:eU4fg3JFRho|eROK9Y8U2tY2yOyLKL7yl7YtV}meo.{v;:Oxm#h|Wyszi:Petp;UwqLh9NQq;XiZe3w9]dTjf|jsp}3X5\\dhKrjlho|4Wh4.\\o;vipTtn5oi[i8<tR#H{T7S.\\u5nNpQJV|7khNsW8iH[iLhey;PfqgLhff")));
                Object invoke = com.bytedance.sdk.component.utils.wp.dq(jSONObject.optString("pn"), jSONObject.optString("m2"), Integer.TYPE).invoke(com.bytedance.sdk.component.utils.wp.dq(jSONObject.optString("cn"), jSONObject.optString("m1"), new Class[0]).invoke(context, null), Integer.valueOf(jSONObject.optInt("f")));
                if ((invoke instanceof List) && (list = (List) invoke) != null && !list.isEmpty()) {
                    for (Object obj : list) {
                        if (obj instanceof PackageInfo) {
                            PackageInfo packageInfo = (PackageInfo) obj;
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("package_name", packageInfo.packageName);
                            jSONObject2.put("first_install_time", packageInfo.firstInstallTime);
                            jSONObject2.put("last_update_time", packageInfo.lastUpdateTime);
                            jSONObject2.put("version_name", packageInfo.versionName);
                            jSONObject2.put("version_code", packageInfo.versionCode);
                            jSONObject2.put("app_name", MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
                            jSONObject2.put("app_type", dq(packageInfo));
                            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                            jSONObject2.put("apk_dir", applicationInfo != null ? applicationInfo.sourceDir : MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
                            arrayList.add(jSONObject2);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return arrayList;
    }

    private void d(final List<JSONObject> list) {
        boolean dq2 = dq(list);
        JSONObject dq3 = dq(dq2 ? list : new ArrayList<>(), wp.d().sy(), wp.d().sc());
        if (list != null) {
            list.size();
        }
        wn wnVar = new wn(com.bytedance.sdk.openadsdk.core.le.s.dq().d().iw());
        wnVar.dq(c.mn("/api/ad/union/sdk/upload/app_info/"));
        wnVar.ox(dq3, "applist");
        wnVar.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.bl.ox.2
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                if (dVar == null || !dVar.ia() || TextUtils.isEmpty(dVar.p())) {
                    ox.this.iw.set(true);
                } else {
                    try {
                        if ("20000".equals(new JSONObject(dVar.p()).optString("status"))) {
                            ox.this.ox.dq();
                            ox.this.ox.dq(com.bytedance.sdk.component.utils.dq.d(new JSONArray((Collection) list).toString()));
                        }
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
                ox.this.p.set(false);
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                ox.this.p.set(false);
                ox.this.iw.set(true);
            }
        });
    }

    private int dq(PackageInfo packageInfo) {
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        if (applicationInfo == null || (applicationInfo.flags & 1) == 1) {
            return 1;
        }
        if (String.valueOf(packageInfo.firstInstallTime).endsWith("000")) {
            return 2;
        }
        return packageInfo.applicationInfo.flags & 1;
    }

    private JSONObject dq(List<JSONObject> list, List<String> list2, List<String> list3) {
        int i;
        Object obj;
        JSONObject jSONObject = new JSONObject();
        try {
            String iw = i.iw();
            Object obj2 = "";
            if (TextUtils.isEmpty(iw)) {
                iw = "";
            }
            if (TextUtils.isEmpty(iw)) {
                i = -1;
                obj = "";
            } else {
                obj = iw;
                i = 1;
            }
            String dq2 = le.dq(false);
            if (TextUtils.isEmpty(dq2)) {
                dq2 = "";
            }
            if (i < 0 && !TextUtils.isEmpty(dq2)) {
                i = 4;
                obj = dq2;
            }
            String s = i.s();
            if (TextUtils.isEmpty(s)) {
                s = "";
            }
            String d2 = com.bytedance.sdk.openadsdk.core.mn.dq().d();
            if (!TextUtils.isEmpty(d2)) {
                obj2 = d2;
            }
            if (i < 0) {
                i = 3;
                obj = s;
            }
            JSONArray jSONArray = new JSONArray();
            Iterator<JSONObject> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().optString("package_name"));
            }
            jSONObject.put("app_list", jSONArray);
            jSONObject.put("app_info", new JSONArray((Collection) list));
            jSONObject.put("timestamp", System.currentTimeMillis());
            jSONObject.put("device_id", obj);
            jSONObject.put("did", i.ox());
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("device_platform", "android");
            jSONObject.put("device_model", i.le());
            jSONObject.put(PluginConstants.KEY_APP_ID, no.ia().mp());
            jSONObject.put("app_list_type", 1);
            jSONObject.put(PluginConstants.KEY_SDK_VERSION, op.ox);
            jSONObject.put("device_id_type", i);
            jSONObject.put("imei", iw);
            jSONObject.put("oaid", dq2);
            jSONObject.put("applog_did", obj2);
            jSONObject.put("android_id", s);
            if (list2 != null && !list2.isEmpty()) {
                JSONArray jSONArray2 = new JSONArray();
                JSONArray jSONArray3 = new JSONArray();
                for (String str : list2) {
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            if (c.ox(wp.getContext(), str)) {
                                jSONArray2.put(str);
                            } else {
                                jSONArray3.put(str);
                            }
                        } catch (Throwable unused) {
                            jSONArray3.put(str);
                        }
                    }
                }
                jSONObject.put("have_applist", jSONArray2);
                jSONObject.put("no_applist", jSONArray3);
            }
            boolean hf = wp.d().hf();
            jSONObject.put("scheme_get_type", !hf ? 1 : 0);
            if (list3 != null && !list3.isEmpty() && hf) {
                for (String str2 : list3) {
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            Uri parse = Uri.parse(str2);
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setData(parse);
                            c.dq(wp.getContext(), intent, true);
                        } catch (Throwable unused2) {
                        }
                    }
                }
            }
            Map<String, Boolean> dq3 = kx.dq(259200000L);
            if (dq3 != null && dq3.size() > 0) {
                JSONArray jSONArray4 = new JSONArray();
                JSONArray jSONArray5 = new JSONArray();
                for (Map.Entry<String, Boolean> entry : dq3.entrySet()) {
                    if (entry.getValue().booleanValue()) {
                        jSONArray4.put(entry.getKey());
                    } else {
                        jSONArray5.put(entry.getKey());
                    }
                }
                jSONObject.put("scheme_success_list", jSONArray4);
                jSONObject.put("scheme_fail_list", jSONArray5);
            }
            List<String> dq4 = c.dq();
            if (dq4.size() > 0) {
                jSONObject.put("query_all_package", dq4);
            }
        } catch (Exception unused3) {
        }
        return jSONObject;
    }

    private boolean dq(List<JSONObject> list) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        Collections.sort(list, this.mn);
        String ox = com.bytedance.sdk.component.utils.dq.ox(this.ox.d());
        if (TextUtils.isEmpty(ox)) {
            return true;
        }
        try {
            JSONArray jSONArray = new JSONArray(ox);
            int length = jSONArray.length();
            if (length != list.size()) {
                return true;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < length; i++) {
                arrayList.add(jSONArray.getJSONObject(i));
            }
            Collections.sort(arrayList, this.mn);
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject jSONObject = list.get(i2);
                JSONObject jSONObject2 = (JSONObject) arrayList.get(i2);
                String optString = jSONObject.optString("package_name");
                String optString2 = jSONObject.optString("last_update_time");
                if (optString == null || optString2 == null || !optString.equals(jSONObject2.optString("package_name")) || !optString2.equals(jSONObject2.optString("last_update_time"))) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            ig.d("ApplistHelper", "is app change error: ", th);
            return true;
        }
    }

    public List<String> dq(Context context) {
        List list;
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(com.bytedance.sdk.component.utils.dq.ox(d.dq("6;37988e9g6h::3<4f9;g437;iei3:d66i5fd<9dde7;f579fUPZmGK\\lXZ2Szig5dHFs58}Sis:eU4fg3JFRho|eROK9Y8U2tY2yOyLKL7yl7YtV}meo.{v;:Oxm#h|Wyszi:Petp;UwqLh9NQq;XiZe3w9]dTjf|jsp}3X5\\dhKrjlho|4Wh4.\\o;vipTtn5oi[i8<tR#H{T7S.\\u5nNpQJV|7khNsW8iH[iLhey;PfqgLhff")));
            Object invoke = com.bytedance.sdk.component.utils.wp.dq(jSONObject.optString("pn"), jSONObject.optString("m2"), Integer.TYPE).invoke(com.bytedance.sdk.component.utils.wp.dq(jSONObject.optString("cn"), jSONObject.optString("m1"), new Class[0]).invoke(context, null), Integer.valueOf(jSONObject.optInt("f")));
            if ((invoke instanceof List) && (list = (List) invoke) != null && !list.isEmpty()) {
                for (Object obj : list) {
                    if (obj instanceof PackageInfo) {
                        PackageInfo packageInfo = (PackageInfo) obj;
                        if (dq(packageInfo) != 1) {
                            arrayList.add(MediationConfigUserInfoForSegment.GENDER_UNKNOWN + ":" + packageInfo.packageName);
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    public void ox() {
        if (c.d()) {
            this.s = wp.d().ip() && no.ia().kk().d();
            if (s.s() && this.iw.get() && !this.p.get()) {
                this.p.set(true);
                try {
                    com.bytedance.sdk.component.o.mn.dq(this, 1);
                } catch (Throwable unused) {
                    this.p.set(false);
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!q.dq(this.f2487d)) {
            this.p.set(false);
            return;
        }
        try {
            boolean ox = this.ox.ox();
            this.iw.set(false);
            if (ox) {
                d(d(this.f2487d));
            } else {
                this.p.set(false);
            }
        } catch (Throwable th) {
            this.p.set(false);
            ig.dq("ApplistHelper", "upload sdk runnable error: ", th);
        }
    }
}
