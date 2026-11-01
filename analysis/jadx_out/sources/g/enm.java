package g;

import com.google.android.gms.internal.ads.zzado;
import com.google.android.gms.internal.ads.zzadq;
import com.google.android.gms.internal.ads.zzaej;

/* loaded from: classes3.dex */
public final class enm implements zzadq {

    /* renamed from: a, reason: collision with root package name */
    public final long f15865a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzaej f15866b;

    public enm(zzaej zzaejVar, long j) {
        this.f15866b = zzaejVar;
        this.f15865a = j;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final long zza() {
        return this.f15865a;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzado zzg(long j) {
        zzaej zzaejVar = this.f15866b;
        zzado n = zzaejVar.l[0].n(j);
        int i = 1;
        while (true) {
            ae[] aeVarArr = zzaejVar.l;
            if (i >= aeVarArr.length) {
                return n;
            }
            zzado n2 = aeVarArr[i].n(j);
            if (n2.zza.zzc < n.zza.zzc) {
                n = n2;
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final boolean zzh() {
        return true;
    }
}
