package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.aeh;
import g.atu;
import g.ckd;
import g.cpm;
import g.dgw;
import g.eno;
import g.fbj;
import g.gby;
import g.gfp;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzffm {

    /* renamed from: a, reason: collision with root package name */
    public zzbfn f7855a;

    /* renamed from: b, reason: collision with root package name */
    public gfp f7856b;

    /* renamed from: d, reason: collision with root package name */
    public zzbmb f7858d;

    /* renamed from: e, reason: collision with root package name */
    public cpm f7859e;

    /* renamed from: f, reason: collision with root package name */
    public fbj f7860f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7861g;
    public aeh h;
    public atu i;
    public ArrayList j;
    public gby n;
    public eno o;
    public dgw p;
    public Bundle r;
    public String s;
    public ArrayList t;
    public zzems u;
    public int m = 1;

    /* renamed from: c, reason: collision with root package name */
    public final zzfez f7857c = new zzfez();
    public boolean l = false;
    public boolean q = false;
    public boolean k = false;

    public final zzffm zzA(Bundle bundle) {
        this.r = bundle;
        return this;
    }

    public final zzffm zzB(boolean z) {
        this.f7861g = z;
        return this;
    }

    public final zzffm zzC(int i) {
        this.m = i;
        return this;
    }

    public final zzffm zzD(zzbfn zzbfnVar) {
        this.f7855a = zzbfnVar;
        return this;
    }

    public final zzffm zzE(ArrayList arrayList) {
        this.j = arrayList;
        return this;
    }

    public final zzffm zzF(ArrayList arrayList) {
        this.t = arrayList;
        return this;
    }

    public final zzffm zzG(gfp gfpVar) {
        this.f7856b = gfpVar;
        if (gfpVar != null) {
            this.f7861g = gfpVar.zzc();
            this.f7860f = gfpVar.zza();
        }
        return this;
    }

    public final zzffm zzH(aeh aehVar) {
        this.h = aehVar;
        return this;
    }

    public final zzffm zzI(cpm cpmVar) {
        this.f7859e = cpmVar;
        return this;
    }

    public final zzffo zzJ() {
        ckd.w(this.s, "ad unit must not be null");
        ckd.w(this.o, "ad size must not be null");
        ckd.w(this.h, "ad request must not be null");
        return new zzffo(this);
    }

    public final String zzL() {
        return this.s;
    }

    public final boolean zzS() {
        return this.l;
    }

    public final boolean zzT() {
        return this.q;
    }

    public final zzffm zzV(atu atuVar) {
        this.i = atuVar;
        return this;
    }

    public final aeh zzf() {
        return this.h;
    }

    public final eno zzh() {
        return this.o;
    }

    public final zzfez zzp() {
        return this.f7857c;
    }

    public final zzffm zzq(zzffo zzffoVar) {
        this.f7857c.zza(zzffoVar.zzo.zza);
        this.h = zzffoVar.zzd;
        this.o = zzffoVar.zze;
        this.i = zzffoVar.zzt;
        this.s = zzffoVar.zzf;
        this.f7859e = zzffoVar.zza;
        this.j = zzffoVar.zzg;
        this.t = zzffoVar.zzh;
        this.f7855a = zzffoVar.zzi;
        this.n = zzffoVar.zzj;
        zzr(zzffoVar.zzl);
        zzG(zzffoVar.zzm);
        this.l = zzffoVar.zzp;
        this.q = zzffoVar.zzq;
        this.u = zzffoVar.zzc;
        this.k = zzffoVar.zzr;
        this.r = zzffoVar.zzs;
        return this;
    }

    public final zzffm zzr(dgw dgwVar) {
        this.p = dgwVar;
        if (dgwVar != null) {
            this.f7861g = dgwVar.getManualImpressionsEnabled();
        }
        return this;
    }

    public final zzffm zzs(eno enoVar) {
        this.o = enoVar;
        return this;
    }

    public final zzffm zzt(String str) {
        this.s = str;
        return this;
    }

    public final zzffm zzu(gby gbyVar) {
        this.n = gbyVar;
        return this;
    }

    public final zzffm zzv(zzems zzemsVar) {
        this.u = zzemsVar;
        return this;
    }

    public final zzffm zzw(zzbmb zzbmbVar) {
        this.f7858d = zzbmbVar;
        this.f7859e = new cpm(false, true, false);
        return this;
    }

    public final zzffm zzx(boolean z) {
        this.l = z;
        return this;
    }

    public final zzffm zzy(boolean z) {
        this.q = z;
        return this;
    }

    public final zzffm zzz(boolean z) {
        this.k = true;
        return this;
    }
}
