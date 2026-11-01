package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import g.agd;
import g.bjq;
import g.bpp;
import g.eox;

/* loaded from: classes3.dex */
public final class zzbso extends eox {

    /* renamed from: a, reason: collision with root package name */
    public final double f4976a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4977b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbfy f4978c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4979d;

    /* renamed from: e, reason: collision with root package name */
    public final Drawable f4980e;

    /* renamed from: f, reason: collision with root package name */
    public final Uri f4981f;

    /* JADX WARN: Can't wrap try/catch for region: R(19:0|1|(2:2|3)|(15:5|6|7|8|9|10|11|12|13|14|15|16|17|18|19)|34|6|7|8|9|10|11|12|13|14|15|16|17|18|19) */
    /* JADX WARN: Can't wrap try/catch for region: R(20:0|1|2|3|(15:5|6|7|8|9|10|11|12|13|14|15|16|17|18|19)|34|6|7|8|9|10|11|12|13|14|15|16|17|18|19) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0051, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0052, code lost:
    
        g.agd.f("", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0043, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0044, code lost:
    
        g.agd.f("", r1);
        r1 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0033, code lost:
    
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0034, code lost:
    
        g.agd.f("", r4);
        r1 = 1.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0026, code lost:
    
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0027, code lost:
    
        g.agd.f("", r4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbso(zzbfy zzbfyVar) {
        Drawable drawable;
        bjq zzf;
        this.f4978c = zzbfyVar;
        Uri uri = null;
        try {
            zzf = zzbfyVar.zzf();
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
        if (zzf != null) {
            drawable = (Drawable) bpp.b(zzf);
            this.f4980e = drawable;
            uri = this.f4978c.zze();
            this.f4981f = uri;
            double d2 = this.f4978c.zzb();
            this.f4976a = d2;
            int i = -1;
            int i2 = this.f4978c.zzd();
            this.f4977b = i2;
            i = this.f4978c.zzc();
            this.f4979d = i;
        }
        drawable = null;
        this.f4980e = drawable;
        uri = this.f4978c.zze();
        this.f4981f = uri;
        double d22 = this.f4978c.zzb();
        this.f4976a = d22;
        int i3 = -1;
        int i22 = this.f4978c.zzd();
        this.f4977b = i22;
        i3 = this.f4978c.zzc();
        this.f4979d = i3;
    }

    public final Drawable getDrawable() {
        return this.f4980e;
    }

    public final double getScale() {
        return this.f4976a;
    }

    public final Uri getUri() {
        return this.f4981f;
    }

    public final int zza() {
        return this.f4979d;
    }

    public final int zzb() {
        return this.f4977b;
    }
}
