package com.bytedance.msdk.mn.p;

import android.text.TextUtils;
import com.bytedance.msdk.core.kk.ig;
import com.bytedance.msdk.core.kk.mp;
import com.bytedance.msdk.core.no.iw;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.mn.s;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p implements com.bytedance.msdk.mn.ox {

    /* renamed from: d, reason: collision with root package name */
    private static volatile p f1123d;
    public static Map<String, List<iw>> dq = new ConcurrentHashMap();
    private volatile Map<Integer, bl> ox = new ConcurrentHashMap();
    private Map<String, com.bytedance.msdk.core.no.d> p = new ConcurrentHashMap();

    private p() {
    }

    private synchronized void d() {
        String d2 = com.bytedance.msdk.ia.dq.d(s.s().d("rit_config"), com.bytedance.msdk.ia.d.dq());
        if (d2 != null && !TextUtils.isEmpty(d2)) {
            try {
                d(new JSONArray(d2));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private synchronized void d(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() > 0) {
                    try {
                        this.p.clear();
                        dq.clear();
                        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            com.bytedance.msdk.core.no.d dq2 = com.bytedance.msdk.core.no.d.dq(jSONObject, dq);
                            if (dq2 != null && !TextUtils.isEmpty(dq2.c())) {
                                this.p.put(dq2.c(), dq2);
                                concurrentHashMap.put(dq2.c(), jSONObject.toString());
                            }
                        }
                        com.bytedance.msdk.ox.mn.ox.dq(dq);
                        dq(concurrentHashMap);
                        d.jy().q().dq("prime_rit_count", jSONArray.length());
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized bl dq(int i) {
        bl blVar;
        blVar = this.ox.get(Integer.valueOf(i));
        if (blVar == null) {
            blVar = s.dq(i);
            this.ox.put(Integer.valueOf(i), blVar);
        }
        return blVar;
    }

    public static p dq() {
        if (f1123d == null) {
            synchronized (p.class) {
                try {
                    if (f1123d == null) {
                        f1123d = new p();
                    }
                } finally {
                }
            }
        }
        return f1123d;
    }

    private String dq(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (i == 0) {
            arrayList.add(1);
            arrayList.add(2);
            arrayList.add(3);
            arrayList.add(5);
            arrayList.add(7);
            arrayList.add(8);
            arrayList.add(9);
            arrayList.add(10);
        } else {
            arrayList.add(Integer.valueOf(i));
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String d2 = dq(((Integer) it.next()).intValue()).d(str);
            if (!TextUtils.isEmpty(d2)) {
                return d2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void dq(com.bytedance.msdk.core.no.d dVar) {
        if (dVar != null) {
            try {
                if (dVar.c() != null) {
                    if (dVar.o()) {
                        if (mp.dq().dq(dVar.kk())) {
                            mp.dq().d(dVar.kk());
                        }
                        if (mp.dq().dq(dVar.ia())) {
                            mp.dq().d(dVar.ia());
                        }
                    } else {
                        mp.dq().p(dVar.c());
                        mp.dq().kk(dVar.c());
                    }
                    for (no noVar : dVar.t()) {
                        if (noVar.p()) {
                            if (ig.dq().dq(noVar.ox())) {
                                ig.dq().d(noVar.ox());
                            }
                            if (com.bytedance.msdk.core.kk.no.dq().dq(noVar.d())) {
                                com.bytedance.msdk.core.kk.no.dq().d(noVar.d());
                            }
                        } else {
                            ig.dq().delete(dVar.c(), noVar.cd());
                            com.bytedance.msdk.core.kk.no.dq().delete(dVar.c(), noVar.cd());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private synchronized void dq(final Map<String, String> map) {
        if (map != null) {
            if (map.size() != 0) {
                com.bytedance.msdk.dq.s.iw.p(new Runnable() { // from class: com.bytedance.msdk.mn.p.p.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (Map.Entry entry : map.entrySet()) {
                            try {
                                String str = (String) entry.getKey();
                                String str2 = (String) entry.getValue();
                                com.bytedance.msdk.core.no.d dVar = (com.bytedance.msdk.core.no.d) p.this.p.get(str);
                                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && dVar != null) {
                                    p.this.dq(dVar.ce()).dq(str, str2);
                                    p.this.dq(dVar);
                                }
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        }
                        map.clear();
                    }
                });
            }
        }
    }

    @Override // com.bytedance.msdk.mn.ox
    public synchronized com.bytedance.msdk.core.no.d dq(String str, int i, int i2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.bytedance.msdk.core.no.d dVar = this.p.get(str);
        if (dVar == null && (dVar = com.bytedance.msdk.core.no.d.mn(dq(i, str))) != null) {
            this.p.put(str, dVar);
        }
        if (i2 == 102) {
            return dVar;
        }
        com.bytedance.msdk.core.no.d dq2 = com.bytedance.msdk.core.o.p.dq(dVar, i2);
        return dq2 != null ? dq2 : dVar;
    }

    @Override // com.bytedance.msdk.mn.ox
    public synchronized void dq(JSONArray jSONArray) {
        d(jSONArray);
    }

    @Override // com.bytedance.msdk.mn.ox
    public synchronized void ig() {
        Map<String, com.bytedance.msdk.core.no.d> map = this.p;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.bytedance.msdk.mn.ox
    public synchronized boolean mp() {
        if (d.jy().q().d("prime_rit_count", -1) > 0) {
            return false;
        }
        d();
        return this.p.isEmpty();
    }
}
