package j$.time;

import com.bykv.vk.component.ttvideo.player.C;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class i implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {

    /* renamed from: e, reason: collision with root package name */
    public static final i f20571e;

    /* renamed from: f, reason: collision with root package name */
    public static final i f20572f;

    /* renamed from: g, reason: collision with root package name */
    public static final i f20573g;
    public static final i[] h = new i[24];
    private static final long serialVersionUID = 6414437269572265201L;

    /* renamed from: a, reason: collision with root package name */
    public final byte f20574a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f20575b;

    /* renamed from: c, reason: collision with root package name */
    public final byte f20576c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20577d;

    static {
        int i = 0;
        while (true) {
            i[] iVarArr = h;
            if (i >= iVarArr.length) {
                i iVar = iVarArr[0];
                f20573g = iVar;
                i iVar2 = iVarArr[12];
                f20571e = iVar;
                f20572f = new i(23, 59, 59, 999999999);
                return;
            }
            iVarArr[i] = new i(i, 0, 0, 0);
            i++;
        }
    }

    public i(int i, int i2, int i3, int i4) {
        this.f20574a = (byte) i;
        this.f20575b = (byte) i2;
        this.f20576c = (byte) i3;
        this.f20577d = i4;
    }

    public static i D(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? h[i] : new i(i, i2, i3, i4);
    }

    public static i E(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        i iVar = (i) nVar.l(j$.time.temporal.r.f20626g);
        if (iVar != null) {
            return iVar;
        }
        throw new a("Unable to obtain LocalTime from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName());
    }

    public static i G(long j) {
        j$.time.temporal.a.NANO_OF_DAY.s(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / C.NANOS_PER_SECOND);
        return D(i, i2, i3, (int) (j3 - (i3 * C.NANOS_PER_SECOND)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [int] */
    public static i M(DataInput dataInput) {
        int readInt;
        int i;
        int readByte = dataInput.readByte();
        byte b2 = 0;
        if (readByte >= 0) {
            byte readByte2 = dataInput.readByte();
            if (readByte2 < 0) {
                ?? r6 = ~readByte2;
                readInt = 0;
                b2 = r6;
                i = 0;
            } else {
                byte readByte3 = dataInput.readByte();
                if (readByte3 < 0) {
                    i = ~readByte3;
                    b2 = readByte2;
                } else {
                    readInt = dataInput.readInt();
                    b2 = readByte2;
                    i = readByte3;
                }
            }
            j$.time.temporal.a.HOUR_OF_DAY.s(readByte);
            j$.time.temporal.a.MINUTE_OF_HOUR.s(b2);
            j$.time.temporal.a.SECOND_OF_MINUTE.s(i);
            j$.time.temporal.a.NANO_OF_SECOND.s(readInt);
            return D(readByte, b2, i, readInt);
        }
        readByte = ~readByte;
        i = 0;
        readInt = 0;
        j$.time.temporal.a.HOUR_OF_DAY.s(readByte);
        j$.time.temporal.a.MINUTE_OF_HOUR.s(b2);
        j$.time.temporal.a.SECOND_OF_MINUTE.s(i);
        j$.time.temporal.a.NANO_OF_SECOND.s(readInt);
        return D(readByte, b2, i, readInt);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 4, this);
    }

    @Override // java.lang.Comparable
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public final int compareTo(i iVar) {
        int compare = Integer.compare(this.f20574a, iVar.f20574a);
        return (compare == 0 && (compare = Integer.compare(this.f20575b, iVar.f20575b)) == 0 && (compare = Integer.compare(this.f20576c, iVar.f20576c)) == 0) ? Integer.compare(this.f20577d, iVar.f20577d) : compare;
    }

    public final int F(j$.time.temporal.q qVar) {
        switch (h.f20569a[((j$.time.temporal.a) qVar).ordinal()]) {
            case 1:
                return this.f20577d;
            case 2:
                throw new j$.time.temporal.t("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.f20577d / 1000;
            case 4:
                throw new j$.time.temporal.t("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.f20577d / 1000000;
            case 6:
                return (int) (N() / C.MICROS_PER_SECOND);
            case 7:
                return this.f20576c;
            case 8:
                return O();
            case 9:
                return this.f20575b;
            case 10:
                return (this.f20574a * 60) + this.f20575b;
            case 11:
                return this.f20574a % 12;
            case 12:
                int i = this.f20574a % 12;
                if (i % 12 == 0) {
                    return 12;
                }
                return i;
            case 13:
                return this.f20574a;
            case 14:
                byte b2 = this.f20574a;
                if (b2 == 0) {
                    return 24;
                }
                return b2;
            case 15:
                return this.f20574a / 12;
            default:
                throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
        }
    }

    @Override // j$.time.temporal.m
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public final i d(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.b)) {
            return (i) sVar.i(this, j);
        }
        switch (h.f20570b[((j$.time.temporal.b) sVar).ordinal()]) {
            case 1:
                return K(j);
            case 2:
                return K((j % 86400000000L) * 1000);
            case 3:
                return K((j % AdBaseConstants.DEFAULT_DELAY_TIMESTAMP) * C.MICROS_PER_SECOND);
            case 4:
                return L(j);
            case 5:
                return J(j);
            case 6:
                return I(j);
            case 7:
                return I((j % 2) * 12);
            default:
                throw new j$.time.temporal.t("Unsupported unit: " + sVar);
        }
    }

    public final i I(long j) {
        return j == 0 ? this : D(((((int) (j % 24)) + this.f20574a) + 24) % 24, this.f20575b, this.f20576c, this.f20577d);
    }

    public final i J(long j) {
        if (j != 0) {
            int i = (this.f20574a * 60) + this.f20575b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return D(i2 / 60, i2 % 60, this.f20576c, this.f20577d);
            }
        }
        return this;
    }

    public final i K(long j) {
        if (j != 0) {
            long N = N();
            long j2 = (((j % 86400000000000L) + N) + 86400000000000L) % 86400000000000L;
            if (N != j2) {
                return D((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / C.NANOS_PER_SECOND) % 60), (int) (j2 % C.NANOS_PER_SECOND));
            }
        }
        return this;
    }

    public final i L(long j) {
        if (j != 0) {
            int i = (this.f20575b * 60) + (this.f20574a * 3600) + this.f20576c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return D(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.f20577d);
            }
        }
        return this;
    }

    public final long N() {
        return (this.f20576c * C.NANOS_PER_SECOND) + (this.f20575b * 60000000000L) + (this.f20574a * 3600000000000L) + this.f20577d;
    }

    public final int O() {
        return (this.f20575b * 60) + (this.f20574a * 3600) + this.f20576c;
    }

    @Override // j$.time.temporal.m
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    public final i c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return (i) qVar.o(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        aVar.s(j);
        switch (h.f20569a[aVar.ordinal()]) {
            case 1:
                return Q((int) j);
            case 2:
                return G(j);
            case 3:
                return Q(((int) j) * 1000);
            case 4:
                return G(j * 1000);
            case 5:
                return Q(((int) j) * 1000000);
            case 6:
                return G(j * C.MICROS_PER_SECOND);
            case 7:
                int i = (int) j;
                if (this.f20576c != i) {
                    j$.time.temporal.a.SECOND_OF_MINUTE.s(i);
                    return D(this.f20574a, this.f20575b, i, this.f20577d);
                }
                return this;
            case 8:
                return L(j - O());
            case 9:
                int i2 = (int) j;
                if (this.f20575b != i2) {
                    j$.time.temporal.a.MINUTE_OF_HOUR.s(i2);
                    return D(this.f20574a, i2, this.f20576c, this.f20577d);
                }
                return this;
            case 10:
                return J(j - ((this.f20574a * 60) + this.f20575b));
            case 11:
                return I(j - (this.f20574a % 12));
            case 12:
                if (j == 12) {
                    j = 0;
                }
                return I(j - (this.f20574a % 12));
            case 13:
                int i3 = (int) j;
                if (this.f20574a != i3) {
                    j$.time.temporal.a.HOUR_OF_DAY.s(i3);
                    return D(i3, this.f20575b, this.f20576c, this.f20577d);
                }
                return this;
            case 14:
                if (j == 24) {
                    j = 0;
                }
                int i4 = (int) j;
                if (this.f20574a != i4) {
                    j$.time.temporal.a.HOUR_OF_DAY.s(i4);
                    return D(i4, this.f20575b, this.f20576c, this.f20577d);
                }
                return this;
            case 15:
                return I((j - (this.f20574a / 12)) * 12);
            default:
                throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
        }
    }

    public final i Q(int i) {
        if (this.f20577d == i) {
            return this;
        }
        j$.time.temporal.a.NANO_OF_SECOND.s(i);
        return D(this.f20574a, this.f20575b, this.f20576c, i);
    }

    public final void R(DataOutput dataOutput) {
        if (this.f20577d != 0) {
            dataOutput.writeByte(this.f20574a);
            dataOutput.writeByte(this.f20575b);
            dataOutput.writeByte(this.f20576c);
            dataOutput.writeInt(this.f20577d);
            return;
        }
        if (this.f20576c != 0) {
            dataOutput.writeByte(this.f20574a);
            dataOutput.writeByte(this.f20575b);
            dataOutput.writeByte(~this.f20576c);
        } else if (this.f20575b == 0) {
            dataOutput.writeByte(~this.f20574a);
        } else {
            dataOutput.writeByte(this.f20574a);
            dataOutput.writeByte(~this.f20575b);
        }
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) qVar).w() : qVar != null && qVar.i(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (this.f20574a == iVar.f20574a && this.f20575b == iVar.f20575b && this.f20576c == iVar.f20576c && this.f20577d == iVar.f20577d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long N = N();
        return (int) (N ^ (N >>> 32));
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? F(qVar) : j$.time.temporal.r.a(this, qVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return (i) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        return j$.time.temporal.r.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final Object l(j$.time.format.a aVar) {
        if (aVar == j$.time.temporal.r.f20621b || aVar == j$.time.temporal.r.f20620a || aVar == j$.time.temporal.r.f20624e || aVar == j$.time.temporal.r.f20623d) {
            return null;
        }
        if (aVar == j$.time.temporal.r.f20626g) {
            return this;
        }
        if (aVar == j$.time.temporal.r.f20625f) {
            return null;
        }
        return aVar == j$.time.temporal.r.f20622c ? j$.time.temporal.b.NANOS : aVar.a(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m o(j$.time.temporal.m mVar) {
        return mVar.c(N(), j$.time.temporal.a.NANO_OF_DAY);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b2 = this.f20574a;
        byte b3 = this.f20575b;
        byte b4 = this.f20576c;
        int i = this.f20577d;
        sb.append(b2 < 10 ? "0" : "");
        sb.append((int) b2);
        sb.append(b3 < 10 ? ":0" : ":");
        sb.append((int) b3);
        if (b4 > 0 || i > 0) {
            sb.append(b4 < 10 ? ":0" : ":");
            sb.append((int) b4);
            if (i > 0) {
                sb.append('.');
                if (i % 1000000 == 0) {
                    sb.append(Integer.toString((i / 1000000) + 1000).substring(1));
                } else if (i % 1000 == 0) {
                    sb.append(Integer.toString((i / 1000) + 1000000).substring(1));
                } else {
                    sb.append(Integer.toString(i + 1000000000).substring(1));
                }
            }
        }
        return sb.toString();
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.NANO_OF_DAY ? N() : qVar == j$.time.temporal.a.MICRO_OF_DAY ? N() / 1000 : F(qVar) : qVar.l(this);
    }
}
