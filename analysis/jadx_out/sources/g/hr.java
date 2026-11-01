package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbtm;
import com.google.android.gms.internal.ads.zzcxh;
import com.google.android.gms.internal.ads.zzcya;
import com.google.android.gms.internal.ads.zzfet;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class hr implements zzcya, zzcxh {

    /* renamed from: a, reason: collision with root package name */
    public final zzfet f19389a;

    public hr(zzfet zzfetVar) {
        this.f19389a = zzfetVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzdj(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzdl(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzdm(Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final void zzs() {
        zzfet zzfetVar = this.f19389a;
        zzbtm zzbtmVar = zzfetVar.zzad;
        if (zzbtmVar == null || !zzbtmVar.zza) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (zzfetVar.zzad.zzb.isEmpty()) {
            return;
        }
        arrayList.add(zzfetVar.zzad.zzb);
    }
}
