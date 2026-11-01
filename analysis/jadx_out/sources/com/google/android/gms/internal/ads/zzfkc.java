package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.IBinder;
import android.os.SystemClock;
import android.text.TextUtils;
import g.abz;
import g.edt;
import g.ti;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzfkc implements zzfka {
    public final Context h;
    public final int j;
    public long m = 0;
    public long p = -1;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7943e = false;
    public int o = 2;
    public int r = 2;

    /* renamed from: g, reason: collision with root package name */
    public int f7945g = 0;
    public String i = "";
    public String q = "";

    /* renamed from: a, reason: collision with root package name */
    public String f7939a = "";
    public String l = "";
    public zzfkq n = zzfkq.SCAR_REQUEST_TYPE_UNSPECIFIED;

    /* renamed from: b, reason: collision with root package name */
    public String f7940b = "";

    /* renamed from: f, reason: collision with root package name */
    public String f7944f = "";
    public String k = "";

    /* renamed from: d, reason: collision with root package name */
    public boolean f7942d = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7941c = false;

    public zzfkc(Context context, int i) {
        this.h = context;
        this.j = i;
    }

    public final synchronized zzfkc zzA() {
        ti.f20033a.v.getClass();
        this.p = SystemClock.elapsedRealtime();
        return this;
    }

    public final synchronized zzfkc zzK(int i) {
        this.o = i;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final /* bridge */ /* synthetic */ zzfka zza(abz abzVar) {
        zzr(abzVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final /* bridge */ /* synthetic */ zzfka zzb(zzffe zzffeVar) {
        zzs(zzffeVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final /* bridge */ /* synthetic */ zzfka zzc(String str) {
        zzt(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final /* bridge */ /* synthetic */ zzfka zzd(String str) {
        zzu(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final /* bridge */ /* synthetic */ zzfka zze(String str) {
        zzv(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final /* bridge */ /* synthetic */ zzfka zzf(zzfkq zzfkqVar) {
        zzw(zzfkqVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final /* bridge */ /* synthetic */ zzfka zzg(boolean z) {
        zzx(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final /* bridge */ /* synthetic */ zzfka zzh(Throwable th) {
        zzy(th);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final /* bridge */ /* synthetic */ zzfka zzi() {
        zzz();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final /* bridge */ /* synthetic */ zzfka zzj() {
        zzA();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final synchronized boolean zzk() {
        return this.f7941c;
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final boolean zzl() {
        return !TextUtils.isEmpty(this.f7939a);
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final synchronized zzfke zzm() {
        try {
            if (this.f7942d) {
                return null;
            }
            this.f7942d = true;
            if (!this.f7941c) {
                zzz();
            }
            if (this.p < 0) {
                zzA();
            }
            return new zzfke(this);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfka
    public final /* bridge */ /* synthetic */ zzfka zzn(int i) {
        zzK(i);
        return this;
    }

    public final synchronized zzfkc zzr(abz abzVar) {
        try {
            IBinder iBinder = abzVar.zze;
            if (iBinder != null) {
                zzcwf zzcwfVar = (zzcwf) iBinder;
                String zzk = zzcwfVar.zzk();
                if (!TextUtils.isEmpty(zzk)) {
                    this.i = zzk;
                }
                String zzi = zzcwfVar.zzi();
                if (!TextUtils.isEmpty(zzi)) {
                    this.q = zzi;
                }
            }
        } finally {
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
    
        r2.q = r0.zzab;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized zzfkc zzs(zzffe zzffeVar) {
        try {
            if (!TextUtils.isEmpty(zzffeVar.zzb.zzb)) {
                this.i = zzffeVar.zzb.zzb;
            }
            Iterator it = zzffeVar.zza.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                zzfet zzfetVar = (zzfet) it.next();
                if (!TextUtils.isEmpty(zzfetVar.zzab)) {
                    break;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final synchronized zzfkc zzt(String str) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziu)).booleanValue()) {
            this.k = str;
        }
        return this;
    }

    public final synchronized zzfkc zzu(String str) {
        this.f7939a = str;
        return this;
    }

    public final synchronized zzfkc zzv(String str) {
        this.l = str;
        return this;
    }

    public final synchronized zzfkc zzw(zzfkq zzfkqVar) {
        this.n = zzfkqVar;
        return this;
    }

    public final synchronized zzfkc zzx(boolean z) {
        this.f7943e = z;
        return this;
    }

    public final synchronized zzfkc zzy(Throwable th) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziu)).booleanValue()) {
            this.f7944f = zzbuj.zzf(th);
            this.f7940b = (String) zzfxd.zzb(zzfwf.zzc('\n')).zzc(zzbuj.zze(th)).iterator().next();
        }
        return this;
    }

    public final synchronized zzfkc zzz() {
        Configuration configuration;
        ti tiVar = ti.f20033a;
        this.f7945g = tiVar.k.f(this.h);
        Resources resources = this.h.getResources();
        int i = 2;
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            i = configuration.orientation == 2 ? 4 : 3;
        }
        this.r = i;
        tiVar.v.getClass();
        this.m = SystemClock.elapsedRealtime();
        this.f7941c = true;
        return this;
    }
}
