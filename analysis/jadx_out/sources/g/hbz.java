package g;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class hbz implements gey {

    /* renamed from: a, reason: collision with root package name */
    public final Double f19206a;

    public hbz(Double d2) {
        if (d2 == null) {
            this.f19206a = Double.valueOf(Double.NaN);
        } else {
            this.f19206a = d2;
        }
    }

    @Override // g.gey
    public final gey _ag(String str, dpa dpaVar, ArrayList arrayList) {
        if ("toString".equals(str)) {
            return new bsa(zzi());
        }
        throw new IllegalArgumentException(zzi() + "." + str + " is not a function.");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof hbz) {
            return this.f19206a.equals(((hbz) obj).f19206a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f19206a.hashCode();
    }

    public final String toString() {
        return zzi();
    }

    @Override // g.gey
    public final gey zzd() {
        return new hbz(this.f19206a);
    }

    @Override // g.gey
    public final Boolean zzg() {
        Double d2 = this.f19206a;
        boolean z = false;
        if (!Double.isNaN(d2.doubleValue()) && d2.doubleValue() != 0.0d) {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    @Override // g.gey
    public final Double zzh() {
        return this.f19206a;
    }

    @Override // g.gey
    public final String zzi() {
        Double d2 = this.f19206a;
        if (Double.isNaN(d2.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(d2.doubleValue())) {
            return d2.doubleValue() > 0.0d ? "Infinity" : "-Infinity";
        }
        BigDecimal valueOf = BigDecimal.valueOf(d2.doubleValue());
        BigDecimal bigDecimal = valueOf.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : valueOf.stripTrailingZeros();
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        decimalFormat.setMinimumFractionDigits((bigDecimal.scale() > 0 ? bigDecimal.precision() : bigDecimal.scale()) - 1);
        String format = decimalFormat.format(bigDecimal);
        int indexOf = format.indexOf("E");
        if (indexOf <= 0) {
            return format;
        }
        int parseInt = Integer.parseInt(format.substring(indexOf + 1));
        return ((parseInt >= 0 || parseInt <= -7) && (parseInt < 0 || parseInt >= 21)) ? format.replace("E-", "e-").replace("E", "e+") : bigDecimal.toPlainString();
    }

    @Override // g.gey
    public final Iterator zzl() {
        return null;
    }
}
