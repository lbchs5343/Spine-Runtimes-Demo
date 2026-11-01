package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;

/* loaded from: classes3.dex */
public final class zzgl implements zzgc {

    /* renamed from: d, reason: collision with root package name */
    public boolean f8435d;

    /* renamed from: e, reason: collision with root package name */
    public zzhd f8436e;

    /* renamed from: f, reason: collision with root package name */
    public String f8437f;

    /* renamed from: c, reason: collision with root package name */
    public final zzgx f8434c = new zzgx();

    /* renamed from: a, reason: collision with root package name */
    public int f8432a = AVMDLDataLoader.KeyIsLiveSetLoaderType;

    /* renamed from: b, reason: collision with root package name */
    public int f8433b = AVMDLDataLoader.KeyIsLiveSetLoaderType;

    public final zzgl zzb(boolean z) {
        this.f8435d = true;
        return this;
    }

    public final zzgl zzc(int i) {
        this.f8432a = i;
        return this;
    }

    public final zzgl zzd(int i) {
        this.f8433b = i;
        return this;
    }

    public final zzgl zze(zzhd zzhdVar) {
        this.f8436e = zzhdVar;
        return this;
    }

    public final zzgl zzf(String str) {
        this.f8437f = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgc
    /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final zzgq zza() {
        zzgq zzgqVar = new zzgq(this.f8437f, this.f8432a, this.f8433b, this.f8435d, this.f8434c);
        zzhd zzhdVar = this.f8436e;
        if (zzhdVar != null) {
            zzgqVar.zzf(zzhdVar);
        }
        return zzgqVar;
    }
}
