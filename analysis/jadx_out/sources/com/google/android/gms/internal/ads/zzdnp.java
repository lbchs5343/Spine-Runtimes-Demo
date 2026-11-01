package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.evo;
import g.fim;
import g.gst;

/* loaded from: classes3.dex */
public class zzdnp implements evo, zzbih, fim, zzbij, gst {

    /* renamed from: a, reason: collision with root package name */
    public fim f6262a;

    /* renamed from: b, reason: collision with root package name */
    public zzbij f6263b;

    /* renamed from: c, reason: collision with root package name */
    public gst f6264c;

    /* renamed from: d, reason: collision with root package name */
    public evo f6265d;

    /* renamed from: e, reason: collision with root package name */
    public zzbih f6266e;

    public final synchronized void f(evo evoVar, zzbih zzbihVar, fim fimVar, zzbij zzbijVar, gst gstVar) {
        this.f6265d = evoVar;
        this.f6266e = zzbihVar;
        this.f6262a = fimVar;
        this.f6263b = zzbijVar;
        this.f6264c = gstVar;
    }

    @Override // g.evo
    public final synchronized void onAdClicked() {
        evo evoVar = this.f6265d;
        if (evoVar != null) {
            evoVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbih
    public final synchronized void zza(String str, Bundle bundle) {
        zzbih zzbihVar = this.f6266e;
        if (zzbihVar != null) {
            zzbihVar.zza(str, bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbij
    public final synchronized void zzb(String str, String str2) {
        zzbij zzbijVar = this.f6263b;
        if (zzbijVar != null) {
            zzbijVar.zzb(str, str2);
        }
    }

    @Override // g.fim
    public final synchronized void zzdH() {
        fim fimVar = this.f6262a;
        if (fimVar != null) {
            fimVar.zzdH();
        }
    }

    @Override // g.fim
    public final synchronized void zzdk() {
        fim fimVar = this.f6262a;
        if (fimVar != null) {
            fimVar.zzdk();
        }
    }

    @Override // g.fim
    public final synchronized void zzdq() {
        fim fimVar = this.f6262a;
        if (fimVar != null) {
            fimVar.zzdq();
        }
    }

    @Override // g.fim
    public final synchronized void zzdr() {
        fim fimVar = this.f6262a;
        if (fimVar != null) {
            fimVar.zzdr();
        }
    }

    @Override // g.fim
    public final synchronized void zzdt() {
        fim fimVar = this.f6262a;
        if (fimVar != null) {
            fimVar.zzdt();
        }
    }

    @Override // g.fim
    public final synchronized void zzdu(int i) {
        fim fimVar = this.f6262a;
        if (fimVar != null) {
            fimVar.zzdu(i);
        }
    }

    @Override // g.gst
    public final synchronized void zzg() {
        gst gstVar = this.f6264c;
        if (gstVar != null) {
            gstVar.zzg();
        }
    }
}
