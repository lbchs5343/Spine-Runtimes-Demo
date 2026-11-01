package com.bykv.vk.openvk.preload.d;

import java.util.List;

/* loaded from: classes.dex */
final class kk implements d {

    /* renamed from: d, reason: collision with root package name */
    private int f580d;
    protected s dq;
    private List<ia> ox;
    private p p;

    public static final class dq extends Exception {
        public dq(Throwable th) {
            super(th);
        }
    }

    public kk(List<ia> list, int i, s sVar, p pVar) {
        this.ox = list;
        this.f580d = i;
        this.dq = sVar;
        this.p = pVar;
    }

    private p ox(Class cls) {
        p pVar = this.p;
        while (pVar != null && pVar.getClass() != cls) {
            pVar = pVar.dq;
        }
        return pVar;
    }

    @Override // com.bykv.vk.openvk.preload.d.d
    public final Object d(Class cls) {
        p ox = ox(cls);
        if (ox != null) {
            return ox.ox;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }

    @Override // com.bykv.vk.openvk.preload.d.d
    public final Object dq(Class cls) {
        p ox = ox(cls);
        if (ox != null) {
            return ox.f582d;
        }
        throw new IllegalArgumentException("can not find pre Interceptor , class:".concat(String.valueOf(cls)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.d.d
    public final Object dq(Object obj) throws Exception {
        p pVar = this.p;
        if (pVar != null) {
            pVar.ox = obj;
            com.bykv.vk.openvk.preload.d.d.dq dqVar = pVar.p;
            if (dqVar != null) {
                dqVar.ox(pVar.s, pVar);
            }
        }
        if (this.f580d >= this.ox.size()) {
            return obj;
        }
        ia iaVar = this.ox.get(this.f580d);
        Class<? extends p> cls = iaVar.dq;
        p pVar2 = (p) this.dq.dq(cls);
        if (pVar2 == null) {
            throw new IllegalArgumentException("interceptor == null , index = " + obj + " , class: " + cls);
        }
        com.bykv.vk.openvk.preload.d.d.dq dqVar2 = iaVar.f577d;
        kk kkVar = new kk(this.ox, this.f580d + 1, this.dq, pVar2);
        pVar2.dq(kkVar, this.p, obj, dqVar2, iaVar.ox);
        com.bykv.vk.openvk.preload.d.d.dq dqVar3 = pVar2.p;
        if (dqVar3 != null) {
            dqVar3.dq(pVar2.s, pVar2);
        }
        try {
            Object dq2 = pVar2.dq(kkVar, obj);
            com.bykv.vk.openvk.preload.d.d.dq dqVar4 = pVar2.p;
            if (dqVar4 != null) {
                dqVar4.d(pVar2.s, pVar2);
            }
            return dq2;
        } catch (dq e2) {
            Throwable cause = e2.getCause();
            if (pVar2.p == null) {
                throw e2;
            }
            pVar2.p.ox(pVar2.s, pVar2, cause);
            throw e2;
        } catch (Throwable th) {
            if (pVar2.p != null) {
                pVar2.p.dq(pVar2.s, pVar2, th);
            }
            throw new dq(th);
        }
    }
}
