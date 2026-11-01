package com.google.android.gms.internal.ads;

import g.cbv;
import g.dcy;
import g.edt;
import g.gqc;
import g.ti;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzfga {

    /* renamed from: a, reason: collision with root package name */
    public final zzflr f7865a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfkl f7866b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfet f7867c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcnb f7868d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfew f7869e;

    /* renamed from: f, reason: collision with root package name */
    public final zzedp f7870f;

    public zzfga(zzedp zzedpVar, zzflr zzflrVar, zzfet zzfetVar, zzfew zzfewVar, zzcnb zzcnbVar, zzfkl zzfklVar) {
        this.f7867c = zzfetVar;
        this.f7869e = zzfewVar;
        this.f7870f = zzedpVar;
        this.f7865a = zzflrVar;
        this.f7868d = zzcnbVar;
        this.f7866b = zzfklVar;
    }

    public final void zza(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzb((String) it.next(), 2);
        }
    }

    public final void zzb(String str, int i) {
        if (!this.f7867c.zzai) {
            this.f7865a.zzc(str, this.f7866b);
            return;
        }
        ti.f20033a.v.getClass();
        this.f7870f.zzd(new zzedr(System.currentTimeMillis(), this.f7869e.zzb, str, i));
    }

    public final void zzc(List list, int i) {
        dcy zzh;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjI)).booleanValue() && zzcnb.zzj(str)) {
                zzh = this.f7868d.zzb(str, cbv.f12612a.f12614c);
            } else {
                zzh = zzgei.zzh(str);
            }
            zzgei.zzr(zzh, new gqc(this, i, 15), zzcaj.zza);
        }
    }
}
