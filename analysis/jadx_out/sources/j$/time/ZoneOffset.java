package j$.time;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class ZoneOffset extends ZoneId implements j$.time.temporal.n, j$.time.temporal.o, Comparable<ZoneOffset>, Serializable {
    private static final long serialVersionUID = 2357656521762053153L;

    /* renamed from: b, reason: collision with root package name */
    public final int f20451b;

    /* renamed from: c, reason: collision with root package name */
    public final transient String f20452c;

    /* renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f20447d = new ConcurrentHashMap(16, 0.75f, 4);

    /* renamed from: e, reason: collision with root package name */
    public static final ConcurrentHashMap f20448e = new ConcurrentHashMap(16, 0.75f, 4);
    public static final ZoneOffset UTC = J(0);

    /* renamed from: f, reason: collision with root package name */
    public static final ZoneOffset f20449f = J(-64800);

    /* renamed from: g, reason: collision with root package name */
    public static final ZoneOffset f20450g = J(64800);

    public ZoneOffset(int i) {
        String sb;
        this.f20451b = i;
        if (i == 0) {
            sb = "Z";
        } else {
            int abs = Math.abs(i);
            StringBuilder sb2 = new StringBuilder();
            int i2 = abs / 3600;
            int i3 = (abs / 60) % 60;
            sb2.append(i < 0 ? "-" : "+");
            sb2.append(i2 < 10 ? "0" : "");
            sb2.append(i2);
            sb2.append(i3 < 10 ? ":0" : ":");
            sb2.append(i3);
            int i4 = abs % 60;
            if (i4 != 0) {
                sb2.append(i4 < 10 ? ":0" : ":");
                sb2.append(i4);
            }
            sb = sb2.toString();
        }
        this.f20452c = sb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ZoneOffset H(String str) {
        int K;
        int i;
        int i2;
        char charAt;
        Objects.requireNonNull(str, "offsetId");
        ZoneOffset zoneOffset = (ZoneOffset) f20448e.get(str);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        int length = str.length();
        if (length == 2) {
            str = str.charAt(0) + "0" + str.charAt(1);
        } else if (length != 3) {
            if (length == 5) {
                K = K(str, 1, false);
                i = K(str, 3, false);
            } else {
                if (length != 6) {
                    if (length == 7) {
                        K = K(str, 1, false);
                        i = K(str, 3, false);
                        i2 = K(str, 5, false);
                    } else {
                        if (length != 9) {
                            throw new a("Invalid ID for ZoneOffset, invalid format: ".concat(str));
                        }
                        K = K(str, 1, false);
                        i = K(str, 4, true);
                        i2 = K(str, 7, true);
                    }
                    charAt = str.charAt(0);
                    if (charAt != '+' || charAt == '-') {
                        return charAt == '-' ? I(-K, -i, -i2) : I(K, i, i2);
                    }
                    throw new a("Invalid ID for ZoneOffset, plus/minus not found when expected: ".concat(str));
                }
                K = K(str, 1, false);
                i = K(str, 4, true);
            }
            i2 = 0;
            charAt = str.charAt(0);
            if (charAt != '+') {
            }
            if (charAt == '-') {
            }
        }
        K = K(str, 1, false);
        i = 0;
        i2 = 0;
        charAt = str.charAt(0);
        if (charAt != '+') {
        }
        if (charAt == '-') {
        }
    }

    public static ZoneOffset I(int i, int i2, int i3) {
        if (i < -18 || i > 18) {
            throw new a("Zone offset hours not in valid range: value " + i + " is not in the range -18 to 18");
        }
        if (i > 0) {
            if (i2 < 0 || i3 < 0) {
                throw new a("Zone offset minutes and seconds must be positive because hours is positive");
            }
        } else if (i < 0) {
            if (i2 > 0 || i3 > 0) {
                throw new a("Zone offset minutes and seconds must be negative because hours is negative");
            }
        } else if ((i2 > 0 && i3 < 0) || (i2 < 0 && i3 > 0)) {
            throw new a("Zone offset minutes and seconds must have the same sign");
        }
        if (i2 < -59 || i2 > 59) {
            throw new a("Zone offset minutes not in valid range: value " + i2 + " is not in the range -59 to 59");
        }
        if (i3 < -59 || i3 > 59) {
            throw new a("Zone offset seconds not in valid range: value " + i3 + " is not in the range -59 to 59");
        }
        if (Math.abs(i) == 18 && (i2 | i3) != 0) {
            throw new a("Zone offset not in valid range: -18:00 to +18:00");
        }
        return J((i2 * 60) + (i * 3600) + i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ZoneOffset J(int i) {
        if (i < -64800 || i > 64800) {
            throw new a("Zone offset not in valid range: -18:00 to +18:00");
        }
        if (i % AVMDLDataLoader.KeyIsMaxIpCountEachDomain != 0) {
            return new ZoneOffset(i);
        }
        Integer valueOf = Integer.valueOf(i);
        ConcurrentHashMap concurrentHashMap = f20447d;
        ZoneOffset zoneOffset = (ZoneOffset) concurrentHashMap.get(valueOf);
        if (zoneOffset != null) {
            return zoneOffset;
        }
        concurrentHashMap.putIfAbsent(valueOf, new ZoneOffset(i));
        ZoneOffset zoneOffset2 = (ZoneOffset) concurrentHashMap.get(valueOf);
        f20448e.putIfAbsent(zoneOffset2.f20452c, zoneOffset2);
        return zoneOffset2;
    }

    public static int K(CharSequence charSequence, int i, boolean z) {
        if (z) {
            String str = (String) charSequence;
            if (str.charAt(i - 1) != ':') {
                throw new a("Invalid ID for ZoneOffset, colon not found when expected: " + ((Object) str));
            }
        }
        String str2 = (String) charSequence;
        char charAt = str2.charAt(i);
        char charAt2 = str2.charAt(i + 1);
        if (charAt >= '0' && charAt <= '9' && charAt2 >= '0' && charAt2 <= '9') {
            return (charAt2 - '0') + ((charAt - '0') * 10);
        }
        throw new a("Invalid ID for ZoneOffset, non numeric characters found: " + ((Object) str2));
    }

    public static ZoneOffset L(DataInput dataInput) {
        byte readByte = dataInput.readByte();
        return readByte == Byte.MAX_VALUE ? J(dataInput.readInt()) : J(readByte * 900);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 8, this);
    }

    @Override // j$.time.ZoneId
    public final j$.time.zone.f C() {
        Objects.requireNonNull(this, "offset");
        return new j$.time.zone.f(this);
    }

    @Override // j$.time.ZoneId
    public final void G(DataOutput dataOutput) {
        dataOutput.writeByte(8);
        M(dataOutput);
    }

    public final void M(DataOutput dataOutput) {
        int i = this.f20451b;
        int i2 = i % AVMDLDataLoader.KeyIsMaxIpCountEachDomain == 0 ? i / AVMDLDataLoader.KeyIsMaxIpCountEachDomain : TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(i);
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(ZoneOffset zoneOffset) {
        return zoneOffset.f20451b - this.f20451b;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.OFFSET_SECONDS : qVar != null && qVar.i(this);
    }

    @Override // j$.time.ZoneId
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ZoneOffset) && this.f20451b == ((ZoneOffset) obj).f20451b;
    }

    @Override // j$.time.ZoneId
    public final String h() {
        return this.f20452c;
    }

    @Override // j$.time.ZoneId
    public final int hashCode() {
        return this.f20451b;
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return this.f20451b;
        }
        if (b.b(qVar)) {
            throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
        }
        return j$.time.temporal.r.d(this, qVar).a(w(qVar), qVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        return j$.time.temporal.r.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final Object l(j$.time.format.a aVar) {
        return (aVar == j$.time.temporal.r.f20623d || aVar == j$.time.temporal.r.f20624e) ? this : j$.time.temporal.r.c(this, aVar);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m o(j$.time.temporal.m mVar) {
        return mVar.c(this.f20451b, j$.time.temporal.a.OFFSET_SECONDS);
    }

    @Override // j$.time.ZoneId
    public final String toString() {
        return this.f20452c;
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return this.f20451b;
        }
        if (qVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.t(b.a("Unsupported field: ", qVar));
        }
        return qVar.l(this);
    }
}
