package j$.time.chrono;

import java.io.Serializable;

/* renamed from: j$.time.chrono.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0263d implements InterfaceC0261b, j$.time.temporal.m, j$.time.temporal.o, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    public static InterfaceC0261b C(m mVar, j$.time.temporal.m mVar2) {
        InterfaceC0261b interfaceC0261b = (InterfaceC0261b) mVar2;
        if (mVar.equals(interfaceC0261b.a())) {
            return interfaceC0261b;
        }
        throw new ClassCastException("Chronology mismatch, expected: " + mVar.h() + ", actual: " + interfaceC0261b.a().h());
    }

    @Override // java.lang.Comparable
    /* renamed from: A */
    public final /* synthetic */ int compareTo(InterfaceC0261b interfaceC0261b) {
        return j$.com.android.tools.r8.a.d(this, interfaceC0261b);
    }

    public n D() {
        return a().q(j$.time.temporal.r.a(this, j$.time.temporal.a.ERA));
    }

    @Override // j$.time.temporal.m
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public InterfaceC0261b s(long j, j$.time.temporal.s sVar) {
        return C(a(), j$.time.temporal.r.b(this, j, sVar));
    }

    public abstract InterfaceC0261b F(long j);

    public abstract InterfaceC0261b G(long j);

    public abstract InterfaceC0261b H(long j);

    @Override // j$.time.temporal.m
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public InterfaceC0261b j(j$.time.temporal.o oVar) {
        return C(a(), oVar.o(this));
    }

    @Override // j$.time.temporal.m
    public InterfaceC0261b c(long j, j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.t(j$.time.b.a("Unsupported field: ", qVar));
        }
        return C(a(), qVar.o(this, j));
    }

    @Override // j$.time.temporal.m
    public InterfaceC0261b d(long j, j$.time.temporal.s sVar) {
        boolean z = sVar instanceof j$.time.temporal.b;
        if (!z) {
            if (!z) {
                return C(a(), sVar.i(this, j));
            }
            throw new j$.time.temporal.t("Unsupported unit: " + sVar);
        }
        switch (AbstractC0262c.f20472a[((j$.time.temporal.b) sVar).ordinal()]) {
            case 1:
                return F(j);
            case 2:
                return F(j$.com.android.tools.r8.a.J(j, 7));
            case 3:
                return G(j);
            case 4:
                return H(j);
            case 5:
                return H(j$.com.android.tools.r8.a.J(j, 10));
            case 6:
                return H(j$.com.android.tools.r8.a.J(j, 100));
            case 7:
                return H(j$.com.android.tools.r8.a.J(j, 1000));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return c(j$.com.android.tools.r8.a.K(w(aVar), j), (j$.time.temporal.q) aVar);
            default:
                throw new j$.time.temporal.t("Unsupported unit: " + sVar);
        }
    }

    @Override // j$.time.chrono.InterfaceC0261b, j$.time.temporal.n
    public /* synthetic */ boolean e(j$.time.temporal.q qVar) {
        return j$.com.android.tools.r8.a.p(this, qVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC0261b) && j$.com.android.tools.r8.a.d(this, (InterfaceC0261b) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public int hashCode() {
        long x = x();
        return a().hashCode() ^ ((int) (x ^ (x >>> 32)));
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int i(j$.time.temporal.q qVar) {
        return j$.time.temporal.r.a(this, qVar);
    }

    @Override // j$.time.temporal.n
    public /* synthetic */ j$.time.temporal.u k(j$.time.temporal.q qVar) {
        return j$.time.temporal.r.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object l(j$.time.format.a aVar) {
        return j$.com.android.tools.r8.a.r(this, aVar);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ j$.time.temporal.m o(j$.time.temporal.m mVar) {
        return j$.com.android.tools.r8.a.a(this, mVar);
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public final String toString() {
        long w = w(j$.time.temporal.a.YEAR_OF_ERA);
        long w2 = w(j$.time.temporal.a.MONTH_OF_YEAR);
        long w3 = w(j$.time.temporal.a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(a().toString());
        sb.append(" ");
        sb.append(D());
        sb.append(" ");
        sb.append(w);
        sb.append(w2 < 10 ? "-0" : "-");
        sb.append(w2);
        sb.append(w3 < 10 ? "-0" : "-");
        sb.append(w3);
        return sb.toString();
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public long x() {
        return w(j$.time.temporal.a.EPOCH_DAY);
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public InterfaceC0264e y(j$.time.i iVar) {
        return new C0266g(this, iVar);
    }
}
