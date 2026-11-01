package com.bytedance.sdk.openadsdk.core.wp;

import com.bytedance.sdk.openadsdk.core.ir.n;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq {
    private static volatile dq dq;

    /* renamed from: d, reason: collision with root package name */
    private Map<String, d> f3720d = new HashMap();

    private dq() {
        dq(com.bytedance.sdk.openadsdk.core.wp.ox.dq.ox());
        dq(com.bytedance.sdk.openadsdk.core.wp.dq.dq.d());
        dq(com.bytedance.sdk.openadsdk.core.wp.p.dq.ox());
        dq(com.bytedance.sdk.openadsdk.core.wp.s.dq.d());
    }

    public static dq dq() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private void dq(d dVar) {
        this.f3720d.put(dVar.dq(), dVar);
    }

    public String dq(String str, String str2) {
        return this.f3720d.containsKey(str) ? this.f3720d.get(str).dq(str2) : n.dq(str).d(str2, "");
    }

    public void dq(String str, String str2, String str3) {
        if (this.f3720d.containsKey(str)) {
            this.f3720d.get(str).dq(str2, str3);
        } else {
            n.dq(str).dq(str2, str3);
        }
    }
}
