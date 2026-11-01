package com.bytedance.sdk.openadsdk.core.gh;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.ia.dq.dq;
import com.bytedance.sdk.openadsdk.ats.AutoService;
import com.bytedance.sdk.openadsdk.core.ir.le;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    private static final Set<String> s;
    public static final String dq = UUID.randomUUID().toString();

    /* renamed from: d, reason: collision with root package name */
    public static AtomicInteger f2868d = new AtomicInteger(0);
    private static String p = "_create";
    public static final AtomicBoolean ox = new AtomicBoolean(false);

    static {
        HashSet hashSet = new HashSet();
        s = hashSet;
        hashSet.add("click_start");
        hashSet.add("download_start");
        hashSet.add("download_finish");
        hashSet.add("install_finish");
        hashSet.add("click");
        hashSet.add("show");
    }

    public static void d() {
        com.bytedance.sdk.component.ia.d.dq.dq(iw.dq, "csj");
    }

    private static void d(Context context, boolean z) {
        if (context == null) {
            return;
        }
        int n = wp.d().n();
        if (n <= 0 || n == Integer.MAX_VALUE) {
            n = 100;
        }
        int i = wp.d().i();
        if (i > n) {
            i = 5;
            n = 10;
        }
        com.bytedance.sdk.component.ia.d.dq.dq(new dq.C0117dq().ox(com.bytedance.sdk.component.ia.d.p.d.dq.dq(i, n)).dq(com.bytedance.sdk.component.ia.d.p.d.dq.dq(1, n)).d(com.bytedance.sdk.component.ia.d.p.d.dq.dq(1, n)).d(z).dq("csj").dq(context).dq(new mn()).dq(iw.dq).dq(wp.d().wp()).dq());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.Collection, java.util.List, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.ArrayList] */
    public static List<String> dq(List<String> list, String str) {
        if (list != 0 && list.size() != 0 && !TextUtils.isEmpty(str)) {
            ArrayList arrayList = new ArrayList((Collection) list);
            list = new ArrayList<>();
            for (int i = 0; i < arrayList.size(); i++) {
                String str2 = (String) arrayList.get(i);
                if (!TextUtils.isEmpty(str2)) {
                    if (str2.contains("{OAID}") || str2.contains("__OAID__")) {
                        str2 = str2.replace("{OAID}", str).replace("__OAID__", str);
                    }
                    list.add(str2);
                }
            }
        }
        return list;
    }

    public static void dq() {
        com.bytedance.sdk.component.ia.d.dq.dq(false, "csj");
    }

    public static void dq(Context context, boolean z) {
        if (ox.compareAndSet(false, true) || com.bytedance.sdk.component.ia.d.dq.dq("csj")) {
            d(context, z);
        }
    }

    public static void dq(com.bytedance.sdk.component.ia.d.p.dq.dq dqVar, String str, int i) {
        if (com.bytedance.sdk.component.ia.d.dq.dq("csj")) {
            dq(wp.getContext(), com.bytedance.sdk.openadsdk.core.multipro.d.ox());
        }
        if (wp.d().bf()) {
            return;
        }
        com.bytedance.sdk.component.ia.d.dq.dq(dqVar, "csj");
    }

    public static void dq(com.bytedance.sdk.openadsdk.core.ig.dq dqVar, String str) {
        if (!wp.d().bf() || s.contains(str)) {
            com.bytedance.sdk.component.ia.d.p.dq.dq dqVar2 = new com.bytedance.sdk.component.ia.d.p.dq.dq(dqVar.p(), dqVar);
            dqVar2.d(dqVar.iw() ? (byte) 1 : (byte) 2);
            dqVar2.dq((byte) 0);
            dq(dqVar.ox(), dqVar2);
            if (com.bytedance.sdk.component.ia.d.dq.dq("csj")) {
                dq(wp.getContext(), com.bytedance.sdk.openadsdk.core.multipro.d.ox());
            }
            com.bytedance.sdk.component.ia.d.dq.dq(dqVar2, "csj");
            com.bytedance.sdk.openadsdk.core.wp.ox oxVar = (com.bytedance.sdk.openadsdk.core.wp.ox) AutoService.dq(com.bytedance.sdk.openadsdk.core.wp.ox.class);
            if (oxVar != null) {
                oxVar.dq(str, dqVar2);
            }
        }
    }

    public static void dq(String str) {
        if (com.bytedance.sdk.component.ia.d.dq.dq("csj")) {
            dq(wp.getContext(), com.bytedance.sdk.openadsdk.core.multipro.d.ox());
        }
        com.bytedance.sdk.component.ia.d.dq.dq("csj", str);
    }

    private static void dq(String str, com.bytedance.sdk.component.ia.d.p.dq.dq dqVar) {
        if (wp.d().fw()) {
            try {
                dqVar.ox(com.bytedance.sdk.component.ia.d.ox.dq.d(str));
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ig.d(e2.getMessage());
            }
        }
    }

    public static void dq(String str, List<String> list, boolean z, Map<String, String> map, JSONObject jSONObject) {
        if (list == null || list.size() == 0) {
            return;
        }
        list.size();
        if (com.bytedance.sdk.component.ia.d.dq.dq("csj")) {
            dq(wp.getContext(), com.bytedance.sdk.openadsdk.core.multipro.d.ox());
        }
        com.bytedance.sdk.component.ia.d.dq.dq("csj", str, dq(list, le.dq(false)), z, map, jSONObject);
    }

    public static com.bytedance.sdk.openadsdk.core.gh.ox.dq ox() {
        return no.dq;
    }

    public static void p() {
        try {
            com.bytedance.sdk.component.ia.d.dq.d("csj");
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.p(p, e2.getMessage());
        }
    }

    public static void s() {
        try {
            com.bytedance.sdk.component.ia.d.dq.p("csj");
            com.bytedance.sdk.component.ia.d.dq.s("csj");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
