package com.bytedance.msdk.core.s.dq;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.msdk.api.dq.d;
import com.bytedance.msdk.core.mn.mn;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.core.no.o;
import com.bytedance.msdk.core.no.ox;
import com.bytedance.msdk.core.s.d.ig;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.dq;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.ir;
import com.bytedance.msdk.s.iw;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.awf;
import g.dub;
import g.tn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public class dq extends com.bytedance.msdk.core.s.dq {
    private static volatile dq ia;
    private final String[] dq = {MediationConstant.ADN_UNITY, MediationConstant.ADN_KS};

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, Integer> f1025d = new HashMap();
    private final Map<String, Integer> ox = new HashMap();
    private final Map<String, CopyOnWriteArrayList<ig>> p = new ConcurrentHashMap();
    private final Map<String, no> s = new HashMap();
    private final Map<String, String> iw = new HashMap();
    private final Map<String, Integer> mn = new HashMap();
    private final Comparator<ig> kk = new Comparator<ig>() { // from class: com.bytedance.msdk.core.s.dq.dq.4
        @Override // java.util.Comparator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int compare(ig igVar, ig igVar2) {
            s sVar;
            if (igVar == null || igVar2 == null || (sVar = igVar.dq) == null || igVar2.dq == null) {
                return 0;
            }
            return ((int) sVar.z()) - ((int) igVar2.dq.z());
        }
    };

    /* renamed from: com.bytedance.msdk.core.s.dq.dq$dq, reason: collision with other inner class name */
    public class C0062dq implements dq.InterfaceC0063dq {

        /* renamed from: d, reason: collision with root package name */
        private final d f1028d;
        private List<s> ox;
        private boolean p;

        public C0062dq(d dVar) {
            this.f1028d = dVar;
        }

        @Override // com.bytedance.msdk.dq.dq.InterfaceC0063dq
        public void dq(com.bytedance.msdk.api.dq dqVar, ox oxVar) {
            if (dqVar == null || oxVar == null) {
                return;
            }
            StringBuilder sb = new StringBuilder("--==-- 广告复用:show时预请求广告load失败 --- ");
            sb.append(oxVar.no());
            sb.append(", ");
            sb.append(oxVar.mp());
            sb.append(", ");
            sb.append(com.bytedance.msdk.d.dq.dq(oxVar.d(), oxVar.dq()));
            sb.append(", errCode: ");
            sb.append(dqVar.ox);
            sb.append(",msg=");
            dub.k(sb, dqVar.p, "TTMediationSDK");
        }

        @Override // com.bytedance.msdk.dq.dq.InterfaceC0063dq
        public void dq(s sVar, ox oxVar) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(sVar);
            dq(arrayList, oxVar);
        }

        @Override // com.bytedance.msdk.dq.dq.InterfaceC0063dq
        public void dq(List<s> list, ox oxVar) {
            if (list == null || list.size() <= 0) {
                return;
            }
            this.ox = list;
            ArrayList arrayList = new ArrayList();
            for (s sVar : list) {
                if (sVar != null) {
                    if (this.p) {
                        sVar.kk(true);
                    }
                    sVar.dq(SystemClock.elapsedRealtime());
                    arrayList.add(new ig(sVar, 0L, this.f1028d));
                }
            }
            if (arrayList.size() > 0) {
                s sVar2 = ((ig) arrayList.get(0)).dq;
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:show时预请求广告load成功 --- " + sVar2.m() + ", adType: " + com.bytedance.msdk.d.dq.dq(sVar2.qz(), sVar2.cv()) + ", adnSlotId: " + sVar2.b() + ", ad个数: " + arrayList.size());
                dq.this.dq(sVar2.b(), (List<ig>) arrayList, false);
            }
        }

        @Override // com.bytedance.msdk.dq.dq.InterfaceC0063dq
        public void m_() {
            this.p = true;
            List<s> list = this.ox;
            if (list == null || list.size() <= 0) {
                return;
            }
            Iterator<s> it = this.ox.iterator();
            while (it.hasNext()) {
                it.next().kk(true);
            }
            s sVar = this.ox.get(0);
            if (sVar != null) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:show时预请求广告cache成功 --- " + sVar.m() + ", adType: " + com.bytedance.msdk.d.dq.dq(sVar.qz(), sVar.cv()) + ", adnSlotId: " + sVar.b() + ", ad个数: " + this.ox.size());
            }
        }
    }

    private dq() {
    }

    private int d(String str, d dVar, boolean z) {
        int i;
        CopyOnWriteArrayList<ig> copyOnWriteArrayList = this.p.get(str);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:当前没有广告缓存 -------adnSlotId: " + str);
            return 1;
        }
        String k = dVar != null ? dVar.k() : "";
        ArrayList arrayList = new ArrayList();
        ig igVar = null;
        boolean z2 = false;
        for (ig igVar2 : copyOnWriteArrayList) {
            MediationConstant.AdIsReadyStatus kx = igVar2.dq.kx();
            if (kx == MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY ? dq(k, igVar2.dq) : kx != MediationConstant.AdIsReadyStatus.AD_IS_READY) {
                copyOnWriteArrayList.remove(igVar2);
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:广告过期了 -------: " + igVar2.dq.m() + ", adSlotId: " + str);
                i = 5;
            } else if (com.bytedance.msdk.core.s.dq.dq(igVar2.ox(), dVar, igVar2.dq)) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:复用成功：--------" + igVar2.dq.m() + ", adSlotId: " + str);
                z2 = true;
            } else {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:AdSlot不符合 -------: " + igVar2.dq.m() + ", adSlotId: " + str);
                i = 6;
            }
            if (igVar == null) {
                igVar = igVar2;
            }
            com.bytedance.msdk.core.s.d.dq dqVar = new com.bytedance.msdk.core.s.d.dq();
            dqVar.p(igVar2.dq.ae());
            dqVar.s(igVar2.dq.wq());
            dqVar.d(igVar2.dq.b());
            dqVar.d(i);
            dqVar.dq(igVar2.dq.xi() ? 1 : 0);
            arrayList.add(dqVar);
        }
        if (z2) {
            return 3;
        }
        if (!z || igVar == null) {
            return 2;
        }
        iw.dq(dVar, igVar.dq, dq(arrayList));
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, List<ig>> d(List<s> list, String str, d dVar, int i, s sVar) {
        HashMap hashMap = new HashMap();
        for (s sVar2 : list) {
            if (sVar2 != null && sVar2 != sVar && s(str, sVar2.b(), i) == 2 && sVar2.u(str) && !sVar2.xi()) {
                List list2 = (List) hashMap.get(sVar2.b());
                if (list2 == null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new ig(sVar2, 0L, dVar));
                    hashMap.put(sVar2.b(), arrayList);
                } else {
                    list2.add(new ig(sVar2, 0L, dVar));
                }
            }
        }
        return hashMap;
    }

    public static dq dq() {
        if (ia == null) {
            synchronized (dq.class) {
                try {
                    if (ia == null) {
                        ia = new dq();
                    }
                } finally {
                }
            }
        }
        return ia;
    }

    private String dq(List<com.bytedance.msdk.core.s.d.dq> list) {
        if (list.size() > 0) {
            StringBuilder sb = new StringBuilder("[");
            for (int i = 0; i < list.size(); i++) {
                sb.append(list.get(i).dq());
                if (i == list.size() - 1) {
                    sb.append("]");
                } else {
                    sb.append(",");
                }
            }
            try {
                return new JSONArray(sb.toString()).toString();
            } catch (JSONException e2) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用：adCannotUseInfo json err: " + e2.getMessage());
            }
        }
        return list.size() > 0 ? "json error" : "[]";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, d dVar, Map<String, Object> map, Context context, com.bytedance.msdk.api.p.no noVar, o oVar) {
        String dq;
        if (dVar == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:show时预请求取消，adSlot为空 -------: " + str);
            return;
        }
        if (context == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:show时预请求取消，context为null -------: " + str);
            return;
        }
        no s = s(dVar.k(), str);
        if (s != null) {
            try {
                dq = mn.dq(s.mn(), mn.dq(s.jy()), com.bytedance.msdk.d.dq.dq(s.mp(), s.iw()));
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (!TextUtils.isEmpty(dq) || !mn.d(dq) || s == null) {
                StringBuilder sb = new StringBuilder("--==-- 广告复用:show时预请求取消，className或wfcBean为空, className: ");
                sb.append(dq);
                sb.append(", wfcBean: ");
                sb.append(s);
                sb.append(", adnSlotId: ");
                dub.k(sb, str, "TTMediationSDK");
            }
            for (String str2 : this.dq) {
                if (TextUtils.equals(str2, s.jy())) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:show时预请求取消，" + str2 + "为单例模式 -------: " + str);
                    return;
                }
            }
            int intValue = this.mn.get(str) != null ? this.mn.get(str).intValue() : -1;
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:show时预请求开始 -------: " + str);
            com.bytedance.msdk.dq.dq d2 = mn.d(s);
            if (d2 == null) {
                iw.dq(s, dVar, 4, 1);
                return;
            }
            if (com.bytedance.msdk.core.kk.no.dq().ox(dVar.k(), s.cd())) {
                d2.dq(new C0062dq(dVar));
                d2.dq(context, s, mn.dq(s, dVar, map, noVar, 4, 1, true, -1L), dVar, oVar, intValue);
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:show时预请求已发完 -------: " + str);
                return;
            }
            com.bytedance.msdk.dq.s.ox.dq("TMe", "adn 代码位预请求触发次数拦截............");
            Pair<String, String> dq2 = com.bytedance.msdk.core.kk.no.dq().dq(dVar.k(), s.cd());
            if (dq2 != null) {
                com.bytedance.msdk.api.d.d dVar2 = new com.bytedance.msdk.api.d.d(41041, com.bytedance.msdk.api.dq.dq(41041), (String) dq2.second, (String) dq2.first);
                int i = intValue;
                iw.dq(s, dVar, dq().dq(s.cd()), true, 2, i, 4, 1, (com.bytedance.msdk.api.dq) dVar2, -1L, false, false);
                iw.dq(dVar2, dVar, s, i, 4, 1, dq().dq(s.cd()), 0L, (String) null, (String) null, (String) null, 0L);
                return;
            }
            return;
        }
        dq = null;
        if (!TextUtils.isEmpty(dq)) {
        }
        StringBuilder sb2 = new StringBuilder("--==-- 广告复用:show时预请求取消，className或wfcBean为空, className: ");
        sb2.append(dq);
        sb2.append(", wfcBean: ");
        sb2.append(s);
        sb2.append(", adnSlotId: ");
        dub.k(sb2, str, "TTMediationSDK");
    }

    private boolean dq(List<ig> list, ig igVar) {
        for (ig igVar2 : list) {
            if (igVar2 != null && igVar != null && igVar2.dq == igVar.dq) {
                return true;
            }
        }
        return false;
    }

    public void d() {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.s.dq.dq.1
            @Override // java.lang.Runnable
            public void run() {
                int i;
                int i2;
                String str;
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用lowMemory，start clean");
                int i3 = 0;
                int i4 = 0;
                for (Map.Entry entry : dq.this.p.entrySet()) {
                    List<ig> list = (List) entry.getValue();
                    if (list != null && list.size() > 0) {
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用lowMemory，adnSlotId: " + ((String) entry.getKey()) + ", 清理前, 缓存总数: " + list.size());
                        int i5 = 1;
                        int i6 = 0;
                        for (ig igVar : list) {
                            if (igVar != null && igVar.dq != null) {
                                if (igVar.ox() != null) {
                                    str = igVar.ox().k();
                                    i2 = igVar.ox().h();
                                } else {
                                    i2 = i5;
                                    str = "";
                                }
                                if (igVar.dq.xi() || !igVar.dq.u(str)) {
                                    list.remove(igVar);
                                    i6++;
                                }
                                i5 = i2;
                            }
                        }
                        if (list.size() > i5) {
                            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用lowMemory，adnSlotId: " + ((String) entry.getKey()) + ", 清理无效广告后仍需清理，缓存总数: " + list.size() + "，adCount: " + i5 + ", invalidCnt: " + i6);
                            i = 0;
                            for (ig igVar2 : list) {
                                if (list.size() <= i5) {
                                    break;
                                }
                                list.remove(igVar2);
                                i++;
                            }
                        } else {
                            i = 0;
                        }
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用lowMemory，adnSlotId: " + ((String) entry.getKey()) + ", 清理后，缓存总数: " + list.size() + ", adCount: " + i5 + ", invalidCnt: " + i6 + ", foceCleanCnt：" + i);
                        i3 += i6;
                        i4 += i;
                    }
                    bl.dq(i3, i4);
                }
            }
        });
    }

    public synchronized int dq(String str, d dVar, boolean z) {
        String k;
        if (dVar != null) {
            try {
                k = dVar.k();
            } catch (Throwable th) {
                throw th;
            }
        } else {
            k = "";
        }
        if (d(k, str) == 0) {
            return d(str, dVar, z);
        }
        CopyOnWriteArrayList<ig> copyOnWriteArrayList = this.p.get(str);
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用:当前没有广告缓存 -------adnSlotId: " + str);
            return 1;
        }
        ig igVar = null;
        ArrayList arrayList = z ? new ArrayList() : null;
        boolean z2 = false;
        for (ig igVar2 : copyOnWriteArrayList) {
            int dq = dq(igVar2, igVar2.ox(), dVar, "广告复用");
            if (dq == -1) {
                z2 = true;
            } else {
                if (dq != 6) {
                    copyOnWriteArrayList.remove(igVar2);
                }
                if (z) {
                    if (igVar == null) {
                        igVar = igVar2;
                    }
                    com.bytedance.msdk.core.s.d.dq dqVar = new com.bytedance.msdk.core.s.d.dq();
                    dqVar.p(igVar2.dq.ae());
                    dqVar.s(igVar2.dq.wq());
                    dqVar.d(igVar2.dq.b());
                    dqVar.d(dq);
                    dqVar.dq(igVar2.dq.xi() ? 1 : 0);
                    arrayList.add(dqVar);
                }
            }
        }
        if (z2) {
            return 3;
        }
        if (z && igVar != null) {
            iw.dq(dVar, igVar.dq, dq(arrayList));
        }
        return 2;
    }

    public String dq(String str) {
        return this.iw.get(str);
    }

    public synchronized List<ig> dq(String str, d dVar, int i) {
        try {
            CopyOnWriteArrayList<ig> copyOnWriteArrayList = this.p.get(str);
            if (copyOnWriteArrayList == null) {
                return null;
            }
            int h = dVar != null ? dVar.h() : 1;
            ArrayList arrayList = new ArrayList();
            int s = s(dVar != null ? dVar.k() : "", str, i);
            if (s == 1) {
                for (int i2 = 0; arrayList.size() < h && i2 < copyOnWriteArrayList.size(); i2++) {
                    if (!copyOnWriteArrayList.get(i2).d() && com.bytedance.msdk.core.s.dq.dq(copyOnWriteArrayList.get(i2).ox(), dVar, copyOnWriteArrayList.get(i2).dq)) {
                        arrayList.add(copyOnWriteArrayList.get(i2));
                    }
                }
                for (int i3 = 0; arrayList.size() < h && i3 < copyOnWriteArrayList.size(); i3++) {
                    if (copyOnWriteArrayList.get(i3).d() && com.bytedance.msdk.core.s.dq.dq(copyOnWriteArrayList.get(i3).ox(), dVar, copyOnWriteArrayList.get(i3).dq)) {
                        arrayList.add(copyOnWriteArrayList.get(i3));
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((ig) it.next()).dq(true);
                }
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 复用模式1，不从复用池移除，获取缓存: " + str + ", " + arrayList.size());
            } else if (s == 2) {
                for (ig igVar : copyOnWriteArrayList) {
                    if (arrayList.size() >= h) {
                        break;
                    }
                    if (igVar != null && com.bytedance.msdk.core.s.dq.dq(igVar.ox(), dVar, igVar.dq)) {
                        copyOnWriteArrayList.remove(igVar);
                        arrayList.add(igVar);
                    }
                }
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 复用模式2，从复用池移除，获取缓存: " + str + ", " + arrayList.size());
            }
            return arrayList;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void dq(final String str, final d dVar, final Map<String, Object> map, final boolean z, final com.bytedance.msdk.api.p.no noVar, final o oVar, final Context context) {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.s.dq.dq.2
            @Override // java.lang.Runnable
            public void run() {
                String str2;
                String str3;
                ig igVar;
                List<ig> list = (List) dq.this.p.get(str);
                ArrayList arrayList = new ArrayList();
                if (list != null && list.size() > 0) {
                    for (ig igVar2 : list) {
                        if (igVar2 != null && igVar2.dq.xi()) {
                            list.remove(igVar2);
                            arrayList.add(igVar2);
                        }
                    }
                }
                if (com.bytedance.msdk.dq.s.ox.d()) {
                    if (arrayList.size() <= 0 || (igVar = (ig) arrayList.get(0)) == null) {
                        str2 = "";
                        str3 = str2;
                    } else {
                        str3 = com.bytedance.msdk.d.dq.dq(igVar.dq.qz(), igVar.dq.cv());
                        str2 = igVar.dq.m();
                    }
                    StringBuilder o = tn.o("--==-- 广告复用:show时缓存移除 -----：", str2, ", ", str3, ", ");
                    o.append(str);
                    dub.k(o, arrayList.size() > 0 ? ", size: " + arrayList.size() : "移除广告数为0", "TTMediationSDK");
                }
                d dVar2 = dVar;
                String k = dVar2 != null ? dVar2.k() : "";
                d dVar3 = dVar;
                int le = dVar3 != null ? dVar3.le() : 0;
                d dVar4 = dVar;
                boolean z2 = dVar4 == null || dVar4.le() == 1;
                if (com.bytedance.msdk.core.dq.d().dq(k, str, le) || !z || z2 || !dq.this.ox(k, str)) {
                    dub.k(new StringBuilder("--==-- 广告复用:show时预请求取消，因为：已发起waterfall预加载，或feed多广告，或未开启adn预加载，或是banner轮播 --: "), str, "TTMediationSDK");
                } else {
                    dq.this.dq(str, dVar, (Map<String, Object>) map, context, noVar, oVar);
                }
            }
        });
    }

    public void dq(String str, String str2, no noVar, int i) {
        if (noVar != null) {
            this.s.put(str + "_" + str2, noVar);
        }
        this.mn.put(str2, Integer.valueOf(i));
    }

    public void dq(String str, List<ig> list, boolean z) {
        if (list == null || list.size() <= 0) {
            return;
        }
        CopyOnWriteArrayList<ig> copyOnWriteArrayList = this.p.get(str);
        if (copyOnWriteArrayList != null) {
            for (ig igVar : list) {
                if (!dq(copyOnWriteArrayList, igVar)) {
                    copyOnWriteArrayList.add(igVar);
                }
            }
        } else {
            this.p.put(str, new CopyOnWriteArrayList<>(list));
        }
        if (z) {
            ir.dq(this.p.get(str), this.kk);
        }
    }

    public void dq(final List<s> list, final String str, final d dVar, final int i, final s sVar) {
        if (list == null || list.isEmpty() || dVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.s.dq.dq.3
            @Override // java.lang.Runnable
            public void run() {
                for (Map.Entry entry : dq.this.d(list, str, dVar, i, sVar).entrySet()) {
                    String str2 = (String) entry.getKey();
                    List<ig> list2 = (List) entry.getValue();
                    if (!TextUtils.isEmpty(str2) && list2 != null && list2.size() > 0) {
                        dq.this.dq(str2, list2, true);
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==-- 广告复用，show后放回复用池：adnSlotId:" + str2 + ", 个数：" + list2.size());
                    }
                }
            }
        });
    }

    public void iw(String str, String str2, int i) {
        this.ox.put(awf.i(str, "_", str2), Integer.valueOf(i));
    }

    public void ox(String str, String str2, int i) {
        this.f1025d.put(awf.i(str, "_", str2), Integer.valueOf(i));
    }

    public boolean ox(String str, String str2) {
        Integer num = this.ox.get(str + "_" + str2);
        return num != null && num.intValue() == 1;
    }

    public void p(String str, String str2) {
        this.iw.put(str, str2);
    }

    public boolean p(String str, String str2, int i) {
        if (i == 2) {
            return false;
        }
        Integer num = this.f1025d.get(str + "_" + str2);
        return num != null && (num.intValue() == 1 || num.intValue() == 2);
    }

    public int s(String str, String str2, int i) {
        if (i == 2) {
            return 0;
        }
        Integer num = this.f1025d.get(str + "_" + str2);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public no s(String str, String str2) {
        return this.s.get(str + "_" + str2);
    }
}
