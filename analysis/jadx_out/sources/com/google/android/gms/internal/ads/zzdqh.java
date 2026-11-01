package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzdqh implements Runnable {
    public final /* synthetic */ zzdqi zza;

    public /* synthetic */ zzdqh(zzdqi zzdqiVar) {
        this.zza = zzdqiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final zzdqi zzdqiVar = this.zza;
        zzdqiVar.getClass();
        zzdqiVar.f6386f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdqg
            @Override // java.lang.Runnable
            public final void run() {
                zzdqi.this.g();
            }
        });
    }
}
