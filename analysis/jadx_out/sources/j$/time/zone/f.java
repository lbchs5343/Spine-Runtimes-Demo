package j$.time.zone;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.time.chrono.t;
import j$.time.k;
import j$.time.temporal.o;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public final class f implements Serializable {
    public static final long[] i = new long[0];
    public static final e[] j = new e[0];
    public static final LocalDateTime[] k = new LocalDateTime[0];
    public static final b[] l = new b[0];
    private static final long serialVersionUID = 3044319355680032515L;

    /* renamed from: a, reason: collision with root package name */
    public final long[] f20651a;

    /* renamed from: b, reason: collision with root package name */
    public final ZoneOffset[] f20652b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f20653c;

    /* renamed from: d, reason: collision with root package name */
    public final LocalDateTime[] f20654d;

    /* renamed from: e, reason: collision with root package name */
    public final ZoneOffset[] f20655e;

    /* renamed from: f, reason: collision with root package name */
    public final e[] f20656f;

    /* renamed from: g, reason: collision with root package name */
    public final TimeZone f20657g;
    public final transient ConcurrentHashMap h = new ConcurrentHashMap();

    public f(ZoneOffset zoneOffset) {
        ZoneOffset[] zoneOffsetArr = {zoneOffset};
        this.f20652b = zoneOffsetArr;
        long[] jArr = i;
        this.f20651a = jArr;
        this.f20653c = jArr;
        this.f20654d = k;
        this.f20655e = zoneOffsetArr;
        this.f20656f = j;
        this.f20657g = null;
    }

    public f(TimeZone timeZone) {
        ZoneOffset[] zoneOffsetArr = {g(timeZone.getRawOffset())};
        this.f20652b = zoneOffsetArr;
        long[] jArr = i;
        this.f20651a = jArr;
        this.f20653c = jArr;
        this.f20654d = k;
        this.f20655e = zoneOffsetArr;
        this.f20656f = j;
        this.f20657g = timeZone;
    }

    public f(long[] jArr, ZoneOffset[] zoneOffsetArr, long[] jArr2, ZoneOffset[] zoneOffsetArr2, e[] eVarArr) {
        this.f20651a = jArr;
        this.f20652b = zoneOffsetArr;
        this.f20653c = jArr2;
        this.f20655e = zoneOffsetArr2;
        this.f20656f = eVarArr;
        if (jArr2.length == 0) {
            this.f20654d = k;
        } else {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < jArr2.length) {
                int i3 = i2 + 1;
                b bVar = new b(jArr2[i2], zoneOffsetArr2[i2], zoneOffsetArr2[i3]);
                if (bVar.i()) {
                    arrayList.add(bVar.f20639b);
                    arrayList.add(bVar.f20639b.I(bVar.f20641d.f20451b - bVar.f20640c.f20451b));
                } else {
                    arrayList.add(bVar.f20639b.I(bVar.f20641d.f20451b - bVar.f20640c.f20451b));
                    arrayList.add(bVar.f20639b);
                }
                i2 = i3;
            }
            this.f20654d = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
        }
        this.f20657g = null;
    }

    public static Object a(LocalDateTime localDateTime, b bVar) {
        LocalDateTime localDateTime2 = bVar.f20639b;
        if (bVar.i()) {
            if (localDateTime.E(localDateTime2)) {
                return bVar.f20640c;
            }
            if (!localDateTime.E(bVar.f20639b.I(bVar.f20641d.f20451b - bVar.f20640c.f20451b))) {
                return bVar.f20641d;
            }
        } else {
            if (!localDateTime.E(localDateTime2)) {
                return bVar.f20641d;
            }
            if (localDateTime.E(bVar.f20639b.I(bVar.f20641d.f20451b - bVar.f20640c.f20451b))) {
                return bVar.f20640c;
            }
        }
        return bVar;
    }

    public static int c(long j2, ZoneOffset zoneOffset) {
        return LocalDate.M(j$.com.android.tools.r8.a.O(j2 + zoneOffset.f20451b, 86400)).f20432a;
    }

    public static ZoneOffset g(int i2) {
        return ZoneOffset.J(i2 / 1000);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a(this.f20657g != null ? (byte) 100 : (byte) 1, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final b[] b(int i2) {
        LocalDate D;
        b[] bVarArr = l;
        Integer valueOf = Integer.valueOf(i2);
        b[] bVarArr2 = (b[]) this.h.get(valueOf);
        if (bVarArr2 != null) {
            return bVarArr2;
        }
        long j2 = 1;
        final int i3 = 0;
        final int i4 = 1;
        if (this.f20657g != null) {
            if (i2 < 1800) {
                return bVarArr;
            }
            LocalDateTime localDateTime = LocalDateTime.f20435c;
            LocalDate L = LocalDate.L(i2 - 1, 12, 31);
            j$.time.temporal.a.HOUR_OF_DAY.s(0);
            long v = j$.com.android.tools.r8.a.v(new LocalDateTime(L, j$.time.i.h[0]), this.f20652b[0]);
            long j3 = 1000;
            int offset = this.f20657g.getOffset(v * 1000);
            long j4 = 31968000 + v;
            while (v < j4) {
                long j5 = v + 7776000;
                long j6 = j3;
                if (offset != this.f20657g.getOffset(j5 * j6)) {
                    while (j5 - v > j2) {
                        long O = j$.com.android.tools.r8.a.O(j5 + v, 2L);
                        if (this.f20657g.getOffset(O * j6) == offset) {
                            v = O;
                        } else {
                            j5 = O;
                        }
                        j2 = 1;
                    }
                    if (this.f20657g.getOffset(v * j6) == offset) {
                        v = j5;
                    }
                    ZoneOffset g2 = g(offset);
                    int offset2 = this.f20657g.getOffset(v * j6);
                    ZoneOffset g3 = g(offset2);
                    if (c(v, g3) == i2) {
                        bVarArr = (b[]) Arrays.copyOf(bVarArr, bVarArr.length + 1);
                        bVarArr[bVarArr.length - 1] = new b(v, g2, g3);
                    }
                    offset = offset2;
                } else {
                    v = j5;
                }
                j3 = j6;
                j2 = 1;
            }
            if (1916 <= i2 && i2 < 2100) {
                this.h.putIfAbsent(valueOf, bVarArr);
            }
            return bVarArr;
        }
        e[] eVarArr = this.f20656f;
        b[] bVarArr3 = new b[eVarArr.length];
        int i5 = 0;
        while (i5 < eVarArr.length) {
            e eVar = eVarArr[i5];
            byte b2 = eVar.f20645b;
            if (b2 < 0) {
                k kVar = eVar.f20644a;
                long j7 = i2;
                t.f20498c.getClass();
                int D2 = kVar.D(t.j(j7)) + 1 + eVar.f20645b;
                LocalDate localDate = LocalDate.f20430d;
                j$.time.temporal.a.YEAR.s(j7);
                Objects.requireNonNull(kVar, "month");
                j$.time.temporal.a.DAY_OF_MONTH.s(D2);
                D = LocalDate.D(i2, kVar.getValue(), D2);
                j$.time.c cVar = eVar.f20646c;
                if (cVar != null) {
                    final int value = cVar.getValue();
                    D = D.j(new o() { // from class: j$.time.temporal.p
                        @Override // j$.time.temporal.o
                        public final m o(m mVar) {
                            switch (i4) {
                                case 0:
                                    int i6 = mVar.i(a.DAY_OF_WEEK);
                                    int i7 = value;
                                    if (i6 == i7) {
                                        return mVar;
                                    }
                                    return mVar.d(i6 - i7 >= 0 ? 7 - r0 : -r0, b.DAYS);
                                default:
                                    int i8 = mVar.i(a.DAY_OF_WEEK);
                                    int i9 = value;
                                    if (i8 == i9) {
                                        return mVar;
                                    }
                                    return mVar.s(i9 - i8 >= 0 ? 7 - r1 : -r1, b.DAYS);
                            }
                        }
                    });
                }
            } else {
                k kVar2 = eVar.f20644a;
                LocalDate localDate2 = LocalDate.f20430d;
                j$.time.temporal.a.YEAR.s(i2);
                Objects.requireNonNull(kVar2, "month");
                j$.time.temporal.a.DAY_OF_MONTH.s(b2);
                D = LocalDate.D(i2, kVar2.getValue(), b2);
                j$.time.c cVar2 = eVar.f20646c;
                if (cVar2 != null) {
                    final int value2 = cVar2.getValue();
                    D = D.j(new o() { // from class: j$.time.temporal.p
                        @Override // j$.time.temporal.o
                        public final m o(m mVar) {
                            switch (i3) {
                                case 0:
                                    int i6 = mVar.i(a.DAY_OF_WEEK);
                                    int i7 = value2;
                                    if (i6 == i7) {
                                        return mVar;
                                    }
                                    return mVar.d(i6 - i7 >= 0 ? 7 - r0 : -r0, b.DAYS);
                                default:
                                    int i8 = mVar.i(a.DAY_OF_WEEK);
                                    int i9 = value2;
                                    if (i8 == i9) {
                                        return mVar;
                                    }
                                    return mVar.s(i9 - i8 >= 0 ? 7 - r1 : -r1, b.DAYS);
                            }
                        }
                    });
                }
            }
            if (eVar.f20648e) {
                D = D.O(1L);
            }
            LocalDateTime F = LocalDateTime.F(D, eVar.f20647d);
            d dVar = eVar.f20649f;
            ZoneOffset zoneOffset = eVar.f20650g;
            ZoneOffset zoneOffset2 = eVar.h;
            dVar.getClass();
            int i6 = c.f20642a[dVar.ordinal()];
            if (i6 == 1) {
                F = F.I(zoneOffset2.f20451b - ZoneOffset.UTC.f20451b);
            } else if (i6 == 2) {
                F = F.I(zoneOffset2.f20451b - zoneOffset.f20451b);
            }
            bVarArr3[i5] = new b(F, eVar.h, eVar.i);
            i5++;
            i3 = 0;
        }
        if (i2 < 2100) {
            this.h.putIfAbsent(valueOf, bVarArr3);
        }
        return bVarArr3;
    }

    public final ZoneOffset d(Instant instant) {
        TimeZone timeZone = this.f20657g;
        if (timeZone != null) {
            return g(timeZone.getOffset(instant.toEpochMilli()));
        }
        long[] jArr = this.f20653c;
        if (jArr.length == 0) {
            return this.f20652b[0];
        }
        long j2 = instant.f20428a;
        if (this.f20656f.length <= 0 || j2 <= jArr[jArr.length - 1]) {
            int binarySearch = Arrays.binarySearch(jArr, j2);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            return this.f20655e[binarySearch + 1];
        }
        b[] b2 = b(c(j2, this.f20655e[r8.length - 1]));
        b bVar = null;
        for (int i2 = 0; i2 < b2.length; i2++) {
            bVar = b2[i2];
            if (j2 < bVar.f20638a) {
                return bVar.f20640c;
            }
        }
        return bVar.f20641d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0063, code lost:
    
        if (r9.C(r0) > 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0086, code lost:
    
        if (r9.f20438b.N() <= r0.f20438b.N()) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(LocalDateTime localDateTime) {
        Object obj = null;
        int i2 = 0;
        if (this.f20657g != null) {
            b[] b2 = b(localDateTime.f20437a.f20432a);
            if (b2.length == 0) {
                return g(this.f20657g.getOffset(j$.com.android.tools.r8.a.v(localDateTime, this.f20652b[0]) * 1000));
            }
            int length = b2.length;
            while (i2 < length) {
                b bVar = b2[i2];
                Object a2 = a(localDateTime, bVar);
                if ((a2 instanceof b) || a2.equals(bVar.f20640c)) {
                    return a2;
                }
                i2++;
                obj = a2;
            }
            return obj;
        }
        if (this.f20653c.length == 0) {
            return this.f20652b[0];
        }
        if (this.f20656f.length > 0) {
            LocalDateTime localDateTime2 = this.f20654d[r0.length - 1];
            if (localDateTime2 == null) {
                long x = localDateTime.f20437a.x();
                long x2 = localDateTime2.f20437a.x();
                if (x <= x2) {
                    if (x == x2) {
                    }
                }
                b[] b3 = b(localDateTime.f20437a.f20432a);
                int length2 = b3.length;
                while (i2 < length2) {
                    b bVar2 = b3[i2];
                    Object a3 = a(localDateTime, bVar2);
                    if ((a3 instanceof b) || a3.equals(bVar2.f20640c)) {
                        return a3;
                    }
                    i2++;
                    obj = a3;
                }
                return obj;
            }
            localDateTime.getClass();
        }
        int binarySearch = Arrays.binarySearch(this.f20654d, localDateTime);
        if (binarySearch == -1) {
            return this.f20655e[0];
        }
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        } else {
            Object[] objArr = this.f20654d;
            if (binarySearch < objArr.length - 1) {
                int i3 = binarySearch + 1;
                if (objArr[binarySearch].equals(objArr[i3])) {
                    binarySearch = i3;
                }
            }
        }
        if ((binarySearch & 1) != 0) {
            return this.f20655e[(binarySearch / 2) + 1];
        }
        LocalDateTime[] localDateTimeArr = this.f20654d;
        LocalDateTime localDateTime3 = localDateTimeArr[binarySearch];
        LocalDateTime localDateTime4 = localDateTimeArr[binarySearch + 1];
        ZoneOffset[] zoneOffsetArr = this.f20655e;
        int i4 = binarySearch / 2;
        ZoneOffset zoneOffset = zoneOffsetArr[i4];
        ZoneOffset zoneOffset2 = zoneOffsetArr[i4 + 1];
        return zoneOffset2.f20451b > zoneOffset.f20451b ? new b(localDateTime3, zoneOffset, zoneOffset2) : new b(localDateTime4, zoneOffset, zoneOffset2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (Objects.equals(this.f20657g, fVar.f20657g) && Arrays.equals(this.f20651a, fVar.f20651a) && Arrays.equals(this.f20652b, fVar.f20652b) && Arrays.equals(this.f20653c, fVar.f20653c) && Arrays.equals(this.f20655e, fVar.f20655e) && Arrays.equals(this.f20656f, fVar.f20656f)) {
                return true;
            }
        }
        return false;
    }

    public final List f(LocalDateTime localDateTime) {
        Object e2 = e(localDateTime);
        if (!(e2 instanceof b)) {
            return Collections.singletonList((ZoneOffset) e2);
        }
        b bVar = (b) e2;
        if (bVar.i()) {
            return Collections.EMPTY_LIST;
        }
        Object[] objArr = {bVar.f20640c, bVar.f20641d};
        ArrayList arrayList = new ArrayList(2);
        for (int i2 = 0; i2 < 2; i2++) {
            arrayList.add(Objects.requireNonNull(objArr[i2]));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final int hashCode() {
        return ((((Objects.hashCode(this.f20657g) ^ Arrays.hashCode(this.f20651a)) ^ Arrays.hashCode(this.f20652b)) ^ Arrays.hashCode(this.f20653c)) ^ Arrays.hashCode(this.f20655e)) ^ Arrays.hashCode(this.f20656f);
    }

    public final String toString() {
        TimeZone timeZone = this.f20657g;
        if (timeZone != null) {
            return "ZoneRules[timeZone=" + timeZone.getID() + "]";
        }
        return "ZoneRules[currentStandardOffset=" + this.f20652b[r0.length - 1] + "]";
    }
}
