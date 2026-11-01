package com.bykv.vk.openvk.preload.dq.ox;

import com.bykv.vk.openvk.preload.dq.d.d;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public class dq<T> {

    /* renamed from: d, reason: collision with root package name */
    public final Type f632d;
    public final Class<? super T> dq;
    final int ox;

    public dq() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        Type dq = d.dq(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        this.f632d = dq;
        this.dq = (Class<? super T>) d.d(dq);
        this.ox = dq.hashCode();
    }

    private dq(Type type) {
        Type dq = d.dq((Type) com.bykv.vk.openvk.preload.dq.d.dq.dq(type));
        this.f632d = dq;
        this.dq = (Class<? super T>) d.d(dq);
        this.ox = dq.hashCode();
    }

    public static <T> dq<T> dq(Class<T> cls) {
        return new dq<>(cls);
    }

    public static dq<?> dq(Type type) {
        return new dq<>(type);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof dq) && d.dq(this.f632d, ((dq) obj).f632d);
    }

    public final int hashCode() {
        return this.ox;
    }

    public final String toString() {
        return d.ox(this.f632d);
    }
}
