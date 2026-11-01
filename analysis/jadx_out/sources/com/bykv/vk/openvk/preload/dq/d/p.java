package com.bykv.vk.openvk.preload.dq.d;

import com.bykv.vk.openvk.preload.dq.i;
import com.bykv.vk.openvk.preload.dq.r;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class p implements i, Cloneable {
    public static final p dq = new p();
    public List<com.bykv.vk.openvk.preload.dq.d> iw;
    public List<com.bykv.vk.openvk.preload.dq.d> mn;
    public boolean s;

    /* renamed from: d, reason: collision with root package name */
    public double f624d = -1.0d;
    public int ox = 136;
    public boolean p = true;

    public p() {
        List<com.bykv.vk.openvk.preload.dq.d> list = Collections.EMPTY_LIST;
        this.iw = list;
        this.mn = list;
    }

    public static boolean d(Class<?> cls) {
        if (Enum.class.isAssignableFrom(cls)) {
            return false;
        }
        return cls.isAnonymousClass() || cls.isLocalClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public p clone() {
        try {
            return (p) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    private boolean dq(com.bykv.vk.openvk.preload.dq.dq.p pVar) {
        return pVar == null || pVar.dq() <= this.f624d;
    }

    private boolean dq(com.bykv.vk.openvk.preload.dq.dq.s sVar) {
        return sVar == null || sVar.dq() > this.f624d;
    }

    public static boolean ox(Class<?> cls) {
        return cls.isMemberClass() && !p(cls);
    }

    private static boolean p(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    @Override // com.bykv.vk.openvk.preload.dq.i
    public final <T> r<T> dq(final com.bykv.vk.openvk.preload.dq.iw iwVar, final com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
        boolean dq2 = dq(dqVar.dq);
        final boolean z = dq2 || dq(true);
        final boolean z2 = dq2 || dq(false);
        if (z || z2) {
            return new r<T>() { // from class: com.bykv.vk.openvk.preload.dq.d.p.1
                private r<T> iw;

                private r<T> d() {
                    r<T> rVar = this.iw;
                    if (rVar != null) {
                        return rVar;
                    }
                    r<T> dq3 = iwVar.dq(p.this, dqVar);
                    this.iw = dq3;
                    return dq3;
                }

                @Override // com.bykv.vk.openvk.preload.dq.r
                public final T dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar2) throws IOException {
                    if (!z2) {
                        return d().dq(dqVar2);
                    }
                    dqVar2.jy();
                    return null;
                }

                @Override // com.bykv.vk.openvk.preload.dq.r
                public final void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, T t) throws IOException {
                    if (z) {
                        oxVar.s();
                    } else {
                        d().dq(oxVar, t);
                    }
                }
            };
        }
        return null;
    }

    public final boolean dq(com.bykv.vk.openvk.preload.dq.dq.p pVar, com.bykv.vk.openvk.preload.dq.dq.s sVar) {
        return dq(pVar) && dq(sVar);
    }

    public final boolean dq(Class<?> cls) {
        if (this.f624d == -1.0d || dq((com.bykv.vk.openvk.preload.dq.dq.p) cls.getAnnotation(com.bykv.vk.openvk.preload.dq.dq.p.class), (com.bykv.vk.openvk.preload.dq.dq.s) cls.getAnnotation(com.bykv.vk.openvk.preload.dq.dq.s.class))) {
            return (!this.p && ox(cls)) || d(cls);
        }
        return true;
    }

    public final boolean dq(boolean z) {
        Iterator<com.bykv.vk.openvk.preload.dq.d> it = (z ? this.iw : this.mn).iterator();
        while (it.hasNext()) {
            if (it.next().d()) {
                return true;
            }
        }
        return false;
    }
}
