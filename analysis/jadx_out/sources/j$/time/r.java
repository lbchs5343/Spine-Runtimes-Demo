package j$.time;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class r implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f20593b = 0;
    private static final long serialVersionUID = -23038383694477807L;

    /* renamed from: a, reason: collision with root package name */
    public final int f20594a;

    static {
        j$.time.format.n nVar = new j$.time.format.n();
        nVar.h(j$.time.temporal.a.YEAR, 4, 10, j$.time.format.u.EXCEEDS_PAD);
        nVar.l(Locale.getDefault(), j$.time.format.t.SMART, null);
    }

    public r(int i) {
        this.f20594a = i;
    }

    public static r C(int i) {
        j$.time.temporal.a.YEAR.s(i);
        return new r(i);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 11, this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final r d(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.b)) {
            return (r) sVar.i(this, j);
        }
        int i = q.f20592b[((j$.time.temporal.b) sVar).ordinal()];
        if (i == 1) {
            return E(j);
        }
        if (i == 2) {
            return E(j$.com.android.tools.r8.a.J(j, 10));
        }
        if (i == 3) {
            return E(j$.com.android.tools.r8.a.J(j, 100));
        }
        if (i == 4) {
            return E(j$.com.android.tools.r8.a.J(j, 1000));
        }
        if (i == 5) {
            j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
            return c(j$.com.android.tools.r8.a.K(w(aVar), j), aVar);
        }
        throw new j$.time.temporal.t("Unsupported unit: " + sVar);
    }

    public final r E(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return C(aVar.f20602b.a(this.f20594a + j, aVar));
    }

    @Override // j$.time.temporal.m
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public final r c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return (r) qVar.o(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        aVar.s(j);
        int i = q.f20591a[aVar.ordinal()];
        if (i == 1) {
            if (this.f20594a < 1) {
                j = 1 - j;
            }
            return C((int) j);
        }
        if (i == 2) {
            return C((int) j);
        }
        if (i == 3) {
            return w(j$.time.temporal.a.ERA) == j ? this : C(1 - this.f20594a);
        }
        throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f20594a - ((r) obj).f20594a;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.YEAR || qVar == j$.time.temporal.a.YEAR_OF_ERA || qVar == j$.time.temporal.a.ERA : qVar != null && qVar.i(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r) && this.f20594a == ((r) obj).f20594a;
    }

    public final int hashCode() {
        return this.f20594a;
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.q qVar) {
        return k(qVar).a(w(qVar), qVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return (r) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.u.e(1L, this.f20594a <= 0 ? C.NANOS_PER_SECOND : 999999999L);
        }
        return j$.time.temporal.r.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final Object l(j$.time.format.a aVar) {
        return aVar == j$.time.temporal.r.f20621b ? j$.time.chrono.t.f20498c : aVar == j$.time.temporal.r.f20622c ? j$.time.temporal.b.YEARS : j$.time.temporal.r.c(this, aVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m o(j$.time.temporal.m mVar) {
        if (!j$.com.android.tools.r8.a.I(mVar).equals(j$.time.chrono.t.f20498c)) {
            throw new a("Adjustment only supported on ISO date-time");
        }
        return mVar.c(this.f20594a, j$.time.temporal.a.YEAR);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public final String toString() {
        return Integer.toString(this.f20594a);
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.l(this);
        }
        int i = q.f20591a[((j$.time.temporal.a) qVar).ordinal()];
        if (i == 1) {
            int i2 = this.f20594a;
            if (i2 < 1) {
                i2 = 1 - i2;
            }
            return i2;
        }
        if (i == 2) {
            return this.f20594a;
        }
        if (i == 3) {
            return this.f20594a < 1 ? 0 : 1;
        }
        throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
    }
}
