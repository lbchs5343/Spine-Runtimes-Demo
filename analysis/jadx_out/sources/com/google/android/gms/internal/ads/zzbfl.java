package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import g.bjq;
import g.bpp;

/* loaded from: classes3.dex */
public final class zzbfl extends zzbfx {

    /* renamed from: a, reason: collision with root package name */
    public final double f4803a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4804b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4805c;

    /* renamed from: d, reason: collision with root package name */
    public final Drawable f4806d;

    /* renamed from: e, reason: collision with root package name */
    public final Uri f4807e;

    public zzbfl(Drawable drawable, Uri uri, double d2, int i, int i2) {
        this.f4806d = drawable;
        this.f4807e = uri;
        this.f4803a = d2;
        this.f4804b = i;
        this.f4805c = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public final double zzb() {
        return this.f4803a;
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public final int zzc() {
        return this.f4805c;
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public final int zzd() {
        return this.f4804b;
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public final Uri zze() throws RemoteException {
        return this.f4807e;
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public final bjq zzf() throws RemoteException {
        return new bpp(this.f4806d);
    }
}
