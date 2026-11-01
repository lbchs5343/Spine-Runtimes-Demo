package com.bytedance.msdk.core.kk;

import android.text.TextUtils;
import android.util.Pair;
import g.awf;
import g.dub;
import g.tn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Date;
import java.util.Map;

/* loaded from: classes.dex */
public class no {
    private static final String dq = "TTMediationSDK_no";

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Pair<String, String>> f949d;

    public static class dq {
        private static no dq = new no();
    }

    private no() {
        this.f949d = new ConcurrentHashMap();
    }

    public static no dq() {
        return dq.dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(mn mnVar, String str, int i) {
        ia.dq().dq(mnVar, str, i);
    }

    private void dq(mn mnVar, String str, long j) {
        ia.dq().dq(mnVar, str, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public mn p(String str, String str2) {
        return ia.dq().d(str, str2);
    }

    public void d(mn mnVar) {
        mp.dq().d(mnVar);
    }

    public void d(final String str, final String str2) {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.kk.no.1
            @Override // java.lang.Runnable
            public void run() {
                String str3 = no.dq;
                StringBuilder sb = new StringBuilder("adn addShowFreqctlCount ritId = ");
                sb.append(str);
                sb.append(" adnSlotId = ");
                dub.k(sb, str2, str3);
                mn p = no.this.p(str, str2);
                if (p == null || !p.ia()) {
                    return;
                }
                for (s sVar : p.no()) {
                    if (sVar.s() < sVar.dq()) {
                        no.this.dq(p, sVar.ox(), sVar.s() + 1);
                    }
                }
            }
        });
    }

    public void delete(String str, String str2) {
        ia.dq().dq(str, str2);
    }

    public Pair<String, String> dq(String str, String str2) {
        return this.f949d.get(str + "_" + str2);
    }

    public boolean dq(mn mnVar) {
        if (mnVar == null) {
            return false;
        }
        mn p = p(mnVar.d(), mnVar.ox());
        if (p == null) {
            com.bytedance.msdk.dq.s.ox.dq(dq, "adn freqctl 规则为空直接存储");
            return true;
        }
        if (TextUtils.isEmpty(mnVar.iw())) {
            com.bytedance.msdk.dq.s.ox.dq(dq, "adn freqctl version 为空 清空本地数据 ");
            delete(p.d(), p.ox());
            return false;
        }
        if (TextUtils.equals(p.iw(), mnVar.iw())) {
            com.bytedance.msdk.dq.s.ox.dq(dq, "adn freqctl version 一致 version = " + p.iw() + " 无需处理");
            return false;
        }
        com.bytedance.msdk.dq.s.ox.dq(dq, "adn freqctl version不一致，缓存新规则 old version = " + p.iw() + "  new version " + mnVar.iw());
        return true;
    }

    public boolean ox(String str, String str2) {
        com.bytedance.msdk.dq.s.ox.dq(dq, "adn checkFreqctl ritId = " + str + " adnSlotId = " + str2);
        mn p = p(str, str2);
        if (p == null || !p.ia()) {
            return true;
        }
        for (s sVar : p.no()) {
            Date date = new Date();
            String str3 = dq;
            StringBuilder o = tn.o("adn checkFreqctl ritId = ", str, " adnSlotId = ", str2, "  date = ");
            o.append(date.getTime());
            o.append(" item.getEffectiveTime() = ");
            o.append(sVar.p());
            com.bytedance.msdk.dq.s.ox.dq(str3, o.toString());
            if (date.getTime() > sVar.p()) {
                dq(p, sVar.ox(), 0);
                dq(p, sVar.ox(), iw.dq(sVar.d()));
                com.bytedance.msdk.dq.s.ox.dq(str3, "adn checkFreqctl 有效期外计数需要清0，过期时间需要更新 = " + sVar.ox());
            } else {
                if (sVar.s() >= sVar.dq()) {
                    StringBuilder o2 = tn.o("adn checkFreqctl 到了上线不可以展示 ritId = ", str, " adnSlotId = ", str2, " ruleId = ");
                    o2.append(sVar.ox());
                    o2.append(" count = ");
                    o2.append(sVar.s());
                    com.bytedance.msdk.dq.s.ox.dq(str3, o2.toString());
                    Map<String, Pair<String, String>> map = this.f949d;
                    String i = awf.i(str, "_", str2);
                    String ox = sVar.ox();
                    StringBuilder sb = new StringBuilder();
                    sb.append(sVar.s());
                    map.put(i, new Pair<>(ox, sb.toString()));
                    return false;
                }
                StringBuilder o3 = tn.o("adn checkFreqctl 未到上线可以展示 ritId = ", str, " adnSlotId = ", str2, " ruleId = ");
                o3.append(sVar.ox());
                o3.append(" count = ");
                o3.append(sVar.s());
                com.bytedance.msdk.dq.s.ox.dq(str3, o3.toString());
            }
        }
        return true;
    }
}
