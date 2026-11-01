package j$.time.format;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/* loaded from: classes2.dex */
public final class g extends i {

    /* renamed from: g, reason: collision with root package name */
    public final boolean f20531g;

    public g(j$.time.temporal.q qVar, int i, int i2, boolean z, int i3) {
        super(qVar, i, i2, u.NOT_NEGATIVE, i3);
        this.f20531g = z;
    }

    @Override // j$.time.format.i
    public final i a() {
        if (this.f20538e == -1) {
            return this;
        }
        return new g(this.f20534a, this.f20535b, this.f20536c, this.f20531g, -1);
    }

    @Override // j$.time.format.i
    public final i b(int i) {
        return new g(this.f20534a, this.f20535b, this.f20536c, this.f20531g, this.f20538e + i);
    }

    @Override // j$.time.format.i, j$.time.format.f
    public final boolean i(p pVar, StringBuilder sb) {
        j$.time.temporal.q qVar = this.f20534a;
        Long a2 = pVar.a(qVar);
        if (a2 == null) {
            return false;
        }
        s sVar = pVar.f20561b.f20522c;
        long longValue = a2.longValue();
        j$.time.temporal.u k = qVar.k();
        k.b(longValue, qVar);
        BigDecimal valueOf = BigDecimal.valueOf(k.f20627a);
        BigDecimal add = BigDecimal.valueOf(k.f20630d).subtract(valueOf).add(BigDecimal.ONE);
        BigDecimal subtract = BigDecimal.valueOf(longValue).subtract(valueOf);
        RoundingMode roundingMode = RoundingMode.FLOOR;
        BigDecimal divide = subtract.divide(add, 9, roundingMode);
        BigDecimal bigDecimal = BigDecimal.ZERO;
        if (divide.compareTo(bigDecimal) != 0) {
            bigDecimal = divide.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : divide.stripTrailingZeros();
        }
        int scale = bigDecimal.scale();
        boolean z = this.f20531g;
        int i = this.f20535b;
        if (scale != 0) {
            String substring = bigDecimal.setScale(Math.min(Math.max(bigDecimal.scale(), i), this.f20536c), roundingMode).toPlainString().substring(2);
            sVar.getClass();
            if (z) {
                sb.append('.');
            }
            sb.append(substring);
            return true;
        }
        if (i > 0) {
            if (z) {
                sVar.getClass();
                sb.append('.');
            }
            for (int i2 = 0; i2 < i; i2++) {
                sVar.getClass();
                sb.append('0');
            }
        }
        return true;
    }

    @Override // j$.time.format.i
    public final String toString() {
        return "Fraction(" + this.f20534a + "," + this.f20535b + "," + this.f20536c + (this.f20531g ? ",DecimalPoint" : "") + ")";
    }
}
