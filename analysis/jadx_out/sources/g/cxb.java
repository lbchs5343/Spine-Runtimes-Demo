package g;

import com.google.android.gms.internal.ads.zzgwz;
import com.google.android.gms.internal.ads.zzgxp;
import com.google.android.gms.internal.ads.zzgyc;
import com.google.android.gms.internal.ads.zzgyl;
import com.google.android.gms.internal.ads.zzgyx;
import com.google.android.gms.internal.ads.zzgzb;
import com.google.android.gms.internal.ads.zzgzk;
import com.google.android.gms.internal.ads.zzgzs;
import com.google.android.gms.internal.ads.zzhai;
import com.google.android.gms.internal.ads.zzhaj;
import com.google.android.gms.internal.ads.zzhca;
import com.google.android.gms.internal.ads.zzhcb;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class cxb {

    /* renamed from: a, reason: collision with root package name */
    public static final cxb f13667a = new cxb(0);

    /* renamed from: b, reason: collision with root package name */
    public final eol f13668b = new eol();

    /* renamed from: c, reason: collision with root package name */
    public boolean f13669c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13670d;

    public cxb() {
    }

    public cxb(int i) {
        l();
        l();
    }

    public static boolean e(Map.Entry entry) {
        boolean z;
        zzgyl zzgylVar = (zzgyl) entry.getKey();
        if (zzgylVar.zzc() == zzhcb.zzi) {
            if (!zzgylVar.zze()) {
                Object value = entry.getValue();
                if (value instanceof zzhaj) {
                    return ((zzhaj) value).zzbw();
                }
                if (value instanceof zzgzs) {
                    return true;
                }
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            List list = (List) entry.getValue();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object obj = list.get(i);
                if (obj instanceof zzhaj) {
                    z = ((zzhaj) obj).zzbw();
                } else {
                    if (!(obj instanceof zzgzs)) {
                        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                    }
                    z = true;
                }
                if (!z) {
                    return false;
                }
            }
        }
        return true;
    }

    public static int f(zzhca zzhcaVar, int i, Object obj) {
        int zzD = zzgyc.zzD(i << 3);
        if (zzhcaVar == zzhca.zzj) {
            Charset charset = zzgzk.f8688a;
            if (((zzhai) obj) instanceof zzgwz) {
                throw null;
            }
            zzD += zzD;
        }
        return h(zzhcaVar, obj) + zzD;
    }

    public static final int g(Map.Entry entry) {
        int i;
        int zzD;
        int zzz;
        zzgyl zzgylVar = (zzgyl) entry.getKey();
        Object value = entry.getValue();
        if (zzgylVar.zzc() != zzhcb.zzi || zzgylVar.zze() || zzgylVar.zzd()) {
            return j(zzgylVar, value);
        }
        if (value instanceof zzgzs) {
            int zza = ((zzgyl) entry.getKey()).zza();
            int zzD2 = zzgyc.zzD(8);
            i = zzD2 + zzD2;
            zzD = zzgyc.zzD(zza) + zzgyc.zzD(16);
            int zzD3 = zzgyc.zzD(24);
            int zza2 = ((zzgzs) value).zza();
            zzz = dub.f(zza2, zza2, zzD3);
        } else {
            int zza3 = ((zzgyl) entry.getKey()).zza();
            int zzD4 = zzgyc.zzD(8);
            i = zzD4 + zzD4;
            zzD = zzgyc.zzD(zza3) + zzgyc.zzD(16);
            zzz = zzgyc.zzz((zzhai) value) + zzgyc.zzD(24);
        }
        return i + zzD + zzz;
    }

    public static int h(zzhca zzhcaVar, Object obj) {
        int zzd;
        int zzD;
        zzhca zzhcaVar2 = zzhca.zza;
        zzhcb zzhcbVar = zzhcb.zza;
        switch (zzhcaVar.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                Logger logger = zzgyc.f8673a;
                return 8;
            case 1:
                ((Float) obj).getClass();
                Logger logger2 = zzgyc.f8673a;
                return 4;
            case 2:
                return zzgyc.zzE(((Long) obj).longValue());
            case 3:
                return zzgyc.zzE(((Long) obj).longValue());
            case 4:
                return zzgyc.zzE(((Integer) obj).intValue());
            case 5:
                ((Long) obj).getClass();
                Logger logger3 = zzgyc.f8673a;
                return 8;
            case 6:
                ((Integer) obj).getClass();
                Logger logger4 = zzgyc.f8673a;
                return 4;
            case 7:
                ((Boolean) obj).getClass();
                Logger logger5 = zzgyc.f8673a;
                return 1;
            case 8:
                if (!(obj instanceof zzgxp)) {
                    return zzgyc.zzC((String) obj);
                }
                Logger logger6 = zzgyc.f8673a;
                zzd = ((zzgxp) obj).zzd();
                zzD = zzgyc.zzD(zzd);
                break;
            case 9:
                Logger logger7 = zzgyc.f8673a;
                return ((zzhai) obj).zzaY();
            case 10:
                if (!(obj instanceof zzgzs)) {
                    return zzgyc.zzz((zzhai) obj);
                }
                Logger logger8 = zzgyc.f8673a;
                zzd = ((zzgzs) obj).zza();
                zzD = zzgyc.zzD(zzd);
                break;
            case 11:
                if (!(obj instanceof zzgxp)) {
                    Logger logger9 = zzgyc.f8673a;
                    zzd = ((byte[]) obj).length;
                    zzD = zzgyc.zzD(zzd);
                    break;
                } else {
                    Logger logger10 = zzgyc.f8673a;
                    zzd = ((zzgxp) obj).zzd();
                    zzD = zzgyc.zzD(zzd);
                    break;
                }
            case 12:
                return zzgyc.zzD(((Integer) obj).intValue());
            case 13:
                return obj instanceof zzgzb ? zzgyc.zzE(((zzgzb) obj).zza()) : zzgyc.zzE(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                Logger logger11 = zzgyc.f8673a;
                return 4;
            case 15:
                ((Long) obj).getClass();
                Logger logger12 = zzgyc.f8673a;
                return 8;
            case 16:
                int intValue = ((Integer) obj).intValue();
                return zzgyc.zzD((intValue >> 31) ^ (intValue + intValue));
            case 17:
                long longValue = ((Long) obj).longValue();
                return zzgyc.zzE((longValue >> 63) ^ (longValue + longValue));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return zzD + zzd;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0047 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void i(zzgyl zzgylVar, Object obj) {
        boolean z;
        zzhca zzb = zzgylVar.zzb();
        Charset charset = zzgzk.f8688a;
        obj.getClass();
        zzhca zzhcaVar = zzhca.zza;
        zzhcb zzhcbVar = zzhcb.zza;
        switch (zzb.zza().ordinal()) {
            case 0:
                z = obj instanceof Integer;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzgylVar.zza()), zzgylVar.zzb().zza(), obj.getClass().getName()));
            case 1:
                z = obj instanceof Long;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzgylVar.zza()), zzgylVar.zzb().zza(), obj.getClass().getName()));
            case 2:
                z = obj instanceof Float;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzgylVar.zza()), zzgylVar.zzb().zza(), obj.getClass().getName()));
            case 3:
                z = obj instanceof Double;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzgylVar.zza()), zzgylVar.zzb().zza(), obj.getClass().getName()));
            case 4:
                z = obj instanceof Boolean;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzgylVar.zza()), zzgylVar.zzb().zza(), obj.getClass().getName()));
            case 5:
                z = obj instanceof String;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzgylVar.zza()), zzgylVar.zzb().zza(), obj.getClass().getName()));
            case 6:
                if ((obj instanceof zzgxp) || (obj instanceof byte[])) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzgylVar.zza()), zzgylVar.zzb().zza(), obj.getClass().getName()));
            case 7:
                if ((obj instanceof Integer) || (obj instanceof zzgzb)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzgylVar.zza()), zzgylVar.zzb().zza(), obj.getClass().getName()));
            case 8:
                if ((obj instanceof zzhai) || (obj instanceof zzgzs)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzgylVar.zza()), zzgylVar.zzb().zza(), obj.getClass().getName()));
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(zzgylVar.zza()), zzgylVar.zzb().zza(), obj.getClass().getName()));
        }
    }

    public static int j(zzgyl zzgylVar, Object obj) {
        zzhca zzb = zzgylVar.zzb();
        int zza = zzgylVar.zza();
        if (!zzgylVar.zze()) {
            return f(zzb, zza, obj);
        }
        List list = (List) obj;
        int size = list.size();
        int i = 0;
        if (!zzgylVar.zzd()) {
            int i2 = 0;
            while (i < size) {
                i2 += f(zzb, zza, list.get(i));
                i++;
            }
            return i2;
        }
        if (list.isEmpty()) {
            return 0;
        }
        int i3 = 0;
        while (i < size) {
            i3 += h(zzb, list.get(i));
            i++;
        }
        return zzgyc.zzD(i3) + zzgyc.zzD(zza << 3) + i3;
    }

    public final Object clone() {
        cxb cxbVar = new cxb();
        eol eolVar = this.f13668b;
        int i = eolVar.f15904f;
        for (int i2 = 0; i2 < i; i2++) {
            asf m = eolVar.m(i2);
            cxbVar.m((zzgyl) m.f10744b, m.f10745c);
        }
        for (Map.Entry entry : eolVar.j()) {
            cxbVar.m((zzgyl) entry.getKey(), entry.getValue());
        }
        cxbVar.f13670d = this.f13670d;
        return cxbVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof cxb) {
            return this.f13668b.equals(((cxb) obj).f13668b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f13668b.hashCode();
    }

    public final Iterator k() {
        eol eolVar = this.f13668b;
        return eolVar.isEmpty() ? Collections.emptyIterator() : this.f13670d ? new nw(((bni) eolVar.entrySet()).iterator(), 2) : ((bni) eolVar.entrySet()).iterator();
    }

    public final void l() {
        if (this.f13669c) {
            return;
        }
        eol eolVar = this.f13668b;
        int i = eolVar.f15904f;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = eolVar.m(i2).f10745c;
            if (obj instanceof zzgyx) {
                zzgyx zzgyxVar = (zzgyx) obj;
                zzgyxVar.getClass();
                gxd.f18927a.d(zzgyxVar.getClass()).g(zzgyxVar);
                zzgyxVar.cn();
            }
        }
        Iterator it = eolVar.j().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof zzgyx) {
                zzgyx zzgyxVar2 = (zzgyx) value;
                zzgyxVar2.getClass();
                gxd.f18927a.d(zzgyxVar2.getClass()).g(zzgyxVar2);
                zzgyxVar2.cn();
            }
        }
        if (!eolVar.f15901c) {
            for (int i3 = 0; i3 < eolVar.f15904f; i3++) {
                asf m = eolVar.m(i3);
                if (((zzgyl) m.f10744b).zze()) {
                    m.setValue(Collections.unmodifiableList((List) m.f10745c));
                }
            }
            for (Map.Entry entry : eolVar.j()) {
                if (((zzgyl) entry.getKey()).zze()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        if (!eolVar.f15901c) {
            eolVar.f15900b = eolVar.f15900b.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(eolVar.f15900b);
            eolVar.f15905g = eolVar.f15905g.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(eolVar.f15905g);
            eolVar.f15901c = true;
        }
        this.f13669c = true;
    }

    public final void m(zzgyl zzgylVar, Object obj) {
        if (!zzgylVar.zze()) {
            i(zzgylVar, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            List list = (List) obj;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                Object obj2 = list.get(i);
                i(zzgylVar, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        }
        if (obj instanceof zzgzs) {
            this.f13670d = true;
        }
        this.f13668b.put(zzgylVar, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0030, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean n() {
        eol eolVar = this.f13668b;
        int i = eolVar.f15904f;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                Iterator it = eolVar.j().iterator();
                while (it.hasNext()) {
                    if (!e((Map.Entry) it.next())) {
                    }
                }
                return true;
            }
            if (!e(eolVar.m(i2))) {
                break;
            }
            i2++;
        }
    }
}
