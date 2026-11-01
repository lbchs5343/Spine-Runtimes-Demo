package g;

import com.google.android.gms.internal.ads.zzacy;
import com.google.android.gms.internal.ads.zzacz;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzadb;
import com.google.android.gms.internal.ads.zzadc;
import com.google.android.gms.internal.ads.zzed;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class dgl extends dbh {

    /* renamed from: a, reason: collision with root package name */
    public fcw f14136a;

    /* renamed from: b, reason: collision with root package name */
    public zzadc f14137b;

    @Override // g.dbh
    public final long g(zzed zzedVar) {
        if (zzedVar.zzN()[0] != -1) {
            return -1L;
        }
        int i = (zzedVar.zzN()[2] & 255) >> 4;
        if (i != 6) {
            if (i == 7) {
                i = 7;
            }
            int zza = zzacy.zza(zzedVar, i);
            zzedVar.zzL(0);
            return zza;
        }
        zzedVar.zzM(4);
        zzedVar.zzx();
        int zza2 = zzacy.zza(zzedVar, i);
        zzedVar.zzL(0);
        return zza2;
    }

    @Override // g.dbh
    public final void h(boolean z) {
        super.h(z);
        if (z) {
            this.f14137b = null;
            this.f14136a = null;
        }
    }

    @Override // g.dbh
    public final boolean i(zzed zzedVar, long j, ffr ffrVar) {
        byte[] zzN = zzedVar.zzN();
        zzadc zzadcVar = this.f14137b;
        if (zzadcVar == null) {
            zzadc zzadcVar2 = new zzadc(zzN, 17);
            this.f14137b = zzadcVar2;
            ffrVar.f16721f = zzadcVar2.zzc(Arrays.copyOfRange(zzN, 9, zzedVar.zze()), null);
            return true;
        }
        byte b2 = zzN[0];
        if ((b2 & Byte.MAX_VALUE) != 3) {
            if (b2 != -1) {
                return true;
            }
            fcw fcwVar = this.f14136a;
            if (fcwVar != null) {
                fcwVar.f16582d = j;
                ffrVar.f16719c = fcwVar;
            }
            ((zzad) ffrVar.f16721f).getClass();
            return false;
        }
        zzadb zzb = zzacz.zzb(zzedVar);
        zzadc zzf = zzadcVar.zzf(zzb);
        this.f14137b = zzf;
        fcw fcwVar2 = new fcw();
        fcwVar2.f16580a = zzf;
        fcwVar2.f16581b = zzb;
        fcwVar2.f16582d = -1L;
        fcwVar2.f16583e = -1L;
        this.f14136a = fcwVar2;
        return true;
    }
}
