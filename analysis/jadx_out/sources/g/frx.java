package g;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public abstract class frx {
    public final Unsafe i;

    public frx(Unsafe unsafe) {
        this.i = unsafe;
    }

    public abstract void b(Object obj, long j, byte b2);

    public abstract void c(Object obj, long j, double d2);

    public abstract double d(long j, Object obj);

    public abstract void e(Object obj, long j, float f2);

    public abstract float f(long j, Object obj);

    public abstract void g(Object obj, long j, boolean z);

    public abstract boolean h(long j, Object obj);

    public final int j(Class cls) {
        return this.i.arrayBaseOffset(cls);
    }

    public final long k(long j, Object obj) {
        return this.i.getLong(obj, j);
    }

    public final void l(Object obj, long j, long j2) {
        this.i.putLong(obj, j, j2);
    }

    public final void m(Object obj, long j, int i) {
        this.i.putInt(obj, j, i);
    }

    public final void n(Field field) {
        this.i.objectFieldOffset(field);
    }

    public final void o(long j, Object obj, Object obj2) {
        this.i.putObject(obj, j, obj2);
    }

    public final Object p(long j, Object obj) {
        return this.i.getObject(obj, j);
    }

    public final int q(Class cls) {
        return this.i.arrayIndexScale(cls);
    }

    public final int r(long j, Object obj) {
        return this.i.getInt(obj, j);
    }
}
