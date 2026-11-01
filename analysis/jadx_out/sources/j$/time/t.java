package j$.time;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class t implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f20597c = 0;
    private static final long serialVersionUID = 4183400860270640070L;

    /* renamed from: a, reason: collision with root package name */
    public final int f20598a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20599b;

    static {
        j$.time.format.n nVar = new j$.time.format.n();
        nVar.h(j$.time.temporal.a.YEAR, 4, 10, j$.time.format.u.EXCEEDS_PAD);
        nVar.c('-');
        nVar.g(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        nVar.l(Locale.getDefault(), j$.time.format.t.SMART, null);
    }

    public t(int i, int i2) {
        this.f20598a = i;
        this.f20599b = i2;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 12, this);
    }

    public final long C() {
        return ((this.f20598a * 12) + this.f20599b) - 1;
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final t d(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.b)) {
            return (t) sVar.i(this, j);
        }
        switch (s.f20596b[((j$.time.temporal.b) sVar).ordinal()]) {
            case 1:
                return E(j);
            case 2:
                return F(j);
            case 3:
                return F(j$.com.android.tools.r8.a.J(j, 10));
            case 4:
                return F(j$.com.android.tools.r8.a.J(j, 100));
            case 5:
                return F(j$.com.android.tools.r8.a.J(j, 1000));
            case 6:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return c(j$.com.android.tools.r8.a.K(w(aVar), j), aVar);
            default:
                throw new j$.time.temporal.t("Unsupported unit: " + sVar);
        }
    }

    public final t E(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f20598a * 12) + (this.f20599b - 1) + j;
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        long j3 = 12;
        return G(aVar.f20602b.a(j$.com.android.tools.r8.a.O(j2, j3), aVar), ((int) j$.com.android.tools.r8.a.N(j2, j3)) + 1);
    }

    public final t F(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return G(aVar.f20602b.a(this.f20598a + j, aVar), this.f20599b);
    }

    public final t G(int i, int i2) {
        return (this.f20598a == i && this.f20599b == i2) ? this : new t(i, i2);
    }

    @Override // j$.time.temporal.m
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public final t c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return (t) qVar.o(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        aVar.s(j);
        int i = s.f20595a[aVar.ordinal()];
        if (i == 1) {
            int i2 = (int) j;
            j$.time.temporal.a.MONTH_OF_YEAR.s(i2);
            return G(this.f20598a, i2);
        }
        if (i == 2) {
            return E(j - C());
        }
        if (i == 3) {
            if (this.f20598a < 1) {
                j = 1 - j;
            }
            int i3 = (int) j;
            j$.time.temporal.a.YEAR.s(i3);
            return G(i3, this.f20599b);
        }
        if (i == 4) {
            int i4 = (int) j;
            j$.time.temporal.a.YEAR.s(i4);
            return G(i4, this.f20599b);
        }
        if (i != 5) {
            throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
        }
        if (w(j$.time.temporal.a.ERA) == j) {
            return this;
        }
        int i5 = 1 - this.f20598a;
        j$.time.temporal.a.YEAR.s(i5);
        return G(i5, this.f20599b);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        t tVar = (t) obj;
        int i = this.f20598a - tVar.f20598a;
        return i == 0 ? this.f20599b - tVar.f20599b : i;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.YEAR || qVar == j$.time.temporal.a.MONTH_OF_YEAR || qVar == j$.time.temporal.a.PROLEPTIC_MONTH || qVar == j$.time.temporal.a.YEAR_OF_ERA || qVar == j$.time.temporal.a.ERA : qVar != null && qVar.i(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t) {
            t tVar = (t) obj;
            if (this.f20598a == tVar.f20598a && this.f20599b == tVar.f20599b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f20598a ^ (this.f20599b << 27);
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.q qVar) {
        return k(qVar).a(w(qVar), qVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return (t) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.u.e(1L, this.f20598a <= 0 ? C.NANOS_PER_SECOND : 999999999L);
        }
        return j$.time.temporal.r.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final Object l(j$.time.format.a aVar) {
        return aVar == j$.time.temporal.r.f20621b ? j$.time.chrono.t.f20498c : aVar == j$.time.temporal.r.f20622c ? j$.time.temporal.b.MONTHS : j$.time.temporal.r.c(this, aVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m o(j$.time.temporal.m mVar) {
        if (!j$.com.android.tools.r8.a.I(mVar).equals(j$.time.chrono.t.f20498c)) {
            throw new a("Adjustment only supported on ISO date-time");
        }
        return mVar.c(C(), j$.time.temporal.a.PROLEPTIC_MONTH);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public final String toString() {
        int abs = Math.abs(this.f20598a);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i = this.f20598a;
            if (i < 0) {
                sb.append(i - 10000);
                sb.deleteCharAt(1);
            } else {
                sb.append(i + 10000);
                sb.deleteCharAt(0);
            }
        } else {
            sb.append(this.f20598a);
        }
        sb.append(this.f20599b < 10 ? "-0" : "-");
        sb.append(this.f20599b);
        return sb.toString();
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        int i;
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.l(this);
        }
        int i2 = s.f20595a[((j$.time.temporal.a) qVar).ordinal()];
        if (i2 == 1) {
            i = this.f20599b;
        } else {
            if (i2 == 2) {
                return C();
            }
            if (i2 == 3) {
                int i3 = this.f20598a;
                if (i3 < 1) {
                    i3 = 1 - i3;
                }
                return i3;
            }
            if (i2 != 4) {
                if (i2 == 5) {
                    return this.f20598a < 1 ? 0 : 1;
                }
                throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
            }
            i = this.f20598a;
        }
        return i;
    }
}
