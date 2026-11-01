package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.TextureView;
import g.ehb;

/* loaded from: classes3.dex */
public abstract class zzcbl extends TextureView implements ehb {
    public final zzcbz v;
    public final zzccj w;

    public zzcbl(Context context) {
        super(context);
        this.v = new zzcbz();
        this.w = new zzccj(context, this);
    }

    public void zzA(int i) {
    }

    public void zzB(int i) {
    }

    public void zzC(String str, String[] strArr, Integer num) {
        zzs(str);
    }

    public abstract int zza();

    public abstract int zzb();

    public abstract int zzc();

    public abstract int zzd();

    public abstract int zze();

    public abstract long zzf();

    public abstract long zzg();

    public abstract long zzh();

    public abstract String zzj();

    public abstract void zzn();

    public abstract void zzo();

    public abstract void zzp();

    public abstract void zzq(int i);

    public abstract void zzr(zzcbk zzcbkVar);

    public abstract void zzs(String str);

    public abstract void zzt();

    public abstract void zzu(float f2, float f3);

    public Integer zzw() {
        return null;
    }

    public void zzx(int i) {
    }

    public void zzy(int i) {
    }

    public void zzz(int i) {
    }
}
