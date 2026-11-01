package com.google.android.gms.internal.ads;

import android.content.Context;
import g.dfu;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzflr {

    /* renamed from: a, reason: collision with root package name */
    public final zzfko f7984a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f7985b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f7986c;

    /* renamed from: d, reason: collision with root package name */
    public final dfu f7987d;

    public zzflr(Context context, zzges zzgesVar, dfu dfuVar, zzfko zzfkoVar) {
        this.f7985b = context;
        this.f7986c = zzgesVar;
        this.f7987d = dfuVar;
        this.f7984a = zzfkoVar;
    }

    public final void zzc(final String str, final zzfkl zzfklVar) {
        boolean zza = zzfko.zza();
        Executor executor = this.f7986c;
        if (zza && ((Boolean) zzbeg.zzd.zze()).booleanValue()) {
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzflq
                @Override // java.lang.Runnable
                public final void run() {
                    zzflr zzflrVar = zzflr.this;
                    String str2 = str;
                    zzfkl zzfklVar2 = zzfklVar;
                    zzfka zza2 = zzfjz.zza(zzflrVar.f7985b, 14);
                    zza2.zzi();
                    zza2.zzg(zzflrVar.f7987d.zza(str2));
                    if (zzfklVar2 == null) {
                        zzflrVar.f7984a.zzb(zza2.zzm());
                    } else {
                        zzfklVar2.zza(zza2);
                        zzfklVar2.zzh();
                    }
                }
            });
        } else {
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzflp
                @Override // java.lang.Runnable
                public final void run() {
                    zzflr zzflrVar = zzflr.this;
                    zzflrVar.f7987d.zza(str);
                }
            });
        }
    }

    public final void zzd(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzc((String) it.next(), null);
        }
    }
}
