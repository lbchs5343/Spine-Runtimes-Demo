package j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class m implements j$.time.temporal.n, j$.time.temporal.o, Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f20582c = 0;
    private static final long serialVersionUID = -939150713474957432L;

    /* renamed from: a, reason: collision with root package name */
    public final int f20583a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20584b;

    static {
        j$.time.format.n nVar = new j$.time.format.n();
        nVar.d("--");
        nVar.g(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        nVar.c('-');
        nVar.g(j$.time.temporal.a.DAY_OF_MONTH, 2);
        nVar.l(Locale.getDefault(), j$.time.format.t.SMART, null);
    }

    public m(int i, int i2) {
        this.f20583a = i;
        this.f20584b = i2;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 13, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        m mVar = (m) obj;
        int i = this.f20583a - mVar.f20583a;
        return i == 0 ? this.f20584b - mVar.f20584b : i;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.MONTH_OF_YEAR || qVar == j$.time.temporal.a.DAY_OF_MONTH : qVar != null && qVar.i(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            if (this.f20583a == mVar.f20583a && this.f20584b == mVar.f20584b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f20583a << 6) + this.f20584b;
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.q qVar) {
        return k(qVar).a(w(qVar), qVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return qVar.k();
        }
        if (qVar != j$.time.temporal.a.DAY_OF_MONTH) {
            return j$.time.temporal.r.d(this, qVar);
        }
        k F = k.F(this.f20583a);
        F.getClass();
        int i = j.f20578a[F.ordinal()];
        return j$.time.temporal.u.f(i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : 28, k.F(this.f20583a).E());
    }

    @Override // j$.time.temporal.n
    public final Object l(j$.time.format.a aVar) {
        return aVar == j$.time.temporal.r.f20621b ? j$.time.chrono.t.f20498c : j$.time.temporal.r.c(this, aVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m o(j$.time.temporal.m mVar) {
        if (!j$.com.android.tools.r8.a.I(mVar).equals(j$.time.chrono.t.f20498c)) {
            throw new a("Adjustment only supported on ISO date-time");
        }
        j$.time.temporal.m c2 = mVar.c(this.f20583a, j$.time.temporal.a.MONTH_OF_YEAR);
        j$.time.temporal.a aVar = j$.time.temporal.a.DAY_OF_MONTH;
        return c2.c(Math.min(c2.k(aVar).f20630d, this.f20584b), aVar);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        sb.append(this.f20583a < 10 ? "0" : "");
        sb.append(this.f20583a);
        sb.append(this.f20584b < 10 ? "-0" : "-");
        sb.append(this.f20584b);
        return sb.toString();
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        int i;
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.l(this);
        }
        int i2 = l.f20581a[((j$.time.temporal.a) qVar).ordinal()];
        if (i2 == 1) {
            i = this.f20584b;
        } else {
            if (i2 != 2) {
                throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
            }
            i = this.f20583a;
        }
        return i;
    }
}
