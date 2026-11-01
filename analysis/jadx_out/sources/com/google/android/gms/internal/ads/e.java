package com.google.android.gms.internal.ads;

import g.awf;
import g.ayh;
import g.dub;
import g.eub;
import g.gli;
import g.gxd;
import g.uo;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final i f3952a;

    static {
        gxd gxdVar = gxd.f18927a;
        f3952a = new i();
    }

    public static void aa(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!(list instanceof ayh)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzgycVar.zzj(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzgycVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            zzgycVar.zzu(i3);
            while (i2 < list.size()) {
                zzgycVar.zzk(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        ayh ayhVar = (ayh) list;
        if (!z) {
            while (i2 < ayhVar.f11055d) {
                zzgycVar.zzj(i, ayhVar.zza(i2));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < ayhVar.f11055d; i6++) {
            ayhVar.zza(i6);
            i5 += 8;
        }
        zzgycVar.zzu(i5);
        while (i2 < ayhVar.f11055d) {
            zzgycVar.zzk(ayhVar.zza(i2));
            i2++;
        }
    }

    public static void ab(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                zzgycVar.zzj(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            i3 += 8;
        }
        zzgycVar.zzu(i3);
        while (i2 < list.size()) {
            zzgycVar.zzk(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    public static void ac(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!(list instanceof uo)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzgycVar.zzt(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzgycVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgyc.zzD(((Integer) list.get(i4)).intValue());
            }
            zzgycVar.zzu(i3);
            while (i2 < list.size()) {
                zzgycVar.zzu(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        uo uoVar = (uo) list;
        if (!z) {
            while (i2 < uoVar.f20110d) {
                zzgycVar.zzt(i, uoVar.zzd(i2));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < uoVar.f20110d; i6++) {
            i5 += zzgyc.zzD(uoVar.zzd(i6));
        }
        zzgycVar.zzu(i5);
        while (i2 < uoVar.f20110d) {
            zzgycVar.zzu(uoVar.zzd(i2));
            i2++;
        }
    }

    public static int ad(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof uo)) {
            int i2 = 0;
            while (i < size) {
                i2 += zzgyc.zzD(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        uo uoVar = (uo) list;
        int i3 = 0;
        while (i < size) {
            i3 += zzgyc.zzD(uoVar.zzd(i));
            i++;
        }
        return i3;
    }

    public static void b(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!(list instanceof uo)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzgycVar.zzh(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzgycVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            zzgycVar.zzu(i3);
            while (i2 < list.size()) {
                zzgycVar.zzi(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        uo uoVar = (uo) list;
        if (!z) {
            while (i2 < uoVar.f20110d) {
                zzgycVar.zzh(i, uoVar.zzd(i2));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < uoVar.f20110d; i6++) {
            uoVar.zzd(i6);
            i5 += 4;
        }
        zzgycVar.zzu(i5);
        while (i2 < uoVar.f20110d) {
            zzgycVar.zzi(uoVar.zzd(i2));
            i2++;
        }
    }

    public static void c(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!(list instanceof ayh)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzgycVar.zzv(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzgycVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgyc.zzE(((Long) list.get(i4)).longValue());
            }
            zzgycVar.zzu(i3);
            while (i2 < list.size()) {
                zzgycVar.zzw(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        ayh ayhVar = (ayh) list;
        if (!z) {
            while (i2 < ayhVar.f11055d) {
                zzgycVar.zzv(i, ayhVar.zza(i2));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < ayhVar.f11055d; i6++) {
            i5 += zzgyc.zzE(ayhVar.zza(i6));
        }
        zzgycVar.zzu(i5);
        while (i2 < ayhVar.f11055d) {
            zzgycVar.zzw(ayhVar.zza(i2));
            i2++;
        }
    }

    public static int d(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgyc.zzD(i << 3) + 4) * size;
    }

    public static int e(int i, Object obj, g.ah ahVar) {
        int i2 = i << 3;
        if (obj instanceof zzgzt) {
            int zzD = zzgyc.zzD(i2);
            int zza = ((zzgzt) obj).zza();
            return dub.f(zza, zza, zzD);
        }
        int zzD2 = zzgyc.zzD(i2);
        int bl = ((zzgwy) ((zzhai) obj)).bl(ahVar);
        return dub.f(bl, bl, zzD2);
    }

    public static void f(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!(list instanceof uo)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzgycVar.zzl(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzgycVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgyc.zzE(((Integer) list.get(i4)).intValue());
            }
            zzgycVar.zzu(i3);
            while (i2 < list.size()) {
                zzgycVar.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        uo uoVar = (uo) list;
        if (!z) {
            while (i2 < uoVar.f20110d) {
                zzgycVar.zzl(i, uoVar.zzd(i2));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < uoVar.f20110d; i6++) {
            i5 += zzgyc.zzE(uoVar.zzd(i6));
        }
        zzgycVar.zzu(i5);
        while (i2 < uoVar.f20110d) {
            zzgycVar.zzm(uoVar.zzd(i2));
            i2++;
        }
    }

    public static int g(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof ayh)) {
            int i2 = 0;
            while (i < size) {
                i2 += zzgyc.zzE(((Long) list.get(i)).longValue());
                i++;
            }
            return i2;
        }
        ayh ayhVar = (ayh) list;
        int i3 = 0;
        while (i < size) {
            i3 += zzgyc.zzE(ayhVar.zza(i));
            i++;
        }
        return i3;
    }

    public static void h(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!(list instanceof uo)) {
            if (!z) {
                while (i2 < list.size()) {
                    int intValue = ((Integer) list.get(i2)).intValue();
                    zzgycVar.zzt(i, (intValue >> 31) ^ (intValue + intValue));
                    i2++;
                }
                return;
            }
            zzgycVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                int intValue2 = ((Integer) list.get(i4)).intValue();
                i3 += zzgyc.zzD((intValue2 >> 31) ^ (intValue2 + intValue2));
            }
            zzgycVar.zzu(i3);
            while (i2 < list.size()) {
                int intValue3 = ((Integer) list.get(i2)).intValue();
                zzgycVar.zzu((intValue3 >> 31) ^ (intValue3 + intValue3));
                i2++;
            }
            return;
        }
        uo uoVar = (uo) list;
        if (!z) {
            while (i2 < uoVar.f20110d) {
                int zzd = uoVar.zzd(i2);
                zzgycVar.zzt(i, (zzd >> 31) ^ (zzd + zzd));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < uoVar.f20110d; i6++) {
            int zzd2 = uoVar.zzd(i6);
            i5 += zzgyc.zzD((zzd2 >> 31) ^ (zzd2 + zzd2));
        }
        zzgycVar.zzu(i5);
        while (i2 < uoVar.f20110d) {
            int zzd3 = uoVar.zzd(i2);
            zzgycVar.zzu((zzd3 >> 31) ^ (zzd3 + zzd3));
            i2++;
        }
    }

    public static void i(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                zzgycVar.zzh(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            i3 += 4;
        }
        zzgycVar.zzu(i3);
        while (i2 < list.size()) {
            zzgycVar.zzi(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    public static int j(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgyc.zzD(i << 3) + 8) * size;
    }

    public static void k(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!(list instanceof ayh)) {
            if (!z) {
                while (i2 < list.size()) {
                    long longValue = ((Long) list.get(i2)).longValue();
                    zzgycVar.zzv(i, (longValue >> 63) ^ (longValue + longValue));
                    i2++;
                }
                return;
            }
            zzgycVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                long longValue2 = ((Long) list.get(i4)).longValue();
                i3 += zzgyc.zzE((longValue2 >> 63) ^ (longValue2 + longValue2));
            }
            zzgycVar.zzu(i3);
            while (i2 < list.size()) {
                long longValue3 = ((Long) list.get(i2)).longValue();
                zzgycVar.zzw((longValue3 >> 63) ^ (longValue3 + longValue3));
                i2++;
            }
            return;
        }
        ayh ayhVar = (ayh) list;
        if (!z) {
            while (i2 < ayhVar.f11055d) {
                long zza = ayhVar.zza(i2);
                zzgycVar.zzv(i, (zza >> 63) ^ (zza + zza));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < ayhVar.f11055d; i6++) {
            long zza2 = ayhVar.zza(i6);
            i5 += zzgyc.zzE((zza2 >> 63) ^ (zza2 + zza2));
        }
        zzgycVar.zzu(i5);
        while (i2 < ayhVar.f11055d) {
            long zza3 = ayhVar.zza(i2);
            zzgycVar.zzw((zza3 >> 63) ^ (zza3 + zza3));
            i2++;
        }
    }

    public static void l(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!(list instanceof ayh)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzgycVar.zzv(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzgycVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgyc.zzE(((Long) list.get(i4)).longValue());
            }
            zzgycVar.zzu(i3);
            while (i2 < list.size()) {
                zzgycVar.zzw(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        ayh ayhVar = (ayh) list;
        if (!z) {
            while (i2 < ayhVar.f11055d) {
                zzgycVar.zzv(i, ayhVar.zza(i2));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < ayhVar.f11055d; i6++) {
            i5 += zzgyc.zzE(ayhVar.zza(i6));
        }
        zzgycVar.zzu(i5);
        while (i2 < ayhVar.f11055d) {
            zzgycVar.zzw(ayhVar.zza(i2));
            i2++;
        }
    }

    public static void m(Object obj, Object obj2) {
        zzgyx zzgyxVar = (zzgyx) obj;
        zzhbo zzhboVar = zzgyxVar.zzt;
        zzhbo zzhboVar2 = ((zzgyx) obj2).zzt;
        if (!zzhbo.zzc().equals(zzhboVar2)) {
            if (zzhbo.zzc().equals(zzhboVar)) {
                int i = zzhboVar.f8702d + zzhboVar2.f8702d;
                int[] copyOf = Arrays.copyOf(zzhboVar.f8703e, i);
                System.arraycopy(zzhboVar2.f8703e, 0, copyOf, zzhboVar.f8702d, zzhboVar2.f8702d);
                Object[] copyOf2 = Arrays.copyOf(zzhboVar.f8704f, i);
                System.arraycopy(zzhboVar2.f8704f, 0, copyOf2, zzhboVar.f8702d, zzhboVar2.f8702d);
                zzhboVar = new zzhbo(i, copyOf, copyOf2, true);
            } else {
                zzhboVar.getClass();
                if (!zzhboVar2.equals(zzhbo.f8699a)) {
                    if (!zzhboVar.f8701c) {
                        throw new UnsupportedOperationException();
                    }
                    int i2 = zzhboVar.f8702d + zzhboVar2.f8702d;
                    zzhboVar.i(i2);
                    System.arraycopy(zzhboVar2.f8703e, 0, zzhboVar.f8703e, zzhboVar.f8702d, zzhboVar2.f8702d);
                    System.arraycopy(zzhboVar2.f8704f, 0, zzhboVar.f8704f, zzhboVar.f8702d, zzhboVar2.f8702d);
                    zzhboVar.f8702d = i2;
                }
            }
        }
        zzgyxVar.zzt = zzhboVar;
    }

    public static void n(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!(list instanceof uo)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzgycVar.zzl(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzgycVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgyc.zzE(((Integer) list.get(i4)).intValue());
            }
            zzgycVar.zzu(i3);
            while (i2 < list.size()) {
                zzgycVar.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        uo uoVar = (uo) list;
        if (!z) {
            while (i2 < uoVar.f20110d) {
                zzgycVar.zzl(i, uoVar.zzd(i2));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < uoVar.f20110d; i6++) {
            i5 += zzgyc.zzE(uoVar.zzd(i6));
        }
        zzgycVar.zzu(i5);
        while (i2 < uoVar.f20110d) {
            zzgycVar.zzm(uoVar.zzd(i2));
            i2++;
        }
    }

    public static void o(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                zzgycVar.zzM(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            i3++;
        }
        zzgycVar.zzu(i3);
        while (i2 < list.size()) {
            zzgycVar.zzL(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void p(int i, List list, gli gliVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        eub eubVar = (eub) gliVar;
        eubVar.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            eubVar.f16166a.zzN(i, (zzgxp) list.get(i2));
        }
    }

    public static void q(int i, List list, gli gliVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!(list instanceof zzgzu)) {
            while (i2 < list.size()) {
                zzgycVar.zzq(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        zzgzu zzgzuVar = (zzgzu) list;
        while (i2 < list.size()) {
            Object zzc = zzgzuVar.zzc();
            if (zzc instanceof String) {
                zzgycVar.zzq(i, (String) zzc);
            } else {
                zzgycVar.zzN(i, (zzgxp) zzc);
            }
            i2++;
        }
    }

    public static int r(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof ayh)) {
            int i2 = 0;
            while (i < size) {
                i2 += zzgyc.zzE(((Long) list.get(i)).longValue());
                i++;
            }
            return i2;
        }
        ayh ayhVar = (ayh) list;
        int i3 = 0;
        while (i < size) {
            i3 += zzgyc.zzE(ayhVar.zza(i));
            i++;
        }
        return i3;
    }

    public static int s(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof uo)) {
            int i2 = 0;
            while (i < size) {
                int intValue = ((Integer) list.get(i)).intValue();
                i2 += zzgyc.zzD((intValue >> 31) ^ (intValue + intValue));
                i++;
            }
            return i2;
        }
        uo uoVar = (uo) list;
        int i3 = 0;
        while (i < size) {
            int zzd = uoVar.zzd(i);
            i3 += zzgyc.zzD((zzd >> 31) ^ (zzd + zzd));
            i++;
        }
        return i3;
    }

    public static int t(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof uo)) {
            int i2 = 0;
            while (i < size) {
                i2 += zzgyc.zzE(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        uo uoVar = (uo) list;
        int i3 = 0;
        while (i < size) {
            i3 += zzgyc.zzE(uoVar.zzd(i));
            i++;
        }
        return i3;
    }

    public static boolean u(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void v(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!(list instanceof uo)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzgycVar.zzh(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            zzgycVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            zzgycVar.zzu(i3);
            while (i2 < list.size()) {
                zzgycVar.zzi(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        uo uoVar = (uo) list;
        if (!z) {
            while (i2 < uoVar.f20110d) {
                zzgycVar.zzh(i, uoVar.zzd(i2));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < uoVar.f20110d; i6++) {
            uoVar.zzd(i6);
            i5 += 4;
        }
        zzgycVar.zzu(i5);
        while (i2 < uoVar.f20110d) {
            zzgycVar.zzi(uoVar.zzd(i2));
            i2++;
        }
    }

    public static int w(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof uo)) {
            int i2 = 0;
            while (i < size) {
                i2 += zzgyc.zzE(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        uo uoVar = (uo) list;
        int i3 = 0;
        while (i < size) {
            i3 += zzgyc.zzE(uoVar.zzd(i));
            i++;
        }
        return i3;
    }

    public static int x(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof ayh)) {
            int i2 = 0;
            while (i < size) {
                long longValue = ((Long) list.get(i)).longValue();
                i2 += zzgyc.zzE((longValue >> 63) ^ (longValue + longValue));
                i++;
            }
            return i2;
        }
        ayh ayhVar = (ayh) list;
        int i3 = 0;
        while (i < size) {
            long zza = ayhVar.zza(i);
            i3 += zzgyc.zzE((zza >> 63) ^ (zza + zza));
            i++;
        }
        return i3;
    }

    public static void y(int i, List list, gli gliVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgyc zzgycVar = ((eub) gliVar).f16166a;
        int i2 = 0;
        if (!(list instanceof ayh)) {
            if (!z) {
                while (i2 < list.size()) {
                    zzgycVar.zzj(i, ((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            zzgycVar.zzs(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            zzgycVar.zzu(i3);
            while (i2 < list.size()) {
                zzgycVar.zzk(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        ayh ayhVar = (ayh) list;
        if (!z) {
            while (i2 < ayhVar.f11055d) {
                zzgycVar.zzj(i, ayhVar.zza(i2));
                i2++;
            }
            return;
        }
        zzgycVar.zzs(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < ayhVar.f11055d; i6++) {
            ayhVar.zza(i6);
            i5 += 8;
        }
        zzgycVar.zzu(i5);
        while (i2 < ayhVar.f11055d) {
            zzgycVar.zzk(ayhVar.zza(i2));
            i2++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object z(Object obj, int i, zzgzj zzgzjVar, zzgzd zzgzdVar, Object obj2, i iVar) {
        if (zzgzdVar == null) {
            return obj2;
        }
        if (!awf.n(zzgzjVar)) {
            Iterator<E> it = zzgzjVar.iterator();
            while (it.hasNext()) {
                int intValue = ((Integer) it.next()).intValue();
                if (!zzgzdVar.zza(intValue)) {
                    if (obj2 == null) {
                        iVar.getClass();
                        obj2 = i.b(obj);
                    }
                    iVar.getClass();
                    ((zzhbo) obj2).h(i << 3, Long.valueOf(intValue));
                    it.remove();
                }
            }
            return obj2;
        }
        int size = zzgzjVar.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Integer num = (Integer) zzgzjVar.get(i3);
            int intValue2 = num.intValue();
            if (zzgzdVar.zza(intValue2)) {
                if (i3 != i2) {
                    zzgzjVar.set(i2, num);
                }
                i2++;
            } else {
                if (obj2 == null) {
                    iVar.getClass();
                    obj2 = i.b(obj);
                }
                iVar.getClass();
                ((zzhbo) obj2).h(i << 3, Long.valueOf(intValue2));
            }
        }
        if (i2 != size) {
            zzgzjVar.subList(i2, size).clear();
        }
        return obj2;
    }
}
