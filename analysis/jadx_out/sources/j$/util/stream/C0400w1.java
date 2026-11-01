package j$.util.stream;

import java.util.concurrent.CountedCompleter;

/* renamed from: j$.util.stream.w1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0400w1 extends CountedCompleter {

    /* renamed from: a, reason: collision with root package name */
    public final I0 f21124a;

    /* renamed from: b, reason: collision with root package name */
    public final int f21125b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21126c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f21127d;

    public C0400w1(I0 i0, Object obj, int i) {
        this.f21126c = i;
        this.f21124a = i0;
        this.f21125b = 0;
        this.f21127d = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0400w1(C0400w1 c0400w1, H0 h0, int i) {
        this(c0400w1, h0, i, (byte) 0);
        this.f21126c = 0;
        this.f21127d = c0400w1.f21127d;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0400w1(C0400w1 c0400w1, I0 i0, int i) {
        this(c0400w1, i0, i, (byte) 0);
        this.f21126c = 1;
        this.f21127d = (Object[]) c0400w1.f21127d;
    }

    public C0400w1(C0400w1 c0400w1, I0 i0, int i, byte b2) {
        super(c0400w1);
        this.f21124a = i0;
        this.f21125b = i;
    }

    public final C0400w1 a(int i, int i2) {
        switch (this.f21126c) {
            case 0:
                return new C0400w1(this, ((H0) this.f21124a).a(i), i2);
            default:
                return new C0400w1(this, this.f21124a.a(i), i2);
        }
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        C0400w1 c0400w1 = this;
        while (c0400w1.f21124a.o() != 0) {
            c0400w1.setPendingCount(c0400w1.f21124a.o() - 1);
            int i = 0;
            int i2 = 0;
            while (i < c0400w1.f21124a.o() - 1) {
                C0400w1 a2 = c0400w1.a(i, c0400w1.f21125b + i2);
                i2 = (int) (a2.f21124a.count() + i2);
                a2.fork();
                i++;
            }
            c0400w1 = c0400w1.a(i, c0400w1.f21125b + i2);
        }
        switch (c0400w1.f21126c) {
            case 0:
                ((H0) c0400w1.f21124a).f(c0400w1.f21127d, c0400w1.f21125b);
                break;
            default:
                c0400w1.f21124a.k((Object[]) c0400w1.f21127d, c0400w1.f21125b);
                break;
        }
        c0400w1.propagateCompletion();
    }
}
