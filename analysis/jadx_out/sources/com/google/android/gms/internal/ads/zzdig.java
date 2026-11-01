package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.agd;
import g.bjq;
import g.bpp;
import g.cbz;

/* loaded from: classes3.dex */
public final class zzdig extends zzbfu {

    /* renamed from: a, reason: collision with root package name */
    public final zzdiy f6035a;

    /* renamed from: b, reason: collision with root package name */
    public bjq f6036b;

    public zzdig(zzdiy zzdiyVar) {
        this.f6035a = zzdiyVar;
    }

    public static float c(bjq bjqVar) {
        Drawable drawable;
        return (bjqVar == null || (drawable = (Drawable) bpp.b(bjqVar)) == null || drawable.getIntrinsicWidth() == -1 || drawable.getIntrinsicHeight() == -1) ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final float zze() throws RemoteException {
        zzdiy zzdiyVar = this.f6035a;
        if (zzdiyVar.zzb() != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return zzdiyVar.zzb();
        }
        if (zzdiyVar.zzj() != null) {
            try {
                return zzdiyVar.zzj().zze();
            } catch (RemoteException e2) {
                agd.f("Remote exception getting video controller aspect ratio.", e2);
                return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
        }
        bjq bjqVar = this.f6036b;
        if (bjqVar != null) {
            return c(bjqVar);
        }
        zzbfy zzm = zzdiyVar.zzm();
        if (zzm == null) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        float zzd = (zzm.zzd() == -1 || zzm.zzc() == -1) ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : zzm.zzd() / zzm.zzc();
        return zzd == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? c(zzm.zzf()) : zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final float zzf() throws RemoteException {
        zzdiy zzdiyVar = this.f6035a;
        return zzdiyVar.zzj() != null ? zzdiyVar.zzj().zzf() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final float zzg() throws RemoteException {
        zzdiy zzdiyVar = this.f6035a;
        return zzdiyVar.zzj() != null ? zzdiyVar.zzj().zzg() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final cbz zzh() throws RemoteException {
        return this.f6035a.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final bjq zzi() throws RemoteException {
        bjq bjqVar = this.f6036b;
        if (bjqVar != null) {
            return bjqVar;
        }
        zzbfy zzm = this.f6035a.zzm();
        if (zzm == null) {
            return null;
        }
        return zzm.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final void zzj(bjq bjqVar) {
        this.f6036b = bjqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final boolean zzk() throws RemoteException {
        return this.f6035a.zzaf();
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final boolean zzl() throws RemoteException {
        return this.f6035a.zzj() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfv
    public final void zzm(zzbhg zzbhgVar) {
        zzdiy zzdiyVar = this.f6035a;
        if (zzdiyVar.zzj() instanceof zzcgm) {
            ((zzcgm) zzdiyVar.zzj()).zzv(zzbhgVar);
        }
    }
}
