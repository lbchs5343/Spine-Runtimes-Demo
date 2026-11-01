package com.google.android.gms.internal.ads;

import g.bcp;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzdjj {
    public static final zzdjj zza = new zzdjj(new zzdjh());

    /* renamed from: a, reason: collision with root package name */
    public final zzbhj f6082a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbmk f6083b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbgz f6084c;

    /* renamed from: d, reason: collision with root package name */
    public final bcp f6085d;

    /* renamed from: e, reason: collision with root package name */
    public final zzbgw f6086e;

    /* renamed from: f, reason: collision with root package name */
    public final zzbhm f6087f;

    /* renamed from: g, reason: collision with root package name */
    public final bcp f6088g;

    public zzdjj(zzdjh zzdjhVar) {
        this.f6084c = zzdjhVar.f6077c;
        this.f6086e = zzdjhVar.f6079e;
        this.f6087f = zzdjhVar.f6080f;
        this.f6085d = new bcp(zzdjhVar.f6078d);
        this.f6088g = new bcp(zzdjhVar.f6081g);
        this.f6082a = zzdjhVar.f6075a;
        this.f6083b = zzdjhVar.f6076b;
    }

    public final zzbgw zza() {
        return this.f6086e;
    }

    public final zzbgz zzb() {
        return this.f6084c;
    }

    public final zzbhc zzc(String str) {
        return (zzbhc) this.f6088g.get(str);
    }

    public final zzbhf zzd(String str) {
        return (zzbhf) this.f6085d.get(str);
    }

    public final zzbhj zze() {
        return this.f6082a;
    }

    public final zzbhm zzf() {
        return this.f6087f;
    }

    public final zzbmk zzg() {
        return this.f6083b;
    }

    public final ArrayList zzh() {
        bcp bcpVar = this.f6085d;
        ArrayList arrayList = new ArrayList(bcpVar.f11294g);
        for (int i = 0; i < bcpVar.f11294g; i++) {
            arrayList.add((String) bcpVar.n(i));
        }
        return arrayList;
    }

    public final ArrayList zzi() {
        ArrayList arrayList = new ArrayList();
        if (this.f6087f != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.f6084c != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.f6086e != null) {
            arrayList.add(Integer.toString(2));
        }
        if (!this.f6085d.isEmpty()) {
            arrayList.add(Integer.toString(3));
        }
        if (this.f6083b != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }
}
