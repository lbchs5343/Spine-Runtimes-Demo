package g;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbvx;
import com.google.android.gms.internal.ads.zzbyv;
import com.google.android.gms.internal.ads.zzczj;
import com.google.android.gms.internal.ads.zzfff;

/* loaded from: classes3.dex */
public final class aae implements zzczj {

    /* renamed from: a, reason: collision with root package name */
    public final Context f9840a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbyv f9841b;

    public aae(zzbyv zzbyvVar, Context context) {
        this.f9840a = context;
        this.f9841b = zzbyvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdn(zzbvx zzbvxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdo(zzfff zzfffVar) {
        if (TextUtils.isEmpty(zzfffVar.zzb.zzb.zze)) {
            return;
        }
        aeh aehVar = zzfffVar.zza.zza.zzd;
        zzbyv zzbyvVar = this.f9841b;
        Context context = this.f9840a;
        zzbyvVar.zzm(context, aehVar);
        zzbyvVar.zzi(context, zzfffVar.zzb.zzb.zze);
    }
}
