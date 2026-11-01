package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import g.acl;
import g.aeh;
import g.atu;
import g.cpm;
import g.dgw;
import g.edt;
import g.ela;
import g.eno;
import g.esy;
import g.fbj;
import g.fx;
import g.gby;
import g.gfp;
import g.gyv;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzffo {
    public final cpm zza;
    public final zzbmb zzb;
    public final zzems zzc;
    public final aeh zzd;
    public final eno zze;
    public final String zzf;
    public final ArrayList zzg;
    public final ArrayList zzh;
    public final zzbfn zzi;
    public final gby zzj;
    public final int zzk;
    public final dgw zzl;
    public final gfp zzm;
    public final fbj zzn;
    public final zzffb zzo;
    public final boolean zzp;
    public final boolean zzq;
    public final boolean zzr;
    public final Bundle zzs;
    public final atu zzt;

    public zzffo(zzffm zzffmVar) {
        this.zze = zzffmVar.o;
        this.zzf = zzffmVar.s;
        this.zzt = zzffmVar.i;
        aeh aehVar = zzffmVar.h;
        int i = aehVar.zza;
        long j = aehVar.zzb;
        Bundle bundle = aehVar.zzc;
        int i2 = aehVar.zzd;
        List list = aehVar.zze;
        boolean z = aehVar.zzf;
        int i3 = aehVar.zzg;
        boolean z2 = aehVar.zzh || zzffmVar.f7861g;
        String str = aehVar.zzi;
        ela elaVar = aehVar.zzj;
        Location location = aehVar.zzk;
        String str2 = aehVar.zzl;
        Bundle bundle2 = aehVar.zzm;
        Bundle bundle3 = aehVar.zzn;
        List list2 = aehVar.zzo;
        String str3 = aehVar.zzp;
        String str4 = aehVar.zzq;
        boolean z3 = aehVar.zzr;
        acl aclVar = aehVar.zzs;
        int i4 = aehVar.zzt;
        String str5 = aehVar.zzu;
        List list3 = aehVar.zzv;
        int ac = esy.ac(aehVar.zzw);
        aeh aehVar2 = zzffmVar.h;
        this.zzd = new aeh(i, j, bundle, i2, list, z, i3, z2, str, elaVar, location, str2, bundle2, bundle3, list2, str3, str4, z3, aclVar, i4, str5, list3, ac, aehVar2.zzx, aehVar2.zzy, aehVar2.zzz);
        cpm cpmVar = zzffmVar.f7859e;
        zzbfn zzbfnVar = null;
        if (cpmVar == null) {
            zzbfn zzbfnVar2 = zzffmVar.f7855a;
            cpmVar = zzbfnVar2 != null ? zzbfnVar2.zzf : null;
        }
        this.zza = cpmVar;
        ArrayList arrayList = zzffmVar.j;
        this.zzg = arrayList;
        this.zzh = zzffmVar.t;
        if (arrayList != null && (zzbfnVar = zzffmVar.f7855a) == null) {
            zzbfnVar = new zzbfn(new gyv(new fx()));
        }
        this.zzi = zzbfnVar;
        this.zzj = zzffmVar.n;
        this.zzk = zzffmVar.m;
        this.zzl = zzffmVar.p;
        this.zzm = zzffmVar.f7856b;
        this.zzn = zzffmVar.f7860f;
        this.zzb = zzffmVar.f7858d;
        this.zzo = new zzffb(zzffmVar.f7857c);
        this.zzp = zzffmVar.l;
        this.zzq = zzffmVar.q;
        this.zzc = zzffmVar.u;
        this.zzr = zzffmVar.k;
        this.zzs = zzffmVar.r;
    }

    public final zzbhp zza() {
        gfp gfpVar = this.zzm;
        if (gfpVar == null && this.zzl == null) {
            return null;
        }
        return gfpVar != null ? gfpVar.zzb() : this.zzl.zza();
    }

    public final boolean zzb() {
        return this.zzf.matches((String) edt.f15376a.f15379d.zza(zzbcn.zzdm));
    }
}
