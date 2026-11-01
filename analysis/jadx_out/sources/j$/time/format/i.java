package j$.time.format;

import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes2.dex */
public class i implements f {

    /* renamed from: f, reason: collision with root package name */
    public static final long[] f20533f = {0, 10, 100, 1000, ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, 100000, C.MICROS_PER_SECOND, 10000000, 100000000, C.NANOS_PER_SECOND, 10000000000L};

    /* renamed from: a, reason: collision with root package name */
    public final j$.time.temporal.q f20534a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20535b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20536c;

    /* renamed from: d, reason: collision with root package name */
    public final u f20537d;

    /* renamed from: e, reason: collision with root package name */
    public final int f20538e;

    public i(j$.time.temporal.q qVar, int i, int i2, u uVar) {
        this.f20534a = qVar;
        this.f20535b = i;
        this.f20536c = i2;
        this.f20537d = uVar;
        this.f20538e = 0;
    }

    public i(j$.time.temporal.q qVar, int i, int i2, u uVar, int i3) {
        this.f20534a = qVar;
        this.f20535b = i;
        this.f20536c = i2;
        this.f20537d = uVar;
        this.f20538e = i3;
    }

    public i a() {
        if (this.f20538e == -1) {
            return this;
        }
        return new i(this.f20534a, this.f20535b, this.f20536c, this.f20537d, -1);
    }

    public i b(int i) {
        return new i(this.f20534a, this.f20535b, this.f20536c, this.f20537d, this.f20538e + i);
    }

    @Override // j$.time.format.f
    public boolean i(p pVar, StringBuilder sb) {
        j$.time.temporal.q qVar = this.f20534a;
        Long a2 = pVar.a(qVar);
        if (a2 == null) {
            return false;
        }
        long longValue = a2.longValue();
        s sVar = pVar.f20561b.f20522c;
        String l = longValue == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(longValue));
        int length = l.length();
        int i = this.f20536c;
        if (length > i) {
            throw new j$.time.a("Field " + qVar + " cannot be printed as the value " + longValue + " exceeds the maximum print width of " + i);
        }
        sVar.getClass();
        int i2 = this.f20535b;
        u uVar = this.f20537d;
        if (longValue >= 0) {
            int i3 = c.f20527a[uVar.ordinal()];
            if (i3 != 1) {
                if (i3 == 2) {
                    sb.append('+');
                }
            } else if (i2 < 19 && longValue >= f20533f[i2]) {
                sb.append('+');
            }
        } else {
            int i4 = c.f20527a[uVar.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                sb.append('-');
            } else if (i4 == 4) {
                throw new j$.time.a("Field " + qVar + " cannot be printed as the value " + longValue + " cannot be negative according to the SignStyle");
            }
        }
        for (int i5 = 0; i5 < i2 - l.length(); i5++) {
            sb.append('0');
        }
        sb.append(l);
        return true;
    }

    public String toString() {
        int i = this.f20536c;
        j$.time.temporal.q qVar = this.f20534a;
        u uVar = this.f20537d;
        int i2 = this.f20535b;
        if (i2 == 1 && i == 19 && uVar == u.NORMAL) {
            return "Value(" + qVar + ")";
        }
        if (i2 == i && uVar == u.NOT_NEGATIVE) {
            return "Value(" + qVar + "," + i2 + ")";
        }
        return "Value(" + qVar + "," + i2 + "," + i + "," + uVar + ")";
    }
}
