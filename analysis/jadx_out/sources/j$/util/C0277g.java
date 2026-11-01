package j$.util;

import j$.util.Map;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* renamed from: j$.util.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0277g implements java.util.Map, Serializable, Map {
    private static final long serialVersionUID = 1978198479659022715L;

    /* renamed from: a, reason: collision with root package name */
    public final java.util.Map f20808a;

    /* renamed from: b, reason: collision with root package name */
    public final C0277g f20809b = this;

    /* renamed from: c, reason: collision with root package name */
    public transient java.util.Set f20810c;

    /* renamed from: d, reason: collision with root package name */
    public transient java.util.Set f20811d;

    /* renamed from: e, reason: collision with root package name */
    public transient java.util.Collection f20812e;

    public C0277g(java.util.Map map) {
        this.f20808a = (java.util.Map) Objects.requireNonNull(map);
    }

    public static java.util.Set a(java.util.Set set, C0277g c0277g) {
        Constructor constructor = DesugarCollections.f20669e;
        if (constructor == null) {
            return Collections.synchronizedSet(set);
        }
        try {
            try {
                return (java.util.Set) constructor.newInstance(set, c0277g);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
                e = e2;
                throw new Error("Unable to instantiate a synchronized list.", e);
            }
        } catch (IllegalAccessException e3) {
            e = e3;
            throw new Error("Unable to instantiate a synchronized list.", e);
        } catch (InvocationTargetException e4) {
            e = e4;
            throw new Error("Unable to instantiate a synchronized list.", e);
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        synchronized (this.f20809b) {
            objectOutputStream.defaultWriteObject();
        }
    }

    @Override // java.util.Map
    public final void clear() {
        synchronized (this.f20809b) {
            this.f20808a.clear();
        }
    }

    @Override // java.util.Map, j$.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        Object compute;
        synchronized (this.f20809b) {
            compute = Map.b.compute(this.f20808a, obj, biFunction);
        }
        return compute;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        Object computeIfAbsent;
        synchronized (this.f20809b) {
            computeIfAbsent = Map.b.computeIfAbsent(this.f20808a, obj, function);
        }
        return computeIfAbsent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0032, code lost:
    
        r5 = r3;
     */
    @Override // java.util.Map, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        Object $default$computeIfPresent;
        synchronized (this.f20809b) {
            java.util.Map map = this.f20808a;
            if (map instanceof Map) {
                $default$computeIfPresent = ((Map) map).computeIfPresent(obj, biFunction);
            } else if (map instanceof ConcurrentMap) {
                ConcurrentMap concurrentMap = (ConcurrentMap) map;
                Objects.requireNonNull(biFunction);
                while (true) {
                    Object obj2 = concurrentMap.get(obj);
                    if (obj2 == null) {
                        $default$computeIfPresent = null;
                        break;
                    }
                    Object apply = biFunction.apply(obj, obj2);
                    if (apply == null) {
                        if (concurrentMap.remove(obj, obj2)) {
                            break;
                        }
                    } else if (concurrentMap.replace(obj, obj2, apply)) {
                        break;
                    }
                }
            } else {
                $default$computeIfPresent = Map.a.$default$computeIfPresent(map, obj, biFunction);
            }
        }
        return $default$computeIfPresent;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        boolean containsKey;
        synchronized (this.f20809b) {
            containsKey = this.f20808a.containsKey(obj);
        }
        return containsKey;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        boolean containsValue;
        synchronized (this.f20809b) {
            containsValue = this.f20808a.containsValue(obj);
        }
        return containsValue;
    }

    @Override // java.util.Map
    public final java.util.Set entrySet() {
        java.util.Set set;
        synchronized (this.f20809b) {
            try {
                if (this.f20811d == null) {
                    this.f20811d = a(this.f20808a.entrySet(), this.f20809b);
                }
                set = this.f20811d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return set;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        boolean equals;
        if (this == obj) {
            return true;
        }
        synchronized (this.f20809b) {
            equals = this.f20808a.equals(obj);
        }
        return equals;
    }

    @Override // java.util.Map, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        synchronized (this.f20809b) {
            Map.b.forEach(this.f20808a, biConsumer);
        }
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        synchronized (this.f20809b) {
            obj2 = this.f20808a.get(obj);
        }
        return obj2;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object orDefault;
        synchronized (this.f20809b) {
            orDefault = Map.b.getOrDefault(this.f20808a, obj, obj2);
        }
        return orDefault;
    }

    @Override // java.util.Map
    public final int hashCode() {
        int hashCode;
        synchronized (this.f20809b) {
            hashCode = this.f20808a.hashCode();
        }
        return hashCode;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        boolean isEmpty;
        synchronized (this.f20809b) {
            isEmpty = this.f20808a.isEmpty();
        }
        return isEmpty;
    }

    @Override // java.util.Map
    public final java.util.Set keySet() {
        java.util.Set set;
        synchronized (this.f20809b) {
            try {
                if (this.f20810c == null) {
                    this.f20810c = a(this.f20808a.keySet(), this.f20809b);
                }
                set = this.f20810c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return set;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        Object merge;
        synchronized (this.f20809b) {
            merge = Map.b.merge(this.f20808a, obj, obj2, biFunction);
        }
        return merge;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        Object put;
        synchronized (this.f20809b) {
            put = this.f20808a.put(obj, obj2);
        }
        return put;
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        synchronized (this.f20809b) {
            this.f20808a.putAll(map);
        }
    }

    @Override // java.util.Map, j$.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        Object putIfAbsent;
        synchronized (this.f20809b) {
            putIfAbsent = Map.b.putIfAbsent(this.f20808a, obj, obj2);
        }
        return putIfAbsent;
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        Object remove;
        synchronized (this.f20809b) {
            remove = this.f20808a.remove(obj);
        }
        return remove;
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean remove(Object obj, Object obj2) {
        boolean remove;
        synchronized (this.f20809b) {
            java.util.Map map = this.f20808a;
            remove = map instanceof Map ? ((Map) map).remove(obj, obj2) : Map.a.$default$remove(map, obj, obj2);
        }
        return remove;
    }

    @Override // java.util.Map, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        Object replace;
        synchronized (this.f20809b) {
            java.util.Map map = this.f20808a;
            replace = map instanceof Map ? ((Map) map).replace(obj, obj2) : Map.a.$default$replace(map, obj, obj2);
        }
        return replace;
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        boolean replace;
        synchronized (this.f20809b) {
            java.util.Map map = this.f20808a;
            replace = map instanceof Map ? ((Map) map).replace(obj, obj2, obj3) : Map.a.$default$replace(map, obj, obj2, obj3);
        }
        return replace;
    }

    @Override // java.util.Map, j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        synchronized (this.f20809b) {
            Map.b.a(this.f20808a, biFunction);
        }
    }

    @Override // java.util.Map
    public final int size() {
        int size;
        synchronized (this.f20809b) {
            size = this.f20808a.size();
        }
        return size;
    }

    public final String toString() {
        String obj;
        synchronized (this.f20809b) {
            obj = this.f20808a.toString();
        }
        return obj;
    }

    @Override // java.util.Map
    public final java.util.Collection values() {
        java.util.Collection collection;
        java.util.Collection collection2;
        synchronized (this.f20809b) {
            try {
                if (this.f20812e == null) {
                    java.util.Collection values = this.f20808a.values();
                    C0277g c0277g = this.f20809b;
                    Constructor constructor = DesugarCollections.f20668d;
                    if (constructor == null) {
                        collection2 = Collections.synchronizedCollection(values);
                    } else {
                        try {
                            collection2 = (java.util.Collection) constructor.newInstance(values, c0277g);
                        } catch (IllegalAccessException e2) {
                            e = e2;
                            throw new Error("Unable to instantiate a synchronized list.", e);
                        } catch (InstantiationException e3) {
                            e = e3;
                            throw new Error("Unable to instantiate a synchronized list.", e);
                        } catch (InvocationTargetException e4) {
                            e = e4;
                            throw new Error("Unable to instantiate a synchronized list.", e);
                        }
                    }
                    this.f20812e = collection2;
                }
                collection = this.f20812e;
            } finally {
            }
        }
        return collection;
    }
}
