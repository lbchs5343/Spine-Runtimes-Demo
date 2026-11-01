package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzcep {
    public final /* synthetic */ zzces zza;

    public /* synthetic */ zzcep(zzces zzcesVar) {
        this.zza = zzcesVar;
    }

    public final zzln[] zza(Handler handler, zzabg zzabgVar, zzpn zzpnVar, zzwu zzwuVar, zztp zztpVar) {
        zzces zzcesVar = this.zza;
        zzcesVar.getClass();
        zzta zztaVar = zzta.zza;
        Context context = zzcesVar.j;
        zzrc zzrcVar = new zzrc(context, new zzsf(context), zztaVar, false, handler, zzpnVar, new zzqk(context).zzc());
        Context context2 = zzcesVar.j;
        return new zzln[]{zzrcVar, new zzaai(context2, new zzsf(context2), zztaVar, 0L, false, handler, zzabgVar, -1, 30.0f)};
    }
}
