package j$.time;

import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import j$.time.chrono.InterfaceC0261b;
import j$.time.chrono.InterfaceC0264e;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class LocalDate implements j$.time.temporal.m, j$.time.temporal.o, InterfaceC0261b, Serializable {

    /* renamed from: d, reason: collision with root package name */
    public static final LocalDate f20430d = L(-999999999, 1, 1);

    /* renamed from: e, reason: collision with root package name */
    public static final LocalDate f20431e = L(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;

    /* renamed from: a, reason: collision with root package name */
    public final int f20432a;

    /* renamed from: b, reason: collision with root package name */
    public final short f20433b;

    /* renamed from: c, reason: collision with root package name */
    public final short f20434c;

    static {
        L(1970, 1, 1);
    }

    public LocalDate(int i, int i2, int i3) {
        this.f20432a = i;
        this.f20433b = (short) i2;
        this.f20434c = (short) i3;
    }

    public static LocalDate D(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else {
                j$.time.chrono.t.f20498c.getClass();
                if (j$.time.chrono.t.j(i)) {
                    i4 = 29;
                }
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    throw new a("Invalid date 'February 29' as '" + i + "' is not a leap year");
                }
                throw new a("Invalid date '" + k.F(i2).name() + " " + i3 + "'");
            }
        }
        return new LocalDate(i, i2, i3);
    }

    public static LocalDate E(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        LocalDate localDate = (LocalDate) nVar.l(j$.time.temporal.r.f20625f);
        if (localDate != null) {
            return localDate;
        }
        throw new a("Unable to obtain LocalDate from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName());
    }

    public static LocalDate L(int i, int i2, int i3) {
        j$.time.temporal.a.YEAR.s(i);
        j$.time.temporal.a.MONTH_OF_YEAR.s(i2);
        j$.time.temporal.a.DAY_OF_MONTH.s(i3);
        return D(i, i2, i3);
    }

    public static LocalDate M(long j) {
        long j2;
        j$.time.temporal.a.EPOCH_DAY.s(j);
        long j3 = 719468 + j;
        if (j3 < 0) {
            long j4 = ((j + 719469) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((j5 / 400) + (((j5 / 4) + (j5 * 365)) - (j5 / 100)));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((j5 / 400) + (((j5 / 4) + (365 * j5)) - (j5 / 100)));
        }
        int i = (int) j6;
        int i2 = ((i * 5) + 2) / 153;
        int i3 = ((i2 + 2) % 12) + 1;
        int i4 = (i - (((i2 * MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_PREDELAY) + 5) / 10)) + 1;
        long j7 = j5 + j2 + (i2 / 10);
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return new LocalDate(aVar.f20602b.a(j7, aVar), i3, i4);
    }

    public static LocalDate R(int i, int i2, int i3) {
        if (i2 == 2) {
            j$.time.chrono.t.f20498c.getClass();
            i3 = Math.min(i3, j$.time.chrono.t.j((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new LocalDate(i, i2, i3);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 3, this);
    }

    @Override // java.lang.Comparable
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC0261b interfaceC0261b) {
        return interfaceC0261b instanceof LocalDate ? C((LocalDate) interfaceC0261b) : j$.com.android.tools.r8.a.d(this, interfaceC0261b);
    }

    public final int C(LocalDate localDate) {
        int i = this.f20432a - localDate.f20432a;
        if (i != 0) {
            return i;
        }
        int i2 = this.f20433b - localDate.f20433b;
        return i2 == 0 ? this.f20434c - localDate.f20434c : i2;
    }

    public final int F(j$.time.temporal.q qVar) {
        switch (f.f20517a[((j$.time.temporal.a) qVar).ordinal()]) {
            case 1:
                return this.f20434c;
            case 2:
                return H();
            case 3:
                return ((this.f20434c - 1) / 7) + 1;
            case 4:
                int i = this.f20432a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return G().getValue();
            case 6:
                return ((this.f20434c - 1) % 7) + 1;
            case 7:
                return ((H() - 1) % 7) + 1;
            case 8:
                throw new j$.time.temporal.t("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((H() - 1) / 7) + 1;
            case 10:
                return this.f20433b;
            case 11:
                throw new j$.time.temporal.t("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.f20432a;
            case 13:
                return this.f20432a >= 1 ? 1 : 0;
            default:
                throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
        }
    }

    public final c G() {
        return c.C(((int) j$.com.android.tools.r8.a.N(x() + 3, 7)) + 1);
    }

    public final int H() {
        return (k.F(this.f20433b).C(J()) + this.f20434c) - 1;
    }

    public final long I() {
        return ((this.f20432a * 12) + this.f20433b) - 1;
    }

    public final boolean J() {
        j$.time.chrono.t tVar = j$.time.chrono.t.f20498c;
        long j = this.f20432a;
        tVar.getClass();
        return j$.time.chrono.t.j(j);
    }

    public final int K() {
        short s = this.f20433b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : J() ? 29 : 28;
    }

    @Override // j$.time.temporal.m
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public final LocalDate d(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.b)) {
            return (LocalDate) sVar.i(this, j);
        }
        switch (f.f20518b[((j$.time.temporal.b) sVar).ordinal()]) {
            case 1:
                return O(j);
            case 2:
                return O(j$.com.android.tools.r8.a.J(j, 7));
            case 3:
                return P(j);
            case 4:
                return Q(j);
            case 5:
                return Q(j$.com.android.tools.r8.a.J(j, 10));
            case 6:
                return Q(j$.com.android.tools.r8.a.J(j, 100));
            case 7:
                return Q(j$.com.android.tools.r8.a.J(j, 1000));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return c(j$.com.android.tools.r8.a.K(w(aVar), j), aVar);
            default:
                throw new j$.time.temporal.t("Unsupported unit: " + sVar);
        }
    }

    public final LocalDate O(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.f20434c + j;
        if (j2 > 0) {
            if (j2 <= 28) {
                return new LocalDate(this.f20432a, this.f20433b, (int) j2);
            }
            if (j2 <= 59) {
                long K = K();
                if (j2 <= K) {
                    return new LocalDate(this.f20432a, this.f20433b, (int) j2);
                }
                short s = this.f20433b;
                if (s < 12) {
                    return new LocalDate(this.f20432a, s + 1, (int) (j2 - K));
                }
                j$.time.temporal.a.YEAR.s(this.f20432a + 1);
                return new LocalDate(this.f20432a + 1, 1, (int) (j2 - K));
            }
        }
        return M(j$.com.android.tools.r8.a.K(x(), j));
    }

    public final LocalDate P(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f20432a * 12) + (this.f20433b - 1) + j;
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        long j3 = 12;
        return R(aVar.f20602b.a(j$.com.android.tools.r8.a.O(j2, j3), aVar), ((int) j$.com.android.tools.r8.a.N(j2, j3)) + 1, this.f20434c);
    }

    public final LocalDate Q(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return R(aVar.f20602b.a(this.f20432a + j, aVar), this.f20433b, this.f20434c);
    }

    @Override // j$.time.temporal.m
    /* renamed from: S, reason: merged with bridge method [inline-methods] */
    public final LocalDate c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return (LocalDate) qVar.o(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        aVar.s(j);
        switch (f.f20517a[aVar.ordinal()]) {
            case 1:
                int i = (int) j;
                if (this.f20434c != i) {
                    return L(this.f20432a, this.f20433b, i);
                }
                return this;
            case 2:
                return U((int) j);
            case 3:
                return O(j$.com.android.tools.r8.a.J(j - w(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH), 7));
            case 4:
                if (this.f20432a < 1) {
                    j = 1 - j;
                }
                return V((int) j);
            case 5:
                return O(j - G().getValue());
            case 6:
                return O(j - w(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return O(j - w(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return M(j);
            case 9:
                return O(j$.com.android.tools.r8.a.J(j - w(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR), 7));
            case 10:
                int i2 = (int) j;
                if (this.f20433b != i2) {
                    j$.time.temporal.a.MONTH_OF_YEAR.s(i2);
                    return R(this.f20432a, i2, this.f20434c);
                }
                return this;
            case 11:
                return P(j - I());
            case 12:
                return V((int) j);
            case 13:
                if (w(j$.time.temporal.a.ERA) != j) {
                    return V(1 - this.f20432a);
                }
                return this;
            default:
                throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
        }
    }

    @Override // j$.time.temporal.m
    /* renamed from: T, reason: merged with bridge method [inline-methods] */
    public final LocalDate j(j$.time.temporal.o oVar) {
        return oVar instanceof LocalDate ? (LocalDate) oVar : (LocalDate) oVar.o(this);
    }

    public final LocalDate U(int i) {
        if (H() == i) {
            return this;
        }
        int i2 = this.f20432a;
        long j = i2;
        j$.time.temporal.a.YEAR.s(j);
        j$.time.temporal.a.DAY_OF_YEAR.s(i);
        j$.time.chrono.t.f20498c.getClass();
        boolean j2 = j$.time.chrono.t.j(j);
        if (i == 366 && !j2) {
            throw new a("Invalid date 'DayOfYear 366' as '" + i2 + "' is not a leap year");
        }
        k F = k.F(((i - 1) / 31) + 1);
        if (i > (F.D(j2) + F.C(j2)) - 1) {
            F = k.f20579a[((((int) 1) + 12) + F.ordinal()) % 12];
        }
        return new LocalDate(i2, F.getValue(), (i - F.C(j2)) + 1);
    }

    public final LocalDate V(int i) {
        if (this.f20432a == i) {
            return this;
        }
        j$.time.temporal.a.YEAR.s(i);
        return R(i, this.f20433b, this.f20434c);
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public final j$.time.chrono.m a() {
        return j$.time.chrono.t.f20498c;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.q qVar) {
        return j$.com.android.tools.r8.a.p(this, qVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocalDate) && C((LocalDate) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public final int hashCode() {
        int i = this.f20432a;
        return (((i << 11) + (this.f20433b << 6)) + this.f20434c) ^ (i & (-2048));
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? F(qVar) : j$.time.temporal.r.a(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.j(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        if (!aVar.isDateBased()) {
            throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
        }
        int i = f.f20517a[aVar.ordinal()];
        if (i == 1) {
            return j$.time.temporal.u.e(1L, K());
        }
        if (i == 2) {
            return j$.time.temporal.u.e(1L, J() ? MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DECODE_TIME : MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DEMUX_TIME);
        }
        if (i != 3) {
            return i != 4 ? ((j$.time.temporal.a) qVar).f20602b : this.f20432a <= 0 ? j$.time.temporal.u.e(1L, C.NANOS_PER_SECOND) : j$.time.temporal.u.e(1L, 999999999L);
        }
        return j$.time.temporal.u.e(1L, (k.F(this.f20433b) != k.FEBRUARY || J()) ? 5L : 4L);
    }

    @Override // j$.time.temporal.n
    public final Object l(j$.time.format.a aVar) {
        return aVar == j$.time.temporal.r.f20625f ? this : j$.com.android.tools.r8.a.r(this, aVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m o(j$.time.temporal.m mVar) {
        return j$.com.android.tools.r8.a.a(this, mVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public final String toString() {
        int i = this.f20432a;
        short s = this.f20433b;
        short s2 = this.f20434c;
        int abs = Math.abs(i);
        StringBuilder sb = new StringBuilder(10);
        if (abs >= 1000) {
            if (i > 9999) {
                sb.append('+');
            }
            sb.append(i);
        } else if (i < 0) {
            sb.append(i - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        sb.append(s2 < 10 ? "-0" : "-");
        sb.append((int) s2);
        return sb.toString();
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.EPOCH_DAY ? x() : qVar == j$.time.temporal.a.PROLEPTIC_MONTH ? I() : F(qVar) : qVar.l(this);
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public final long x() {
        long j = this.f20432a;
        long j2 = this.f20433b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + (this.f20434c - 1);
        if (j2 > 2) {
            j4 = !J() ? j4 - 2 : j4 - 1;
        }
        return j4 - 719528;
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public final InterfaceC0264e y(i iVar) {
        return LocalDateTime.F(this, iVar);
    }
}
