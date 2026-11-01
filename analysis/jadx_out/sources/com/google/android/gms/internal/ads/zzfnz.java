package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzfnz implements zzfns {

    /* renamed from: a, reason: collision with root package name */
    public static zzfnz f8087a;

    /* renamed from: b, reason: collision with root package name */
    public float f8088b = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;

    /* renamed from: c, reason: collision with root package name */
    public zzfnn f8089c;

    /* renamed from: d, reason: collision with root package name */
    public zzfnr f8090d;

    public zzfnz(zzfno zzfnoVar, zzfnm zzfnmVar) {
    }

    public static zzfnz zzb() {
        if (f8087a == null) {
            f8087a = new zzfnz(new zzfno(), new zzfnm());
        }
        return f8087a;
    }

    public final float zza() {
        return this.f8088b;
    }

    @Override // com.google.android.gms.internal.ads.zzfns
    public final void zzc(boolean z) {
        if (z) {
            zzfpb.zzd().zzi();
        } else {
            zzfpb.zzd().zzh();
        }
    }

    public final void zzd(Context context) {
        this.f8089c = new zzfnn(new Handler(), context, new zzfnl(), this);
    }

    public final void zze(float f2) {
        this.f8088b = f2;
        if (this.f8090d == null) {
            this.f8090d = zzfnr.zza();
        }
        Iterator it = this.f8090d.zzb().iterator();
        while (it.hasNext()) {
            ((zzfna) it.next()).zzg().zzl(f2);
        }
    }

    public final void zzf() {
        zzfnq.zza().zze(this);
        zzfnq.zza().zzf();
        zzfpb.zzd().zzi();
        this.f8089c.zza();
    }

    public final void zzg() {
        zzfpb.zzd().zzj();
        zzfnq.zza().zzg();
        this.f8089c.zzb();
    }
}
