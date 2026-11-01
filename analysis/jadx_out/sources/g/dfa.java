package g;

import com.google.android.gms.internal.ads.zzgxp;
import java.util.ArrayDeque;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class dfa {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayDeque f14080a;

    public dfa(int i) {
        switch (i) {
            case 1:
                this.f14080a = new ArrayDeque();
                break;
            default:
                this.f14080a = new ArrayDeque();
                break;
        }
    }

    public void b(zzgxp zzgxpVar) {
        if (!zzgxpVar.i()) {
            if (!(zzgxpVar instanceof com.google.android.gms.internal.ads.t)) {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(zzgxpVar.getClass())));
            }
            com.google.android.gms.internal.ads.t tVar = (com.google.android.gms.internal.ads.t) zzgxpVar;
            b(tVar.zzd);
            b(tVar.zze);
            return;
        }
        int binarySearch = Arrays.binarySearch(com.google.android.gms.internal.ads.t.f3984a, zzgxpVar.zzd());
        if (binarySearch < 0) {
            binarySearch = (-(binarySearch + 1)) - 1;
        }
        int d2 = com.google.android.gms.internal.ads.t.d(binarySearch + 1);
        ArrayDeque arrayDeque = this.f14080a;
        if (arrayDeque.isEmpty() || ((zzgxp) arrayDeque.peek()).zzd() >= d2) {
            arrayDeque.push(zzgxpVar);
            return;
        }
        int d3 = com.google.android.gms.internal.ads.t.d(binarySearch);
        zzgxp zzgxpVar2 = (zzgxp) arrayDeque.pop();
        while (!arrayDeque.isEmpty() && ((zzgxp) arrayDeque.peek()).zzd() < d3) {
            zzgxpVar2 = new com.google.android.gms.internal.ads.t((zzgxp) arrayDeque.pop(), zzgxpVar2);
        }
        com.google.android.gms.internal.ads.t tVar2 = new com.google.android.gms.internal.ads.t(zzgxpVar2, zzgxpVar);
        while (!arrayDeque.isEmpty()) {
            int binarySearch2 = Arrays.binarySearch(com.google.android.gms.internal.ads.t.f3984a, tVar2.zzd());
            if (binarySearch2 < 0) {
                binarySearch2 = (-(binarySearch2 + 1)) - 1;
            }
            if (((zzgxp) arrayDeque.peek()).zzd() >= com.google.android.gms.internal.ads.t.d(binarySearch2 + 1)) {
                break;
            } else {
                tVar2 = new com.google.android.gms.internal.ads.t((zzgxp) arrayDeque.pop(), tVar2);
            }
        }
        arrayDeque.push(tVar2);
    }
}
