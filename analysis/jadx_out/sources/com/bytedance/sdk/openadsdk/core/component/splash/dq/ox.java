package com.bytedance.sdk.openadsdk.core.component.splash.dq;

import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.core.component.splash.dq.dq;
import com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.iw;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ji;
import com.bytedance.sdk.openadsdk.core.p.ox.s;
import com.bytedance.sdk.openadsdk.core.r.ds;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.h.mn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox extends dq {
    private volatile s iw;
    private static volatile ConcurrentHashMap<String, d> mn = new ConcurrentHashMap<>();
    private static volatile ConcurrentHashMap<String, List<String>> ia = new ConcurrentHashMap<>();

    private List<String> dq(String str) {
        List<String> list = ia.get(str);
        StringBuilder sb = new StringBuilder("getUsedReqIdList: list : ");
        sb.append(list == null ? 0 : list.size());
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", sb.toString());
        return list;
    }

    private void dq(final Runnable runnable) {
        if (mn.dq()) {
            com.bytedance.sdk.component.o.mn.d(new kk("") { // from class: com.bytedance.sdk.openadsdk.core.component.splash.dq.ox.4
                @Override // java.lang.Runnable
                public void run() {
                    runnable.run();
                }
            });
        } else {
            runnable.run();
        }
    }

    private void dq(String str, String str2, String str3, int i) {
        List<String> list;
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "updateMemoryRecord>> start rit: " + str2 + " status: " + i);
        mn.put(str, new d(str3, i));
        if (i <= 1) {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "updateMemoryRecord>> :status <= CACHE_STATUS_NOUSE");
            return;
        }
        List<String> list2 = ia.get(str2);
        StringBuilder sb = new StringBuilder("updateMemoryRecord>>: list1 : ");
        sb.append(list2 == null ? 0 : list2.size());
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", sb.toString());
        if (list2 == null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str3);
            list = arrayList;
        } else {
            if (list2.contains(str3)) {
                return;
            }
            list2.add(str3);
            list = list2;
        }
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "updateMemoryRecord>>: list2 : " + list.size());
        ia.put(str2, list);
    }

    private void s() {
        long currentTimeMillis = System.currentTimeMillis();
        this.iw = new s(3);
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "NewCache 初始化耗时: " + (System.currentTimeMillis() - currentTimeMillis));
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.dq.dq
    public void d() {
        if (this.iw == null) {
            synchronized (this) {
                try {
                    if (this.iw == null) {
                        s();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    @Override // com.bytedance.sdk.openadsdk.core.component.splash.dq.dq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn mnVar, final String str, dq.InterfaceC0152dq interfaceC0152dq) {
        final s.d dVar;
        boolean bl;
        long currentTimeMillis;
        s.d dq;
        if (str == null || interfaceC0152dq == null) {
            return;
        }
        if (this.iw == null) {
            d();
        }
        iw iwVar = null;
        try {
            currentTimeMillis = System.currentTimeMillis();
            List<String> dq2 = dq(str);
            StringBuilder sb = new StringBuilder("readcache start >>  rit: ");
            sb.append(str);
            sb.append("  usedReqIdList: ");
            sb.append(dq2 == null ? 0 : dq2.size());
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", sb.toString());
            dq = this.iw.dq(str, dq2);
        } catch (Throwable unused) {
        }
        try {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "readcache-getCacheMeta cost: " + (System.currentTimeMillis() - currentTimeMillis));
        } catch (Throwable unused2) {
            iwVar = dq;
            dVar = iwVar;
            bl = com.bytedance.sdk.openadsdk.core.ox.p.dq().bl();
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "isSplashCacheRemoveChange: " + bl);
            if (bl) {
            }
        }
        if (dq == 0) {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "readcache-cacheMeta: null ");
            if (mnVar != null) {
                mnVar.p(0);
                mnVar.d(1);
                mnVar.dq("no cache");
            }
            interfaceC0152dq.dq();
            return;
        }
        String str2 = dq.s;
        String str3 = str + str2;
        d dVar2 = mn.get(str3);
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "readcache-mapkey: " + str3);
        if (dVar2 != null && dVar2.f2709d > 1) {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "readcache-cacheRecord != null && cacheRecord.status > CACHE_STATUS_NOUSE");
            if (mnVar != null) {
                mnVar.p(0);
                mnVar.d(1);
                mnVar.dq("no cache");
            }
            interfaceC0152dq.dq();
            return;
        }
        dq(str3, str, str2, 2);
        com.bytedance.sdk.openadsdk.core.r.dq dqVar = ji.dq.dq(new JSONObject(com.bytedance.sdk.component.utils.dq.ox(dq.ox))).ia;
        iw iwVar2 = new iw(dqVar, true);
        j jVar = (dqVar == null || dqVar.d() == null || dqVar.d().isEmpty()) ? null : dqVar.d().get(0);
        if (jVar != null) {
            iwVar2.dq(jVar);
        }
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "readcache-updateMemoryRecord start >>  rit: " + str + "  reqId: " + str2);
        if (com.bytedance.sdk.openadsdk.core.live.d.dq().ox(jVar) != 3) {
            iwVar = iwVar2;
        } else {
            iwVar2.dq((j) null);
        }
        interfaceC0152dq.dq(iwVar);
        dVar = dq;
        bl = com.bytedance.sdk.openadsdk.core.ox.p.dq().bl();
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "isSplashCacheRemoveChange: " + bl);
        if (bl) {
            dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.dq.ox.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        long currentTimeMillis2 = System.currentTimeMillis();
                        ox.this.iw.dq(str, dVar.s);
                        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "readcache-deleteCacheMeta start >>  rit: " + str + "  reqId: " + dVar.s + "  cost: " + (System.currentTimeMillis() - currentTimeMillis2));
                    } catch (Exception unused3) {
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.dq.dq
    public void dq(com.bytedance.sdk.openadsdk.core.component.splash.ox.ox.p<com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.kk, com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.mn> pVar, final j jVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, boolean z) {
        final String mn2;
        String el;
        String str;
        if (jVar == null || dVar == null) {
            return;
        }
        if (this.iw == null) {
            d();
        }
        try {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "removeCache>> start ");
            mn2 = dVar.mn();
            el = jVar.el();
            str = mn2 + el;
        } catch (Throwable unused) {
        }
        if (this.s.get()) {
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "removeCache-mIsRemoveCacheAd: true");
            return;
        }
        this.s.set(true);
        dq(str, mn2, el, 3);
        com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "removeCache-updateMemoryRecord: 完成");
        dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.dq.ox.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    long currentTimeMillis = System.currentTimeMillis();
                    ox.this.iw.dq(mn2, jVar.el());
                    com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "removeCache-deleteCacheMeta  rit: " + mn2 + "  cost: " + (System.currentTimeMillis() - currentTimeMillis));
                } catch (Throwable unused2) {
                }
            }
        });
        if (pVar != null) {
            pVar.dq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.dq.dq
    public void dq(final ds dsVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar, boolean z) {
        if (dVar == null || dsVar == null || dsVar.dq() == null) {
            return;
        }
        if (this.iw == null) {
            d();
        }
        try {
            final String mn2 = dVar.mn();
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "saveCache start >>  rit: " + mn2 + "  isUsing: " + z);
            final j dq = dsVar.dq();
            String el = dq.el();
            String str = mn2 + el;
            if (mn.contains(str)) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "save-updateMemoryRecord start >>  rit: " + mn2 + "  reqId: " + el);
            dq(str, mn2, el, z ? 2 : 1);
            dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.dq.ox.1
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    ox.this.iw.dq(mn2, new s.d(com.bytedance.sdk.component.utils.dq.d(dsVar.d().ox().toString()), dq.sp(), 1000 * dq.ix(), dq.el()), false, c.jy(dq));
                    com.bytedance.sdk.openadsdk.core.iw.dq.dq("lqmt", "saveMeta >>  rit: " + mn2 + " saveDb cost: " + (System.currentTimeMillis() - currentTimeMillis));
                }
            });
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.dq.dq
    public void ox() {
        if (this.iw == null) {
            d();
        }
        if (this.iw != null) {
            this.iw.dq();
        }
    }
}
