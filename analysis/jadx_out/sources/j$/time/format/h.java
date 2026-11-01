package j$.time.format;

import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;

/* loaded from: classes2.dex */
public final class h implements f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20532a;

    public /* synthetic */ h(int i) {
        this.f20532a = i;
    }

    @Override // j$.time.format.f
    public final boolean i(p pVar, StringBuilder sb) {
        switch (this.f20532a) {
            case 0:
                Long a2 = pVar.a(j$.time.temporal.a.INSTANT_SECONDS);
                j$.time.temporal.n nVar = pVar.f20560a;
                j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_SECOND;
                Long valueOf = nVar.e(aVar) ? Long.valueOf(nVar.w(aVar)) : null;
                int i = 0;
                if (a2 == null) {
                    return false;
                }
                long longValue = a2.longValue();
                int a3 = aVar.f20602b.a(valueOf != null ? valueOf.longValue() : 0L, aVar);
                if (longValue >= -62167219200L) {
                    long j = longValue - 253402300800L;
                    long O = j$.com.android.tools.r8.a.O(j, 315569520000L) + 1;
                    LocalDateTime G = LocalDateTime.G(j$.com.android.tools.r8.a.N(j, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
                    if (O > 0) {
                        sb.append('+');
                        sb.append(O);
                    }
                    sb.append(G);
                    if (G.f20438b.f20576c == 0) {
                        sb.append(":00");
                    }
                } else {
                    long j2 = longValue + 62167219200L;
                    long j3 = j2 / 315569520000L;
                    long j4 = j2 % 315569520000L;
                    LocalDateTime G2 = LocalDateTime.G(j4 - 62167219200L, 0, ZoneOffset.UTC);
                    int length = sb.length();
                    sb.append(G2);
                    if (G2.f20438b.f20576c == 0) {
                        sb.append(":00");
                    }
                    if (j3 < 0) {
                        if (G2.f20437a.f20432a == -10000) {
                            sb.replace(length, length + 2, Long.toString(j3 - 1));
                        } else if (j4 == 0) {
                            sb.insert(length, j3);
                        } else {
                            sb.insert(length + 1, Math.abs(j3));
                        }
                    }
                }
                if (a3 > 0) {
                    sb.append('.');
                    int i2 = 100000000;
                    while (true) {
                        if (a3 > 0 || i % 3 != 0 || i < -2) {
                            int i3 = a3 / i2;
                            sb.append((char) (i3 + 48));
                            a3 -= i3 * i2;
                            i2 /= 10;
                            i++;
                        }
                    }
                }
                sb.append('Z');
                return true;
            default:
                a aVar2 = n.f20550f;
                j$.time.temporal.n nVar2 = pVar.f20560a;
                Object l = nVar2.l(aVar2);
                if (l == null && pVar.f20562c == 0) {
                    throw new j$.time.a("Unable to extract " + aVar2 + " from temporal " + nVar2);
                }
                ZoneId zoneId = (ZoneId) l;
                if (zoneId == null) {
                    return false;
                }
                sb.append(zoneId.h());
                return true;
        }
    }

    public final String toString() {
        switch (this.f20532a) {
            case 0:
                return "Instant()";
            default:
                return "ZoneRegionId()";
        }
    }
}
