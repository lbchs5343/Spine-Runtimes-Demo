package com.bykv.vk.openvk.preload.dq.d;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* loaded from: classes.dex */
public final class ox {

    /* renamed from: d, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.dq.d.d.d f618d = com.bykv.vk.openvk.preload.dq.d.d.d.dq();
    private final Map<Type, com.bykv.vk.openvk.preload.dq.ia<?>> dq;

    public ox(Map<Type, com.bykv.vk.openvk.preload.dq.ia<?>> map) {
        this.dq = map;
    }

    private <T> kk<T> dq(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(null);
            if (!declaredConstructor.isAccessible()) {
                this.f618d.dq(declaredConstructor);
            }
            return new kk<T>() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.13
                @Override // com.bykv.vk.openvk.preload.dq.d.kk
                public final T dq() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e2) {
                        throw new AssertionError(e2);
                    } catch (InstantiationException e3) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e3);
                    } catch (InvocationTargetException e4) {
                        throw new RuntimeException("Failed to invoke " + declaredConstructor + " with no args", e4.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public final <T> kk<T> dq(com.bykv.vk.openvk.preload.dq.ox.dq<T> dqVar) {
        final Type type = dqVar.f632d;
        final Class<? super T> cls = dqVar.dq;
        final com.bykv.vk.openvk.preload.dq.ia<?> iaVar = this.dq.get(type);
        if (iaVar != null) {
            return new kk<T>() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.1
                @Override // com.bykv.vk.openvk.preload.dq.d.kk
                public final T dq() {
                    return (T) iaVar.dq();
                }
            };
        }
        final com.bykv.vk.openvk.preload.dq.ia<?> iaVar2 = this.dq.get(cls);
        if (iaVar2 != null) {
            return new kk<T>() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.12
                @Override // com.bykv.vk.openvk.preload.dq.d.kk
                public final T dq() {
                    return (T) iaVar2.dq();
                }
            };
        }
        kk<T> dq = dq(cls);
        if (dq != null) {
            return dq;
        }
        kk<T> kkVar = Collection.class.isAssignableFrom(cls) ? SortedSet.class.isAssignableFrom(cls) ? new kk() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.14
            @Override // com.bykv.vk.openvk.preload.dq.d.kk
            public final Object dq() {
                return new TreeSet();
            }
        } : EnumSet.class.isAssignableFrom(cls) ? new kk() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.2
            @Override // com.bykv.vk.openvk.preload.dq.d.kk
            public final Object dq() {
                Type type2 = type;
                if (!(type2 instanceof ParameterizedType)) {
                    throw new com.bykv.vk.openvk.preload.dq.ig("Invalid EnumSet type: " + type.toString());
                }
                Type type3 = ((ParameterizedType) type2).getActualTypeArguments()[0];
                if (type3 instanceof Class) {
                    return EnumSet.noneOf((Class) type3);
                }
                throw new com.bykv.vk.openvk.preload.dq.ig("Invalid EnumSet type: " + type.toString());
            }
        } : Set.class.isAssignableFrom(cls) ? new kk() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.3
            @Override // com.bykv.vk.openvk.preload.dq.d.kk
            public final Object dq() {
                return new LinkedHashSet();
            }
        } : Queue.class.isAssignableFrom(cls) ? new kk() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.4
            @Override // com.bykv.vk.openvk.preload.dq.d.kk
            public final Object dq() {
                return new ArrayDeque();
            }
        } : new kk() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.5
            @Override // com.bykv.vk.openvk.preload.dq.d.kk
            public final Object dq() {
                return new ArrayList();
            }
        } : Map.class.isAssignableFrom(cls) ? ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new kk() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.6
            @Override // com.bykv.vk.openvk.preload.dq.d.kk
            public final Object dq() {
                return new ConcurrentSkipListMap();
            }
        } : ConcurrentMap.class.isAssignableFrom(cls) ? new kk() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.7
            @Override // com.bykv.vk.openvk.preload.dq.d.kk
            public final Object dq() {
                return new ConcurrentHashMap();
            }
        } : SortedMap.class.isAssignableFrom(cls) ? new kk() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.8
            @Override // com.bykv.vk.openvk.preload.dq.d.kk
            public final Object dq() {
                return new TreeMap();
            }
        } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(com.bykv.vk.openvk.preload.dq.ox.dq.dq(((ParameterizedType) type).getActualTypeArguments()[0]).dq)) ? new kk() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.10
            @Override // com.bykv.vk.openvk.preload.dq.d.kk
            public final Object dq() {
                return new ia();
            }
        } : new kk() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.9
            @Override // com.bykv.vk.openvk.preload.dq.d.kk
            public final Object dq() {
                return new LinkedHashMap();
            }
        } : null;
        return kkVar != null ? kkVar : new kk() { // from class: com.bykv.vk.openvk.preload.dq.d.ox.11
            private final ig p = ig.dq();

            @Override // com.bykv.vk.openvk.preload.dq.d.kk
            public final Object dq() {
                try {
                    return this.p.dq(cls);
                } catch (Exception e2) {
                    throw new RuntimeException("Unable to invoke no-args constructor for " + type + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e2);
                }
            }
        };
    }

    public final String toString() {
        return this.dq.toString();
    }
}
