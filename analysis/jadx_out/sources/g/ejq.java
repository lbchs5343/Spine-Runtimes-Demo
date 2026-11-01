package g;

import android.util.Pair;
import com.google.android.gms.internal.ads.zzrl;
import com.google.android.gms.internal.ads.zzui;
import com.google.android.gms.internal.ads.zzun;
import com.google.android.gms.internal.ads.zzur;
import com.google.android.gms.internal.ads.zzvb;
import g.ejq;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class ejq implements zzvb, zzrl {

    /* renamed from: a, reason: collision with root package name */
    public final iw f15673a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ feh f15674b;

    public ejq(feh fehVar, iw iwVar) {
        this.f15674b = fehVar;
        this.f15673a = iwVar;
    }

    public final Pair c(zzur zzurVar) {
        zzur zzurVar2;
        iw iwVar = this.f15673a;
        zzur zzurVar3 = null;
        if (zzurVar != null) {
            int i = 0;
            while (true) {
                if (i >= iwVar.f19448e.size()) {
                    zzurVar2 = null;
                    break;
                }
                if (((zzur) iwVar.f19448e.get(i)).zzd == zzurVar.zzd) {
                    zzurVar2 = zzurVar.zza(Pair.create(iwVar.f19447d, zzurVar.zza));
                    break;
                }
                i++;
            }
            if (zzurVar2 == null) {
                return null;
            }
            zzurVar3 = zzurVar2;
        }
        return Pair.create(Integer.valueOf(iwVar.f19444a), zzurVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public final void zzaf(int i, zzur zzurVar, final zzun zzunVar) {
        final Pair c2 = c(zzurVar);
        if (c2 != null) {
            this.f15674b.h.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzkz
                @Override // java.lang.Runnable
                public final void run() {
                    Pair pair = c2;
                    ejq.this.f15674b.f16657a.zzaf(((Integer) pair.first).intValue(), (zzur) pair.second, zzunVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public final void zzag(int i, zzur zzurVar, final zzui zzuiVar, final zzun zzunVar) {
        final Pair c2 = c(zzurVar);
        if (c2 != null) {
            this.f15674b.h.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzkx
                @Override // java.lang.Runnable
                public final void run() {
                    Pair pair = c2;
                    ejq.this.f15674b.f16657a.zzag(((Integer) pair.first).intValue(), (zzur) pair.second, zzuiVar, zzunVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public final void zzah(int i, zzur zzurVar, final zzui zzuiVar, final zzun zzunVar) {
        final Pair c2 = c(zzurVar);
        if (c2 != null) {
            this.f15674b.h.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzla
                @Override // java.lang.Runnable
                public final void run() {
                    Pair pair = c2;
                    ejq.this.f15674b.f16657a.zzah(((Integer) pair.first).intValue(), (zzur) pair.second, zzuiVar, zzunVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public final void zzai(int i, zzur zzurVar, final zzui zzuiVar, final zzun zzunVar, final IOException iOException, final boolean z) {
        final Pair c2 = c(zzurVar);
        if (c2 != null) {
            this.f15674b.h.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzkw
                @Override // java.lang.Runnable
                public final void run() {
                    Pair pair = c2;
                    ejq.this.f15674b.f16657a.zzai(((Integer) pair.first).intValue(), (zzur) pair.second, zzuiVar, zzunVar, iOException, z);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public final void zzaj(int i, zzur zzurVar, final zzui zzuiVar, final zzun zzunVar) {
        final Pair c2 = c(zzurVar);
        if (c2 != null) {
            this.f15674b.h.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzky
                @Override // java.lang.Runnable
                public final void run() {
                    Pair pair = c2;
                    ejq.this.f15674b.f16657a.zzaj(((Integer) pair.first).intValue(), (zzur) pair.second, zzuiVar, zzunVar);
                }
            });
        }
    }
}
