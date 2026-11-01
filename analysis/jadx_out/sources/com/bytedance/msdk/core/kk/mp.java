package com.bytedance.msdk.core.kk;

import android.text.TextUtils;
import android.util.Pair;
import g.dub;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Date;
import java.util.Map;

/* loaded from: classes.dex */
public class mp {

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Pair<String, String>> f946d;
    private Map<String, Long> dq;

    public static class dq {
        private static mp dq = new mp();
    }

    private mp() {
        d();
    }

    public static mp dq() {
        return dq.dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(mn mnVar, String str, int i) {
        ia.dq().dq(mnVar, str, i);
    }

    private void dq(mn mnVar, String str, long j) {
        ia.dq().dq(mnVar, str, j);
    }

    public void d() {
        this.f946d = new ConcurrentHashMap();
        this.dq = new ConcurrentHashMap();
    }

    public void d(kk kkVar) {
        o.dq().dq(kkVar);
    }

    public void d(mn mnVar) {
        ia.dq().dq(mnVar);
    }

    public void d(final String str) {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.kk.mp.1
            @Override // java.lang.Runnable
            public void run() {
                dub.k(new StringBuilder("updateShowPacingTime ritId = "), str, "TTMediationSDK_IntervalShowControl");
                kk s = mp.this.s(str);
                if (s == null || !s.ia()) {
                    return;
                }
                Date date = new Date();
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "updateShowPacingTime save time = " + iw.d(date.getTime()));
                mp.this.dq(str, date.getTime());
            }
        });
    }

    public long dq(String str) {
        Long l = this.dq.get(str);
        if (l == null) {
            return -2L;
        }
        return l.longValue();
    }

    public void dq(String str, long j) {
        o.dq().dq(str, j);
    }

    public boolean dq(kk kkVar) {
        if (kkVar == null) {
            return false;
        }
        kk s = s(kkVar.d());
        if (s == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "pacing 规则为空直接存储");
            return true;
        }
        if (TextUtils.isEmpty(kkVar.o())) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "pacing ruleId 为空 清空本地数据 ");
            p(kkVar.p());
            return false;
        }
        if (TextUtils.equals(s.o(), kkVar.o())) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "pacing ruleId 一致 ruleId = " + s.o() + " 无需处理");
            return false;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "pacing ruleId不一致，缓存新规则 old ruleId = " + s.o() + "  new ruleId = " + kkVar.o());
        StringBuilder sb = new StringBuilder("pacing 删除 ritId = ");
        sb.append(kkVar.p());
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", sb.toString());
        p(kkVar.p());
        return true;
    }

    public boolean dq(mn mnVar) {
        if (mnVar == null) {
            return false;
        }
        mn o = o(mnVar.d());
        if (o == null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "freqctl 规则为空直接存储");
            return true;
        }
        if (TextUtils.isEmpty(mnVar.s())) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "freqctl version 为空 清空本地数据 ");
            kk(o.d());
            return false;
        }
        if (TextUtils.equals(o.s(), mnVar.s())) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "freqctl version 一致 version = " + o.s() + "无需处理");
            return false;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "freqctl version不一致，缓存新规则 old version = " + o.s() + "  new version " + mnVar.s());
        return true;
    }

    public boolean ia(String str) {
        mn o = o(str);
        if (o == null || !o.ia()) {
            return true;
        }
        for (s sVar : o.no()) {
            Date date = new Date();
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "checkFreqctl date = " + date.getTime() + " item.getEffectiveTime() = " + sVar.p());
            if (date.getTime() > sVar.p()) {
                dq(o, sVar.ox(), 0);
                dq(o, sVar.ox(), iw.dq(sVar.d()));
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "checkFreqctl 有效期外计数需要清0，过期时间需要更新 = " + sVar.ox());
            } else {
                if (sVar.s() >= sVar.dq()) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "checkFreqctl 到了上线不可以展示 ruleId = " + sVar.ox() + " count = " + sVar.s());
                    Map<String, Pair<String, String>> map = this.f946d;
                    String ox = sVar.ox();
                    StringBuilder sb = new StringBuilder();
                    sb.append(sVar.s());
                    map.put(str, new Pair<>(ox, sb.toString()));
                    return false;
                }
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "checkFreqctl 未到上线可以展示 ruleId = " + sVar.ox() + " count = " + sVar.s());
            }
        }
        return true;
    }

    public Pair<String, String> iw(String str) {
        return this.f946d.get(str);
    }

    public void kk(String str) {
        ia.dq().dq(str);
    }

    public void mn(final String str) {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.kk.mp.2
            @Override // java.lang.Runnable
            public void run() {
                dub.k(new StringBuilder("addShowFreqctlCount ritId = "), str, "TTMediationSDK_IntervalShowControl");
                mn o = mp.this.o(str);
                if (o == null || !o.ia()) {
                    return;
                }
                for (s sVar : o.no()) {
                    if (sVar.s() < sVar.dq()) {
                        mp.this.dq(o, sVar.ox(), sVar.s() + 1);
                    }
                }
            }
        });
    }

    public mn o(String str) {
        return ia.dq().d(str);
    }

    public boolean ox(String str) {
        kk s = s(str);
        if (s != null && s.ia() && s.ig()) {
            long time = new Date().getTime();
            long no = s.no();
            long kk = s.kk() + s.no();
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_IntervalShowControl", "checkPacing currentTime = " + iw.d(time) + " showTime = " + iw.d(no) + " pacingBean.getPacing() = " + s.kk() + " pacingTime = " + iw.d(kk));
            if (time <= kk) {
                this.dq.put(str, Long.valueOf(time - no));
                return false;
            }
        }
        return true;
    }

    public void p(String str) {
        o.dq().dq(str);
    }

    public kk s(String str) {
        return o.dq().d(str);
    }
}
