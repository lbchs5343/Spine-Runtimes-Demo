package com.bytedance.msdk.ox.s.dq;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.msdk.api.p.no;
import com.bytedance.msdk.core.mn.mn;
import com.bytedance.msdk.core.no.o;
import com.bytedance.msdk.core.s.d.p;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.msdk.dq.s.ox;
import com.bytedance.msdk.ia.jy;
import com.bytedance.msdk.ia.n;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class d {
    private long bl;
    protected SoftReference<Context> dq;

    /* renamed from: f, reason: collision with root package name */
    private com.bytedance.msdk.ox.d.dq.dq f1234f;
    private p.ox h;
    private Handler i;
    private no ig;
    protected s iw;
    private String jy;
    private com.bytedance.msdk.core.no.d mp;
    private com.bytedance.msdk.api.dq.d no;
    private dq q;

    /* renamed from: d, reason: collision with root package name */
    protected List<s> f1232d = new CopyOnWriteArrayList();
    protected List<s> ox = new CopyOnWriteArrayList();
    protected List<s> p = new CopyOnWriteArrayList();
    protected List<s> s = new CopyOnWriteArrayList();
    private final AtomicBoolean fw = new AtomicBoolean(false);
    private final AtomicBoolean cd = new AtomicBoolean(false);
    private final AtomicBoolean gh = new AtomicBoolean(false);
    private volatile boolean r = false;
    protected Map<String, com.bytedance.msdk.dq.dq> mn = new ConcurrentHashMap();
    protected long ia = 0;
    private long le = 0;
    private AtomicBoolean k = new AtomicBoolean(false);
    private boolean wp = false;

    /* renamed from: e, reason: collision with root package name */
    private boolean f1233e = false;
    private boolean kx = false;
    private final AtomicInteger ji = new AtomicInteger(0);
    protected Map<String, Object> kk = new ConcurrentHashMap();
    protected o o = new o();
    private int n = 0;
    private ConcurrentHashMap<String, com.bytedance.msdk.api.d> op = new ConcurrentHashMap<>();

    private d() {
    }

    public static d dq(SoftReference<Context> softReference, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.ox.d.dq.dq dqVar) {
        d dVar2 = new d();
        com.bytedance.msdk.core.no.d dq = com.bytedance.msdk.core.dq.d().dq(dVar.k(), dVar.le(), 100);
        dVar.dq(dq);
        dVar2.no = dVar;
        dVar2.mp = dq;
        if (dq != null) {
            dVar2.kk.put("render_control", Integer.valueOf(dq.dq()));
        }
        dVar2.no.p(com.bytedance.msdk.core.dq.d().ob());
        dVar2.no.d(com.bytedance.msdk.core.dq.d().kk());
        dVar2.no.dq(mn.p());
        dVar2.no.dq(mn.ox());
        dVar2.no.ox(p.dq().d(dVar2.no.k(), com.bytedance.msdk.core.dq.d().ob()));
        dVar2.o.ox = com.bytedance.msdk.core.dq.d().kk();
        dVar2.dq = softReference;
        dVar2.f1234f = dqVar;
        dVar2.q = new dq();
        return dVar2;
    }

    private int j() {
        List<com.bytedance.msdk.core.no.no> list;
        com.bytedance.msdk.core.no.d dVar = this.mp;
        int i = 0;
        if (dVar == null) {
            return 0;
        }
        Map<Integer, List<com.bytedance.msdk.core.no.no>> kx = dVar.kx();
        if (kx != null && kx.size() != 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(kx.keySet());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (this.q.ox(num.intValue()) && (list = kx.get(num)) != null) {
                    i = list.size() + i;
                }
            }
        }
        return i;
    }

    private void nh() {
        if (k() || d() || ox() || !dq()) {
            return;
        }
        if (vf()) {
            s();
        } else {
            final long dq = com.bytedance.msdk.core.dq.d().dq(this.no.le(), this.no.k());
            iw.dq(new Runnable() { // from class: com.bytedance.msdk.ox.s.dq.d.7
                @Override // java.lang.Runnable
                public void run() {
                    ox.ox("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(d.this.mp) + "m-sdk----设置 cacheTimeout 已到时间【" + dq + "】，给外部invokeAdVideoCache ...");
                    d.this.s();
                }
            }, dq);
        }
    }

    private void s(final boolean z) {
        iw.dq(new Runnable() { // from class: com.bytedance.msdk.ox.s.dq.d.8
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.h != null) {
                    d.this.h.dq(d.this.no.k(), z, 0, null);
                }
            }
        });
    }

    private boolean vf() {
        if (mn() != null) {
            Iterator<s> it = mn().iterator();
            while (it.hasNext()) {
                if (it.next().fx()) {
                    return true;
                }
            }
        }
        if (o() != null) {
            Iterator<s> it2 = o().iterator();
            while (it2.hasNext()) {
                if (it2.next().fx()) {
                    return true;
                }
            }
        }
        if (ia() == null) {
            return false;
        }
        Iterator<s> it3 = ia().iterator();
        while (it3.hasNext()) {
            if (it3.next().fx()) {
                return true;
            }
        }
        return false;
    }

    private boolean wn() {
        return !this.mp.n() || this.q.s(0) || this.q.mn();
    }

    public Map<String, Object> bl() {
        return this.kk;
    }

    public o c() {
        return this.o;
    }

    public boolean cd() {
        return fw() && wn();
    }

    public String ce() {
        return this.jy;
    }

    public int d(int i) {
        if (this.q.dq() == null) {
            return -1;
        }
        return this.q.dq().indexOf(Integer.valueOf(i)) + 1;
    }

    public void d(long j) {
        this.ia = j;
    }

    public void d(String str) {
        this.jy = str;
    }

    public void d(boolean z) {
        this.wp = z;
    }

    public boolean d() {
        return this.cd.get();
    }

    public void dq(int i) {
        this.n = i;
    }

    public void dq(long j) {
        this.bl = j;
    }

    public void dq(Handler handler) {
        this.i = handler;
    }

    public void dq(com.bytedance.msdk.api.dq dqVar) {
        Handler handler;
        if (dqVar == null) {
            dqVar = new com.bytedance.msdk.api.dq(20005, com.bytedance.msdk.api.dq.dq(20005));
        }
        if ((!com.bytedance.msdk.ia.d.dq.dq(this.mp) || dqVar.dq != 10003) && (handler = this.i) != null) {
            handler.removeCallbacksAndMessages(null);
        }
        if (dq() || d()) {
            return;
        }
        this.cd.set(true);
        c().s = true;
        if (!le()) {
            com.bytedance.msdk.api.dq.d dVar = this.no;
            com.bytedance.msdk.core.no.d dVar2 = this.mp;
            com.bytedance.msdk.s.iw.dq(dVar, dqVar, dVar2 == null ? "" : dVar2.gx(), this.o.dq);
        }
        if (k()) {
            s(false);
            return;
        }
        ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.mp) + "广告加载失败！给外部回调：invokeAdLoadFailCallbackOnMainUI...... error Code = " + dqVar.dq + " error Message = " + dqVar.f756d);
        final com.bytedance.msdk.api.dq dq = jy.dq(this.no, dqVar, e());
        iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.s.dq.d.3
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f1234f != null) {
                    d.this.f1234f.d(dq);
                }
            }
        });
    }

    public void dq(no noVar) {
        this.ig = noVar;
    }

    public void dq(com.bytedance.msdk.core.no.d dVar) {
        this.mp = dVar;
    }

    public void dq(o oVar) {
        this.o = oVar;
    }

    public void dq(p.ox oxVar) {
        this.h = oxVar;
    }

    public void dq(s sVar) {
        this.iw = sVar;
    }

    public void dq(ConcurrentHashMap<String, com.bytedance.msdk.api.d> concurrentHashMap) {
        this.op = concurrentHashMap;
    }

    public void dq(final String str) {
        iw.p(new Runnable() { // from class: com.bytedance.msdk.ox.s.dq.d.1
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f1234f != null) {
                    d.this.f1234f.dq(str);
                }
            }
        });
    }

    public void dq(List<s> list) {
        s sVar;
        if (n.dq(list) || (sVar = list.get(0)) == null) {
            return;
        }
        if (sVar.w()) {
            this.s.addAll(list);
            return;
        }
        if (sVar.jn()) {
            this.f1232d.addAll(list);
        } else if (sVar.ip() || sVar.xx() || sVar.jv()) {
            this.p.addAll(list);
        }
    }

    public void dq(final List<s> list, final com.bytedance.msdk.api.dq dqVar) {
        com.bytedance.msdk.core.no.d dVar = this.mp;
        if (dVar == null || !dVar.ig()) {
            return;
        }
        if (iw()) {
            dqVar = new com.bytedance.msdk.api.dq(41044, com.bytedance.msdk.api.dq.dq(41044));
            list = null;
        }
        if (k()) {
            return;
        }
        if (!n.dq(list)) {
            ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.mp) + "单个广告加载完成！给外部回调：invokeSingleAdLoadCallbackUI......");
            for (s sVar : list) {
                ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.no.k(), "fill") + "AdNetWorkName[" + sVar.m() + "] AdUnitId[" + sVar.b() + "]  请求成功 (loadSort=" + sVar.ae() + ",showSort=" + sVar.wq() + ")");
            }
        }
        if (dqVar != null) {
            ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.mp) + "单个广告加载失败！给外部回调：invokeSingleAdLoadCallbackUI...... errorCode:" + dqVar.dq + "  errorMsg:" + dqVar.f756d);
        }
        iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.s.dq.d.5
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f1234f != null) {
                    d.this.f1234f.dq(list, dqVar);
                }
            }
        });
    }

    public void dq(boolean z) {
        this.kx = z;
    }

    public boolean dq() {
        return this.fw.get();
    }

    public List<com.bytedance.msdk.api.d> e() {
        com.bytedance.msdk.api.d value;
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, com.bytedance.msdk.api.d> entry : wp().entrySet()) {
            if (entry != null && (value = entry.getValue()) != null && !TextUtils.equals("广告加载成功", value.iw()) && !TextUtils.equals("广告请求中", value.iw())) {
                arrayList.add(value);
            }
        }
        return arrayList;
    }

    public void er() {
        iw.dq(new Runnable() { // from class: com.bytedance.msdk.ox.s.dq.d.6
            @Override // java.lang.Runnable
            public void run() {
                d.this.r = true;
                List<s> list = d.this.f1232d;
                if (list != null) {
                    list.clear();
                }
                List<s> list2 = d.this.ox;
                if (list2 != null) {
                    list2.clear();
                }
                List<s> list3 = d.this.p;
                if (list3 != null) {
                    list3.clear();
                }
                List<s> list4 = d.this.s;
                if (list4 != null) {
                    list4.clear();
                }
                if (d.this.i != null) {
                    d.this.i.removeCallbacksAndMessages(null);
                }
                d.this.q.ig();
                d.this.ig = null;
                if (d.this.cd.get() || d.this.fw.get()) {
                    return;
                }
                d.this.dq(new com.bytedance.msdk.api.d.dq(41044, com.bytedance.msdk.api.dq.dq(41044)));
            }
        });
    }

    public boolean f() {
        int size = this.p.size() + this.f1232d.size() + this.s.size();
        com.bytedance.msdk.api.dq.d dVar = this.no;
        return size >= (dVar != null ? dVar.h() : 1);
    }

    public boolean fw() {
        return !this.mp.op() || this.q.s(-100) || this.q.iw();
    }

    public Context getContext() {
        return this.dq.get();
    }

    public com.bytedance.msdk.api.dq.d gh() {
        return this.no;
    }

    public void h() {
        this.ji.incrementAndGet();
    }

    public Map<String, com.bytedance.msdk.dq.dq> i() {
        return this.mn;
    }

    public List<s> ia() {
        return this.f1232d;
    }

    public com.bytedance.msdk.core.no.d ig() {
        return this.mp;
    }

    public long ir() {
        return this.le;
    }

    public boolean iw() {
        return this.r;
    }

    public long ji() {
        return this.bl;
    }

    public boolean jy() {
        int size = this.f1232d.size() + this.s.size();
        com.bytedance.msdk.api.dq.d dVar = this.no;
        return size >= (dVar != null ? dVar.h() : 1);
    }

    public boolean k() {
        return this.wp;
    }

    public List<s> kk() {
        return this.ox;
    }

    public int kx() {
        return this.ji.get();
    }

    public boolean le() {
        return this.kx;
    }

    public List<s> mn() {
        return this.s;
    }

    public dq mp() {
        return this.q;
    }

    public no n() {
        return this.ig;
    }

    public s no() {
        return this.iw;
    }

    public List<s> o() {
        return this.p;
    }

    public long op() {
        return this.ia;
    }

    public void ox(long j) {
        this.le = j;
    }

    public void ox(boolean z) {
        this.f1233e = z;
    }

    public boolean ox() {
        return this.gh.get();
    }

    public void p() {
        ArrayList arrayList;
        ArrayList arrayList2;
        Map<String, Object> map;
        ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.mp) + " v2 load done..........s:" + dq() + "  f:" + d() + "     p.size" + mn().size() + "   bidding.size:" + o().size() + "   normal.size:" + ia().size() + "   underNormal.size:" + kk().size());
        if (dq() || d()) {
            return;
        }
        this.fw.set(true);
        Handler handler = this.i;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        List<s> r = r();
        if ((k() || (!k() && !this.f1233e)) && (this.mp.n() || this.mp.op())) {
            s sVar = r.size() > 0 ? r.get(0) : null;
            int h = this.no.h();
            if (h > 1) {
                arrayList = new ArrayList();
                for (int i = 1; i < h; i++) {
                    if (i < r.size()) {
                        arrayList.add(r.get(i));
                    }
                }
                if (r.size() > h) {
                    arrayList2 = new ArrayList();
                    while (h < r.size()) {
                        s sVar2 = r.get(h);
                        if (sVar2 != null && sVar2.ip()) {
                            arrayList2.add(sVar2);
                        }
                        h++;
                    }
                } else {
                    arrayList2 = null;
                }
            } else {
                arrayList = null;
                arrayList2 = null;
            }
            com.bytedance.msdk.s.iw.dq(sVar, this.no, arrayList, arrayList2);
        }
        if (!this.f1233e) {
            com.bytedance.msdk.core.o.p.dq(this.mp, !n.d(r) ? r.get(0).dk() : 0.0d, this.no.k(), this.no.le());
        }
        if (k()) {
            s(true);
            return;
        }
        int h2 = r.size() > this.no.h() ? this.no.h() : r.size();
        com.bytedance.msdk.core.no.d dVar = this.mp;
        if (dVar != null) {
            Map<String, Object> s = dVar.s();
            s.put("has_serverBidding", Boolean.valueOf(this.mp.n()));
            map = s;
        } else {
            map = null;
        }
        if (!le()) {
            com.bytedance.msdk.api.dq.d dVar2 = this.no;
            s sVar3 = this.iw;
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.ia;
            int j = j();
            int d2 = d(this.q.no());
            com.bytedance.msdk.core.no.d dVar3 = this.mp;
            com.bytedance.msdk.s.iw.dq(map, dVar2, sVar3, elapsedRealtime, j, d2, 0, dVar3 != null ? dVar3.gx() : null, h2, this.n, this.mp);
        }
        ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.mp) + "广告加载成功！给外部回调：invokeAdLoadSuccessOnMainUI........P.size:" + mn().size() + "   bidding.size:" + o().size() + "   normal.size:" + ia().size());
        iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.s.dq.d.2
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f1234f != null) {
                    d.this.f1234f.kk();
                }
            }
        });
        nh();
    }

    public void p(boolean z) {
        this.k.set(z);
    }

    public boolean q() {
        int size = this.s.size();
        com.bytedance.msdk.api.dq.d dVar = this.no;
        return size >= (dVar != null ? dVar.h() : 1);
    }

    public List<s> r() {
        ArrayList arrayList = new ArrayList();
        if (!n.dq(this.f1232d)) {
            arrayList.addAll(this.f1232d);
        }
        if (!n.dq(this.p)) {
            arrayList.addAll(this.p);
        }
        mn.dq(arrayList, mn.dq());
        if (!n.dq(this.s)) {
            mn.dq(this.s, (Comparator<s>) null);
            arrayList.addAll(0, this.s);
        }
        return arrayList;
    }

    public void s() {
        if (k() || d() || ox() || !dq()) {
            return;
        }
        com.bytedance.msdk.api.dq.d dVar = this.no;
        if (dVar != null && (dVar.le() == 7 || this.no.le() == 8 || this.no.le() == 10)) {
            ox.ox("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.mp) + "广告缓存成功！给外部回调：invokeAdVideoCacheOnMainUI........");
            com.bytedance.msdk.api.dq.d dVar2 = this.no;
            s no = no();
            long elapsedRealtime = SystemClock.elapsedRealtime() - ir();
            com.bytedance.msdk.core.no.d dVar3 = this.mp;
            com.bytedance.msdk.s.iw.dq(dVar2, no, elapsedRealtime, dVar3 != null ? dVar3.gx() : null);
        }
        this.gh.set(true);
        iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.s.dq.d.4
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.f1234f != null) {
                    d.this.f1234f.o();
                }
            }
        });
    }

    public boolean u() {
        return this.k.get();
    }

    public ConcurrentHashMap<String, com.bytedance.msdk.api.d> wp() {
        return this.op;
    }
}
