package com.bytedance.sdk.component.adexpress.dq.d;

import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceResponse;
import com.bytedance.sdk.component.adexpress.dq.ox.dq;
import com.bytedance.sdk.component.adexpress.p.kk;
import com.bytedance.sdk.component.utils.ig;
import java.io.File;
import java.io.FileInputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    static Object dq = new Object();

    public static com.bytedance.sdk.component.adexpress.dq.ox.d d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.bytedance.sdk.component.adexpress.dq.ox.d dq2 = mn.dq().dq(str);
        if (dq2 != null) {
            dq2.dq(Long.valueOf(System.currentTimeMillis()));
            dq(dq2);
        }
        return dq2;
    }

    private static File d(String str, String str2) {
        com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar;
        com.bytedance.sdk.component.adexpress.dq.ox.dq p = p();
        if (p != null && s()) {
            Map<String, com.bytedance.sdk.component.adexpress.dq.ox.dq> dq2 = p.dq();
            if (dq2.size() != 0 && (dqVar = dq2.get(str)) != null) {
                Iterator<dq.C0104dq> it = dqVar.getResources().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    dq.C0104dq next = it.next();
                    if (next.dq() != null && next.dq().equals(str2)) {
                        File file = new File(s.mn(), com.bytedance.sdk.component.utils.s.d(next.dq()));
                        String dq3 = com.bytedance.sdk.component.utils.s.dq(file);
                        if (next.d() == null || !next.d().equals(dq3)) {
                            break;
                        }
                        return file;
                    }
                }
            }
        }
        return null;
    }

    public static void d() {
        try {
            ia.p();
            File mn = s.mn();
            if (mn == null || !mn.exists()) {
                return;
            }
            if (mn.getParentFile() != null) {
                com.bytedance.sdk.component.utils.iw.ox(mn.getParentFile());
            } else {
                com.bytedance.sdk.component.utils.iw.ox(mn);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Set<com.bytedance.sdk.component.adexpress.dq.ox.d> set) {
        try {
            for (com.bytedance.sdk.component.adexpress.dq.ox.d dVar : set) {
                dVar.dq(Long.valueOf(System.currentTimeMillis()));
                iw.dq().dq(dVar, true);
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean d(JSONObject jSONObject) {
        Object opt;
        return (jSONObject == null || (opt = jSONObject.opt("xTemplate")) == null || TextUtils.isEmpty(opt.toString())) ? false : true;
    }

    public static dq dq(String str, kk.dq dqVar, String str2, String str3) {
        File file;
        dq dqVar2 = new dq();
        if (TextUtils.isEmpty(str3)) {
            file = null;
        } else {
            file = d(str3, str);
            if (file != null) {
                dqVar2.dq(1);
            }
        }
        if (file == null && (file = iw(str)) != null) {
            dqVar2.dq(3);
        }
        if (file == null && (file = s(str)) != null) {
            dqVar2.dq(2);
        }
        if (TextUtils.isEmpty(str3)) {
            if (!p(str)) {
                dqVar2.dq(6);
            }
        } else if (!dq(str, str3)) {
            dqVar2.dq(4);
        }
        dqVar2.getType();
        if (file != null) {
            try {
                dqVar2.dq(new WebResourceResponse(dqVar.getType(), "utf-8", new FileInputStream(file)));
                return dqVar2;
            } catch (Throwable th) {
                ig.d("TTDynamic", "get html WebResourceResponse error", th);
            }
        }
        return dqVar2;
    }

    public static com.bytedance.sdk.component.adexpress.dq.ox.d dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.bytedance.sdk.component.adexpress.dq.ox.d dq2 = mn.dq().dq(str);
        if (dq2 != null) {
            dq2.dq(Long.valueOf(System.currentTimeMillis()));
            dq(dq2);
        }
        return dq2;
    }

    public static Set<com.bytedance.sdk.component.adexpress.dq.ox.d> dq(String str, boolean z) {
        final Set<com.bytedance.sdk.component.adexpress.dq.ox.d> d2 = mn.dq().d(str);
        if (d2 != null && d2.size() > 0) {
            if (z) {
                com.bytedance.sdk.component.adexpress.p.p.dq(new com.bytedance.sdk.component.o.kk("updateTmplTime") { // from class: com.bytedance.sdk.component.adexpress.dq.d.d.1
                    @Override // java.lang.Runnable
                    public void run() {
                        d.d((Set<com.bytedance.sdk.component.adexpress.dq.ox.d>) d2);
                    }
                }, 5);
                return d2;
            }
            d(d2);
        }
        return d2;
    }

    public static void dq() {
        s.d();
    }

    private static void dq(final com.bytedance.sdk.component.adexpress.dq.ox.d dVar) {
        com.bytedance.sdk.component.adexpress.p.p.dq(new com.bytedance.sdk.component.o.kk("updateTmplTime") { // from class: com.bytedance.sdk.component.adexpress.dq.d.d.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (d.dq) {
                    iw.dq().dq(dVar, true);
                }
            }
        }, 10);
    }

    public static void dq(com.bytedance.sdk.component.adexpress.dq.ox.p pVar) {
        mn.dq().dq(pVar, pVar.iw);
    }

    private static boolean dq(String str, String str2) {
        com.bytedance.sdk.component.adexpress.dq.ox.dq p;
        com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar;
        if (!s() || (p = p()) == null) {
            return false;
        }
        Map<String, com.bytedance.sdk.component.adexpress.dq.ox.dq> dq2 = p.dq();
        if (dq2.size() == 0 || (dqVar = dq2.get(str2)) == null) {
            return false;
        }
        for (dq.C0104dq c0104dq : dqVar.getResources()) {
            if (c0104dq != null && TextUtils.equals(str, c0104dq.dq())) {
                return true;
            }
        }
        return false;
    }

    public static boolean dq(JSONObject jSONObject) {
        Object opt;
        return (jSONObject == null || (opt = jSONObject.opt("template_Plugin")) == null || TextUtils.isEmpty(opt.toString())) ? false : true;
    }

    private static File iw(String str) {
        List<Pair<String, String>> d2;
        dq.d s = p().s();
        if (s != null && (d2 = s.d()) != null && d2.size() > 0) {
            for (Pair<String, String> pair : d2) {
                Object obj = pair.second;
                if (obj != null && ((String) obj).equals(str)) {
                    return new File(s.mn(), (String) pair.first);
                }
            }
        }
        return null;
    }

    @Deprecated
    private static String iw() {
        com.bytedance.sdk.component.adexpress.dq.ox.dq p = p();
        if (p == null) {
            return null;
        }
        return p.p();
    }

    public static String ox() {
        return iw.ox();
    }

    public static String ox(String str) {
        com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar;
        com.bytedance.sdk.component.adexpress.dq.ox.dq p = p();
        if (p == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            return iw();
        }
        Map<String, com.bytedance.sdk.component.adexpress.dq.ox.dq> dq2 = p.dq();
        if (dq2 == null || dq2.size() <= 0 || (dqVar = dq2.get(str)) == null) {
            return null;
        }
        return dqVar.p();
    }

    public static boolean ox(JSONObject jSONObject) {
        Object opt;
        if (jSONObject == null) {
            return false;
        }
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("creatives");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject == null || (opt = optJSONObject.opt("template_Plugin")) == null || TextUtils.isEmpty(opt.toString())) {
                        return false;
                    }
                }
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static com.bytedance.sdk.component.adexpress.dq.ox.dq p() {
        return s.d().s();
    }

    private static boolean p(String str) {
        com.bytedance.sdk.component.adexpress.dq.ox.dq p;
        List<dq.C0104dq> resources;
        if (!s() || (p = p()) == null || (resources = p.getResources()) == null) {
            return false;
        }
        for (dq.C0104dq c0104dq : resources) {
            if (c0104dq != null && TextUtils.equals(str, c0104dq.dq())) {
                return true;
            }
        }
        return false;
    }

    private static File s(String str) {
        if (s()) {
            Iterator<dq.C0104dq> it = p().getResources().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                dq.C0104dq next = it.next();
                if (next.dq() != null && next.dq().equals(str)) {
                    File file = new File(s.mn(), com.bytedance.sdk.component.utils.s.d(next.dq()));
                    String dq2 = com.bytedance.sdk.component.utils.s.dq(file);
                    if (next.d() == null || !next.d().equals(dq2)) {
                        break;
                    }
                    return file;
                }
            }
        }
        return null;
    }

    public static boolean s() {
        return s.d().p();
    }
}
