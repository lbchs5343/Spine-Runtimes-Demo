package j$.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;

/* loaded from: classes2.dex */
public class DesugarCollections {

    /* renamed from: a, reason: collision with root package name */
    public static final Class f20665a;

    /* renamed from: b, reason: collision with root package name */
    public static final Field f20666b;

    /* renamed from: c, reason: collision with root package name */
    public static final Field f20667c;

    /* renamed from: d, reason: collision with root package name */
    public static final Constructor f20668d;

    /* renamed from: e, reason: collision with root package name */
    public static final Constructor f20669e;

    static {
        Field field;
        Field field2;
        Constructor<?> constructor;
        Class<?> cls = Collections.synchronizedCollection(new ArrayList()).getClass();
        f20665a = cls;
        Collections.synchronizedList(new LinkedList()).getClass();
        Constructor constructor2 = null;
        try {
            field = cls.getDeclaredField("mutex");
        } catch (NoSuchFieldException unused) {
            field = null;
        }
        f20666b = field;
        if (field != null) {
            field.setAccessible(true);
        }
        try {
            field2 = f20665a.getDeclaredField("c");
        } catch (NoSuchFieldException unused2) {
            field2 = null;
        }
        f20667c = field2;
        if (field2 != null) {
            field2.setAccessible(true);
        }
        try {
            constructor = Collections.synchronizedSet(new HashSet()).getClass().getDeclaredConstructor(java.util.Set.class, Object.class);
        } catch (NoSuchMethodException unused3) {
            constructor = null;
        }
        f20669e = constructor;
        if (constructor != null) {
            constructor.setAccessible(true);
        }
        try {
            constructor2 = f20665a.getDeclaredConstructor(java.util.Collection.class, Object.class);
        } catch (NoSuchMethodException unused4) {
        }
        f20668d = constructor2;
        if (constructor2 != null) {
            constructor2.setAccessible(true);
        }
    }

    public static <K, V> java.util.Map<K, V> synchronizedMap(java.util.Map<K, V> map) {
        return new C0277g(map);
    }
}
