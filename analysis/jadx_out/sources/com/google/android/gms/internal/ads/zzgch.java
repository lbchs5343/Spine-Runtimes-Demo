package com.google.android.gms.internal.ads;

import g.aky;
import g.cjj;
import g.dzm;
import java.math.RoundingMode;

/* loaded from: classes3.dex */
public final class zzgch {
    static {
        Math.log(2.0d);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zza(double d2, RoundingMode roundingMode) {
        boolean zzd;
        zzfwq.zzf(d2 > 0.0d && aky.ak(d2), "x must be positive and finite");
        int exponent = Math.getExponent(d2);
        if (Math.getExponent(d2) < -1022) {
            return zza(d2 * 4.503599627370496E15d, roundingMode) - 52;
        }
        switch (cjj.f12982a[roundingMode.ordinal()]) {
            case 1:
                dzm.al(zzd(d2));
                return exponent;
            case 2:
                return exponent;
            case 3:
                r2 = !zzd(d2);
                return !r2 ? exponent + 1 : exponent;
            case 4:
                r2 = exponent < 0;
                zzd = zzd(d2);
                r2 &= !zzd;
                if (!r2) {
                }
                break;
            case 5:
                r2 = exponent >= 0;
                zzd = zzd(d2);
                r2 &= !zzd;
                if (!r2) {
                }
                break;
            case 6:
            case 7:
            case 8:
                double longBitsToDouble = Double.longBitsToDouble((Double.doubleToRawLongBits(d2) & 4503599627370495L) | 4607182418800017408L);
                if (longBitsToDouble * longBitsToDouble > 2.0d) {
                    r2 = true;
                }
                if (!r2) {
                }
                break;
            default:
                throw new AssertionError();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
    
        if (java.lang.Math.abs(r9 - r2) == 0.5d) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long zzb(double d2, RoundingMode roundingMode) {
        double d3;
        long j;
        long j2;
        if (!aky.ak(d2)) {
            throw new ArithmeticException("input is infinite or NaN");
        }
        switch (cjj.f12982a[roundingMode.ordinal()]) {
            case 1:
                dzm.al(zzc(d2));
                d3 = d2;
                if (!((-9.223372036854776E18d) - d3 >= 1.0d) || !(d3 < 9.223372036854776E18d)) {
                    return (long) d3;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d2 + " and rounding mode " + String.valueOf(roundingMode));
            case 2:
                if (d2 < 0.0d && !zzc(d2)) {
                    j = (long) d2;
                    j2 = -1;
                    d3 = j + j2;
                    if (!(((-9.223372036854776E18d) - d3 >= 1.0d) & (d3 < 9.223372036854776E18d))) {
                    }
                }
                d3 = d2;
                if (!(((-9.223372036854776E18d) - d3 >= 1.0d) & (d3 < 9.223372036854776E18d))) {
                }
                break;
            case 3:
                if (d2 > 0.0d && !zzc(d2)) {
                    j = (long) d2;
                    j2 = 1;
                    d3 = j + j2;
                    if (!(((-9.223372036854776E18d) - d3 >= 1.0d) & (d3 < 9.223372036854776E18d))) {
                    }
                }
                d3 = d2;
                if (!(((-9.223372036854776E18d) - d3 >= 1.0d) & (d3 < 9.223372036854776E18d))) {
                }
                break;
            case 4:
                d3 = d2;
                if (!(((-9.223372036854776E18d) - d3 >= 1.0d) & (d3 < 9.223372036854776E18d))) {
                }
                break;
            case 5:
                if (!zzc(d2)) {
                    d3 = ((long) d2) + (d2 > 0.0d ? 1 : -1);
                    if (!(((-9.223372036854776E18d) - d3 >= 1.0d) & (d3 < 9.223372036854776E18d))) {
                    }
                }
                d3 = d2;
                if (!(((-9.223372036854776E18d) - d3 >= 1.0d) & (d3 < 9.223372036854776E18d))) {
                }
                break;
            case 6:
                d3 = Math.rint(d2);
                if (!(((-9.223372036854776E18d) - d3 >= 1.0d) & (d3 < 9.223372036854776E18d))) {
                }
                break;
            case 7:
                d3 = Math.rint(d2);
                if (Math.abs(d2 - d3) == 0.5d) {
                    d3 = Math.copySign(0.5d, d2) + d2;
                }
                if (!(((-9.223372036854776E18d) - d3 >= 1.0d) & (d3 < 9.223372036854776E18d))) {
                }
                break;
            case 8:
                d3 = Math.rint(d2);
                break;
            default:
                throw new AssertionError();
        }
    }

    public static boolean zzc(double d2) {
        if (aky.ak(d2)) {
            return d2 == 0.0d || 52 - Long.numberOfTrailingZeros(aky.l(d2)) <= Math.getExponent(d2);
        }
        return false;
    }

    public static boolean zzd(double d2) {
        if (d2 > 0.0d && aky.ak(d2)) {
            long l = aky.l(d2);
            if ((l & ((-1) + l)) == 0) {
                return true;
            }
        }
        return false;
    }
}
