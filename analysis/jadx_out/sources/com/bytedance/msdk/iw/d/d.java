package com.bytedance.msdk.iw.d;

import com.bytedance.msdk.api.p.no;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes.dex */
public class d {
    private static volatile d ox;

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, com.bytedance.msdk.dq.dq.p> f1102d = new ConcurrentHashMap();
    public no dq;

    private d() {
    }

    private com.bytedance.msdk.dq.dq.p d(String str) {
        return this.f1102d.get(str);
    }

    public static d dq() {
        if (ox == null) {
            synchronized (d.class) {
                try {
                    if (ox == null) {
                        ox = new d();
                    }
                } finally {
                }
            }
        }
        return ox;
    }

    private void dq(String str, com.bytedance.msdk.dq.dq.p pVar) {
        this.f1102d.put(str, pVar);
    }

    private com.bytedance.msdk.dq.dq.p ox(String str) {
        return MediationConstant.ADN_PANGLE.equalsIgnoreCase(str) ? new com.bytedance.msdk.dq.ox.dq() : new p();
    }

    public synchronized Map<String, com.bytedance.msdk.dq.dq.p> d() {
        return this.f1102d;
    }

    public synchronized com.bytedance.msdk.dq.dq.p dq(String str) {
        com.bytedance.msdk.dq.dq.p d2;
        no noVar;
        try {
            d2 = d(str);
            if (d2 == null) {
                com.bytedance.msdk.core.no.dq dq = com.bytedance.msdk.core.dq.d().dq(str);
                if (dq == null && (noVar = this.dq) != null) {
                    dq = new com.bytedance.msdk.core.no.dq(noVar.ox(), this.dq.p());
                    this.dq = null;
                }
                if (dq != null && !dq.p()) {
                    d2 = ox(str);
                }
                if (d2 != null) {
                    dq(str, d2);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return d2;
    }

    public com.bytedance.msdk.dq.dq.p dq(String str, no noVar) {
        this.dq = noVar;
        return dq(str);
    }

    public Collection<com.bytedance.msdk.dq.dq.p> ox() {
        return this.f1102d.values();
    }
}
