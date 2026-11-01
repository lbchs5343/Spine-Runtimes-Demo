package com.bytedance.msdk.core.s.d;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.api.p.mp;
import com.bytedance.msdk.ia.bl;
import g.tn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p extends com.bytedance.msdk.core.s.dq {
    private static volatile p dq;
    private int ig;
    private int mp;
    private List<String> no;

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, Integer> f1019d = new HashMap();
    private final Map<String, Long> ox = new HashMap();
    private final Map<String, com.bytedance.msdk.api.dq.d> p = new HashMap();
    private final Map<String, ConcurrentHashMap<String, List<ig>>> s = new HashMap();
    private final Map<String, Map<String, com.bytedance.msdk.api.dq>> iw = new HashMap();
    private final Map<String, Boolean> mn = new HashMap();
    private final Map<String, com.bytedance.msdk.core.s.d.d> ia = new HashMap();
    private boolean kk = false;
    private int o = 20;

    public interface d {
        void dq(boolean z);
    }

    public class dq {

        /* renamed from: d, reason: collision with root package name */
        private final Activity f1023d;
        private int ia;
        private final d iw;
        private int mn;
        private final int ox;
        private final int p;
        private final List<mp> s;

        public dq(Activity activity, List<mp> list, int i, int i2, d dVar) {
            this.f1023d = activity;
            this.s = list;
            this.ox = i;
            this.p = i2;
            this.iw = dVar;
            this.mn = list.size();
            this.ia = list.size();
        }

        public static /* synthetic */ int d(dq dqVar) {
            int i = dqVar.mn;
            dqVar.mn = i - 1;
            return i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dq() {
            mp remove;
            for (int i = 0; i < this.ox; i++) {
                if (this.s.size() > 0 && (remove = this.s.remove(0)) != null) {
                    com.bytedance.msdk.api.dq.d dq = remove.dq();
                    String str = remove.d().get(0);
                    if (dq == null) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "预加载preload传入的GMAdSlotBase为空，广告位：".concat(String.valueOf(str)));
                    } else if (dq.le() == 1) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "预加载preload传入的GMAdSlotBase为banner类型，不支持该类型预加载，广告位: ".concat(String.valueOf(str)));
                    } else if (dq.le() == 2) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "预加载preload传入的GMAdSlotBase为插屏类型，不支持该类型预加载，广告位: ".concat(String.valueOf(str)));
                    } else if (dq.le() == 9) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "预加载preload传入的GMAdSlotBase为Draw类型，不支持该类型预加载，广告位: ".concat(String.valueOf(str)));
                    } else {
                        p.this.dq(str, dq);
                        dq.ox(str);
                        com.bytedance.msdk.core.no.d dq2 = com.bytedance.msdk.mn.dq.dq.jy().dq(str, 0, 101);
                        if (dq2 != null) {
                            dq.kk(dq2.ce());
                        } else if (dq.le() == 8) {
                            dq.kk(10);
                        }
                        p.this.dq(this.f1023d, str, 5, 0, new ox() { // from class: com.bytedance.msdk.core.s.d.p.dq.1
                            @Override // com.bytedance.msdk.core.s.d.p.ox
                            public void dq(String str2, boolean z, int i2, List<com.bytedance.msdk.d.s> list) {
                                dq.d(dq.this);
                                if (!z) {
                                    dq.ox(dq.this);
                                }
                                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- pendingLoadNum: " + dq.this.mn);
                                if (dq.this.mn > 0 || dq.this.iw == null) {
                                    return;
                                }
                                dq.this.iw.dq(dq.this.ia <= 0);
                            }
                        });
                    }
                }
            }
            if (this.s.size() > 0) {
                com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.s.d.p.dq.2
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.dq();
                    }
                }, this.p * 1000);
            }
        }

        public static /* synthetic */ int ox(dq dqVar) {
            int i = dqVar.ia;
            dqVar.ia = i - 1;
            return i;
        }
    }

    public interface ox {
        void dq(String str, boolean z, int i, List<com.bytedance.msdk.d.s> list);
    }

    private p() {
    }

    public static p dq() {
        if (dq == null) {
            synchronized (p.class) {
                try {
                    if (dq == null) {
                        dq = new p();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private String dq(List<com.bytedance.msdk.core.no.no> list, String str, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.s.d.d dVar2, boolean[] zArr) {
        List<ig> list2;
        if (list.size() <= 0) {
            return null;
        }
        ConcurrentHashMap<String, List<ig>> concurrentHashMap = this.s.get(str);
        if (concurrentHashMap != null && (list2 = concurrentHashMap.get(list.get(0).cd())) != null && list2.size() > 0 && list2.get(0) != null) {
            ig igVar = list2.get(0);
            if (dq(igVar, igVar.ox(), dVar, "聚合预请求") == -1) {
                StringBuilder sb = new StringBuilder();
                tn.h(sb, str, "--==-- 命中最优广告： ");
                sb.append(igVar.dq.m());
                sb.append(", loadSort: ");
                sb.append(igVar.dq.ae());
                sb.append(", showSort: ");
                sb.append(igVar.dq.wq());
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
                return null;
            }
        }
        List<com.bytedance.msdk.core.s.d.dq> dq2 = dq(list, str, concurrentHashMap, dVar, dVar2, zArr);
        if (dq2.size() > 0) {
            StringBuilder sb2 = new StringBuilder("[");
            for (int i = 0; i < dq2.size(); i++) {
                sb2.append(dq2.get(i).dq());
                if (i == dq2.size() - 1) {
                    sb2.append("]");
                } else {
                    sb2.append(",");
                }
            }
            try {
                String jSONArray = new JSONArray(sb2.toString()).toString();
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(str) + "adCannotUseInfo: " + jSONArray);
                return jSONArray;
            } catch (JSONException e2) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(str) + "adCannotUseInfo json err: " + e2.getMessage());
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<mp> dq(List<mp> list) {
        ArrayList arrayList = new ArrayList();
        int i = this.o;
        HashSet hashSet = new HashSet();
        for (mp mpVar : list) {
            if (arrayList.size() >= i) {
                break;
            }
            if (mpVar != null && mpVar.d() != null) {
                for (String str : mpVar.d()) {
                    if (arrayList.size() < i) {
                        if (!TextUtils.isEmpty(str) && !hashSet.contains(str)) {
                            hashSet.add(str);
                            ArrayList arrayList2 = new ArrayList(1);
                            arrayList2.add(str);
                            arrayList.add(new mp(mpVar.dq(), arrayList2));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private List<com.bytedance.msdk.core.s.d.dq> dq(List<com.bytedance.msdk.core.no.no> list, String str, Map<String, List<ig>> map, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.s.d.d dVar2, boolean[] zArr) {
        com.bytedance.msdk.d.s sVar;
        List<ig> list2;
        ArrayList arrayList = new ArrayList();
        int B_ = dVar2.B_();
        for (int i = 0; i < list.size() && i < B_; i++) {
            String cd = list.get(i).cd();
            com.bytedance.msdk.core.s.d.dq dqVar = new com.bytedance.msdk.core.s.d.dq();
            dqVar.d(cd);
            dqVar.s(list.get(i).e());
            dqVar.p(list.get(i).wp());
            ig igVar = (map == null || (list2 = map.get(cd)) == null || list2.size() <= 0) ? null : list2.get(0);
            if (igVar == null || (sVar = igVar.dq) == null) {
                Map<String, com.bytedance.msdk.api.dq> map2 = this.iw.get(str);
                com.bytedance.msdk.api.dq dqVar2 = map2 != null ? map2.get(cd) : null;
                if (dqVar2 != null) {
                    dqVar.d(3);
                    dqVar.ox(dqVar2.ox);
                    dqVar.dq(dqVar2.p);
                } else {
                    dqVar.d(4);
                }
                arrayList.add(dqVar);
            } else {
                dqVar.dq(sVar.xi() ? 1 : 0);
                zArr[0] = false;
                int dq2 = dq(igVar, this.p.get(str), dVar, "预缓存");
                if (dq2 != -1) {
                    dqVar.d(dq2);
                    arrayList.add(dqVar);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Context context, String str, int i, int i2, ox oxVar) {
        int d2 = d(str, i2);
        if (!ox(str, i2)) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(str) + "--==-- 配置未开启预加载缓存，req_type: " + d2);
            if (oxVar != null) {
                oxVar.dq(str, false, 0, null);
                return;
            }
            return;
        }
        Boolean bool = this.mn.get(str);
        if (bool != null && bool.booleanValue()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(str) + "--==-- 已发起过预缓存，还未使用掉，此次不发起");
            if (oxVar != null) {
                oxVar.dq(str, true, 0, null);
                return;
            }
            return;
        }
        com.bytedance.msdk.api.dq.d dVar = this.p.get(str);
        if (dVar == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(str) + "--==-- 预缓存取消，adslot为null，rit：" + str);
            return;
        }
        com.bytedance.msdk.api.dq.d dVar2 = new com.bytedance.msdk.api.dq.d(dVar);
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(str) + "--==-- 预缓存开始请求, req_type: " + d2);
        com.bytedance.msdk.core.s.d.d dq2 = mn.dq(context, str, dVar2.le());
        this.ia.put(str, dq2);
        this.mn.put(str, Boolean.TRUE);
        dVar2.d(i);
        dVar2.iw(3);
        dq2.dq(context, dVar2, oxVar);
        mn(str);
    }

    public static long iw(String str) {
        String d2 = bl.dq((String) null, com.bytedance.msdk.core.dq.getContext()).d("preload_rit_ts");
        try {
            if (!TextUtils.isEmpty(d2)) {
                return new JSONObject(d2).optLong(str, -1L);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return -1L;
    }

    private static void mn(String str) {
        bl dq2 = bl.dq((String) null, com.bytedance.msdk.core.dq.getContext());
        String d2 = dq2.d("preload_rit_ts");
        try {
            JSONObject jSONObject = TextUtils.isEmpty(d2) ? new JSONObject() : new JSONObject(d2);
            jSONObject.put(str, System.currentTimeMillis());
            dq2.dq("preload_rit_ts", jSONObject.toString());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void ox(String str, com.bytedance.msdk.api.dq.d dVar) {
        ConcurrentHashMap<String, List<ig>> concurrentHashMap = this.s.get(str);
        if (concurrentHashMap != null) {
            for (String str2 : concurrentHashMap.keySet()) {
                List<ig> list = concurrentHashMap.get(str2);
                if (list != null && list.size() > 0 && list.get(0) != null) {
                    ig igVar = list.get(0);
                    if (dq(igVar, igVar.ox(), dVar, "聚合预缓存") != -1) {
                        concurrentHashMap.remove(str2);
                    }
                }
            }
        }
    }

    public double d(String str, com.bytedance.msdk.api.dq.d dVar) {
        String key;
        List<ig> list;
        ConcurrentHashMap<String, List<ig>> concurrentHashMap = this.s.get(str);
        double d2 = -1.0d;
        if (concurrentHashMap != null && concurrentHashMap.size() > 0) {
            for (Map.Entry<String, List<ig>> entry : concurrentHashMap.entrySet()) {
                if (entry != null && (key = entry.getKey()) != null && (list = concurrentHashMap.get(key)) != null && list.size() > 0) {
                    for (ig igVar : list) {
                        if (igVar != null && dq(igVar, igVar.ox(), dVar, "聚合预缓存-ra") == -1 && igVar.dq.dk() > d2) {
                            d2 = igVar.dq.dk();
                        }
                    }
                }
            }
        }
        return d2;
    }

    public int d(String str, int i) {
        Integer num;
        if (i == 2 || (num = this.f1019d.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    public com.bytedance.msdk.api.dq.d d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.p.get(str);
    }

    public List<String> d() {
        return this.no;
    }

    public void d(final Context context, final String str, final int i) {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.s.d.p.2
            @Override // java.lang.Runnable
            public void run() {
                p.this.dq(context, str, 4, i, (ox) null);
            }
        });
    }

    public Long dq(String str) {
        return this.ox.get(str);
    }

    public void dq(int i) {
        this.o = i;
    }

    public void dq(final Activity activity, final List<mp> list, final int i, final int i2) {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.s.d.p.3
            @Override // java.lang.Runnable
            public void run() {
                if (p.this.kk) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "注意：预加载preload只能调用一次");
                    return;
                }
                if (activity == null) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "预加载preload传入的activity不能是null");
                    return;
                }
                List list2 = list;
                if (list2 == null || list2.size() <= 0) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "预加载preload传入的requestInfos不能是null或者size为0");
                    return;
                }
                p.this.kk = true;
                p.this.ig = i;
                p.this.mp = i2;
                p.this.no = new ArrayList();
                for (mp mpVar : list) {
                    if (mpVar != null && mpVar.d() != null) {
                        p.this.no.addAll(mpVar.d());
                    }
                }
                int i3 = i;
                int i4 = (i3 <= 0 || i3 > 20) ? 2 : i3;
                int i5 = i2;
                int i6 = (i5 <= 0 || i5 > 10) ? 2 : i5;
                List dq2 = p.this.dq((List<mp>) list);
                if (dq2.size() > 0) {
                    p.this.new dq(activity, dq2, i4, i6, new d() { // from class: com.bytedance.msdk.core.s.d.p.3.1
                        @Override // com.bytedance.msdk.core.s.d.p.d
                        public void dq(boolean z) {
                            if (z) {
                                return;
                            }
                            com.bytedance.msdk.core.o.s.p().dq(p.this.s);
                        }
                    }).dq();
                }
            }
        });
    }

    public void dq(final Context context, final String str, final int i) {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.s.d.p.1
            @Override // java.lang.Runnable
            public void run() {
                p.this.dq(context, str, 2, i, (ox) null);
            }
        });
    }

    public void dq(Context context, String str, int i, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.d.s sVar, ox oxVar) {
        com.bytedance.msdk.core.s.d.ox dq2 = no.dq(i, context, str, dVar == null ? 0 : dVar.le());
        if (dq2 != null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 预缓存补充请求发起 reqType: " + i);
            dq2.dq(dVar, sVar, oxVar);
        }
    }

    public void dq(String str, int i) {
        this.f1019d.put(str, Integer.valueOf(i));
    }

    public void dq(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.ox.put(str, Long.valueOf(j));
    }

    public void dq(String str, com.bytedance.msdk.api.dq.d dVar) {
        if (dVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.p.put(str, dVar);
    }

    public void dq(String str, ig igVar) {
        if (dq(str) == null || dq(str).longValue() == igVar.dq()) {
            ConcurrentHashMap<String, List<ig>> concurrentHashMap = this.s.get(str);
            String b2 = igVar.dq.b();
            if (TextUtils.isEmpty(b2)) {
                return;
            }
            if (concurrentHashMap == null) {
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                copyOnWriteArrayList.add(igVar);
                ConcurrentHashMap<String, List<ig>> concurrentHashMap2 = new ConcurrentHashMap<>();
                concurrentHashMap2.put(b2, copyOnWriteArrayList);
                this.s.put(str, concurrentHashMap2);
                return;
            }
            List<ig> list = concurrentHashMap.get(b2);
            if (list != null) {
                list.add(igVar);
                return;
            }
            CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList();
            copyOnWriteArrayList2.add(igVar);
            concurrentHashMap.put(b2, copyOnWriteArrayList2);
        }
    }

    public void dq(String str, String str2, long j, com.bytedance.msdk.api.dq dqVar) {
        if (dq(str) == null || dq(str).longValue() == j) {
            Map<String, com.bytedance.msdk.api.dq> map = this.iw.get(str);
            if (map == null) {
                map = new HashMap<>();
                this.iw.put(str, map);
            }
            map.put(str2, dqVar);
        }
    }

    public boolean dq(String str, com.bytedance.msdk.api.dq.d dVar, String str2) {
        boolean z;
        this.mn.put(str, Boolean.FALSE);
        com.bytedance.msdk.core.s.d.d dVar2 = this.ia.get(str);
        if (dVar2 == null) {
            return false;
        }
        List<com.bytedance.msdk.core.no.no> h_ = dVar2.h_();
        if (com.bytedance.msdk.dq.s.ox.d()) {
            for (com.bytedance.msdk.core.no.no noVar : h_) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(str) + "waterfall: " + noVar.jy() + ", loadSort: " + noVar.wp() + ", showSort: " + noVar.e() + ", eCpm: " + noVar.k());
            }
        }
        boolean[] zArr = {true};
        String dq2 = dq(h_, str, dVar, dVar2, zArr);
        ox(str, dVar);
        ConcurrentHashMap<String, List<ig>> concurrentHashMap = this.s.get(str);
        if (concurrentHashMap != null) {
            for (int i = 0; i < h_.size(); i++) {
                List<ig> list = concurrentHashMap.get(h_.get(i).cd());
                if (list != null && list.size() > 0) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (dq2 != null) {
            if (z) {
                com.bytedance.msdk.s.iw.dq(this.p.get(str), dq2, str2);
                return z;
            }
            dVar.d(3);
            if (zArr[0]) {
                dVar.d(1);
            }
            com.bytedance.msdk.s.iw.dq(dVar, dq2, str2);
        }
        return z;
    }

    public int ox() {
        return this.ig;
    }

    public com.bytedance.msdk.core.s.d.d ox(String str) {
        return this.ia.get(str);
    }

    public boolean ox(String str, int i) {
        int d2 = d(str, i);
        return d2 == 2 || d2 == 3 || d2 == 4;
    }

    public int p() {
        return this.mp;
    }

    public List<ig> p(String str) {
        ArrayList arrayList = new ArrayList();
        ConcurrentHashMap<String, List<ig>> concurrentHashMap = this.s.get(str);
        if (concurrentHashMap != null) {
            Iterator<String> it = concurrentHashMap.keySet().iterator();
            while (it.hasNext()) {
                List<ig> list = concurrentHashMap.get(it.next());
                if (list != null && list.size() > 0) {
                    arrayList.addAll(list);
                }
            }
        }
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        }
        Map<String, com.bytedance.msdk.api.dq> map = this.iw.get(str);
        if (map != null) {
            map.clear();
        }
        return arrayList;
    }

    public Map<String, List<ig>> s(String str) {
        return this.s.get(str);
    }
}
