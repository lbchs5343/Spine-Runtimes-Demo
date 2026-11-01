package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class fld {

    /* renamed from: a, reason: collision with root package name */
    public mi f16961a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f16962b;

    public static long c(big bigVar, long j) {
        mi miVar = bigVar.f11643c;
        ArrayList arrayList = bigVar.f11642b;
        if (miVar instanceof or) {
            return j;
        }
        int size = arrayList.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            exs exsVar = (exs) arrayList.get(i);
            if (exsVar instanceof big) {
                big bigVar2 = (big) exsVar;
                if (bigVar2.f11643c != miVar) {
                    j2 = Math.min(j2, c(bigVar2, bigVar2.f11647g + j));
                }
            }
        }
        big bigVar3 = miVar.f19650f;
        big bigVar4 = miVar.f19645a;
        if (bigVar != bigVar3) {
            return j2;
        }
        long s = j - miVar.s();
        return Math.min(Math.min(j2, c(bigVar4, s)), s - bigVar4.f11647g);
    }

    public static long d(big bigVar, long j) {
        mi miVar = bigVar.f11643c;
        ArrayList arrayList = bigVar.f11642b;
        if (miVar instanceof or) {
            return j;
        }
        int size = arrayList.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            exs exsVar = (exs) arrayList.get(i);
            if (exsVar instanceof big) {
                big bigVar2 = (big) exsVar;
                if (bigVar2.f11643c != miVar) {
                    j2 = Math.max(j2, d(bigVar2, bigVar2.f11647g + j));
                }
            }
        }
        big bigVar3 = miVar.f19645a;
        big bigVar4 = miVar.f19650f;
        if (bigVar != bigVar3) {
            return j2;
        }
        long s = miVar.s() + j;
        return Math.max(Math.max(j2, d(bigVar4, s)), s - bigVar4.f11647g);
    }
}
