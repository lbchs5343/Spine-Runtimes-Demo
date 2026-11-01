package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.d.dq.kk;
import com.bykv.vk.openvk.preload.dq.r;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* loaded from: classes.dex */
final class mp<T> extends r<T> {

    /* renamed from: d, reason: collision with root package name */
    private final r<T> f596d;
    private final com.bykv.vk.openvk.preload.dq.iw dq;
    private final Type ox;

    public mp(com.bykv.vk.openvk.preload.dq.iw iwVar, r<T> rVar, Type type) {
        this.dq = iwVar;
        this.f596d = rVar;
        this.ox = type;
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final T dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
        return this.f596d.dq(dqVar);
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, T t) throws IOException {
        r<T> rVar = this.f596d;
        Type type = this.ox;
        if (t != null && (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) {
            type = t.getClass();
        }
        if (type != this.ox) {
            rVar = this.dq.dq((com.bykv.vk.openvk.preload.dq.ox.dq) com.bykv.vk.openvk.preload.dq.ox.dq.dq(type));
            if (rVar instanceof kk.dq) {
                r<T> rVar2 = this.f596d;
                if (!(rVar2 instanceof kk.dq)) {
                    rVar = rVar2;
                }
            }
        }
        rVar.dq(oxVar, t);
    }
}
