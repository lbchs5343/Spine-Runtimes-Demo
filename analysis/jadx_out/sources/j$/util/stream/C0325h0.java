package j$.util.stream;

import j$.util.C0420v;
import j$.util.Objects;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.h0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0325h0 extends AbstractC0337j2 {

    /* renamed from: b, reason: collision with root package name */
    public boolean f21038b;

    /* renamed from: c, reason: collision with root package name */
    public final C0420v f21039c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0330i0 f21040d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0325h0(C0330i0 c0330i0, InterfaceC0362o2 interfaceC0362o2) {
        super(interfaceC0362o2);
        this.f21040d = c0330i0;
        InterfaceC0362o2 interfaceC0362o22 = this.f21050a;
        Objects.requireNonNull(interfaceC0362o22);
        this.f21039c = new C0420v(interfaceC0362o22, 1);
    }

    @Override // j$.util.stream.InterfaceC0357n2, j$.util.stream.InterfaceC0362o2
    public final void accept(long j) {
        LongStream longStream = (LongStream) ((j$.util.function.g) this.f21040d.t).apply(j);
        if (longStream != null) {
            try {
                boolean z = this.f21038b;
                C0420v c0420v = this.f21039c;
                if (z) {
                    j$.util.J spliterator = longStream.sequential().spliterator();
                    while (!this.f21050a.e() && spliterator.tryAdvance((LongConsumer) c0420v)) {
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
        }
    }

    @Override // j$.util.stream.AbstractC0337j2, j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        this.f21050a.c(-1L);
    }

    @Override // j$.util.stream.AbstractC0337j2, j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        this.f21038b = true;
        return this.f21050a.e();
    }
}
