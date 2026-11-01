package com.bytedance.msdk.ox.p;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.msdk.ia.cd;
import com.bytedance.msdk.ia.e;
import com.bytedance.msdk.ia.jy;
import com.bytedance.msdk.ia.le;
import com.bytedance.msdk.ia.n;
import com.bytedance.msdk.ia.r;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.awf;
import java.lang.ref.SoftReference;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class d implements com.bytedance.msdk.ox.d.dq.dq {
    protected SoftReference<Context> ia;
    protected com.bytedance.msdk.api.dq.d iw;
    protected com.bytedance.msdk.dq.d.iw kk;
    protected com.bytedance.msdk.core.no.d mn;
    protected com.bytedance.msdk.api.p.dq.d mp;
    protected com.bytedance.msdk.ox.s.dq.d ox;
    protected com.bytedance.msdk.d.s p;
    protected String s;
    protected boolean o = false;
    protected int no = 0;
    protected volatile boolean ig = false;
    private final Comparator<com.bytedance.msdk.core.no.no> dq = new Comparator<com.bytedance.msdk.core.no.no>() { // from class: com.bytedance.msdk.ox.p.d.1
        @Override // java.util.Comparator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int compare(com.bytedance.msdk.core.no.no noVar, com.bytedance.msdk.core.no.no noVar2) {
            int wp;
            int wp2;
            if (noVar.wp() == noVar2.wp()) {
                wp = noVar.e();
                wp2 = noVar2.e();
            } else {
                wp = noVar.wp();
                wp2 = noVar2.wp();
            }
            return wp - wp2;
        }
    };
    protected final Comparator<com.bytedance.msdk.core.no.no> q = new Comparator<com.bytedance.msdk.core.no.no>() { // from class: com.bytedance.msdk.ox.p.d.2
        @Override // java.util.Comparator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int compare(com.bytedance.msdk.core.no.no noVar, com.bytedance.msdk.core.no.no noVar2) {
            if (noVar.k() > noVar2.k()) {
                return -1;
            }
            return noVar.k() < noVar2.k() ? 1 : 0;
        }
    };

    public d(Context context) {
        this.ia = new SoftReference<>(context);
    }

    public static int d(String str) {
        if (!com.bytedance.msdk.core.kk.mp.dq().ia(str)) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--: 命中展示频次");
            return 840041;
        }
        if (com.bytedance.msdk.core.kk.mp.dq().ox(str)) {
            return 0;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "--==--: 命中展示间隔");
        return 840042;
    }

    private com.bytedance.msdk.d.s dq(com.bytedance.msdk.core.no.no noVar) {
        if (noVar == null) {
            return null;
        }
        String cd = noVar.cd();
        String ox = noVar.ji() != null ? noVar.ji().ox() : null;
        if (TextUtils.isEmpty(cd)) {
            return null;
        }
        for (com.bytedance.msdk.d.s sVar : this.ox.mn()) {
            if (sVar != null && cd.equals(sVar.b())) {
                return sVar;
            }
        }
        for (com.bytedance.msdk.d.s sVar2 : this.ox.ia()) {
            if (sVar2 != null && cd.equals(sVar2.b())) {
                return sVar2;
            }
        }
        for (com.bytedance.msdk.d.s sVar3 : this.ox.o()) {
            if (sVar3 != null) {
                if (!sVar3.ip() || TextUtils.isEmpty(ox) || TextUtils.isEmpty(sVar3.vw())) {
                    if (cd.equals(sVar3.b())) {
                        return sVar3;
                    }
                } else if (cd.equals(sVar3.b()) && ox.equals(sVar3.vw())) {
                    return sVar3;
                }
            }
        }
        return null;
    }

    private com.bytedance.msdk.d.s ox(com.bytedance.msdk.d.s sVar) {
        LinkedList<com.bytedance.msdk.d.s> linkedList = new LinkedList();
        com.bytedance.msdk.ox.s.dq.d dVar = this.ox;
        if (dVar != null) {
            if (dVar.o() != null && this.ox.o().size() != 0) {
                linkedList.addAll(this.ox.o());
            }
            if (this.ox.ia() != null && this.ox.ia().size() != 0) {
                linkedList.addAll(this.ox.ia());
            }
            if (this.ox.mn() != null && this.ox.mn().size() != 0) {
                linkedList.addAll(this.ox.mn());
            }
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

    public static Map<String, Object> ox(String str) {
        le leVar = new le();
        leVar.put(MediationConstant.KEY_GM_PRIME_RIT, str);
        return leVar;
    }

    private List<com.bytedance.msdk.core.no.no> p(List<com.bytedance.msdk.core.no.no> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<com.bytedance.msdk.core.no.no> it = list.iterator();
        while (it.hasNext()) {
            com.bytedance.msdk.core.no.no next = it.next();
            if (next.ir()) {
                it.remove();
                arrayList2.add(next);
            } else if (next.n() || next.u() || next.op()) {
                it.remove();
                com.bytedance.msdk.core.no.no noVar = new com.bytedance.msdk.core.no.no();
                noVar.s(next.cd());
                noVar.o(next.gh());
                noVar.ox(next.jy());
                noVar.p(next.ia());
                noVar.dq(next.mn());
                noVar.no(next.wp());
                noVar.ig(next.e());
                noVar.kk(next.mp());
                StringBuilder sb = new StringBuilder();
                sb.append(next.k());
                noVar.iw(sb.toString());
                noVar.d(next.q());
                noVar.mn(next.kx());
                noVar.ia(next.h());
                noVar.dq(next.ji());
                com.bytedance.msdk.d.s dq = dq(noVar);
                if (dq != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(dq.sy());
                    noVar.iw(sb2.toString());
                }
                arrayList.add(noVar);
            }
        }
        list.addAll(arrayList);
        Collections.sort(list, this.q);
        Collections.sort(arrayList2, this.dq);
        list.addAll(0, arrayList2);
        return list;
    }

    private void p(com.bytedance.msdk.d.s sVar) {
        com.bytedance.msdk.api.dq.d dVar;
        HashMap hashMap;
        if (sVar == null || (dVar = this.iw) == null || !dVar.er()) {
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

    public com.bytedance.msdk.api.ox cd() {
        List<com.bytedance.msdk.d.s> r;
        if (!com.bytedance.msdk.core.dq.d().wp() || (r = this.ox.r()) == null || r.size() == 0) {
            return null;
        }
        return jy.dq(this.iw, r.get(0), false);
    }

    public HashMap<String, com.bytedance.msdk.d.s> d(List<com.bytedance.msdk.d.s> list) {
        HashMap<String, com.bytedance.msdk.d.s> hashMap = new HashMap<>();
        if (list != null && list.size() > 0) {
            for (com.bytedance.msdk.d.s sVar : list) {
                if (sVar != null) {
                    hashMap.put(sVar.b(), sVar);
                }
            }
        }
        return hashMap;
    }

    @Override // com.bytedance.msdk.ox.d.dq.dq
    public void d(com.bytedance.msdk.api.dq dqVar) {
    }

    public void d(com.bytedance.msdk.d.s sVar) {
        com.bytedance.msdk.api.dq.d dVar = this.iw;
        int ia = sVar.ia(dVar != null ? dVar.dq() : null);
        sVar.o(3);
        sVar.no(ia);
    }

    public void dq() {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            sVar.p();
        }
        this.ox.er();
        this.kk = null;
    }

    public void dq(com.bytedance.msdk.api.dq.d dVar) {
        com.bytedance.msdk.ox.s.dq.d dq = com.bytedance.msdk.ox.s.dq.d.dq(this.ia, dVar, this);
        this.ox = dq;
        com.bytedance.msdk.api.dq.d gh = dq.gh();
        this.iw = gh;
        this.s = gh.k();
        this.ox.bl().put("allow_show_close_btn", Boolean.valueOf(dVar.cd()));
        this.mn = this.ox.ig();
    }

    public void dq(com.bytedance.msdk.api.p.dq.d dVar) {
        this.mp = dVar;
    }

    public void dq(com.bytedance.msdk.d.s sVar) {
        if (com.bytedance.msdk.core.dq.d().op()) {
            com.bytedance.msdk.s.iw.dq(sVar, this.iw, r.dq(Thread.currentThread().getStackTrace()), 2);
        }
    }

    public void dq(com.bytedance.msdk.d.s sVar, com.bytedance.msdk.d.s sVar2, MediationConstant.BiddingLossReason biddingLossReason) {
        com.bytedance.msdk.api.dq.d dVar;
        Integer valueOf = Integer.valueOf(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CHECK_INFO);
        if (sVar2 == null || (dVar = this.iw) == null || biddingLossReason == null || !dVar.er()) {
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

    @Override // com.bytedance.msdk.ox.d.dq.dq
    public void dq(String str) {
    }

    public void dq(List<com.bytedance.msdk.d.s> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        com.bytedance.msdk.core.p.dq.dq(this.iw, this.mn, list, this.ox.o());
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            p((com.bytedance.msdk.d.s) it.next());
        }
        if (this.ox.o().size() == 0) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(this.ox.o());
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

    @Override // com.bytedance.msdk.ox.d.dq.dq
    public void dq(List<com.bytedance.msdk.d.s> list, com.bytedance.msdk.api.dq dqVar) {
    }

    public List<com.bytedance.msdk.core.no.no> f() {
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar == null || dVar.t() == null || this.mn.t().size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.msdk.core.no.no noVar : this.mn.t()) {
            if (noVar != null && noVar.gh() == 100) {
                arrayList.add(noVar);
            }
        }
        return arrayList;
    }

    public com.bytedance.msdk.api.ox fw() {
        if (this.p == null || cd.dq()) {
            return null;
        }
        return jy.dq(this.iw, this.p, true);
    }

    public int gh() {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            return sVar.jo();
        }
        return -1;
    }

    public List<com.bytedance.msdk.core.no.no> h_() {
        boolean z;
        ArrayList arrayList = new ArrayList();
        com.bytedance.msdk.ox.s.dq.d dVar = this.ox;
        if (dVar == null || this.mn == null || dVar.iw()) {
            return arrayList;
        }
        Map<Integer, List<com.bytedance.msdk.core.no.no>> kx = this.mn.kx();
        ArrayList arrayList2 = new ArrayList();
        for (Integer num : kx.keySet()) {
            if (num != null) {
                arrayList2.add(num);
            }
        }
        com.bytedance.msdk.core.mn.d.dq(arrayList2);
        int i = 0;
        if (arrayList2.size() > 0) {
            int i2 = 0;
            z = false;
            while (i < arrayList2.size()) {
                Integer num2 = (Integer) arrayList2.get(i);
                if (num2 != null) {
                    int intValue = num2.intValue();
                    if (intValue == -100) {
                        i2 = 1;
                    }
                    if (intValue < -100) {
                        z = true;
                    }
                    if (kx.get(num2) != null) {
                        arrayList.addAll(kx.get(num2));
                    }
                }
                i++;
            }
            i = i2;
        } else {
            z = false;
        }
        if (i == 0 && this.mn.op() && !n.d(this.ox.o())) {
            for (com.bytedance.msdk.d.s sVar : this.ox.o()) {
                if (this.mn != null && (sVar.jv() || sVar.xx())) {
                    com.bytedance.msdk.core.no.no iw = this.mn.iw(sVar.b());
                    if (iw != null) {
                        arrayList.add(iw);
                    }
                }
            }
        }
        if (!z) {
            List<com.bytedance.msdk.core.no.no> f2 = f();
            if (!n.dq(f2)) {
                arrayList.addAll(f2);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((com.bytedance.msdk.core.no.no) it.next()) == null) {
                it.remove();
            }
        }
        if (this.mn.n() || this.mn.op()) {
            return p(arrayList);
        }
        Collections.sort(arrayList, this.dq);
        return arrayList;
    }

    public int i() {
        com.bytedance.msdk.api.dq.d dVar = this.iw;
        if (dVar != null) {
            return dVar.s();
        }
        return 0;
    }

    public List<com.bytedance.msdk.api.d> ig() {
        return this.ox.e();
    }

    public boolean jy() {
        boolean ox = e.ox(com.bytedance.msdk.core.dq.getContext());
        boolean d2 = e.d(com.bytedance.msdk.core.dq.getContext());
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.s) + "setting 下发是否为弱网执行：" + com.bytedance.msdk.core.dq.d().ig() + "，当前网络环境：2G-type=" + ox + ",3G-type=" + d2);
        if (com.bytedance.msdk.core.dq.d().ig()) {
            return ox || d2;
        }
        return false;
    }

    @Override // com.bytedance.msdk.ox.d.dq.dq
    public void kk() {
    }

    public List<com.bytedance.msdk.api.ox> mp() {
        if (!com.bytedance.msdk.core.dq.d().wp()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.msdk.d.s sVar : this.ox.o()) {
            if (sVar != null) {
                arrayList.add(jy.dq(this.iw, sVar, false));
            }
        }
        return arrayList;
    }

    public com.bytedance.msdk.ox.ox.dq.mn no() {
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "ad load start.....");
        if (com.bytedance.msdk.core.dq.d().op()) {
            com.bytedance.msdk.s.iw.dq((com.bytedance.msdk.d.s) null, this.ox.gh(), r.dq(Thread.currentThread().getStackTrace()), 3);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.bytedance.msdk.ox.ox.dq.no());
        arrayList.add(new com.bytedance.msdk.ox.ox.dq.s());
        arrayList.add(new com.bytedance.msdk.ox.ox.dq.ox());
        arrayList.add(new com.bytedance.msdk.ox.ox.dq.ig());
        arrayList.add(new com.bytedance.msdk.ox.ox.dq.iw());
        arrayList.add(new com.bytedance.msdk.ox.ox.dq.ia());
        arrayList.add(new com.bytedance.msdk.ox.ox.dq.d());
        arrayList.add(new com.bytedance.msdk.ox.ox.dq.p());
        com.bytedance.msdk.ox.ox.dq.mn mnVar = new com.bytedance.msdk.ox.ox.dq.mn(arrayList);
        mnVar.dq(this.ox);
        return mnVar;
    }

    @Override // com.bytedance.msdk.ox.d.dq.dq
    public void o() {
    }

    public List<com.bytedance.msdk.api.ox> q() {
        if (!com.bytedance.msdk.core.dq.d().wp()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (com.bytedance.msdk.d.s sVar : this.ox.r()) {
            if (sVar != null) {
                arrayList.add(jy.dq(this.iw, sVar, false));
            }
        }
        return arrayList;
    }

    public Map<String, Object> r() {
        com.bytedance.msdk.d.s sVar = this.p;
        Map<String, Object> dq = sVar != null ? sVar.dq() : null;
        if (dq == null) {
            dq = ox(this.s);
        }
        com.bytedance.msdk.d.s sVar2 = this.p;
        if (sVar2 != null && sVar2.bu() != null) {
            dq.putAll(this.p.bu());
        }
        if (cd.dq()) {
            String dq2 = cd.dq(jy.dq(this.iw, this.p, true));
            if (!TextUtils.isEmpty(dq2)) {
                dq.put("get_show_ecpm_info", dq2);
            }
        }
        return dq;
    }
}
