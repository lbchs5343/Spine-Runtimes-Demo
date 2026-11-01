package com.bytedance.msdk.core.kk;

import android.text.TextUtils;
import g.dub;
import g.tn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Date;
import java.util.Map;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private Map<String, ConcurrentHashMap<String, com.bytedance.msdk.core.kk.dq>> f952d;
    private Map<String, d> dq;

    public static class dq {
        private static ox dq = new ox();
    }

    private ox() {
        this.f952d = new ConcurrentHashMap();
    }

    public static ox dq() {
        return dq.dq;
    }

    public void dq(ConcurrentHashMap<String, d> concurrentHashMap) {
        this.dq = concurrentHashMap;
        if (concurrentHashMap != null) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_AdnShowControl", "mAdnControlMap = ".concat(String.valueOf(concurrentHashMap)));
        } else {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_AdnShowControl", "mAdnControlMap is null ");
        }
    }

    public void dq(String str, String str2, String str3) {
        dub.k(tn.o("setAdnError adnName = ", str, " slotId = ", str2, " error = "), str3, "TTMediationSDK_AdnShowControl");
        Map<String, d> map = this.dq;
        d dVar = map != null ? map.get(str) : null;
        if (dVar != null) {
            for (String str4 : dVar.d()) {
                if (TextUtils.equals(str4, str3)) {
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_AdnShowControl", "setAdnError 命中errorCode = ".concat(String.valueOf(str4)));
                    long dq2 = dVar.dq() + new Date().getTime();
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_AdnShowControl", "setAdnError 更新时间 = " + iw.d(dq2));
                    com.bytedance.msdk.core.kk.dq dqVar = new com.bytedance.msdk.core.kk.dq(str, str2, dq2);
                    if (this.f952d != null) {
                        ConcurrentHashMap<String, com.bytedance.msdk.core.kk.dq> concurrentHashMap = new ConcurrentHashMap<>();
                        concurrentHashMap.put(str2, dqVar);
                        this.f952d.put(str, concurrentHashMap);
                        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_AdnShowControl", "setAdnError mAdnControlMap = " + this.f952d);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public boolean dq(String str, String str2) {
        com.bytedance.msdk.core.kk.dq dqVar;
        ConcurrentHashMap<String, com.bytedance.msdk.core.kk.dq> concurrentHashMap;
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_AdnShowControl", "checkLoad adnName = " + str + " slotId = " + str2);
        Map<String, ConcurrentHashMap<String, com.bytedance.msdk.core.kk.dq>> map = this.f952d;
        if (map == null || (concurrentHashMap = map.get(str)) == null) {
            dqVar = null;
        } else {
            dqVar = concurrentHashMap.get(str2);
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_AdnShowControl", "checkLoad 取出的showBean = ".concat(String.valueOf(dqVar)));
        }
        if (dqVar == null || dqVar.dq() == 0) {
            return true;
        }
        long time = new Date().getTime();
        if (time > dqVar.dq()) {
            return true;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_AdnShowControl", "checkLoad 当前时间 = " + iw.d(time));
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK_AdnShowControl", "checkLoad 规则有效时间 = " + iw.d(dqVar.dq()));
        return false;
    }
}
