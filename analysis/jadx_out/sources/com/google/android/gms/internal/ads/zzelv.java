package com.google.android.gms.internal.ads;

import android.content.Context;
import g.atu;
import g.cpu;
import g.dgw;
import g.ejp;
import g.eno;
import g.gfp;
import g.zh;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzelv extends zh {

    /* renamed from: a, reason: collision with root package name */
    public final zzffm f7235a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdjh f7236b;

    /* renamed from: c, reason: collision with root package name */
    public ejp f7237c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f7238d;

    /* renamed from: e, reason: collision with root package name */
    public final zzchk f7239e;

    public zzelv(zzchk zzchkVar, Context context, String str) {
        zzffm zzffmVar = new zzffm();
        this.f7235a = zzffmVar;
        this.f7236b = new zzdjh();
        this.f7239e = zzchkVar;
        zzffmVar.zzt(str);
        this.f7238d = context;
    }

    @Override // g.hav
    public final cpu zze() {
        zzdjj zzg = this.f7236b.zzg();
        ArrayList zzi = zzg.zzi();
        zzffm zzffmVar = this.f7235a;
        zzffmVar.zzE(zzi);
        zzffmVar.zzF(zzg.zzh());
        if (zzffmVar.zzh() == null) {
            zzffmVar.zzs(eno.zzc());
        }
        return new zzelw(this.f7238d, this.f7239e, this.f7235a, zzg, this.f7237c);
    }

    @Override // g.hav
    public final void zzf(zzbgw zzbgwVar) {
        this.f7236b.zza(zzbgwVar);
    }

    @Override // g.hav
    public final void zzg(zzbgz zzbgzVar) {
        this.f7236b.zzb(zzbgzVar);
    }

    @Override // g.hav
    public final void zzh(String str, zzbhf zzbhfVar, zzbhc zzbhcVar) {
        this.f7236b.zzc(str, zzbhfVar, zzbhcVar);
    }

    @Override // g.hav
    public final void zzi(zzbmk zzbmkVar) {
        this.f7236b.zzd(zzbmkVar);
    }

    @Override // g.hav
    public final void zzj(zzbhj zzbhjVar, eno enoVar) {
        this.f7236b.zze(zzbhjVar);
        this.f7235a.zzs(enoVar);
    }

    @Override // g.hav
    public final void zzk(zzbhm zzbhmVar) {
        this.f7236b.zzf(zzbhmVar);
    }

    @Override // g.hav
    public final void zzl(ejp ejpVar) {
        this.f7237c = ejpVar;
    }

    @Override // g.hav
    public final void zzm(dgw dgwVar) {
        this.f7235a.zzr(dgwVar);
    }

    @Override // g.hav
    public final void zzn(zzbmb zzbmbVar) {
        this.f7235a.zzw(zzbmbVar);
    }

    @Override // g.hav
    public final void zzo(zzbfn zzbfnVar) {
        this.f7235a.zzD(zzbfnVar);
    }

    @Override // g.hav
    public final void zzp(gfp gfpVar) {
        this.f7235a.zzG(gfpVar);
    }

    @Override // g.hav
    public final void zzq(atu atuVar) {
        this.f7235a.zzV(atuVar);
    }
}
