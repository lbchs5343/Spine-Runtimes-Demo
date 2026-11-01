package com.bytedance.sdk.openadsdk.core.d.dq;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.d.dq.d.iw;
import com.bytedance.sdk.openadsdk.core.d.dq.d.kk;
import com.bytedance.sdk.openadsdk.core.d.dq.d.mn;
import com.bytedance.sdk.openadsdk.core.d.dq.d.s;
import com.bytedance.sdk.openadsdk.core.d.dq.dq.o;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class p {
    private final Map<Class, dq> dq = new HashMap();

    private <T extends dq> T d(Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (Throwable unused) {
            try {
                Constructor<T> declaredConstructor = cls.getDeclaredConstructor(j.class, Context.class);
                declaredConstructor.setAccessible(true);
                return declaredConstructor.newInstance(null, null);
            } catch (Throwable unused2) {
                return null;
            }
        }
    }

    private com.bytedance.sdk.openadsdk.core.d.dq.dq.d dq(j jVar, Context context, boolean z) {
        com.bytedance.sdk.openadsdk.core.d.dq.dq.d dq;
        if (com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq()) {
            dq = new o();
            dq.dq(jVar);
            dq.dq(context);
        } else {
            dq = z ? com.bytedance.sdk.openadsdk.core.d.dq.dq.p.dq(jVar, context) : com.bytedance.sdk.openadsdk.core.d.dq.dq.p.dq(jVar, context, 3);
        }
        return new com.bytedance.sdk.openadsdk.core.d.dq.dq.ox(dq);
    }

    public <T extends dq> T dq(Class<T> cls) {
        T t = (T) this.dq.get(cls);
        return t == null ? (T) d(cls) : t;
    }

    public ox dq(j jVar, Context context, com.bytedance.sdk.openadsdk.core.d.p pVar, boolean z) {
        ox oxVar = new ox(pVar);
        com.bytedance.sdk.openadsdk.core.d.dq.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq.d.dq(jVar, context);
        this.dq.put(com.bytedance.sdk.openadsdk.core.d.dq.d.dq.class, dqVar);
        d dVar = new d(jVar, context);
        this.dq.put(d.class, dVar);
        com.bytedance.sdk.openadsdk.core.d.dq.dq.d dq = dq(jVar, context, z);
        this.dq.put(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class, dq);
        kk kkVar = new kk(jVar, context, pVar);
        this.dq.put(kk.class, kkVar);
        com.bytedance.sdk.openadsdk.core.d.dq.d.ox oxVar2 = new com.bytedance.sdk.openadsdk.core.d.dq.d.ox(jVar, context, pVar);
        this.dq.put(com.bytedance.sdk.openadsdk.core.d.dq.d.ox.class, oxVar2);
        iw iwVar = new iw(jVar, context, pVar);
        this.dq.put(iw.class, iwVar);
        com.bytedance.sdk.openadsdk.core.d.dq.ox.dq dqVar2 = new com.bytedance.sdk.openadsdk.core.d.dq.ox.dq(jVar, context);
        this.dq.put(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class, dqVar2);
        com.bytedance.sdk.openadsdk.core.d.dq.ox.ox oxVar3 = new com.bytedance.sdk.openadsdk.core.d.dq.ox.ox(jVar, context);
        this.dq.put(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class, oxVar3);
        s sVar = new s(jVar, context, pVar);
        this.dq.put(s.class, sVar);
        oxVar.dq(dqVar);
        if (!com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq()) {
            oxVar.dq(iwVar);
            oxVar.dq(kkVar);
            if (z) {
                mn mnVar = new mn(jVar, context);
                this.dq.put(mn.class, mnVar);
                oxVar.dq(mnVar);
            }
        }
        oxVar.dq(dVar);
        if (!com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq()) {
            oxVar.dq(oxVar2);
            oxVar.dq(sVar);
        }
        oxVar.dq(dq);
        oxVar.dq(dqVar2);
        oxVar.dq(oxVar3);
        return oxVar;
    }
}
