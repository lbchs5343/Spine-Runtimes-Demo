package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class zzfrp {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfrr f8181a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f8182b;

    /* renamed from: c, reason: collision with root package name */
    public int f8183c;

    /* renamed from: d, reason: collision with root package name */
    public int f8184d;

    public /* synthetic */ zzfrp(zzfrr zzfrrVar, byte[] bArr) {
        this.f8181a = zzfrrVar;
        this.f8182b = bArr;
    }

    public final zzfrp zza(int i) {
        this.f8184d = i;
        return this;
    }

    public final zzfrp zzb(int i) {
        this.f8183c = i;
        return this;
    }

    public final synchronized void zzc() {
        try {
            zzfrr zzfrrVar = this.f8181a;
            if (zzfrrVar.f8186b) {
                zzfrrVar.f8185a.zzj(this.f8182b);
                this.f8181a.f8185a.zzi(this.f8183c);
                this.f8181a.f8185a.zzg(this.f8184d);
                this.f8181a.f8185a.zzh(null);
                this.f8181a.f8185a.zzf();
            }
        } catch (RemoteException unused) {
        }
    }
}
