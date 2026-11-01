package j$.time;

import com.bykv.vk.component.ttvideo.player.C;
import j$.time.format.DateTimeFormatter;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class Instant implements j$.time.temporal.m, j$.time.temporal.o, Comparable<Instant>, Serializable {
    public static final Instant EPOCH = new Instant(0, 0);
    private static final long serialVersionUID = -665713676816604388L;

    /* renamed from: a, reason: collision with root package name */
    public final long f20428a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20429b;

    static {
        D(-31557014167219200L, 0L);
        D(31556889864403199L, 999999999L);
    }

    public Instant(long j, int i) {
        this.f20428a = j;
        this.f20429b = i;
    }

    public static Instant C(long j, int i) {
        if ((i | j) == 0) {
            return EPOCH;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new a("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j, i);
    }

    public static Instant D(long j, long j2) {
        return C(j$.com.android.tools.r8.a.K(j, j$.com.android.tools.r8.a.O(j2, C.NANOS_PER_SECOND)), (int) j$.com.android.tools.r8.a.N(j2, C.NANOS_PER_SECOND));
    }

    public static Instant ofEpochMilli(long j) {
        long j2 = 1000;
        return C(j$.com.android.tools.r8.a.O(j, j2), ((int) j$.com.android.tools.r8.a.N(j, j2)) * 1000000);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 2, this);
    }

    public final Instant E(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return D(j$.com.android.tools.r8.a.K(j$.com.android.tools.r8.a.K(this.f20428a, j), j2 / C.NANOS_PER_SECOND), this.f20429b + (j2 % C.NANOS_PER_SECOND));
    }

    @Override // j$.time.temporal.m
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public final Instant d(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.b)) {
            return (Instant) sVar.i(this, j);
        }
        switch (e.f20516b[((j$.time.temporal.b) sVar).ordinal()]) {
            case 1:
                return E(0L, j);
            case 2:
                return E(j / C.MICROS_PER_SECOND, (j % C.MICROS_PER_SECOND) * 1000);
            case 3:
                return E(j / 1000, (j % 1000) * C.MICROS_PER_SECOND);
            case 4:
                return E(j, 0L);
            case 5:
                return E(j$.com.android.tools.r8.a.J(j, 60), 0L);
            case 6:
                return E(j$.com.android.tools.r8.a.J(j, 3600), 0L);
            case 7:
                return E(j$.com.android.tools.r8.a.J(j, 43200), 0L);
            case 8:
                return E(j$.com.android.tools.r8.a.J(j, 86400), 0L);
            default:
                throw new j$.time.temporal.t("Unsupported unit: " + sVar);
        }
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.C(this, zoneOffset);
    }

    public ZonedDateTime atZone(ZoneId zoneId) {
        Objects.requireNonNull(this, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return ZonedDateTime.o(this.f20428a, this.f20429b, zoneId);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return (Instant) qVar.o(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        aVar.s(j);
        int i = e.f20515a[aVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                int i2 = ((int) j) * 1000;
                if (i2 != this.f20429b) {
                    return C(this.f20428a, i2);
                }
            } else if (i == 3) {
                int i3 = ((int) j) * 1000000;
                if (i3 != this.f20429b) {
                    return C(this.f20428a, i3);
                }
            } else {
                if (i != 4) {
                    throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
                }
                if (j != this.f20428a) {
                    return C(j, this.f20429b);
                }
            }
        } else if (j != this.f20429b) {
            return C(this.f20428a, (int) j);
        }
        return this;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int compare = Long.compare(this.f20428a, instant2.f20428a);
        return compare != 0 ? compare : this.f20429b - instant2.f20429b;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.INSTANT_SECONDS || qVar == j$.time.temporal.a.NANO_OF_SECOND || qVar == j$.time.temporal.a.MICRO_OF_SECOND || qVar == j$.time.temporal.a.MILLI_OF_SECOND : qVar != null && qVar.i(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.f20428a == instant.f20428a && this.f20429b == instant.f20429b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f20428a;
        return (this.f20429b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.r.d(this, qVar).a(qVar.l(this), qVar);
        }
        int i = e.f20515a[((j$.time.temporal.a) qVar).ordinal()];
        if (i == 1) {
            return this.f20429b;
        }
        if (i == 2) {
            return this.f20429b / 1000;
        }
        if (i == 3) {
            return this.f20429b / 1000000;
        }
        if (i == 4) {
            j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
            aVar.f20602b.a(this.f20428a, aVar);
        }
        throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
    }

    public boolean isAfter(Instant instant) {
        int compare = Long.compare(this.f20428a, instant.f20428a);
        if (compare == 0) {
            compare = this.f20429b - instant.f20429b;
        }
        return compare > 0;
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return (Instant) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        return j$.time.temporal.r.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final Object l(j$.time.format.a aVar) {
        if (aVar == j$.time.temporal.r.f20622c) {
            return j$.time.temporal.b.NANOS;
        }
        if (aVar == j$.time.temporal.r.f20621b || aVar == j$.time.temporal.r.f20620a || aVar == j$.time.temporal.r.f20624e || aVar == j$.time.temporal.r.f20623d || aVar == j$.time.temporal.r.f20625f || aVar == j$.time.temporal.r.f20626g) {
            return null;
        }
        return aVar.a(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m o(j$.time.temporal.m mVar) {
        return mVar.c(this.f20428a, j$.time.temporal.a.INSTANT_SECONDS).c(this.f20429b, j$.time.temporal.a.NANO_OF_SECOND);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public long toEpochMilli() {
        long j = this.f20428a;
        return (j >= 0 || this.f20429b <= 0) ? j$.com.android.tools.r8.a.K(j$.com.android.tools.r8.a.J(j, 1000), this.f20429b / 1000000) : j$.com.android.tools.r8.a.K(j$.com.android.tools.r8.a.J(j + 1, 1000), (this.f20429b / 1000000) - 1000);
    }

    public final String toString() {
        return DateTimeFormatter.f20519e.a(this);
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        int i;
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.l(this);
        }
        int i2 = e.f20515a[((j$.time.temporal.a) qVar).ordinal()];
        if (i2 == 1) {
            i = this.f20429b;
        } else if (i2 == 2) {
            i = this.f20429b / 1000;
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    return this.f20428a;
                }
                throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
            }
            i = this.f20429b / 1000000;
        }
        return i;
    }
}
