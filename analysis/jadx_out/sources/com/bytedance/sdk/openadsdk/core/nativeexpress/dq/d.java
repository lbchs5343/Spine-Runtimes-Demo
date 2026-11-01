package com.bytedance.sdk.openadsdk.core.nativeexpress.dq;

import android.text.TextUtils;
import com.bytedance.sdk.component.kk.d.p;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.le.s;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.ws;
import com.bytedance.sdk.openadsdk.core.wp;
import g.awf;
import g.tn;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    private static volatile d dq;

    public interface dq {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        int ah = wp.d().ah();
        if (ah <= 0) {
            ah = 100;
        }
        List<com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq> d2 = ox.dq().d();
        if (d2 == null || d2.isEmpty() || ah >= d2.size()) {
            if (d2 != null) {
                d2.size();
                return;
            }
            return;
        }
        int size = (int) (d2.size() - (ah * 0.75f));
        if (size <= 0) {
            return;
        }
        TreeMap treeMap = new TreeMap();
        for (com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq dqVar : d2) {
            treeMap.put(dqVar.p(), dqVar);
        }
        HashSet hashSet = new HashSet();
        int i = 0;
        for (Map.Entry entry : treeMap.entrySet()) {
            if (entry != null && i < size) {
                i++;
                com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq dqVar2 = (com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq) entry.getValue();
                if (dqVar2 != null) {
                    hashSet.add(dqVar2.dq());
                }
            }
        }
        dq(hashSet);
    }

    private void d(String str, String str2, String str3, String str4, String str5) {
        com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq();
        dqVar.ox(str).s(str3).p(str4).d(str2).dq(str5).dq(Long.valueOf(System.currentTimeMillis()));
        ox.dq().dq(dqVar, false);
        d();
    }

    public static d dq() {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new d();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq dq(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return ox.dq().dq(str, str2);
    }

    private void dq(final com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq dqVar) {
        dqVar.dq(Long.valueOf(System.currentTimeMillis()));
        mn.dq(new kk("updateTmplTime") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.dq.d.3
            @Override // java.lang.Runnable
            public void run() {
                ox.dq().dq(dqVar, true);
            }
        }, 10);
    }

    private void dq(final String str, final String str2, final String str3, final String str4, final dq dqVar) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return;
        }
        com.bytedance.sdk.component.kk.d.ox ox = s.dq().d().ox();
        ox.dq(str);
        ox.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.dq.d.2
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(p pVar, com.bytedance.sdk.component.kk.d dVar) {
                if (dVar != null && dVar.ia()) {
                    String p = dVar.p();
                    if (TextUtils.isEmpty(p)) {
                        return;
                    }
                    ox.dq().dq(new com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq().dq(str2).d(str3).ox(str).s(str4).p(p).dq(Long.valueOf(System.currentTimeMillis())), false);
                    d.this.d();
                    if (dqVar != null) {
                        try {
                            new JSONObject(p);
                        } catch (JSONException unused) {
                        }
                    }
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(p pVar, IOException iOException) {
                if (dqVar != null) {
                    iOException.getMessage();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, String str2, String str3, String str4, String str5) {
        if (dq(str, str3) != null) {
            if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
                return;
            }
            d(str2, str3, str5, str4, str);
            return;
        }
        if (TextUtils.isEmpty(str4)) {
            dq(str2, str, str3, str5, (dq) null);
        } else {
            d(str2, str3, str5, str4, str);
        }
    }

    public String dq(String str, String str2, String str3) {
        com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq dq2 = dq(awf.i(str, "_", str2), str3);
        if (dq2 == null) {
            return null;
        }
        dq(dq2);
        return dq2.s();
    }

    public Set<com.bytedance.sdk.openadsdk.core.nativeexpress.dq.dq> dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return ox.dq().dq(str);
    }

    public void dq(ws wsVar, String str, String str2) {
        if (wsVar == null) {
            return;
        }
        if (TextUtils.isEmpty(wsVar.dq())) {
            ig.p("UGTemplateManager", "save ugen template error : tmpId is empty");
            return;
        }
        StringBuilder l = tn.l(str2, "_");
        l.append(wsVar.dq());
        final String sb = l.toString();
        final String ox = wsVar.ox();
        final String d2 = wsVar.d();
        final String p = wsVar.p();
        if (TextUtils.isEmpty(str) && str2.equals("ad")) {
            str = no.ia().mp();
        }
        final String str3 = str;
        mn.dq(new kk("saveUGenTemplate") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.dq.d.1
            @Override // java.lang.Runnable
            public void run() {
                d.this.dq(sb, ox, d2, p, str3);
            }
        }, 10);
    }

    public void dq(Set<String> set) {
        try {
            ox.dq().dq(set);
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
