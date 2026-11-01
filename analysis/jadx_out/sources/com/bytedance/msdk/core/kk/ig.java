package com.bytedance.msdk.core.kk;

import android.text.TextUtils;
import g.awf;
import g.dub;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Date;
import java.util.Map;

/* loaded from: classes.dex */
public class ig {
    private static final String dq = "TTMediationSDK_ig";

    /* renamed from: d, reason: collision with root package name */
    private Map<String, Long> f943d;

    public static class dq {
        private static ig dq = new ig();
    }

    private ig() {
        this.f943d = new ConcurrentHashMap();
    }

    public static ig dq() {
        return dq.dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, String str2, long j) {
        o.dq().dq(str, str2, j);
    }

    public void d(kk kkVar) {
        o.dq().dq(kkVar);
    }

    public void d(final String str, final String str2) {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.core.kk.ig.1
            @Override // java.lang.Runnable
            public void run() {
                String str3 = ig.dq;
                StringBuilder sb = new StringBuilder("adn updateShowPacingTime ritId = ");
                sb.append(str);
                sb.append(" adnSlotId = ");
                dub.k(sb, str2, str3);
                kk p = ig.this.p(str, str2);
                if (p == null || !p.ia()) {
                    return;
                }
                Date date = new Date();
                com.bytedance.msdk.dq.s.ox.dq(ig.dq, "adn updateShowPacingTime save time = " + iw.d(date.getTime()));
                ig.this.dq(str, str2, date.getTime());
            }
        });
    }

    public void delete(String str, String str2) {
        o.dq().dq(str, str2);
    }

    public long dq(String str, String str2) {
        Long l = this.f943d.get(str + "_" + str2);
        if (l == null) {
            return -2L;
        }
        return l.longValue();
    }

    public boolean dq(kk kkVar) {
        if (kkVar == null) {
            return false;
        }
        kk p = p(kkVar.d(), kkVar.ox());
        if (p == null) {
            com.bytedance.msdk.dq.s.ox.dq(dq, "adn pacing 规则为空直接存储");
            return true;
        }
        if (TextUtils.isEmpty(kkVar.o())) {
            com.bytedance.msdk.dq.s.ox.dq(dq, "adn pacing ruleId 为空 清空本地数据 ");
            delete(kkVar.d(), kkVar.ox());
            return false;
        }
        if (TextUtils.equals(p.o(), kkVar.o())) {
            com.bytedance.msdk.dq.s.ox.dq(dq, "adn pacing ruleId 一致 ruleId = " + p.o() + " 无需处理");
            return false;
        }
        com.bytedance.msdk.dq.s.ox.dq(dq, "adn pacing ruleId不一致，缓存新规则 old ruleId = " + p.o() + "  new ruleId = " + kkVar.o());
        delete(kkVar.d(), kkVar.ox());
        return true;
    }

    public boolean ox(String str, String str2) {
        String str3 = dq;
        com.bytedance.msdk.dq.s.ox.dq(str3, "adn checkPacing ritId = " + str + " adnSlotId = " + str2);
        kk p = p(str, str2);
        if (p != null && p.ia() && p.ig()) {
            long time = new Date().getTime();
            long no = p.no();
            long kk = p.kk() + p.no();
            com.bytedance.msdk.dq.s.ox.dq(str3, "adn checkPacing currentTime = " + iw.d(time) + " showTime = " + iw.d(no) + " pacingBean.getPacing() = " + p.kk() + " pacingTime = " + iw.d(kk));
            if (time <= kk) {
                this.f943d.put(awf.i(str, "_", str2), Long.valueOf(time - no));
                return false;
            }
        }
        return true;
    }

    public kk p(String str, String str2) {
        return o.dq().d(str, str2);
    }
}
