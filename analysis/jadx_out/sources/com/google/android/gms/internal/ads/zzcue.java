package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import g.akx;
import g.cmo;
import g.dcy;
import g.ggs;
import g.ti;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcue implements zzczj, zzdex {

    /* renamed from: c, reason: collision with root package name */
    public final Context f5683c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfko f5684d;

    /* renamed from: e, reason: collision with root package name */
    public final akx f5685e;

    /* renamed from: f, reason: collision with root package name */
    public zzbvt f5686f;
    public final Executor h;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5682b = false;

    /* renamed from: a, reason: collision with root package name */
    public boolean f5681a = false;

    /* renamed from: g, reason: collision with root package name */
    public final AtomicBoolean f5687g = new AtomicBoolean();

    public zzcue(Context context, zzfko zzfkoVar, akx akxVar, zzges zzgesVar) {
        this.f5683c = context;
        this.f5684d = zzfkoVar;
        this.f5685e = akxVar;
        this.h = zzgesVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0068, code lost:
    
        if (android.text.TextUtils.equals(r0, android.service.quicksettings.TileService.EXTRA_SERVICE) != false) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzd() {
        zzbvt zzbvtVar;
        int i;
        int i2;
        zzboi zza;
        if (!this.f5687g.getAndSet(true)) {
            if (!((Boolean) zzben.zzk.zze()).booleanValue()) {
                i = 3;
                if (!((Boolean) zzben.zzl.zze()).booleanValue()) {
                    if (((Boolean) zzben.zzj.zze()).booleanValue()) {
                        try {
                            String optString = new JSONObject(((cmo) ti.f20033a.f20034ab.zzi()).av().zzc()).optString("local_flag_write");
                            if (TextUtils.equals(optString, "client")) {
                            }
                        } catch (JSONException unused) {
                        }
                    }
                    i = 1;
                }
                i2 = i - 1;
                zzfko zzfkoVar = this.f5684d;
                Context context = this.f5683c;
                if (i2 != 1) {
                    zza = ti.f20033a.w.zza(context, akx.forPackage(), zzfkoVar);
                } else if (i2 == 2) {
                    zza = ti.f20033a.w.zzb(context, akx.forPackage(), zzfkoVar);
                }
                zzboc zzbocVar = zzbof.zza;
                this.f5686f = new zzbvt(context, zza.zza("google.afma.sdkConstants.getSdkConstants", zzbocVar, zzbocVar), this.f5685e);
                this.f5682b = true;
            }
            i = 2;
            i2 = i - 1;
            zzfko zzfkoVar2 = this.f5684d;
            Context context2 = this.f5683c;
            if (i2 != 1) {
            }
            zzboc zzbocVar2 = zzbof.zza;
            this.f5686f = new zzbvt(context2, zza.zza("google.afma.sdkConstants.getSdkConstants", zzbocVar2, zzbocVar2), this.f5685e);
            this.f5682b = true;
        }
        if (this.f5682b && (zzbvtVar = this.f5686f) != null) {
            dcy zza2 = zzbvtVar.zza();
            if (!this.f5681a && ((Boolean) zzbef.zzi.zze()).booleanValue()) {
                zza2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcud
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcue zzcueVar = zzcue.this;
                        zzbbx.zze(zzcueVar.f5683c);
                        zzcueVar.f5681a = true;
                    }
                }, this.h);
            }
            zzcam.zza(zza2, "persistFlagsClient");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdn(zzbvx zzbvxVar) {
        zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzczj
    public final void zzdo(zzfff zzfffVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final void zze(ggs ggsVar) {
        zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final void zzf(String str) {
        zzd();
    }
}
