package com.bytedance.sdk.component.adexpress.dq.d;

import android.text.TextUtils;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mn {
    private static volatile mn dq;

    /* renamed from: d, reason: collision with root package name */
    private AtomicBoolean f1671d = new AtomicBoolean(false);

    public interface dq {
        void d();

        void dq();
    }

    private mn() {
    }

    private void d() {
        if (com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox() == null) {
            return;
        }
        int dq2 = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().dq();
        if (dq2 <= 0) {
            dq2 = 100;
        }
        List<com.bytedance.sdk.component.adexpress.dq.ox.d> d2 = iw.dq().d();
        if (d2 == null || d2.isEmpty() || dq2 >= d2.size()) {
            if (d2 != null) {
                d2.size();
                return;
            }
            return;
        }
        TreeMap treeMap = new TreeMap();
        for (com.bytedance.sdk.component.adexpress.dq.ox.d dVar : d2) {
            treeMap.put(dVar.mn(), dVar);
        }
        HashSet hashSet = new HashSet();
        int size = (int) (d2.size() - (dq2 * 0.75f));
        int i = 0;
        for (Map.Entry entry : treeMap.entrySet()) {
            if (entry != null && i < size) {
                i++;
                ((Long) entry.getKey()).getClass();
                com.bytedance.sdk.component.adexpress.dq.ox.d dVar2 = (com.bytedance.sdk.component.adexpress.dq.ox.d) entry.getValue();
                if (dVar2 != null) {
                    hashSet.add(dVar2.d());
                }
            }
        }
        dq(hashSet);
        this.f1671d.set(false);
    }

    private void d(String str, String str2, String str3, String str4, String str5, String str6) {
        iw.dq().dq(new com.bytedance.sdk.component.adexpress.dq.ox.d().dq(str).d(str2).ox(str3).p(str4).s(str5).iw(str6).dq(Long.valueOf(System.currentTimeMillis())), false);
        d();
    }

    public static mn dq() {
        if (dq == null) {
            synchronized (mn.class) {
                try {
                    if (dq == null) {
                        dq = new mn();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private JSONObject dq(String str, dq dqVar) {
        if (com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox() == null) {
            dqVar.d();
            return null;
        }
        com.bytedance.sdk.component.kk.d.ox s = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().s();
        s.dq(str);
        com.bytedance.sdk.component.kk.d dq2 = s.dq();
        if (dq2 != null) {
            try {
                if (dq2.ia() && dq2.p() != null) {
                    return new JSONObject(dq2.p());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        dqVar.d();
        return null;
    }

    private void dq(String str, String str2, String str3) {
        JSONObject ox;
        if (TextUtils.isEmpty(str) || (ox = ox(str)) == null) {
            return;
        }
        String optString = ox.optString(TTDownloadField.TT_MD5);
        String optString2 = ox.optString("version");
        String optString3 = ox.optString("data");
        if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2) || TextUtils.isEmpty(optString3)) {
            return;
        }
        com.bytedance.sdk.component.adexpress.dq.ox.d dq2 = new com.bytedance.sdk.component.adexpress.dq.ox.d().dq(str2).d(str3).ox(optString).p(str).s(optString3).iw(optString2).dq(Long.valueOf(System.currentTimeMillis()));
        iw.dq().dq(dq2, false);
        d();
        if (ia.dq(optString2)) {
            dq2.iw(optString2);
            s.d().dq(true);
        }
    }

    private void dq(String str, String str2, String str3, dq dqVar) {
        if (TextUtils.isEmpty(str)) {
            dqVar.d();
            return;
        }
        JSONObject dq2 = dq(str, dqVar);
        if (dq2 != null) {
            String optString = dq2.optString(TTDownloadField.TT_MD5);
            String optString2 = dq2.optString("version");
            String optString3 = dq2.optString("data");
            if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2) || TextUtils.isEmpty(optString3)) {
                dqVar.d();
                return;
            }
            com.bytedance.sdk.component.adexpress.dq.ox.d dq3 = new com.bytedance.sdk.component.adexpress.dq.ox.d().dq(str2).d(str3).ox(optString).p(str).s(optString3).iw(optString2).dq(Long.valueOf(System.currentTimeMillis()));
            if (dq3 == null || com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().d() == null) {
                dqVar.d();
                return;
            }
            if (TextUtils.isEmpty(dq3.d())) {
                dqVar.d();
                return;
            }
            iw.dq().dq(dq3, false);
            d();
            if (ia.dq(optString2)) {
                dq3.iw(optString2);
                s.d().dq(true);
            }
            dqVar.dq();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void dq(String str, String str2, String str3, String str4, String str5, String str6) {
        String str7;
        try {
            try {
                if (dq(str) != null) {
                    if (!TextUtils.isEmpty(str4)) {
                        if (!TextUtils.isEmpty(str3)) {
                            str7 = str5;
                            d(str6, str, str3, str2, str4, str7);
                        }
                    }
                    return;
                }
                str7 = str5;
                if (TextUtils.isEmpty(str4)) {
                    dq(str2, str6, str);
                } else if (TextUtils.isEmpty(str3)) {
                    dq(str2, str6, str);
                } else {
                    d(str6, str, str3, str2, str4, str7);
                }
                boolean dq2 = ia.dq(str7);
                if (!d.s() || dq2) {
                    s.d().dq(true);
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    private JSONObject ox(String str) {
        com.bytedance.sdk.component.adexpress.dq.dq.ox ox = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox();
        if (ox == null) {
            return null;
        }
        com.bytedance.sdk.component.kk.d.ox s = ox.s();
        s.dq(str);
        com.bytedance.sdk.component.kk.d dq2 = s.dq();
        if (dq2 != null) {
            try {
                if (dq2.ia() && dq2.p() != null) {
                    return new JSONObject(dq2.p());
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public Set<com.bytedance.sdk.component.adexpress.dq.ox.d> d(String str) {
        return iw.dq().d(str);
    }

    public com.bytedance.sdk.component.adexpress.dq.ox.d dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return iw.dq().dq(str);
    }

    public void dq(com.bytedance.sdk.component.adexpress.dq.ox.p pVar, String str) {
        if (pVar == null) {
            ig.p("TmplDiffManager", "saveTemplate error: tplInfo == null");
            return;
        }
        final String str2 = pVar.dq;
        final String str3 = pVar.ox;
        final String str4 = pVar.f1680d;
        final String str5 = pVar.p;
        final String str6 = pVar.s;
        final String iw = TextUtils.isEmpty(str) ? com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox() != null ? com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().iw() : "" : str;
        if (TextUtils.isEmpty(str2)) {
            ig.p("TmplDiffManager", "saveTemplate error:tmpId is empty");
        } else {
            com.bytedance.sdk.component.adexpress.p.p.dq(new kk("saveTemplate") { // from class: com.bytedance.sdk.component.adexpress.dq.d.mn.1
                @Override // java.lang.Runnable
                public void run() {
                    mn.this.dq(str2, str3, str4, str5, str6, iw);
                }
            }, 10);
        }
    }

    public synchronized void dq(String str, String str2, String str3, String str4, String str5, String str6, dq dqVar) {
        String str7;
        try {
            try {
                if (dq(str) != null) {
                    if (!TextUtils.isEmpty(str4)) {
                        if (!TextUtils.isEmpty(str3)) {
                            str7 = str5;
                            d(str6, str, str3, str2, str4, str7);
                            dqVar.dq();
                        }
                    }
                    dqVar.dq();
                    return;
                }
                str7 = str5;
                if (TextUtils.isEmpty(str4)) {
                    dq(str2, str6, str, dqVar);
                } else if (TextUtils.isEmpty(str3)) {
                    dq(str2, str6, str, dqVar);
                } else {
                    d(str6, str, str3, str2, str4, str7);
                    dqVar.dq();
                }
                boolean dq2 = ia.dq(str7);
                if (!d.s() || dq2) {
                    s.d().dq(true);
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public void dq(Set<String> set) {
        try {
            iw.dq().dq(set);
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
