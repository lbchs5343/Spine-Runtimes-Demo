package com.google.android.gms.internal.ads;

import g.dmd;
import g.eub;
import g.gli;
import g.gxd;
import g.hj;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class i {
    public static boolean a(int i, Object obj, hj hjVar) {
        zzgxv zzgxvVar = (zzgxv) hjVar.f19371b;
        int i2 = hjVar.f19373d;
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            hjVar.v(0);
            ((zzhbo) obj).h(i3 << 3, Long.valueOf(zzgxvVar.zzo()));
            return true;
        }
        if (i4 == 1) {
            hjVar.v(1);
            ((zzhbo) obj).h((i3 << 3) | 1, Long.valueOf(zzgxvVar.zzn()));
            return true;
        }
        if (i4 == 2) {
            ((zzhbo) obj).h((i3 << 3) | 2, hjVar.t());
            return true;
        }
        if (i4 != 3) {
            if (i4 == 4) {
                return false;
            }
            if (i4 != 5) {
                throw new zzgzl("Protocol message tag had invalid wire type.");
            }
            hjVar.v(5);
            ((zzhbo) obj).h(5 | (i3 << 3), Integer.valueOf(zzgxvVar.zzf()));
            return true;
        }
        zzhbo g2 = zzhbo.g();
        int i5 = i3 << 3;
        int i6 = i + 1;
        if (i6 >= 100) {
            throw new zzgzm("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        while (hjVar.s() != Integer.MAX_VALUE && a(i6, g2, hjVar)) {
        }
        if ((i5 | 4) != hjVar.f19373d) {
            throw new zzgzm("Protocol message end-group tag did not match expected tag.");
        }
        g2.zzh();
        ((zzhbo) obj).h(i5 | 3, g2);
        return true;
    }

    public static /* bridge */ zzhbo b(Object obj) {
        zzgyx zzgyxVar = (zzgyx) obj;
        zzhbo zzhboVar = zzgyxVar.zzt;
        if (zzhboVar != zzhbo.zzc()) {
            return zzhboVar;
        }
        zzhbo g2 = zzhbo.g();
        zzgyxVar.zzt = g2;
        return g2;
    }

    public static void c(Object obj) {
        ((zzgyt) obj).zza.l();
    }

    public static void d(gli gliVar, Map.Entry entry) {
        dmd dmdVar = (dmd) entry.getKey();
        boolean z = dmdVar.f14414a;
        zzhca zzhcaVar = dmdVar.f14417d;
        boolean z2 = dmdVar.f14415b;
        int i = dmdVar.f14416c;
        if (!z) {
            zzhca zzhcaVar2 = zzhca.zza;
            switch (zzhcaVar.ordinal()) {
                case 0:
                    ((eub) gliVar).f16166a.zzj(i, Double.doubleToRawLongBits(((Double) entry.getValue()).doubleValue()));
                    break;
                case 1:
                    ((eub) gliVar).f16166a.zzh(i, Float.floatToRawIntBits(((Float) entry.getValue()).floatValue()));
                    break;
                case 2:
                    ((eub) gliVar).f16166a.zzv(i, ((Long) entry.getValue()).longValue());
                    break;
                case 3:
                    ((eub) gliVar).f16166a.zzv(i, ((Long) entry.getValue()).longValue());
                    break;
                case 4:
                    ((eub) gliVar).f16166a.zzl(i, ((Integer) entry.getValue()).intValue());
                    break;
                case 5:
                    ((eub) gliVar).f16166a.zzj(i, ((Long) entry.getValue()).longValue());
                    break;
                case 6:
                    ((eub) gliVar).f16166a.zzh(i, ((Integer) entry.getValue()).intValue());
                    break;
                case 7:
                    ((eub) gliVar).f16166a.zzM(i, ((Boolean) entry.getValue()).booleanValue());
                    break;
                case 8:
                    ((eub) gliVar).f16166a.zzq(i, (String) entry.getValue());
                    break;
                case 9:
                    ((eub) gliVar).b(i, entry.getValue(), gxd.f18927a.d(entry.getValue().getClass()));
                    break;
                case 10:
                    Object value = entry.getValue();
                    g.ah d2 = gxd.f18927a.d(entry.getValue().getClass());
                    eub eubVar = (eub) gliVar;
                    eubVar.getClass();
                    eubVar.f16166a.e(i, (zzhai) value, d2);
                    break;
                case 11:
                    ((eub) gliVar).f16166a.zzN(i, (zzgxp) entry.getValue());
                    break;
                case 12:
                    ((eub) gliVar).f16166a.zzt(i, ((Integer) entry.getValue()).intValue());
                    break;
                case 13:
                    ((eub) gliVar).f16166a.zzl(i, ((Integer) entry.getValue()).intValue());
                    break;
                case 14:
                    ((eub) gliVar).f16166a.zzh(i, ((Integer) entry.getValue()).intValue());
                    break;
                case 15:
                    ((eub) gliVar).f16166a.zzj(i, ((Long) entry.getValue()).longValue());
                    break;
                case 16:
                    int intValue = ((Integer) entry.getValue()).intValue();
                    zzgyc zzgycVar = ((eub) gliVar).f16166a;
                    zzgycVar.zzt(i, (intValue >> 31) ^ (intValue + intValue));
                    break;
                case 17:
                    long longValue = ((Long) entry.getValue()).longValue();
                    zzgyc zzgycVar2 = ((eub) gliVar).f16166a;
                    zzgycVar2.zzv(i, (longValue >> 63) ^ (longValue + longValue));
                    break;
            }
        }
        zzhca zzhcaVar3 = zzhca.zza;
        int ordinal = zzhcaVar.ordinal();
        int i2 = 0;
        switch (ordinal) {
            case 0:
                e.ab(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 1:
                e.i(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 2:
                e.l(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 3:
                e.c(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 4:
                e.n(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 5:
                e.y(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 6:
                e.b(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 7:
                e.o(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 8:
                e.q(i, (List) entry.getValue(), gliVar);
                break;
            case 9:
                List list = (List) entry.getValue();
                if (list != null && !list.isEmpty()) {
                    List list2 = (List) entry.getValue();
                    g.ah d3 = gxd.f18927a.d(list.get(0).getClass());
                    i iVar = e.f3952a;
                    if (list2 != null && !list2.isEmpty()) {
                        while (i2 < list2.size()) {
                            ((eub) gliVar).b(i, list2.get(i2), d3);
                            i2++;
                        }
                        break;
                    }
                }
                break;
            case 10:
                List list3 = (List) entry.getValue();
                if (list3 != null && !list3.isEmpty()) {
                    List list4 = (List) entry.getValue();
                    g.ah d4 = gxd.f18927a.d(list3.get(0).getClass());
                    i iVar2 = e.f3952a;
                    if (list4 != null && !list4.isEmpty()) {
                        while (i2 < list4.size()) {
                            Object obj = list4.get(i2);
                            eub eubVar2 = (eub) gliVar;
                            eubVar2.getClass();
                            eubVar2.f16166a.e(i, (zzhai) obj, d4);
                            i2++;
                        }
                        break;
                    }
                }
                break;
            case 11:
                e.p(i, (List) entry.getValue(), gliVar);
                break;
            case 12:
                e.ac(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 13:
                e.n(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 14:
                e.v(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 15:
                e.aa(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 16:
                e.h(i, (List) entry.getValue(), gliVar, z2);
                break;
            case 17:
                e.k(i, (List) entry.getValue(), gliVar, z2);
                break;
        }
    }
}
