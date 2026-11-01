package g;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class ave {

    /* renamed from: a, reason: collision with root package name */
    public static final czj f10910a;

    /* renamed from: b, reason: collision with root package name */
    public static final Class f10911b;

    /* renamed from: c, reason: collision with root package name */
    public static final czj f10912c;

    /* renamed from: d, reason: collision with root package name */
    public static final czj f10913d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f10911b = cls;
        f10912c = x(false);
        f10913d = x(true);
        f10910a = new czj();
    }

    public static void aa(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                int intValue = ((Integer) list.get(i2)).intValue();
                pVar.r(i << 3);
                if (intValue >= 0) {
                    pVar.r(intValue);
                } else {
                    pVar.v(intValue);
                }
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += p.g(((Integer) list.get(i4)).intValue());
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            int intValue2 = ((Integer) list.get(i2)).intValue();
            if (intValue2 >= 0) {
                pVar.r(intValue2);
            } else {
                pVar.v(intValue2);
            }
            i2++;
        }
    }

    public static void ab(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                boolean booleanValue = ((Boolean) list.get(i2)).booleanValue();
                pVar.r(i << 3);
                pVar.q(booleanValue ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            i3++;
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            pVar.q(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void ac(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                pVar.o(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += p.i(((Long) list.get(i4)).longValue());
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            pVar.v(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void ad(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                pVar.o(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += p.i(((Long) list.get(i4)).longValue());
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            pVar.v(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static int ae(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof ajv)) {
            int i2 = 0;
            while (i < size) {
                i2 += p.i(((Long) list.get(i)).longValue());
                i++;
            }
            return i2;
        }
        ajv ajvVar = (ajv) list;
        int i3 = 0;
        while (i < size) {
            ajvVar.zzi(i);
            i3 += p.i(ajvVar.f10350c[i]);
            i++;
        }
        return i3;
    }

    public static int af(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int l = p.l(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            int c2 = ((cyb) list.get(i2)).c();
            l = dub.d(c2, c2, l);
        }
        return l;
    }

    public static int ag(int i, List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int l = p.l(i) * size;
        if (!(list instanceof guu)) {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof cyb) {
                    int c2 = ((cyb) obj).c();
                    l = dub.d(c2, c2, l);
                } else {
                    l = p.j((String) obj) + l;
                }
                i2++;
            }
            return l;
        }
        guu guuVar = (guu) list;
        while (i2 < size) {
            Object zzf = guuVar.zzf(i2);
            if (zzf instanceof cyb) {
                int c3 = ((cyb) zzf).c();
                l = dub.d(c3, c3, l);
            } else {
                l = p.j((String) zzf) + l;
            }
            i2++;
        }
        return l;
    }

    public static void ah(int i, List list, aoy aoyVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        aoyVar.getClass();
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((p) aoyVar.h).u(i, (cyb) list.get(i2));
        }
    }

    public static int ai(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof ajv)) {
            int i2 = 0;
            while (i < size) {
                long longValue = ((Long) list.get(i)).longValue();
                i2 += p.i((longValue >> 63) ^ (longValue + longValue));
                i++;
            }
            return i2;
        }
        ajv ajvVar = (ajv) list;
        int i3 = 0;
        while (i < size) {
            ajvVar.zzi(i);
            long j = ajvVar.f10350c[i];
            i3 += p.i((j >> 63) ^ (j + j));
            i++;
        }
        return i3;
    }

    public static int aj(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (p.h(i << 3) + 8) * size;
    }

    public static void ak(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                pVar.w(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            i3 += 8;
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            pVar.t(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static boolean al(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int e(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof eaa)) {
            int i2 = 0;
            while (i < size) {
                i2 += p.g(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        eaa eaaVar = (eaa) list;
        int i3 = 0;
        while (i < size) {
            eaaVar.e(i);
            i3 += p.g(eaaVar.f15168c[i]);
            i++;
        }
        return i3;
    }

    public static void f(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                pVar.p(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            i3 += 4;
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            pVar.m(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    public static void g(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                pVar.p(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).getClass();
            i3 += 4;
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            pVar.m(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static int h(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof ajv)) {
            int i2 = 0;
            while (i < size) {
                i2 += p.i(((Long) list.get(i)).longValue());
                i++;
            }
            return i2;
        }
        ajv ajvVar = (ajv) list;
        int i3 = 0;
        while (i < size) {
            ajvVar.zzi(i);
            i3 += p.i(ajvVar.f10350c[i]);
            i++;
        }
        return i3;
    }

    public static void i(int i, List list, aoy aoyVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!(list instanceof guu)) {
            while (i2 < list.size()) {
                pVar.s(i, (String) list.get(i2));
                i2++;
            }
            return;
        }
        guu guuVar = (guu) list;
        while (i2 < list.size()) {
            Object zzf = guuVar.zzf(i2);
            if (zzf instanceof String) {
                pVar.s(i, (String) zzf);
            } else {
                pVar.u(i, (cyb) zzf);
            }
            i2++;
        }
    }

    public static int j(List list) {
        return list.size() * 8;
    }

    public static int k(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof eaa)) {
            int i2 = 0;
            while (i < size) {
                i2 += p.h(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        eaa eaaVar = (eaa) list;
        int i3 = 0;
        while (i < size) {
            eaaVar.e(i);
            i3 += p.h(eaaVar.f15168c[i]);
            i++;
        }
        return i3;
    }

    public static void l(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                long longValue = ((Long) list.get(i2)).longValue();
                pVar.o(i, (longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = ((Long) list.get(i4)).longValue();
            i3 += p.i((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            long longValue3 = ((Long) list.get(i2)).longValue();
            pVar.v((longValue3 >> 63) ^ (longValue3 + longValue3));
            i2++;
        }
    }

    public static void m(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                pVar.w(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            i3 += 8;
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            pVar.t(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    public static int n(int i, Object obj, ciw ciwVar) {
        cir cirVar = (cir) obj;
        int h = p.h(i << 3);
        cys cysVar = (cys) cirVar;
        int i2 = cysVar.zzd;
        if (i2 == -1) {
            i2 = ciwVar.zza(cirVar);
            cysVar.zzd = i2;
        }
        return dub.d(i2, i2, h);
    }

    public static void o(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                pVar.w(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            i3 += 8;
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            pVar.t(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void p(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                int intValue = ((Integer) list.get(i2)).intValue();
                pVar.r(i << 3);
                if (intValue >= 0) {
                    pVar.r(intValue);
                } else {
                    pVar.v(intValue);
                }
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += p.g(((Integer) list.get(i4)).intValue());
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            int intValue2 = ((Integer) list.get(i2)).intValue();
            if (intValue2 >= 0) {
                pVar.r(intValue2);
            } else {
                pVar.v(intValue2);
            }
            i2++;
        }
    }

    public static void q(czj czjVar, Object obj, Object obj2) {
        czjVar.getClass();
        cys cysVar = (cys) obj;
        fjx fjxVar = cysVar.zzc;
        fjx fjxVar2 = ((cys) obj2).zzc;
        if (!fjxVar2.equals(fjx.f16899a)) {
            int i = fjxVar.f16902d + fjxVar2.f16902d;
            int[] copyOf = Arrays.copyOf(fjxVar.f16903e, i);
            System.arraycopy(fjxVar2.f16903e, 0, copyOf, fjxVar.f16902d, fjxVar2.f16902d);
            Object[] copyOf2 = Arrays.copyOf(fjxVar.f16904f, i);
            System.arraycopy(fjxVar2.f16904f, 0, copyOf2, fjxVar.f16902d, fjxVar2.f16902d);
            fjxVar = new fjx(i, copyOf, copyOf2, true);
        }
        cysVar.zzc = fjxVar;
    }

    public static int r(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof eaa)) {
            int i2 = 0;
            while (i < size) {
                i2 += p.g(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        eaa eaaVar = (eaa) list;
        int i3 = 0;
        while (i < size) {
            eaaVar.e(i);
            i3 += p.g(eaaVar.f15168c[i]);
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
        if (!(list instanceof eaa)) {
            int i2 = 0;
            while (i < size) {
                int intValue = ((Integer) list.get(i)).intValue();
                i2 += p.h((intValue >> 31) ^ (intValue + intValue));
                i++;
            }
            return i2;
        }
        eaa eaaVar = (eaa) list;
        int i3 = 0;
        while (i < size) {
            eaaVar.e(i);
            int i4 = eaaVar.f15168c[i];
            i3 += p.h((i4 >> 31) ^ (i4 + i4));
            i++;
        }
        return i3;
    }

    public static int t(int i, List list, ciw ciwVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int l = p.l(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            cir cirVar = (cir) list.get(i2);
            cys cysVar = (cys) cirVar;
            int i3 = cysVar.zzd;
            if (i3 == -1) {
                i3 = ciwVar.zza(cirVar);
                cysVar.zzd = i3;
            }
            l = dub.d(i3, i3, l);
        }
        return l;
    }

    public static int u(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (p.h(i << 3) + 4) * size;
    }

    public static int v(List list) {
        return list.size() * 4;
    }

    public static void w(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                pVar.p(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).getClass();
            i3 += 4;
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            pVar.m(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static czj x(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls != null) {
            try {
                return (czj) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    public static void y(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                int intValue = ((Integer) list.get(i2)).intValue();
                pVar.r(i << 3);
                pVar.r(intValue);
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += p.h(((Integer) list.get(i4)).intValue());
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            pVar.r(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void z(int i, List list, aoy aoyVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        p pVar = (p) aoyVar.h;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                int intValue = ((Integer) list.get(i2)).intValue();
                pVar.r(i << 3);
                pVar.r((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
            return;
        }
        pVar.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = ((Integer) list.get(i4)).intValue();
            i3 += p.h((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        pVar.r(i3);
        while (i2 < list.size()) {
            int intValue3 = ((Integer) list.get(i2)).intValue();
            pVar.r((intValue3 >> 31) ^ (intValue3 + intValue3));
            i2++;
        }
    }
}
