package j$.util.stream;

import j$.util.C0284n;
import j$.util.C0420v;
import j$.util.Objects;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.a2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0292a2 extends AbstractC0342k2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20979b = 1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20980c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f20981d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractC0289a f20982e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0292a2(W w, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f20982e = w;
        InterfaceC0362o2 interfaceC0362o22 = this.f21057a;
        Objects.requireNonNull(interfaceC0362o22);
        this.f20981d = new j$.util.r(interfaceC0362o22, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0292a2(C0330i0 c0330i0, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f20982e = c0330i0;
        InterfaceC0362o2 interfaceC0362o22 = this.f21057a;
        Objects.requireNonNull(interfaceC0362o22);
        this.f20981d = new C0420v(interfaceC0362o22, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0292a2(C0403x c0403x, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f20982e = c0403x;
        InterfaceC0362o2 interfaceC0362o22 = this.f21057a;
        Objects.requireNonNull(interfaceC0362o22);
        this.f20981d = new C0284n(interfaceC0362o22, 1);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        switch (this.f20979b) {
            case 0:
                C0420v c0420v = (C0420v) this.f20981d;
                LongStream longStream = (LongStream) ((C0339k) ((C0330i0) this.f20982e).t).apply(obj);
                if (longStream != null) {
                    try {
                        if (this.f20980c) {
                            j$.util.J spliterator = longStream.sequential().spliterator();
                            while (!this.f21057a.e() && spliterator.tryAdvance((LongConsumer) c0420v)) {
                            }
                        } else {
                            longStream.sequential().forEach(c0420v);
                        }
                    } catch (Throwable th) {
                        try {
                            longStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (longStream != null) {
                    longStream.close();
                    return;
                }
                return;
            case 1:
                j$.util.r rVar = (j$.util.r) this.f20981d;
                IntStream intStream = (IntStream) ((C0339k) ((W) this.f20982e).t).apply(obj);
                if (intStream != null) {
                    try {
                        if (this.f20980c) {
                            j$.util.G spliterator2 = intStream.sequential().spliterator();
                            while (!this.f21057a.e() && spliterator2.tryAdvance((IntConsumer) rVar)) {
                            }
                        } else {
                            intStream.sequential().forEach(rVar);
                        }
                    } catch (Throwable th3) {
                        try {
                            intStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
                if (intStream != null) {
                    intStream.close();
                    return;
                }
                return;
            default:
                C0284n c0284n = (C0284n) this.f20981d;
                E e2 = (E) ((C0339k) ((C0403x) this.f20982e).t).apply(obj);
                if (e2 != null) {
                    try {
                        if (this.f20980c) {
                            j$.util.D spliterator3 = e2.sequential().spliterator();
                            while (!this.f21057a.e() && spliterator3.tryAdvance((DoubleConsumer) c0284n)) {
                            }
                        } else {
                            e2.sequential().forEach(c0284n);
                        }
                    } catch (Throwable th5) {
                        try {
                            e2.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (e2 != null) {
                    e2.close();
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        switch (this.f20979b) {
            case 0:
                this.f21057a.c(-1L);
                break;
            case 1:
                this.f21057a.c(-1L);
                break;
            default:
                this.f21057a.c(-1L);
                break;
        }
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        switch (this.f20979b) {
            case 0:
                this.f20980c = true;
                break;
            case 1:
                this.f20980c = true;
                break;
            default:
                this.f20980c = true;
                break;
        }
        return this.f21057a.e();
    }
}
