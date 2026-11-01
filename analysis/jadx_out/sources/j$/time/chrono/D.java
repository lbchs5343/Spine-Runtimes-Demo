package j$.time.chrono;

import j$.time.LocalDate;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class D extends AbstractC0263d {
    private static final long serialVersionUID = 1300372329181994526L;

    /* renamed from: a, reason: collision with root package name */
    public final transient LocalDate f20461a;

    public D(LocalDate localDate) {
        Objects.requireNonNull(localDate, "isoDate");
        this.f20461a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new F((byte) 7, this);
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final n D() {
        return J() >= 1 ? E.ROC : E.BEFORE_ROC;
    }

    @Override // j$.time.chrono.AbstractC0263d
    /* renamed from: E */
    public final InterfaceC0261b s(long j, j$.time.temporal.s sVar) {
        return (D) super.s(j, sVar);
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final InterfaceC0261b F(long j) {
        return L(this.f20461a.O(j));
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final InterfaceC0261b G(long j) {
        return L(this.f20461a.P(j));
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final InterfaceC0261b H(long j) {
        return L(this.f20461a.Q(j));
    }

    @Override // j$.time.chrono.AbstractC0263d
    /* renamed from: I */
    public final InterfaceC0261b j(j$.time.temporal.o oVar) {
        return (D) super.j(oVar);
    }

    public final int J() {
        return this.f20461a.f20432a - 1911;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        if (r2 != 7) goto L20;
     */
    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final D c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return (D) super.c(j, qVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        if (w(aVar) == j) {
            return this;
        }
        int[] iArr = C.f20460a;
        int i = iArr[aVar.ordinal()];
        if (i != 4) {
            if (i == 5) {
                B.f20459c.j(aVar).b(j, aVar);
                long J = J() * 12;
                return L(this.f20461a.P(j - ((J + r10.f20433b) - 1)));
            }
            if (i != 6) {
            }
        }
        int a2 = B.f20459c.j(aVar).a(j, aVar);
        int i2 = iArr[aVar.ordinal()];
        if (i2 == 4) {
            return L(this.f20461a.V(J() >= 1 ? a2 + 1911 : 1912 - a2));
        }
        if (i2 == 6) {
            return L(this.f20461a.V(a2 + 1911));
        }
        if (i2 == 7) {
            return L(this.f20461a.V(1912 - J()));
        }
        return L(this.f20461a.c(j, qVar));
    }

    public final D L(LocalDate localDate) {
        return localDate.equals(this.f20461a) ? this : new D(localDate);
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public final m a() {
        return B.f20459c;
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b, j$.time.temporal.m
    public final InterfaceC0261b d(long j, j$.time.temporal.s sVar) {
        return (D) super.d(j, sVar);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    public final j$.time.temporal.m d(long j, j$.time.temporal.s sVar) {
        return (D) super.d(j, sVar);
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof D) {
            return this.f20461a.equals(((D) obj).f20461a);
        }
        return false;
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b
    public final int hashCode() {
        B.f20459c.getClass();
        return this.f20461a.hashCode() ^ (-1990173233);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return (D) super.j(localDate);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.j(this);
        }
        if (!j$.com.android.tools.r8.a.p(this, qVar)) {
            throw new j$.time.temporal.t(j$.time.b.a("Unsupported field: ", qVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        int i = C.f20460a[aVar.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.f20461a.k(qVar);
        }
        if (i != 4) {
            return B.f20459c.j(aVar);
        }
        j$.time.temporal.u uVar = j$.time.temporal.a.YEAR.f20602b;
        return j$.time.temporal.u.e(1L, J() <= 0 ? (-uVar.f20627a) + 1912 : uVar.f20630d - 1911);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return (D) super.s(j, bVar);
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.l(this);
        }
        int i = C.f20460a[((j$.time.temporal.a) qVar).ordinal()];
        if (i == 4) {
            int J = J();
            if (J < 1) {
                J = 1 - J;
            }
            return J;
        }
        if (i == 5) {
            return ((J() * 12) + this.f20461a.f20433b) - 1;
        }
        if (i == 6) {
            return J();
        }
        if (i != 7) {
            return this.f20461a.w(qVar);
        }
        return J() < 1 ? 0 : 1;
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b
    public final long x() {
        return this.f20461a.x();
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b
    public final InterfaceC0264e y(j$.time.i iVar) {
        return new C0266g(this, iVar);
    }
}
