package com.bytedance.sdk.component.no.mn;

import com.bytedance.sdk.component.no.dq.d;
import com.bytedance.sdk.component.no.dq.dq.ox;
import com.bytedance.sdk.component.no.p.p;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile dq f2011d;
    private Map<String, com.bytedance.sdk.component.no.dq.dq.dq> dq = new HashMap();

    private dq() {
    }

    public static dq dq() {
        if (f2011d != null) {
            return f2011d;
        }
        synchronized (dq.class) {
            try {
                if (f2011d != null) {
                    return f2011d;
                }
                dq dqVar = new dq();
                f2011d = dqVar;
                return dqVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dq(String str, com.bytedance.sdk.component.no.dq.dq.dq dqVar) {
        this.dq.put(str, dqVar);
    }

    public void dq(String str, com.bytedance.sdk.component.no.dq.dq dqVar, com.bytedance.sdk.component.no.p.dq dqVar2) {
        com.bytedance.sdk.component.no.dq.dq.dq dqVar3 = this.dq.get(str);
        if (dqVar3 == null || dqVar == null) {
            return;
        }
        Map<String, Object> dq = dqVar.dq();
        p s = dqVar.s();
        if (s instanceof d) {
            Map<String, Object> dq2 = com.bytedance.sdk.component.no.s.dq.dq().dq(String.valueOf(s.hashCode()));
            dq.putAll(dq2);
            dq2.clear();
            com.bytedance.sdk.component.no.iw.dq dq3 = com.bytedance.sdk.component.no.iw.dq.dq();
            dqVar3 = dq3.dq(dqVar3);
            HashMap hashMap = new HashMap();
            hashMap.putAll(dqVar.d());
            hashMap.putAll(dq);
            dq3.dq(dqVar3, hashMap);
        }
        if (dqVar3 instanceof ox) {
            ((ox) dqVar3).dq(dqVar.d(), dqVar.dq(), dqVar);
        } else if (dqVar3 instanceof com.bytedance.sdk.component.no.dq.dq.d) {
            ((com.bytedance.sdk.component.no.dq.dq.d) dqVar3).dq(dqVar.d(), dqVar.dq(), dqVar);
        }
    }
}
