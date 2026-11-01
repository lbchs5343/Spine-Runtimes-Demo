package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.BooleanSupplier;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.c3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0303c3 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f20999a;

    /* renamed from: b, reason: collision with root package name */
    public final AbstractC0289a f21000b;

    /* renamed from: c, reason: collision with root package name */
    public Supplier f21001c;

    /* renamed from: d, reason: collision with root package name */
    public Spliterator f21002d;

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC0362o2 f21003e;

    /* renamed from: f, reason: collision with root package name */
    public BooleanSupplier f21004f;

    /* renamed from: g, reason: collision with root package name */
    public long f21005g;
    public AbstractC0299c h;
    public boolean i;

    public AbstractC0303c3(AbstractC0289a abstractC0289a, Spliterator spliterator, boolean z) {
        this.f21000b = abstractC0289a;
        this.f21001c = null;
        this.f21002d = spliterator;
        this.f20999a = z;
    }

    public AbstractC0303c3(AbstractC0289a abstractC0289a, Supplier supplier, boolean z) {
        this.f21000b = abstractC0289a;
        this.f21001c = supplier;
        this.f21002d = null;
        this.f20999a = z;
    }

    public final boolean a() {
        AbstractC0299c abstractC0299c = this.h;
        if (abstractC0299c == null) {
            if (this.i) {
                return false;
            }
            c();
            d();
            this.f21005g = 0L;
            this.f21003e.c(this.f21002d.getExactSizeIfKnown());
            return b();
        }
        long j = this.f21005g + 1;
        this.f21005g = j;
        boolean z = j < abstractC0299c.count();
        if (z) {
            return z;
        }
        this.f21005g = 0L;
        this.h.clear();
        return b();
    }

    public final boolean b() {
        while (this.h.count() == 0) {
            if (this.f21003e.e() || !this.f21004f.getAsBoolean()) {
                if (this.i) {
                    return false;
                }
                this.f21003e.end();
                this.i = true;
            }
        }
        return true;
    }

    public final void c() {
        if (this.f21002d == null) {
            this.f21002d = (Spliterator) this.f21001c.get();
            this.f21001c = null;
        }
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        c();
        int i = this.f21000b.m;
        int i2 = i & ((~i) >> 1) & EnumC0293a3.j & EnumC0293a3.f20983f;
        return (i2 & 64) != 0 ? (i2 & (-16449)) | (this.f21002d.characteristics() & 16448) : i2;
    }

    public abstract void d();

    public abstract AbstractC0303c3 e(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        c();
        return this.f21002d.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (j$.com.android.tools.r8.a.o(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        c();
        if (EnumC0293a3.SIZED.l(this.f21000b.m)) {
            return this.f21002d.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.com.android.tools.r8.a.o(this, i);
    }

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f21002d);
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        if (!this.f20999a || this.h != null || this.i) {
            return null;
        }
        c();
        Spliterator trySplit = this.f21002d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return e(trySplit);
    }
}
