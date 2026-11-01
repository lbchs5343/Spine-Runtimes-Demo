package g;

import com.google.android.gms.internal.ads.zzbmp;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzcas;

/* loaded from: classes3.dex */
public final class ekb implements zzcas {
    @Override // com.google.android.gms.internal.ads.zzcas
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        final zzbmp zzbmpVar = (zzbmp) obj;
        zzcaj.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbnr
            @Override // java.lang.Runnable
            public final void run() {
                zzbmp zzbmpVar2 = zzbmpVar;
                zzbmpVar2.zzr("/result", zzbjq.zzo);
                zzbmpVar2.zzc();
            }
        });
    }
}
