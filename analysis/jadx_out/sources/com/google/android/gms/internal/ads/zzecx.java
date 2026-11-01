package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.zzbbs;
import g.cmo;
import g.edt;
import g.ti;

/* loaded from: classes3.dex */
public final class zzecx implements zzfjs {

    /* renamed from: a, reason: collision with root package name */
    public final zzecl f6828a;

    /* renamed from: b, reason: collision with root package name */
    public final zzecp f6829b;

    public zzecx(zzecl zzeclVar, zzecp zzecpVar) {
        this.f6828a = zzeclVar;
        this.f6829b = zzecpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzd(zzfjl zzfjlVar, String str) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgc)).booleanValue() && zzfjl.RENDERER == zzfjlVar) {
            zzecl zzeclVar = this.f6828a;
            if (zzeclVar.zzc() != 0) {
                ti.f20033a.v.getClass();
                zzeclVar.zzf(SystemClock.elapsedRealtime() - zzeclVar.zzc());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzdC(zzfjl zzfjlVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzdD(zzfjl zzfjlVar, String str, Throwable th) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgc)).booleanValue() && zzfjl.RENDERER == zzfjlVar) {
            zzecl zzeclVar = this.f6828a;
            if (zzeclVar.zzc() != 0) {
                ti.f20033a.v.getClass();
                zzeclVar.zzf(SystemClock.elapsedRealtime() - zzeclVar.zzc());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzdE(zzfjl zzfjlVar, String str) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgc)).booleanValue()) {
            zzfjl zzfjlVar2 = zzfjl.RENDERER;
            zzecl zzeclVar = this.f6828a;
            if (zzfjlVar2 == zzfjlVar) {
                ti.f20033a.v.getClass();
                zzeclVar.zzg(SystemClock.elapsedRealtime());
            } else if (zzfjl.PRELOADED_LOADER == zzfjlVar || zzfjl.SERVER_TRANSACTION == zzfjlVar) {
                ti.f20033a.v.getClass();
                zzeclVar.zzh(SystemClock.elapsedRealtime());
                final long zzd = zzeclVar.zzd();
                final zzecp zzecpVar = this.f6829b;
                zzecpVar.h.zza(new zzfiv() { // from class: com.google.android.gms.internal.ads.zzeco
                    @Override // com.google.android.gms.internal.ads.zzfiv
                    public final Object zza(Object obj) {
                        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                        if (((cmo) zzecp.this.f6822g).ax()) {
                            return null;
                        }
                        long j = zzd;
                        zzbbs.zzaf.zza.C0208zza zzn = zzbbs.zzaf.zza.zzn();
                        zzn.zzP(j);
                        byte[] zzaV = zzn.zzbr().zzaV();
                        zzecw.zzf(sQLiteDatabase, false, false);
                        zzecw.zzc(sQLiteDatabase, j, zzaV);
                        return null;
                    }
                });
            }
        }
    }
}
