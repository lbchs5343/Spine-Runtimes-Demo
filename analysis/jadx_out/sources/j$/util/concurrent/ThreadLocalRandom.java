package j$.util.concurrent;

import g.he;
import j$.util.c0;
import j$.util.stream.C0305d0;
import j$.util.stream.C0335j0;
import j$.util.stream.C0360o0;
import j$.util.stream.C0408y;
import j$.util.stream.D;
import j$.util.stream.EnumC0293a3;
import j$.util.stream.Z;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.security.AccessController;
import java.security.SecureRandom;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;

/* loaded from: classes2.dex */
public class ThreadLocalRandom extends Random {
    private static final long serialVersionUID = -5851777807851030925L;

    /* renamed from: a, reason: collision with root package name */
    public long f20743a;

    /* renamed from: b, reason: collision with root package name */
    public int f20744b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f20745c;
    private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("rnd", Long.TYPE), new ObjectStreamField("initialized", Boolean.TYPE)};

    /* renamed from: d, reason: collision with root package name */
    public static final ThreadLocal f20739d = new ThreadLocal();

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicInteger f20740e = new AtomicInteger();

    /* renamed from: f, reason: collision with root package name */
    public static final v f20741f = new v();

    /* renamed from: g, reason: collision with root package name */
    public static final AtomicLong f20742g = new AtomicLong(f(System.currentTimeMillis()) ^ f(System.nanoTime()));

    static {
        if (((Boolean) AccessController.doPrivileged(new c0(1))).booleanValue()) {
            byte[] seed = SecureRandom.getSeed(8);
            long j = seed[0] & 255;
            for (int i = 1; i < 8; i++) {
                j = (j << 8) | (seed[i] & 255);
            }
            f20742g.set(j);
        }
    }

    private ThreadLocalRandom() {
        this.f20745c = true;
    }

    public /* synthetic */ ThreadLocalRandom(int i) {
        this();
    }

    public static ThreadLocalRandom current() {
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f20741f.get();
        if (threadLocalRandom.f20744b == 0) {
            d();
        }
        return threadLocalRandom;
    }

    public static final void d() {
        int addAndGet = f20740e.addAndGet(-1640531527);
        if (addAndGet == 0) {
            addAndGet = 1;
        }
        long f2 = f(f20742g.getAndAdd(-4942790177534073029L));
        ThreadLocalRandom threadLocalRandom = (ThreadLocalRandom) f20741f.get();
        threadLocalRandom.f20743a = f2;
        threadLocalRandom.f20744b = addAndGet;
    }

    public static int e(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        return (int) (((j2 ^ (j2 >>> 33)) * (-4265267296055464877L)) >>> 32);
    }

    public static long f(long j) {
        long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
        long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
        return j3 ^ (j3 >>> 33);
    }

    private Object readResolve() {
        return current();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        ObjectOutputStream.PutField putFields = objectOutputStream.putFields();
        putFields.put("rnd", this.f20743a);
        putFields.put("initialized", true);
        objectOutputStream.writeFields();
    }

    public final double a(double d2, double d3) {
        double nextLong = (nextLong() >>> 11) * 1.1102230246251565E-16d;
        if (d2 >= d3) {
            return nextLong;
        }
        double d4 = ((d3 - d2) * nextLong) + d2;
        return d4 >= d3 ? Double.longBitsToDouble(Double.doubleToLongBits(d3) - 1) : d4;
    }

    public final int b(int i, int i2) {
        int e2 = e(g());
        if (i >= i2) {
            return e2;
        }
        int i3 = i2 - i;
        int i4 = i3 - 1;
        if ((i3 & i4) == 0) {
            return (e2 & i4) + i;
        }
        if (i3 > 0) {
            int i5 = e2 >>> 1;
            while (true) {
                int i6 = i5 + i4;
                int i7 = i5 % i3;
                if (i6 - i7 >= 0) {
                    return i7 + i;
                }
                i5 = e(g()) >>> 1;
            }
        } else {
            while (true) {
                if (e2 >= i && e2 < i2) {
                    return e2;
                }
                e2 = e(g());
            }
        }
    }

    public final long c(long j, long j2) {
        long f2 = f(g());
        if (j >= j2) {
            return f2;
        }
        long j3 = j2 - j;
        long j4 = j3 - 1;
        if ((j3 & j4) == 0) {
            return (f2 & j4) + j;
        }
        if (j3 > 0) {
            while (true) {
                long j5 = f2 >>> 1;
                long j6 = j5 + j4;
                long j7 = j5 % j3;
                if (j6 - j7 >= 0) {
                    return j7 + j;
                }
                f2 = f(g());
            }
        } else {
            while (true) {
                if (f2 >= j && f2 < j2) {
                    return f2;
                }
                f2 = f(g());
            }
        }
    }

    @Override // java.util.Random
    public final DoubleStream doubles() {
        w wVar = new w(0L, Long.MAX_VALUE, Double.MAX_VALUE, 0.0d);
        return D.f(new C0408y(wVar, EnumC0293a3.k(wVar), false));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(double d2, double d3) {
        if (d2 >= d3) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        w wVar = new w(0L, Long.MAX_VALUE, d2, d3);
        return D.f(new C0408y(wVar, EnumC0293a3.k(wVar), false));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        w wVar = new w(0L, j, Double.MAX_VALUE, 0.0d);
        return D.f(new C0408y(wVar, EnumC0293a3.k(wVar), false));
    }

    @Override // java.util.Random
    public final DoubleStream doubles(long j, double d2, double d3) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (d2 >= d3) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        w wVar = new w(0L, j, d2, d3);
        return D.f(new C0408y(wVar, EnumC0293a3.k(wVar), false));
    }

    public final long g() {
        long j = this.f20743a - 7046029254386353131L;
        this.f20743a = j;
        return j;
    }

    @Override // java.util.Random
    public final IntStream ints() {
        x xVar = new x(0L, Long.MAX_VALUE, he.UNDEFINED_ITEM_ID, 0);
        return C0305d0.f(new Z(xVar, EnumC0293a3.k(xVar), false));
    }

    @Override // java.util.Random
    public final IntStream ints(int i, int i2) {
        if (i >= i2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        x xVar = new x(0L, Long.MAX_VALUE, i, i2);
        return C0305d0.f(new Z(xVar, EnumC0293a3.k(xVar), false));
    }

    @Override // java.util.Random
    public final IntStream ints(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        x xVar = new x(0L, j, he.UNDEFINED_ITEM_ID, 0);
        return C0305d0.f(new Z(xVar, EnumC0293a3.k(xVar), false));
    }

    @Override // java.util.Random
    public final IntStream ints(long j, int i, int i2) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (i >= i2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        x xVar = new x(0L, j, i, i2);
        return C0305d0.f(new Z(xVar, EnumC0293a3.k(xVar), false));
    }

    @Override // java.util.Random
    public final LongStream longs() {
        y yVar = new y(0L, Long.MAX_VALUE, Long.MAX_VALUE, 0L);
        return C0360o0.f(new C0335j0(yVar, EnumC0293a3.k(yVar), false));
    }

    @Override // java.util.Random
    public final LongStream longs(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        y yVar = new y(0L, j, Long.MAX_VALUE, 0L);
        return C0360o0.f(new C0335j0(yVar, EnumC0293a3.k(yVar), false));
    }

    @Override // java.util.Random
    public final LongStream longs(long j, long j2) {
        if (j >= j2) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        y yVar = new y(0L, Long.MAX_VALUE, j, j2);
        return C0360o0.f(new C0335j0(yVar, EnumC0293a3.k(yVar), false));
    }

    @Override // java.util.Random
    public final LongStream longs(long j, long j2, long j3) {
        if (j < 0) {
            throw new IllegalArgumentException("size must be non-negative");
        }
        if (j2 >= j3) {
            throw new IllegalArgumentException("bound must be greater than origin");
        }
        y yVar = new y(0L, j, j2, j3);
        return C0360o0.f(new C0335j0(yVar, EnumC0293a3.k(yVar), false));
    }

    @Override // java.util.Random
    public final int next(int i) {
        return nextInt() >>> (32 - i);
    }

    @Override // java.util.Random
    public final boolean nextBoolean() {
        return e(g()) < 0;
    }

    @Override // java.util.Random
    public final double nextDouble() {
        return (f(g()) >>> 11) * 1.1102230246251565E-16d;
    }

    public final double nextDouble(double d2) {
        if (d2 <= 0.0d) {
            throw new IllegalArgumentException("bound must be positive");
        }
        double f2 = (f(g()) >>> 11) * 1.1102230246251565E-16d * d2;
        return f2 < d2 ? f2 : Double.longBitsToDouble(Double.doubleToLongBits(d2) - 1);
    }

    public final double nextDouble(double d2, double d3) {
        if (d2 < d3) {
            return a(d2, d3);
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public final float nextFloat() {
        return (e(g()) >>> 8) * 5.9604645E-8f;
    }

    @Override // java.util.Random
    public final double nextGaussian() {
        ThreadLocal threadLocal = f20739d;
        Double d2 = (Double) threadLocal.get();
        if (d2 != null) {
            threadLocal.set(null);
            return d2.doubleValue();
        }
        while (true) {
            double nextDouble = (nextDouble() * 2.0d) - 1.0d;
            double nextDouble2 = (nextDouble() * 2.0d) - 1.0d;
            double d3 = (nextDouble2 * nextDouble2) + (nextDouble * nextDouble);
            if (d3 < 1.0d && d3 != 0.0d) {
                double sqrt = StrictMath.sqrt((StrictMath.log(d3) * (-2.0d)) / d3);
                f20739d.set(Double.valueOf(nextDouble2 * sqrt));
                return nextDouble * sqrt;
            }
        }
    }

    @Override // java.util.Random
    public int nextInt() {
        return e(g());
    }

    @Override // java.util.Random
    public final int nextInt(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        int e2 = e(g());
        int i2 = i - 1;
        if ((i & i2) == 0) {
            return e2 & i2;
        }
        while (true) {
            int i3 = e2 >>> 1;
            int i4 = i3 + i2;
            int i5 = i3 % i;
            if (i4 - i5 >= 0) {
                return i5;
            }
            e2 = e(g());
        }
    }

    public final int nextInt(int i, int i2) {
        if (i < i2) {
            return b(i, i2);
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public final long nextLong() {
        return f(g());
    }

    public final long nextLong(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("bound must be positive");
        }
        long f2 = f(g());
        long j2 = j - 1;
        if ((j & j2) == 0) {
            return f2 & j2;
        }
        while (true) {
            long j3 = f2 >>> 1;
            long j4 = j3 + j2;
            long j5 = j3 % j;
            if (j4 - j5 >= 0) {
                return j5;
            }
            f2 = f(g());
        }
    }

    public final long nextLong(long j, long j2) {
        if (j < j2) {
            return c(j, j2);
        }
        throw new IllegalArgumentException("bound must be greater than origin");
    }

    @Override // java.util.Random
    public final void setSeed(long j) {
        if (this.f20745c) {
            throw new UnsupportedOperationException();
        }
    }
}
