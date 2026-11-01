package j$.com.android.tools.r8;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.time.ZoneOffset;
import j$.time.chrono.AbstractC0260a;
import j$.time.chrono.AbstractC0268i;
import j$.time.chrono.B;
import j$.time.chrono.H;
import j$.time.chrono.InterfaceC0261b;
import j$.time.chrono.InterfaceC0264e;
import j$.time.chrono.InterfaceC0269j;
import j$.time.chrono.m;
import j$.time.chrono.p;
import j$.time.chrono.t;
import j$.time.chrono.w;
import j$.time.temporal.n;
import j$.time.temporal.q;
import j$.time.temporal.r;
import j$.util.C0282l;
import j$.util.C0283m;
import j$.util.C0284n;
import j$.util.C0420v;
import j$.util.D;
import j$.util.G;
import j$.util.J;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.OptionalInt;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.T;
import j$.util.concurrent.ConcurrentHashMap;
import j$.util.concurrent.l;
import j$.util.d0;
import j$.util.function.b;
import j$.util.function.e;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.OptionalDouble;
import java.util.OptionalLong;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
import sun.misc.Unsafe;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static Optional A(java.util.Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    public static C0282l B(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? new C0282l(optionalDouble.getAsDouble()) : C0282l.f20815c;
    }

    public static OptionalInt C(java.util.OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? new OptionalInt(optionalInt.getAsInt()) : OptionalInt.f20682c;
    }

    public static C0283m D(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? new C0283m(optionalLong.getAsLong()) : C0283m.f20818c;
    }

    public static java.util.Optional E(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? java.util.Optional.of(optional.get()) : java.util.Optional.empty();
    }

    public static OptionalDouble F(C0282l c0282l) {
        if (c0282l == null) {
            return null;
        }
        boolean z = c0282l.f20816a;
        if (!z) {
            return OptionalDouble.empty();
        }
        if (z) {
            return OptionalDouble.of(c0282l.f20817b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static java.util.OptionalInt G(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.f20683a ? java.util.OptionalInt.of(optionalInt.getAsInt()) : java.util.OptionalInt.empty();
    }

    public static OptionalLong H(C0283m c0283m) {
        if (c0283m == null) {
            return null;
        }
        boolean z = c0283m.f20819a;
        if (!z) {
            return OptionalLong.empty();
        }
        if (z) {
            return OptionalLong.of(c0283m.f20820b);
        }
        throw new NoSuchElementException("No value present");
    }

    public static m I(n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        Object obj = (m) nVar.l(r.f20621b);
        t tVar = t.f20498c;
        if (obj == null) {
            obj = Objects.requireNonNull(tVar, "defaultObj");
        }
        return (m) obj;
    }

    public static /* synthetic */ long J(long j, int i) {
        long j2 = i;
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        if (numberOfLeadingZeros >= 64) {
            if ((j2 != Long.MIN_VALUE) | (j >= 0)) {
                long j3 = j * j2;
                if (j == 0 || j3 / j == j2) {
                    return j3;
                }
            }
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ long K(long j, long j2) {
        long j3 = j + j2;
        if (((j2 ^ j) < 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static /* synthetic */ Map.Entry L(Object obj, Object obj2) {
        return new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(obj), Objects.requireNonNull(obj2));
    }

    public static /* synthetic */ boolean M(Unsafe unsafe, Object obj, long j, l lVar) {
        while (true) {
            Unsafe unsafe2 = unsafe;
            Object obj2 = obj;
            long j2 = j;
            l lVar2 = lVar;
            if (unsafe2.compareAndSwapObject(obj2, j2, (Object) null, lVar2)) {
                return true;
            }
            if (unsafe2.getObject(obj2, j2) != null) {
                return false;
            }
            unsafe = unsafe2;
            obj = obj2;
            j = j2;
            lVar = lVar2;
        }
    }

    public static /* synthetic */ long N(long j, long j2) {
        long j3 = j % j2;
        if (j3 == 0) {
            return 0L;
        }
        return (((j ^ j2) >> 63) | 1) > 0 ? j3 : j3 + j2;
    }

    public static /* synthetic */ long O(long j, long j2) {
        long j3 = j / j2;
        return (j - (j2 * j3) != 0 && (((j ^ j2) >> 63) | 1) < 0) ? j3 - 1 : j3;
    }

    public static /* synthetic */ long P(long j, long j2) {
        long j3 = j - j2;
        if (((j2 ^ j) >= 0) || ((j ^ j3) >= 0)) {
            return j3;
        }
        throw new ArithmeticException();
    }

    public static String Q(Object obj, Object obj2) {
        String str;
        String obj3;
        String str2 = "null";
        if (obj == null || (str = obj.toString()) == null) {
            str = "null";
        }
        int length = str.length();
        if (obj2 != null && (obj3 = obj2.toString()) != null) {
            str2 = obj3;
        }
        int length2 = str2.length();
        char[] cArr = new char[length + length2 + 1];
        str.getChars(0, length, cArr, 0);
        cArr[length] = '=';
        str2.getChars(0, length2, cArr, length + 1);
        return new String(cArr);
    }

    public static m R(String str) {
        ConcurrentHashMap concurrentHashMap = AbstractC0260a.f20470a;
        Objects.requireNonNull(str, TTDownloadField.TT_ID);
        while (true) {
            ConcurrentHashMap concurrentHashMap2 = AbstractC0260a.f20470a;
            m mVar = (m) concurrentHashMap2.get(str);
            if (mVar == null) {
                mVar = (m) AbstractC0260a.f20471b.get(str);
            }
            if (mVar != null) {
                return mVar;
            }
            if (concurrentHashMap2.get("ISO") != null) {
                Iterator it = ServiceLoader.load(m.class).iterator();
                while (it.hasNext()) {
                    m mVar2 = (m) it.next();
                    if (str.equals(mVar2.h()) || str.equals(mVar2.n())) {
                        return mVar2;
                    }
                }
                throw new j$.time.a("Unknown chronology: " + str);
            }
            p pVar = p.l;
            pVar.getClass();
            AbstractC0260a.i(pVar, "Hijrah-umalqura");
            w wVar = w.f20501c;
            wVar.getClass();
            AbstractC0260a.i(wVar, "Japanese");
            B b2 = B.f20459c;
            b2.getClass();
            AbstractC0260a.i(b2, "Minguo");
            H h = H.f20466c;
            h.getClass();
            AbstractC0260a.i(h, "ThaiBuddhist");
            try {
                for (AbstractC0260a abstractC0260a : Arrays.asList(new AbstractC0260a[0])) {
                    if (!abstractC0260a.h().equals("ISO")) {
                        AbstractC0260a.i(abstractC0260a, abstractC0260a.h());
                    }
                }
                t tVar = t.f20498c;
                tVar.getClass();
                AbstractC0260a.i(tVar, "ISO");
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    public static T S(Object[] objArr, int i, int i2) {
        Spliterators.a(((Object[]) Objects.requireNonNull(objArr)).length, i, i2);
        return new T(objArr, i, i2, AVMDLDataLoader.KeyIsPreloadWaitListType);
    }

    public static j$.time.temporal.m a(InterfaceC0261b interfaceC0261b, j$.time.temporal.m mVar) {
        return mVar.c(interfaceC0261b.x(), j$.time.temporal.a.EPOCH_DAY);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.b] */
    public static b b(final DoubleConsumer doubleConsumer, final DoubleConsumer doubleConsumer2) {
        Objects.requireNonNull(doubleConsumer2);
        return new DoubleConsumer() { // from class: j$.util.function.b
            @Override // java.util.function.DoubleConsumer
            public final void accept(double d2) {
                DoubleConsumer.this.accept(d2);
                doubleConsumer2.accept(d2);
            }

            public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer3) {
                return j$.com.android.tools.r8.a.b(this, doubleConsumer3);
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.function.e] */
    public static e c(final LongConsumer longConsumer, final LongConsumer longConsumer2) {
        Objects.requireNonNull(longConsumer2);
        return new LongConsumer() { // from class: j$.util.function.e
            @Override // java.util.function.LongConsumer
            public final void accept(long j) {
                LongConsumer.this.accept(j);
                longConsumer2.accept(j);
            }

            public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer3) {
                return j$.com.android.tools.r8.a.c(this, longConsumer3);
            }
        };
    }

    public static int d(InterfaceC0261b interfaceC0261b, InterfaceC0261b interfaceC0261b2) {
        int compare = Long.compare(interfaceC0261b.x(), interfaceC0261b2.x());
        if (compare != 0) {
            return compare;
        }
        return ((AbstractC0260a) interfaceC0261b.a()).h().compareTo(interfaceC0261b2.a().h());
    }

    public static int e(InterfaceC0264e interfaceC0264e, InterfaceC0264e interfaceC0264e2) {
        int compareTo = interfaceC0264e.f().compareTo(interfaceC0264e2.f());
        return (compareTo == 0 && (compareTo = interfaceC0264e.b().compareTo(interfaceC0264e2.b())) == 0) ? ((AbstractC0260a) interfaceC0264e.a()).h().compareTo(interfaceC0264e2.a().h()) : compareTo;
    }

    public static int f(InterfaceC0269j interfaceC0269j, InterfaceC0269j interfaceC0269j2) {
        int compare = Long.compare(interfaceC0269j.B(), interfaceC0269j2.B());
        return (compare == 0 && (compare = interfaceC0269j.b().f20577d - interfaceC0269j2.b().f20577d) == 0 && (compare = interfaceC0269j.p().z(interfaceC0269j2.p())) == 0 && (compare = interfaceC0269j.v().h().compareTo(interfaceC0269j2.v().h())) == 0) ? ((AbstractC0260a) interfaceC0269j.a()).h().compareTo(interfaceC0269j2.a().h()) : compare;
    }

    public static void g(ConcurrentMap concurrentMap, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        for (Map.Entry entry : concurrentMap.entrySet()) {
            try {
                biConsumer.accept(entry.getKey(), entry.getValue());
            } catch (IllegalStateException unused) {
            }
        }
    }

    public static void h(D d2, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            d2.forEachRemaining((DoubleConsumer) consumer);
        } else {
            if (d0.f20790a) {
                d0.a(d2.getClass(), "{0} calling Spliterator.OfDouble.forEachRemaining((DoubleConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            d2.forEachRemaining((DoubleConsumer) new C0284n(consumer, 0));
        }
    }

    public static void i(G g2, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            g2.forEachRemaining((IntConsumer) consumer);
        } else {
            if (d0.f20790a) {
                d0.a(g2.getClass(), "{0} calling Spliterator.OfInt.forEachRemaining((IntConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            g2.forEachRemaining((IntConsumer) new j$.util.r(consumer, 0));
        }
    }

    public static void j(J j, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            j.forEachRemaining((LongConsumer) consumer);
        } else {
            if (d0.f20790a) {
                d0.a(j.getClass(), "{0} calling Spliterator.OfLong.forEachRemaining((LongConsumer) action::accept)");
                throw null;
            }
            Objects.requireNonNull(consumer);
            j.forEachRemaining((LongConsumer) new C0420v(consumer, 0));
        }
    }

    public static int k(InterfaceC0269j interfaceC0269j, q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return r.a(interfaceC0269j, qVar);
        }
        int i = AbstractC0268i.f20481a[((j$.time.temporal.a) qVar).ordinal()];
        if (i != 1) {
            return i != 2 ? interfaceC0269j.p().i(qVar) : interfaceC0269j.g().f20451b;
        }
        throw new j$.time.temporal.t("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    public static int l(j$.time.chrono.n nVar, q qVar) {
        return qVar == j$.time.temporal.a.ERA ? nVar.getValue() : r.a(nVar, qVar);
    }

    public static long m(Spliterator spliterator) {
        if ((spliterator.characteristics() & 64) == 0) {
            return -1L;
        }
        return spliterator.estimateSize();
    }

    public static long n(j$.time.chrono.n nVar, q qVar) {
        if (qVar == j$.time.temporal.a.ERA) {
            return nVar.getValue();
        }
        if (qVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.t(j$.time.b.a("Unsupported field: ", qVar));
        }
        return qVar.l(nVar);
    }

    public static boolean o(Spliterator spliterator, int i) {
        return (spliterator.characteristics() & i) == i;
    }

    public static boolean p(InterfaceC0261b interfaceC0261b, q qVar) {
        return qVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) qVar).isDateBased() : qVar != null && qVar.i(interfaceC0261b);
    }

    public static boolean q(j$.time.chrono.n nVar, q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.ERA : qVar != null && qVar.i(nVar);
    }

    public static Object r(InterfaceC0261b interfaceC0261b, j$.time.format.a aVar) {
        if (aVar == r.f20620a || aVar == r.f20624e || aVar == r.f20623d || aVar == r.f20626g) {
            return null;
        }
        return aVar == r.f20621b ? interfaceC0261b.a() : aVar == r.f20622c ? j$.time.temporal.b.DAYS : aVar.a(interfaceC0261b);
    }

    public static Object s(InterfaceC0264e interfaceC0264e, j$.time.format.a aVar) {
        if (aVar == r.f20620a || aVar == r.f20624e || aVar == r.f20623d) {
            return null;
        }
        return aVar == r.f20626g ? interfaceC0264e.b() : aVar == r.f20621b ? interfaceC0264e.a() : aVar == r.f20622c ? j$.time.temporal.b.NANOS : aVar.a(interfaceC0264e);
    }

    public static Object t(InterfaceC0269j interfaceC0269j, j$.time.format.a aVar) {
        return (aVar == r.f20624e || aVar == r.f20620a) ? interfaceC0269j.v() : aVar == r.f20623d ? interfaceC0269j.g() : aVar == r.f20626g ? interfaceC0269j.b() : aVar == r.f20621b ? interfaceC0269j.a() : aVar == r.f20622c ? j$.time.temporal.b.NANOS : aVar.a(interfaceC0269j);
    }

    public static Object u(j$.time.chrono.n nVar, j$.time.format.a aVar) {
        return aVar == r.f20622c ? j$.time.temporal.b.ERAS : r.c(nVar, aVar);
    }

    public static long v(InterfaceC0264e interfaceC0264e, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        return ((interfaceC0264e.f().x() * 86400) + interfaceC0264e.b().O()) - zoneOffset.f20451b;
    }

    public static long w(InterfaceC0269j interfaceC0269j) {
        return ((interfaceC0269j.f().x() * 86400) + interfaceC0269j.b().O()) - interfaceC0269j.g().f20451b;
    }

    public static boolean x(D d2, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            return d2.tryAdvance((DoubleConsumer) consumer);
        }
        if (d0.f20790a) {
            d0.a(d2.getClass(), "{0} calling Spliterator.OfDouble.tryAdvance((DoubleConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return d2.tryAdvance((DoubleConsumer) new C0284n(consumer, 0));
    }

    public static boolean y(G g2, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            return g2.tryAdvance((IntConsumer) consumer);
        }
        if (d0.f20790a) {
            d0.a(g2.getClass(), "{0} calling Spliterator.OfInt.tryAdvance((IntConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return g2.tryAdvance((IntConsumer) new j$.util.r(consumer, 0));
    }

    public static boolean z(J j, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            return j.tryAdvance((LongConsumer) consumer);
        }
        if (d0.f20790a) {
            d0.a(j.getClass(), "{0} calling Spliterator.OfLong.tryAdvance((LongConsumer) action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        return j.tryAdvance((LongConsumer) new C0420v(consumer, 0));
    }

    public int characteristics() {
        return 16448;
    }

    public long estimateSize() {
        return 0L;
    }

    public void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
    }

    public boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        return false;
    }

    public Spliterator trySplit() {
        return null;
    }
}
