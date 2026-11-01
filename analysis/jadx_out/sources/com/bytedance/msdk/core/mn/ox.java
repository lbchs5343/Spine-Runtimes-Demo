package com.bytedance.msdk.core.mn;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.msdk.core.kk.ig;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.core.no.o;
import com.bytedance.msdk.core.p.s;
import com.bytedance.msdk.ia.jy;
import com.bytedance.msdk.ia.n;
import com.bytedance.msdk.ia.r;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.awf;
import g.tn;
import j$.util.concurrent.ConcurrentHashMap;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class ox {
    protected List<Integer> fw;
    protected long h;
    protected Map<Integer, List<no>> ia;
    protected boolean ig;
    protected String kk;
    protected com.bytedance.msdk.core.no.d mn;
    protected boolean mp;
    protected com.bytedance.msdk.api.dq.d no;
    protected Handler o;
    protected boolean q;
    protected boolean u;
    protected final AtomicBoolean p = new AtomicBoolean(false);
    protected final AtomicBoolean s = new AtomicBoolean(false);
    protected final AtomicBoolean iw = new AtomicBoolean(false);
    protected int jy = -1;

    /* renamed from: f, reason: collision with root package name */
    protected final List<no> f964f = new CopyOnWriteArrayList();
    protected List<com.bytedance.msdk.d.s> cd = new CopyOnWriteArrayList();
    protected List<com.bytedance.msdk.d.s> gh = new CopyOnWriteArrayList();
    protected List<com.bytedance.msdk.d.s> r = new CopyOnWriteArrayList();
    protected Map<String, Object> i = new ConcurrentHashMap();
    protected ia le = new ia();
    protected AtomicBoolean k = new AtomicBoolean(false);
    protected boolean wp = true;

    /* renamed from: e, reason: collision with root package name */
    protected o f963e = new o();
    protected final AtomicBoolean kx = new AtomicBoolean(false);
    protected boolean ji = false;
    protected int bl = 0;
    protected Map<String, com.bytedance.msdk.dq.dq> n = new ConcurrentHashMap();
    protected boolean op = false;
    protected Map<String, Object> ir = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    protected int f962c = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.msdk.api.dq.d dVar, List<no> list, com.bytedance.msdk.core.p.d dVar2) {
        List<com.bytedance.msdk.d.s> list2;
        List<com.bytedance.msdk.d.s> list3;
        List<com.bytedance.msdk.d.s> list4;
        List<com.bytedance.msdk.d.s> list5;
        if (this.f963e != null && dVar2 != null && !TextUtils.isEmpty(dVar2.p)) {
            this.f963e.dq = dVar2.p;
        }
        com.bytedance.msdk.core.no.d dVar3 = this.mn;
        if (dVar3 != null && dVar2 != null) {
            dVar3.s().put("price_source", Integer.valueOf(dVar2.mp));
        }
        com.bytedance.msdk.core.no.d dVar4 = this.mn;
        String gx = dVar4 != null ? dVar4.gx() : null;
        if (dVar2 != null) {
            com.bytedance.msdk.s.iw.dq(dVar, dVar2, gx, this.le.dq() ? 1 : 0);
        }
        if (dVar2 == null || n.dq(dVar2.f1004d)) {
            this.jy = 2;
            if (this.p.get() || this.s.get()) {
                return;
            }
            tn.y(this.kk, "serverBidding响应失败了.......... ", "TTMediationSDK", new StringBuilder());
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    this.le.dq((String) null);
                }
            }
            this.le.dq(0, true);
            if (this.le.dq() || !this.le.mn()) {
                e();
                ji();
            } else {
                tn.y(this.kk, "所有广告都已经加载完成....... ", "TTMediationSDK", new StringBuilder());
                List<com.bytedance.msdk.d.s> list6 = this.r;
                if ((list6 == null || list6.size() <= 0) && (((list2 = this.cd) == null || list2.size() <= 0) && ((list3 = this.gh) == null || list3.size() <= 0))) {
                    com.bytedance.msdk.core.no.d dVar5 = this.mn;
                    if (dVar5 == null || !dVar5.ig()) {
                        d(new com.bytedance.msdk.api.dq(20005, com.bytedance.msdk.api.dq.dq(20005)), (com.bytedance.msdk.core.no.ox) null);
                    } else {
                        d(new com.bytedance.msdk.api.dq(10013, com.bytedance.msdk.api.dq.dq(10013)), (com.bytedance.msdk.core.no.ox) null);
                    }
                } else {
                    tn.y(this.kk, "exchange响应失败且所有的广告都已经加载完成，则给出成功回调.....", "TTMediationSDK", new StringBuilder());
                    n_();
                }
            }
        } else {
            this.jy = 1;
            if (this.p.get() || this.s.get()) {
                return;
            }
            Handler handler = this.o;
            if (handler != null) {
                handler.removeMessages(4);
                this.o.removeMessages(1);
                this.o.removeMessages(3);
            }
            wp();
            this.f964f.clear();
            List<no> list7 = dVar2.f1004d;
            if (list7 != null) {
                this.f964f.addAll(list7);
            }
            dq(this.f964f, this.mn.no());
            if (n.dq(this.f964f)) {
                tn.y(this.kk, "serverBidding响应回来..........没有P层，且普通广告全都没有胜出.....直接返回", "TTMediationSDK", new StringBuilder());
                List<com.bytedance.msdk.d.s> list8 = this.r;
                if ((list8 == null || list8.size() <= 0) && (((list4 = this.cd) == null || list4.size() <= 0) && ((list5 = this.gh) == null || list5.size() <= 0))) {
                    d(new com.bytedance.msdk.api.dq(20005, com.bytedance.msdk.api.dq.dq(20005)), (com.bytedance.msdk.core.no.ox) null);
                } else if (!this.mp) {
                    tn.y(this.kk, "没有client bidding....直接给出成功回调.....", "TTMediationSDK", new StringBuilder());
                    n_();
                } else if (h()) {
                    tn.y(this.kk, "存在client bidding且满足触发成功回调的条件，则给出成功回调.....", "TTMediationSDK", new StringBuilder());
                    n_();
                }
            } else {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "serverBidding响应回来..........开始从头开始请求waterFallConfig ");
                kx();
            }
        }
        if (this.mn != null && dVar2 != null) {
            com.bytedance.msdk.core.o.d.p().dq(dVar2.ig, dVar2.q, this.mn.c(), this.mn.ir());
        }
        if (dVar2 == null || !dVar2.ox) {
            return;
        }
        com.bytedance.msdk.core.f.d.dq(com.bytedance.msdk.core.dq.d()).dq().d(1);
    }

    private com.bytedance.msdk.d.s ox(com.bytedance.msdk.d.s sVar) {
        LinkedList<com.bytedance.msdk.d.s> linkedList = new LinkedList();
        List<com.bytedance.msdk.d.s> list = this.gh;
        if (list != null && list.size() != 0) {
            linkedList.addAll(this.gh);
        }
        List<com.bytedance.msdk.d.s> list2 = this.cd;
        if (list2 != null && list2.size() != 0) {
            linkedList.addAll(this.cd);
        }
        List<com.bytedance.msdk.d.s> list3 = this.r;
        if (list3 != null && list3.size() != 0) {
            linkedList.addAll(this.r);
        }
        com.bytedance.msdk.d.s sVar2 = null;
        if (linkedList.size() != 0 && sVar != null) {
            double d2 = Double.MIN_NORMAL;
            for (com.bytedance.msdk.d.s sVar3 : linkedList) {
                if (sVar3.dk() < sVar.dk() && sVar3.dk() > d2) {
                    d2 = sVar3.dk();
                    sVar2 = sVar3;
                }
            }
        }
        return sVar2;
    }

    private com.bytedance.msdk.d.s ox(List<com.bytedance.msdk.d.s> list) {
        com.bytedance.msdk.d.s sVar = null;
        if (list != null && list.size() != 0) {
            if (list.size() == 1) {
                return list.get(0);
            }
            double d2 = Double.MIN_NORMAL;
            for (com.bytedance.msdk.d.s sVar2 : list) {
                if (sVar2.dk() > d2) {
                    d2 = sVar2.dk();
                    sVar = sVar2;
                }
            }
        }
        return sVar;
    }

    private void p(com.bytedance.msdk.d.s sVar) {
        com.bytedance.msdk.api.dq.d dVar;
        HashMap hashMap;
        if (sVar == null || (dVar = this.no) == null || !dVar.er()) {
            return;
        }
        if (sVar.jv() || sVar.xx() || sVar.ip()) {
            if (TextUtils.equals(sVar.wi(), MediationConstant.ADN_BAIDU)) {
                hashMap = new HashMap();
                if (com.bytedance.msdk.core.dq.d().cv()) {
                    com.bytedance.msdk.d.s ox = ox(sVar);
                    hashMap.put(MediationConstant.KEY_ECPM, Integer.valueOf(ox != null ? (int) ox.dk() : 0));
                    hashMap.put("adn", 10);
                    hashMap.put("ad_t", 7);
                    hashMap.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                    hashMap.put("bid_t", 3);
                } else if (com.bytedance.msdk.core.dq.d().dc()) {
                    com.bytedance.msdk.d.s ox2 = ox(sVar);
                    int dk = ox2 != null ? (int) ox2.dk() : 0;
                    int dk2 = (int) sVar.dk();
                    int nextInt = new SecureRandom().nextInt(21) + 10;
                    StringBuilder z = awf.z(dk2, dk, "-------baidu_bid_win firstAdEcpm = ", " secondAdEcpm =", " randomNumber = ");
                    z.append(nextInt);
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", z.toString());
                    hashMap.put(MediationConstant.KEY_ECPM, Integer.valueOf(Math.max(dk2 - nextInt, dk)));
                    hashMap.put("adn", 10);
                    hashMap.put("ad_t", 7);
                    hashMap.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                    hashMap.put("bid_t", 4);
                } else {
                    hashMap.put(MediationConstant.KEY_ECPM, 0);
                    hashMap.put("adn", 10);
                    hashMap.put("ad_t", 7);
                    hashMap.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                    hashMap.put("bid_t", 4);
                }
            } else if (TextUtils.equals(sVar.wi(), MediationConstant.ADN_KS)) {
                hashMap = new HashMap();
                if (com.bytedance.msdk.core.dq.d().jw()) {
                    com.bytedance.msdk.d.s ox3 = ox(sVar);
                    hashMap.put("bidEcpm", Double.valueOf(sVar.dk()));
                    hashMap.put("lossBidEcpm", Double.valueOf(ox3 != null ? ox3.dk() : 0.0d));
                } else {
                    hashMap.put("bidEcpm", 0);
                    hashMap.put("lossBidEcpm", 0);
                }
            } else {
                hashMap = null;
            }
            sVar.d(hashMap);
        }
    }

    public List<no> bl() {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar == null || dVar.t() == null || this.mn.t().size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (no noVar : this.mn.t()) {
            if (noVar != null && noVar.gh() == 100) {
                arrayList.add(noVar);
            }
        }
        return arrayList;
    }

    public boolean by() {
        return this.cd.size() + this.r.size() >= t();
    }

    public boolean c() {
        return this.jy > 0;
    }

    public boolean ce() {
        return this.jy == 1;
    }

    public void d(com.bytedance.msdk.api.dq dqVar) {
    }

    abstract void d(com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.core.no.ox oxVar);

    public abstract void d(no noVar, int i);

    public void d(com.bytedance.msdk.d.s sVar) {
        if (com.bytedance.msdk.core.dq.d().op()) {
            com.bytedance.msdk.s.iw.dq(sVar, this.no, r.dq(Thread.currentThread().getStackTrace()), 2);
        }
    }

    public void d(List<com.bytedance.msdk.d.s> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        com.bytedance.msdk.core.p.dq.dq(this.no, this.mn, list, this.gh);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            p((com.bytedance.msdk.d.s) it.next());
        }
        if (this.gh.size() == 0) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(this.gh);
        com.bytedance.msdk.d.s ox = ox(list);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            com.bytedance.msdk.d.s sVar = (com.bytedance.msdk.d.s) it2.next();
            Iterator<com.bytedance.msdk.d.s> it3 = list.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    dq(ox, sVar, MediationConstant.BiddingLossReason.LOW_PRICE);
                    break;
                }
                com.bytedance.msdk.d.s next = it3.next();
                if (next == null || sVar == null || next != sVar) {
                }
            }
        }
    }

    public abstract void d(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.api.dq dqVar);

    public com.bytedance.msdk.dq.dq dq(String str, String str2, String str3) {
        return this.n.get(String.format("%1$s_%2$s_%3$s", str, str2, str3));
    }

    abstract void dq(int i, boolean z);

    public void dq(Context context, final com.bytedance.msdk.api.dq.d dVar, final List<no> list, boolean z) {
        com.bytedance.msdk.core.p.s dq = com.bytedance.msdk.core.p.iw.dq();
        if (dq != null) {
            this.jy = 0;
            o oVar = this.f963e;
            if (oVar != null) {
                oVar.p = true;
            }
            com.bytedance.msdk.core.p.ox oxVar = new com.bytedance.msdk.core.p.ox();
            oxVar.dq = dVar;
            oxVar.f1008d = list;
            oxVar.p = this.mn;
            oxVar.iw = z;
            oxVar.s = dVar != null ? dVar.ox() : 1;
            dq.dq(this.n, context, oxVar, new s.dq() { // from class: com.bytedance.msdk.core.mn.ox.1
                @Override // com.bytedance.msdk.core.p.s.dq
                public void dq(com.bytedance.msdk.core.p.d dVar2) {
                    ox.this.dq(dVar, (List<no>) list, dVar2);
                }
            });
        }
    }

    public void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.d.s sVar2, MediationConstant.BiddingLossReason biddingLossReason) {
        com.bytedance.msdk.api.dq.d dVar;
        Integer valueOf = Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CHECK_INFO);
        if (sVar2 == null || (dVar = this.no) == null || biddingLossReason == null || !dVar.er()) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(MediationConstant.BIDDING_LOSE_REASON, biddingLossReason);
        if (TextUtils.equals(sVar2.wi(), MediationConstant.ADN_BAIDU)) {
            if (com.bytedance.msdk.core.dq.d().cv()) {
                hashMap.put(MediationConstant.KEY_ECPM, Integer.valueOf(sVar != null ? (int) sVar.dk() : 0));
                hashMap.put("adn", 10);
                hashMap.put("ad_t", 7);
                hashMap.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                hashMap.put("bid_t", 3);
                hashMap.put(MediationConstant.KEY_REASON, valueOf);
                hashMap.put("is_s", 1);
                hashMap.put("is_c", 2);
            } else if (com.bytedance.msdk.core.dq.d().dc()) {
                hashMap.put(MediationConstant.KEY_ECPM, Integer.valueOf(sVar != null ? (int) sVar.dk() : 0));
                hashMap.put("adn", 10);
                hashMap.put("ad_t", 7);
                hashMap.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                hashMap.put("bid_t", 4);
                hashMap.put(MediationConstant.KEY_REASON, valueOf);
                hashMap.put("is_s", 1);
                hashMap.put("is_c", 2);
            } else {
                hashMap.put(MediationConstant.KEY_ECPM, 0);
                hashMap.put("adn", 10);
                hashMap.put("ad_t", 7);
                hashMap.put("ad_time", Long.valueOf(System.currentTimeMillis() / 1000));
                hashMap.put("bid_t", 4);
                hashMap.put(MediationConstant.KEY_REASON, valueOf);
                hashMap.put("is_s", 1);
                hashMap.put("is_c", 2);
            }
        } else if (TextUtils.equals(sVar2.wi(), MediationConstant.ADN_KS)) {
            if (com.bytedance.msdk.core.dq.d().jw()) {
                hashMap.put("failureCode", 2);
                hashMap.put("bidEcpm", Double.valueOf(sVar != null ? sVar.dk() : 0.0d));
                hashMap.put("adType", 2);
                hashMap.put(MediationConstant.KEY_ADN_NAME, "other");
            } else {
                hashMap.put("failureCode", 0);
                hashMap.put("bidEcpm", 0);
                hashMap.put("adType", 2);
                hashMap.put(MediationConstant.KEY_ADN_NAME, "other");
            }
        }
        sVar2.dq((Map<String, Object>) hashMap);
    }

    public void dq(com.bytedance.msdk.d.s sVar, String str) {
        no s = com.bytedance.msdk.core.s.dq.dq.dq().s(this.kk, str);
        if (sVar == null || s == null) {
            return;
        }
        sVar.cd(s.wp());
        sVar.fw(s.e());
        sVar.q(s.q());
        sVar.f(s.gh());
        sVar.dq(s.k());
    }

    public void dq(String str) {
    }

    public void dq(String str, long j) {
        this.ir.put(str, Long.valueOf(j));
    }

    public abstract void dq(String str, JSONObject jSONObject);

    public void dq(List<no> list) {
        if (list == null || list.size() == 0) {
            this.cd.clear();
            StringBuilder sb = new StringBuilder();
            tn.h(sb, this.kk, "没有胜出的普通广告，普通广告被全部过滤掉了 :");
            sb.append(this.cd.size());
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb.toString());
            return;
        }
        for (com.bytedance.msdk.d.s sVar : this.cd) {
            Iterator<no> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "已经响应的广告: " + sVar.b() + "  没有在severBidding的waterFall列表中，需要被移除掉");
                    this.cd.remove(sVar);
                    break;
                }
                no next = it.next();
                if (sVar == null || next == null || !sVar.b().equals(next.cd())) {
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        tn.h(sb2, this.kk, "已经响应的广告被serverBidding过滤完还剩: ");
        sb2.append(this.cd.size());
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", sb2.toString());
    }

    public void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.api.dq dqVar) {
    }

    public void dq(List<no> list, boolean z) {
        if (list == null) {
            list = new ArrayList<>();
        }
        Map<Integer, List<no>> d2 = z ? com.bytedance.msdk.core.p.p.d(list) : com.bytedance.msdk.core.p.p.dq(list);
        if (d2 == null) {
            d2 = new HashMap<>();
        }
        this.ia = d2;
        ArrayList arrayList = new ArrayList();
        this.fw = arrayList;
        arrayList.addAll(this.ia.keySet());
        d.dq(this.fw);
        this.le.d(this.fw);
        this.le.dq(list, bl(), n());
        dq(list);
    }

    public void dq(boolean z, StackTraceElement[] stackTraceElementArr) {
        if (z) {
            com.bytedance.msdk.s.iw.dq((com.bytedance.msdk.d.s) null, this.no, r.dq(stackTraceElementArr), 3);
        }
    }

    public abstract boolean dq(no noVar, int i);

    public boolean dq(com.bytedance.msdk.d.s sVar) {
        Map<Integer, List<no>> map;
        if (sVar == null || TextUtils.isEmpty(sVar.b()) || !sVar.jn() || (map = this.ia) == null) {
            return false;
        }
        List<no> list = map.get(Integer.valueOf(sVar.ae()));
        if (n.dq(list)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        Collections.sort(arrayList);
        return !n.d(arrayList) && sVar.b().equals(((no) arrayList.get(0)).cd());
    }

    public abstract void e();

    public void er() {
        o oVar;
        if (!op() || (oVar = this.f963e) == null || TextUtils.isEmpty(oVar.dq)) {
            return;
        }
        Iterator<com.bytedance.msdk.d.s> it = this.r.iterator();
        while (it.hasNext()) {
            it.next().d("server_bidding_extra", this.f963e.dq);
        }
        Iterator<com.bytedance.msdk.d.s> it2 = this.gh.iterator();
        while (it2.hasNext()) {
            it2.next().d("server_bidding_extra", this.f963e.dq);
        }
        Iterator<com.bytedance.msdk.d.s> it3 = this.cd.iterator();
        while (it3.hasNext()) {
            it3.next().d("server_bidding_extra", this.f963e.dq);
        }
    }

    public int gh() {
        com.bytedance.msdk.api.dq.d dVar = this.no;
        return dVar != null ? dVar.le() : this.f962c;
    }

    public boolean gx() {
        return this.r.size() >= t();
    }

    public boolean h() {
        return !ir() || this.kx.get() || this.le.d() == 0;
    }

    public int i() {
        o oVar = this.f963e;
        if (oVar != null) {
            return oVar.f996d;
        }
        return 0;
    }

    public boolean i_() {
        return false;
    }

    public boolean ir() {
        return this.mp;
    }

    public String j() {
        return this.kk;
    }

    public void ji() {
        if (by()) {
            if (this.r.size() >= t()) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "抛出成功回调_P层池中广告满足数量，直接返回......");
                n_();
                return;
            }
            Iterator<com.bytedance.msdk.d.s> it = this.cd.iterator();
            while (it.hasNext()) {
                if (dq(it.next()) && h()) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "抛出成功回调_普通层池中广告满足数量，且满足client bidding的返回条件，给出成功回调，直接返回......");
                    n_();
                    return;
                }
            }
        }
    }

    public String k() {
        o oVar = this.f963e;
        if (oVar != null) {
            return oVar.ox;
        }
        return null;
    }

    public void kx() {
        dq(0, false);
        ji();
    }

    public List<com.bytedance.msdk.d.s> l() {
        ArrayList arrayList = new ArrayList();
        if (!n.dq(this.cd)) {
            arrayList.addAll(this.cd);
        }
        if (!n.dq(this.gh)) {
            arrayList.addAll(this.gh);
        }
        mn.dq(arrayList, mn.dq());
        if (!n.dq(this.r)) {
            arrayList.addAll(0, this.r);
        }
        return arrayList;
    }

    public void le() {
        o oVar = this.f963e;
        if (oVar != null) {
            oVar.f996d = 2;
        }
    }

    public List<no> n() {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar == null || dVar.t() == null || this.mn.t().size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (no noVar : this.mn.t()) {
            if (noVar != null && (noVar.gh() == 1 || noVar.gh() == 3)) {
                arrayList.add(noVar);
            }
        }
        return arrayList;
    }

    abstract void n_();

    public List<com.bytedance.msdk.api.ox> nh() {
        if (!com.bytedance.msdk.core.dq.d().wp()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.msdk.d.s sVar : this.gh) {
            if (sVar != null) {
                arrayList.add(jy.dq(this.no, sVar, false));
            }
        }
        return arrayList;
    }

    public List<com.bytedance.msdk.api.ox> ob() {
        if (!com.bytedance.msdk.core.dq.d().wp()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.msdk.d.s sVar : l()) {
            if (sVar != null) {
                arrayList.add(jy.dq(this.no, sVar, false));
            }
        }
        return arrayList;
    }

    public boolean op() {
        return this.ig;
    }

    public abstract void ox(com.bytedance.msdk.api.dq dqVar);

    public void ox(String str) {
        o oVar = this.f963e;
        if (oVar != null) {
            oVar.ox = str;
        }
    }

    public void p(int i) {
        o oVar = this.f963e;
        if (oVar != null) {
            oVar.f996d = i;
        }
    }

    public void p(final String str) {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.mn.ox.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.msdk.core.p.mn mnVar = (com.bytedance.msdk.core.p.mn) com.bytedance.msdk.core.p.iw.dq();
                String str2 = str;
                ox oxVar = ox.this;
                mnVar.dq(str2, oxVar.h, oxVar.no, oxVar.mn, new s.dq() { // from class: com.bytedance.msdk.core.mn.ox.2.1
                    @Override // com.bytedance.msdk.core.p.s.dq
                    public void dq(com.bytedance.msdk.core.p.d dVar) {
                        Map<Integer, List<no>> map = ox.this.ia;
                        List<no> list = map != null ? map.get(0) : null;
                        ox oxVar2 = ox.this;
                        oxVar2.dq(oxVar2.no, list, dVar);
                    }
                });
            }
        });
    }

    public boolean r() {
        if (this.s.get()) {
            return (this.op && com.bytedance.msdk.ia.d.dq.dq(this.mn)) ? false : true;
        }
        return false;
    }

    public boolean s(String str) {
        if (TextUtils.isEmpty(str) || !op() || !ce()) {
            return false;
        }
        Iterator<no> it = this.f964f.iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().cd())) {
                return false;
            }
        }
        return true;
    }

    public int t() {
        com.bytedance.msdk.api.dq.d dVar = this.no;
        if (dVar == null) {
            return 1;
        }
        return dVar.h();
    }

    public boolean u() {
        return this.q;
    }

    public abstract void uh();

    public com.bytedance.msdk.api.ox vf() {
        List<com.bytedance.msdk.d.s> l;
        if (!com.bytedance.msdk.core.dq.d().wp() || (l = l()) == null || l.size() == 0) {
            return null;
        }
        return jy.dq(this.no, l.get(0), false);
    }

    public String wn() {
        o oVar = this.f963e;
        if (oVar == null) {
            return null;
        }
        return oVar.dq;
    }

    public abstract void wp();

    public boolean xz() {
        Map<Integer, List<no>> map;
        List<com.bytedance.msdk.d.s> list;
        List<com.bytedance.msdk.d.s> list2;
        List<Integer> list3 = this.fw;
        if (list3 != null && list3.size() != 0 && (map = this.ia) != null && map.size() != 0) {
            for (Integer num : this.fw) {
                num.intValue();
                List<no> list4 = this.ia.get(num);
                if (list4 != null && list4.size() != 0) {
                    for (no noVar : list4) {
                        if (noVar != null) {
                            if (!com.bytedance.msdk.core.kk.no.dq().ox(this.kk, noVar.cd())) {
                                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "adn 请求触发次数拦截............");
                            } else if (!ig.dq().ox(this.kk, noVar.cd())) {
                                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "adn 请求触发时间间隔拦截............");
                            } else if (com.bytedance.msdk.core.kk.ox.dq().dq(noVar.jy(), noVar.cd())) {
                                d(noVar, list4.size());
                                if (by()) {
                                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "回溯到了满足数量的广告.......有广告回调成功");
                                    n_();
                                    return true;
                                }
                            } else {
                                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "adn 请求触发了错误码拦截............");
                            }
                        }
                    }
                }
            }
            List<com.bytedance.msdk.d.s> list5 = this.r;
            if ((list5 != null && list5.size() > 0) || (((list = this.cd) != null && list.size() > 0) || ((list2 = this.gh) != null && list2.size() > 0))) {
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "回溯到了广告.......有广告回调成功");
                n_();
                return true;
            }
        }
        return false;
    }
}
