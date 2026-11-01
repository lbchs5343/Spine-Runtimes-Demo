package j$.sun.misc;

import j$.util.concurrent.l;
import j$.util.concurrent.q;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static final a f20426b;

    /* renamed from: a, reason: collision with root package name */
    public final Unsafe f20427a;

    static {
        Field g2 = g();
        g2.setAccessible(true);
        try {
            f20426b = new a((Unsafe) g2.get(null));
        } catch (IllegalAccessException e2) {
            throw new AssertionError("Couldn't get the Unsafe", e2);
        }
    }

    public a(Unsafe unsafe) {
        this.f20427a = unsafe;
    }

    public static Field g() {
        try {
            return Unsafe.class.getDeclaredField("theUnsafe");
        } catch (NoSuchFieldException e2) {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                if (Modifier.isStatic(field.getModifiers()) && Unsafe.class.isAssignableFrom(field.getType())) {
                    return field;
                }
            }
            throw new AssertionError("Couldn't find the Unsafe", e2);
        }
    }

    public final int a(Class cls) {
        return this.f20427a.arrayBaseOffset(cls);
    }

    public final int b(Class cls) {
        return this.f20427a.arrayIndexScale(cls);
    }

    public final boolean c(Object obj, long j, int i, int i2) {
        return this.f20427a.compareAndSwapInt(obj, j, i, i2);
    }

    public final boolean d(Object obj, long j, long j2, long j3) {
        return this.f20427a.compareAndSwapLong(obj, j, j2, j3);
    }

    public final int e(q qVar, long j) {
        while (true) {
            int intVolatile = this.f20427a.getIntVolatile(qVar, j);
            q qVar2 = qVar;
            long j2 = j;
            if (this.f20427a.compareAndSwapInt(qVar2, j2, intVolatile, intVolatile - 4)) {
                return intVolatile;
            }
            qVar = qVar2;
            j = j2;
        }
    }

    public final Object f(Object obj, long j) {
        return this.f20427a.getObjectVolatile(obj, j);
    }

    public final long h(Class cls, String str) {
        try {
            return i(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e2) {
            throw new AssertionError("Cannot find field:", e2);
        }
    }

    public final long i(Field field) {
        return this.f20427a.objectFieldOffset(field);
    }

    public final void j(Object obj, long j, l lVar) {
        this.f20427a.putObjectVolatile(obj, j, lVar);
    }
}
