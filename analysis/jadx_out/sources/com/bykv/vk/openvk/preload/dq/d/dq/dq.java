package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.i;
import com.bykv.vk.openvk.preload.dq.r;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class dq<E> extends r<Object> {
    public static final i dq = new i() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.dq.1
        @Override // com.bykv.vk.openvk.preload.dq.i
        public final <T> r<T> dq(com.bykv.vk.openvk.preload.dq.iw iwVar, com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
            Type type = dqVar.f632d;
            if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type p = com.bykv.vk.openvk.preload.dq.d.d.p(type);
            return new dq(iwVar, iwVar.dq((com.bykv.vk.openvk.preload.dq.ox.dq) com.bykv.vk.openvk.preload.dq.ox.dq.dq(p)), com.bykv.vk.openvk.preload.dq.d.d.d(p));
        }
    };

    /* renamed from: d, reason: collision with root package name */
    private final Class<E> f587d;
    private final r<E> ox;

    public dq(com.bykv.vk.openvk.preload.dq.iw iwVar, r<E> rVar, Class<E> cls) {
        this.ox = new mp(iwVar, rVar, cls);
        this.f587d = cls;
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final Object dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
        if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
            dqVar.no();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        dqVar.dq();
        while (dqVar.s()) {
            arrayList.add(this.ox.dq(dqVar));
        }
        dqVar.d();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.f587d, size);
        for (int i = 0; i < size; i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Object obj) throws IOException {
        if (obj == null) {
            oxVar.s();
            return;
        }
        oxVar.dq();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.ox.dq(oxVar, Array.get(obj, i));
        }
        oxVar.d();
    }
}
