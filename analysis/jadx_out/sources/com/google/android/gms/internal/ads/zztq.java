package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes3.dex */
public abstract class zztq implements zzut {

    /* renamed from: b, reason: collision with root package name */
    public Looper f8884b;

    /* renamed from: d, reason: collision with root package name */
    public zzbv f8886d;

    /* renamed from: g, reason: collision with root package name */
    public zzoj f8889g;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f8885c = new ArrayList(1);

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f8887e = new HashSet(1);

    /* renamed from: f, reason: collision with root package name */
    public final zzva f8888f = new zzva();

    /* renamed from: a, reason: collision with root package name */
    public final zzrk f8883a = new zzrk();

    public final void h(zzbv zzbvVar) {
        this.f8886d = zzbvVar;
        ArrayList arrayList = this.f8885c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((zzus) arrayList.get(i)).zza(this, zzbvVar);
        }
    }

    public void i() {
    }

    public void j() {
    }

    public abstract void k(zzhd zzhdVar);

    @Override // com.google.android.gms.internal.ads.zzut
    public /* synthetic */ zzbv zzM() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzg(Handler handler, zzrl zzrlVar) {
        this.f8883a.zzb(handler, zzrlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzh(Handler handler, zzvb zzvbVar) {
        this.f8888f.zzb(handler, zzvbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzi(zzus zzusVar) {
        HashSet hashSet = this.f8887e;
        boolean isEmpty = hashSet.isEmpty();
        hashSet.remove(zzusVar);
        if (isEmpty || !hashSet.isEmpty()) {
            return;
        }
        i();
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzk(zzus zzusVar) {
        this.f8884b.getClass();
        HashSet hashSet = this.f8887e;
        boolean isEmpty = hashSet.isEmpty();
        hashSet.add(zzusVar);
        if (isEmpty) {
            j();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzm(zzus zzusVar, zzhd zzhdVar, zzoj zzojVar) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f8884b;
        boolean z = true;
        if (looper != null && looper != myLooper) {
            z = false;
        }
        zzdb.zzd(z);
        this.f8889g = zzojVar;
        zzbv zzbvVar = this.f8886d;
        this.f8885c.add(zzusVar);
        if (this.f8884b == null) {
            this.f8884b = myLooper;
            this.f8887e.add(zzusVar);
            k(zzhdVar);
        } else if (zzbvVar != null) {
            zzk(zzusVar);
            zzusVar.zza(this, zzbvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzp(zzus zzusVar) {
        ArrayList arrayList = this.f8885c;
        arrayList.remove(zzusVar);
        if (!arrayList.isEmpty()) {
            zzi(zzusVar);
            return;
        }
        this.f8884b = null;
        this.f8886d = null;
        this.f8889g = null;
        this.f8887e.clear();
        zzq();
    }

    public abstract void zzq();

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzr(zzrl zzrlVar) {
        this.f8883a.zzc(zzrlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzs(zzvb zzvbVar) {
        this.f8888f.zzh(zzvbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public /* synthetic */ void zzt(zzaw zzawVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public /* synthetic */ boolean zzv() {
        return true;
    }
}
