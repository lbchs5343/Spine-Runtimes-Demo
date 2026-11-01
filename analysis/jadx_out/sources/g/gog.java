package g;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class gog {

    /* renamed from: a, reason: collision with root package name */
    public static final cuf f18487a;

    static {
        fjo fjoVar = fjo.f16893a;
        f18487a = new cuf(24);
    }

    public static void aa(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ctvVar.v(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            i3 += 8;
        }
        ctvVar.s(i3);
        while (i2 < list.size()) {
            ctvVar.q(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    public static void b(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ctvVar.v(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            i3 += 8;
        }
        ctvVar.s(i3);
        while (i2 < list.size()) {
            ctvVar.q(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static int c(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (ctv.i(i << 3) + 8) * size;
    }

    public static int d(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof gwj)) {
            int i2 = 0;
            while (i < size) {
                int intValue = ((Integer) list.get(i)).intValue();
                i2 += ctv.i((intValue >> 31) ^ (intValue + intValue));
                i++;
            }
            return i2;
        }
        gwj gwjVar = (gwj) list;
        int i3 = 0;
        while (i < size) {
            int h = gwjVar.h(i);
            i3 += ctv.i((h >> 31) ^ (h + h));
            i++;
        }
        return i3;
    }

    public static Object e(Object obj, int i, int i2, Object obj2, cuf cufVar) {
        Object obj3 = obj2;
        if (obj2 == null) {
            cufVar.getClass();
            fsu fsuVar = (fsu) obj;
            wl wlVar = fsuVar.zzc;
            obj3 = wlVar;
            if (wlVar == wl.f20221a) {
                wl g2 = wl.g();
                fsuVar.zzc = g2;
                obj3 = g2;
            }
        }
        ((wl) obj3).k(i << 3, Long.valueOf(i2));
        return obj3;
    }

    public static void f(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!(list instanceof gwj)) {
            if (!z) {
                while (i2 < list.size()) {
                    ctvVar.n(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            ctvVar.m(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            ctvVar.s(i3);
            while (i2 < list.size()) {
                ctvVar.j(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        gwj gwjVar = (gwj) list;
        if (!z) {
            while (i2 < gwjVar.f18880c) {
                ctvVar.n(i, gwjVar.h(i2));
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < gwjVar.f18880c; i6++) {
            gwjVar.h(i6);
            i5 += 4;
        }
        ctvVar.s(i5);
        while (i2 < gwjVar.f18880c) {
            ctvVar.j(gwjVar.h(i2));
            i2++;
        }
    }

    public static int g(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ctv.h(((Long) list.get(i2)).longValue());
        }
        return i;
    }

    public static void h(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ctvVar.l(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += ctv.h(((Long) list.get(i4)).longValue());
        }
        ctvVar.s(i3);
        while (i2 < list.size()) {
            ctvVar.r(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static int i(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            long longValue = ((Long) list.get(i2)).longValue();
            i += ctv.h((longValue >> 63) ^ (longValue + longValue));
        }
        return i;
    }

    public static boolean j(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void k(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!(list instanceof gwj)) {
            if (!z) {
                while (i2 < list.size()) {
                    int intValue = ((Integer) list.get(i2)).intValue();
                    ctvVar.u(i, (intValue >> 31) ^ (intValue + intValue));
                    i2++;
                }
                return;
            }
            ctvVar.m(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                int intValue2 = ((Integer) list.get(i4)).intValue();
                i3 += ctv.i((intValue2 >> 31) ^ (intValue2 + intValue2));
            }
            ctvVar.s(i3);
            while (i2 < list.size()) {
                int intValue3 = ((Integer) list.get(i2)).intValue();
                ctvVar.s((intValue3 >> 31) ^ (intValue3 + intValue3));
                i2++;
            }
            return;
        }
        gwj gwjVar = (gwj) list;
        if (!z) {
            while (i2 < gwjVar.f18880c) {
                int h = gwjVar.h(i2);
                ctvVar.u(i, (h >> 31) ^ (h + h));
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < gwjVar.f18880c; i6++) {
            int h2 = gwjVar.h(i6);
            i5 += ctv.i((h2 >> 31) ^ (h2 + h2));
        }
        ctvVar.s(i5);
        while (i2 < gwjVar.f18880c) {
            int h3 = gwjVar.h(i2);
            ctvVar.s((h3 >> 31) ^ (h3 + h3));
            i2++;
        }
    }

    public static void l(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ctvVar.v(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            i3 += 8;
        }
        ctvVar.s(i3);
        while (i2 < list.size()) {
            ctvVar.q(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void m(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ctvVar.n(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            i3 += 4;
        }
        ctvVar.s(i3);
        while (i2 < list.size()) {
            ctvVar.j(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    public static void n(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!(list instanceof gwj)) {
            if (!z) {
                while (i2 < list.size()) {
                    ctvVar.p(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            ctvVar.m(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += ctv.h(((Integer) list.get(i4)).intValue());
            }
            ctvVar.s(i3);
            while (i2 < list.size()) {
                ctvVar.k(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        gwj gwjVar = (gwj) list;
        if (!z) {
            while (i2 < gwjVar.f18880c) {
                ctvVar.p(i, gwjVar.h(i2));
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < gwjVar.f18880c; i6++) {
            i5 += ctv.h(gwjVar.h(i6));
        }
        ctvVar.s(i5);
        while (i2 < gwjVar.f18880c) {
            ctvVar.k(gwjVar.h(i2));
            i2++;
        }
    }

    public static int o(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof gwj)) {
            int i2 = 0;
            while (i < size) {
                i2 += ctv.h(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        gwj gwjVar = (gwj) list;
        int i3 = 0;
        while (i < size) {
            i3 += ctv.h(gwjVar.h(i));
            i++;
        }
        return i3;
    }

    public static void p(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!(list instanceof gwj)) {
            if (!z) {
                while (i2 < list.size()) {
                    ctvVar.p(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            ctvVar.m(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += ctv.h(((Integer) list.get(i4)).intValue());
            }
            ctvVar.s(i3);
            while (i2 < list.size()) {
                ctvVar.k(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        gwj gwjVar = (gwj) list;
        if (!z) {
            while (i2 < gwjVar.f18880c) {
                ctvVar.p(i, gwjVar.h(i2));
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < gwjVar.f18880c; i6++) {
            i5 += ctv.h(gwjVar.h(i6));
        }
        ctvVar.s(i5);
        while (i2 < gwjVar.f18880c) {
            ctvVar.k(gwjVar.h(i2));
            i2++;
        }
    }

    public static void q(Object obj, Object obj2) {
        fsu fsuVar = (fsu) obj;
        wl wlVar = fsuVar.zzc;
        wl wlVar2 = ((fsu) obj2).zzc;
        wl wlVar3 = wl.f20221a;
        if (!wlVar3.equals(wlVar2)) {
            if (wlVar3.equals(wlVar)) {
                int i = wlVar.f20224d + wlVar2.f20224d;
                int[] copyOf = Arrays.copyOf(wlVar.f20225e, i);
                System.arraycopy(wlVar2.f20225e, 0, copyOf, wlVar.f20224d, wlVar2.f20224d);
                Object[] copyOf2 = Arrays.copyOf(wlVar.f20226f, i);
                System.arraycopy(wlVar2.f20226f, 0, copyOf2, wlVar.f20224d, wlVar2.f20224d);
                wlVar = new wl(i, copyOf, copyOf2, true);
            } else {
                wlVar.getClass();
                if (!wlVar2.equals(wlVar3)) {
                    if (!wlVar.f20223c) {
                        throw new UnsupportedOperationException();
                    }
                    int i2 = wlVar.f20224d + wlVar2.f20224d;
                    wlVar.i(i2);
                    System.arraycopy(wlVar2.f20225e, 0, wlVar.f20225e, wlVar.f20224d, wlVar2.f20224d);
                    System.arraycopy(wlVar2.f20226f, 0, wlVar.f20226f, wlVar.f20224d, wlVar2.f20224d);
                    wlVar.f20224d = i2;
                }
            }
        }
        fsuVar.zzc = wlVar;
    }

    public static int r(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof gwj)) {
            int i2 = 0;
            while (i < size) {
                i2 += ctv.i(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        gwj gwjVar = (gwj) list;
        int i3 = 0;
        while (i < size) {
            i3 += ctv.i(gwjVar.h(i));
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
        if (!(list instanceof gwj)) {
            int i2 = 0;
            while (i < size) {
                i2 += ctv.h(((Integer) list.get(i)).intValue());
                i++;
            }
            return i2;
        }
        gwj gwjVar = (gwj) list;
        int i3 = 0;
        while (i < size) {
            i3 += ctv.h(gwjVar.h(i));
            i++;
        }
        return i3;
    }

    public static void t(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                long longValue = ((Long) list.get(i2)).longValue();
                ctvVar.l(i, (longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = ((Long) list.get(i4)).longValue();
            i3 += ctv.h((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        ctvVar.s(i3);
        while (i2 < list.size()) {
            long longValue3 = ((Long) list.get(i2)).longValue();
            ctvVar.r((longValue3 >> 63) ^ (longValue3 + longValue3));
            i2++;
        }
    }

    public static int u(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ctv.h(((Long) list.get(i2)).longValue());
        }
        return i;
    }

    public static void v(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                byte booleanValue = ((Boolean) list.get(i2)).booleanValue();
                ctvVar.s(i << 3);
                int i3 = ctvVar.f13499e;
                try {
                    int i4 = i3 + 1;
                    try {
                        ctvVar.f13497c[i3] = booleanValue;
                        ctvVar.f13499e = i4;
                        i2++;
                    } catch (IndexOutOfBoundsException e2) {
                        e = e2;
                        i3 = i4;
                        throw new gng(i3, ctvVar.f13498d, 1, e);
                    }
                } catch (IndexOutOfBoundsException e3) {
                    e = e3;
                }
            }
            return;
        }
        ctvVar.m(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < list.size(); i6++) {
            ((Boolean) list.get(i6)).getClass();
            i5++;
        }
        ctvVar.s(i5);
        while (i2 < list.size()) {
            byte booleanValue2 = ((Boolean) list.get(i2)).booleanValue();
            int i7 = ctvVar.f13499e;
            try {
                int i8 = i7 + 1;
                try {
                    ctvVar.f13497c[i7] = booleanValue2;
                    ctvVar.f13499e = i8;
                    i2++;
                } catch (IndexOutOfBoundsException e4) {
                    e = e4;
                    i7 = i8;
                    throw new gng(i7, ctvVar.f13498d, 1, e);
                }
            } catch (IndexOutOfBoundsException e5) {
                e = e5;
            }
        }
    }

    public static void w(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!(list instanceof gwj)) {
            if (!z) {
                while (i2 < list.size()) {
                    ctvVar.n(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            ctvVar.m(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            ctvVar.s(i3);
            while (i2 < list.size()) {
                ctvVar.j(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        gwj gwjVar = (gwj) list;
        if (!z) {
            while (i2 < gwjVar.f18880c) {
                ctvVar.n(i, gwjVar.h(i2));
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < gwjVar.f18880c; i6++) {
            gwjVar.h(i6);
            i5 += 4;
        }
        ctvVar.s(i5);
        while (i2 < gwjVar.f18880c) {
            ctvVar.j(gwjVar.h(i2));
            i2++;
        }
    }

    public static void x(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!(list instanceof gwj)) {
            if (!z) {
                while (i2 < list.size()) {
                    ctvVar.u(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            ctvVar.m(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += ctv.i(((Integer) list.get(i4)).intValue());
            }
            ctvVar.s(i3);
            while (i2 < list.size()) {
                ctvVar.s(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        gwj gwjVar = (gwj) list;
        if (!z) {
            while (i2 < gwjVar.f18880c) {
                ctvVar.u(i, gwjVar.h(i2));
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < gwjVar.f18880c; i6++) {
            i5 += ctv.i(gwjVar.h(i6));
        }
        ctvVar.s(i5);
        while (i2 < gwjVar.f18880c) {
            ctvVar.s(gwjVar.h(i2));
            i2++;
        }
    }

    public static void y(int i, List list, dnb dnbVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ctv ctvVar = (ctv) dnbVar.f14452a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                ctvVar.l(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        ctvVar.m(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += ctv.h(((Long) list.get(i4)).longValue());
        }
        ctvVar.s(i3);
        while (i2 < list.size()) {
            ctvVar.r(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static int z(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (ctv.i(i << 3) + 4) * size;
    }
}
