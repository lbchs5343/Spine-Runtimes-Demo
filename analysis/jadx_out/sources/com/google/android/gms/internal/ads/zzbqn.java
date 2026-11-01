package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.bjq;
import g.bpp;
import g.cbz;
import g.dqn;
import g.efo;
import g.fyz;
import g.gwe;
import g.hl;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbqn extends zzbpu {

    /* renamed from: a, reason: collision with root package name */
    public final efo f4940a;

    public zzbqn(efo efoVar) {
        this.f4940a = efoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final boolean zzA() {
        return this.f4940a.f15446c;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final boolean zzB() {
        return this.f4940a.i;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final double zze() {
        Double d2 = this.f4940a.n;
        if (d2 != null) {
            return d2.doubleValue();
        }
        return -1.0d;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final float zzf() {
        this.f4940a.getClass();
        return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final float zzg() {
        this.f4940a.getClass();
        return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final float zzh() {
        this.f4940a.getClass();
        return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final Bundle zzi() {
        return this.f4940a.f15448e;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final cbz zzj() {
        cbz cbzVar;
        hl hlVar = this.f4940a.l;
        if (hlVar == null) {
            return null;
        }
        synchronized (hlVar.f19377a) {
            cbzVar = hlVar.f19378b;
        }
        return cbzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final zzbfr zzk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final zzbfy zzl() {
        dqn dqnVar = this.f4940a.f15447d;
        if (dqnVar != null) {
            return new zzbfl(dqnVar.getDrawable(), dqnVar.getUri(), dqnVar.getScale(), dqnVar.zzb(), dqnVar.zza());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final bjq zzm() {
        this.f4940a.getClass();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final bjq zzn() {
        this.f4940a.getClass();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final bjq zzo() {
        Object obj = this.f4940a.f15445b;
        if (obj == null) {
            return null;
        }
        return new bpp(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final String zzp() {
        return this.f4940a.h;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final String zzq() {
        return this.f4940a.m;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final String zzr() {
        return this.f4940a.f15449f;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final String zzs() {
        return this.f4940a.f15450g;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final String zzt() {
        return this.f4940a.j;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final String zzu() {
        return this.f4940a.f15444a;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final List zzv() {
        List<dqn> list = this.f4940a.k;
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (dqn dqnVar : list) {
                arrayList.add(new zzbfl(dqnVar.getDrawable(), dqnVar.getUri(), dqnVar.getScale(), dqnVar.zzb(), dqnVar.zza()));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final void zzw(bjq bjqVar) {
        this.f4940a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final void zzx() {
        this.f4940a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final void zzy(bjq bjqVar, bjq bjqVar2, bjq bjqVar3) {
        View view = (View) bpp.b(bjqVar);
        ((fyz) this.f4940a).getClass();
        if (gwe.f18866a.get(view) != null) {
            throw new ClassCastException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpv
    public final void zzz(bjq bjqVar) {
        this.f4940a.getClass();
    }
}
