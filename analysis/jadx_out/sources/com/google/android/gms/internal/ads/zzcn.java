package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public abstract class zzcn implements zzcm {

    /* renamed from: a, reason: collision with root package name */
    public zzck f5353a;

    /* renamed from: b, reason: collision with root package name */
    public ByteBuffer f5354b;

    /* renamed from: c, reason: collision with root package name */
    public zzck f5355c;

    /* renamed from: d, reason: collision with root package name */
    public ByteBuffer f5356d;

    /* renamed from: e, reason: collision with root package name */
    public zzck f5357e;

    /* renamed from: f, reason: collision with root package name */
    public zzck f5358f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5359g;

    public zzcn() {
        ByteBuffer byteBuffer = zzcm.zza;
        this.f5354b = byteBuffer;
        this.f5356d = byteBuffer;
        zzck zzckVar = zzck.zza;
        this.f5358f = zzckVar;
        this.f5353a = zzckVar;
        this.f5355c = zzckVar;
        this.f5357e = zzckVar;
    }

    public final ByteBuffer h(int i) {
        if (this.f5354b.capacity() < i) {
            this.f5354b = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f5354b.clear();
        }
        ByteBuffer byteBuffer = this.f5354b;
        this.f5356d = byteBuffer;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final zzck zza(zzck zzckVar) throws zzcl {
        this.f5358f = zzckVar;
        this.f5353a = zzi(zzckVar);
        return zzg() ? this.f5353a : zzck.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public ByteBuffer zzb() {
        ByteBuffer byteBuffer = this.f5356d;
        this.f5356d = zzcm.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final void zzc() {
        this.f5356d = zzcm.zza;
        this.f5359g = false;
        this.f5355c = this.f5358f;
        this.f5357e = this.f5353a;
        zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final void zzd() {
        this.f5359g = true;
        zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final void zzf() {
        zzc();
        this.f5354b = zzcm.zza;
        zzck zzckVar = zzck.zza;
        this.f5358f = zzckVar;
        this.f5353a = zzckVar;
        this.f5355c = zzckVar;
        this.f5357e = zzckVar;
        zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public boolean zzg() {
        return this.f5353a != zzck.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public boolean zzh() {
        return this.f5359g && this.f5356d == zzcm.zza;
    }

    public zzck zzi(zzck zzckVar) {
        throw null;
    }

    public void zzk() {
    }

    public void zzl() {
    }

    public void zzm() {
    }
}
