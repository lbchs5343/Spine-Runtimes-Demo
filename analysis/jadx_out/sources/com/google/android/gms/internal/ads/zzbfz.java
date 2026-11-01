package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import g.agd;
import g.bjq;
import g.bpp;
import g.dqn;

/* loaded from: classes3.dex */
public final class zzbfz extends dqn {

    /* renamed from: a, reason: collision with root package name */
    public final double f4811a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4812b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbfy f4813c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4814d;

    /* renamed from: e, reason: collision with root package name */
    public final Drawable f4815e;

    /* renamed from: f, reason: collision with root package name */
    public final Uri f4816f;

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
    public zzbfz(zzbfy zzbfyVar) {
        Drawable drawable;
        bjq zzf;
        this.f4813c = zzbfyVar;
        Uri uri = null;
        try {
            zzf = zzbfyVar.zzf();
        } catch (RemoteException e2) {
            agd.f("", e2);
        }
        if (zzf != null) {
            drawable = (Drawable) bpp.b(zzf);
            this.f4815e = drawable;
            uri = this.f4813c.zze();
            this.f4816f = uri;
            double d2 = this.f4813c.zzb();
            this.f4811a = d2;
            int i = -1;
            int i2 = this.f4813c.zzd();
            this.f4812b = i2;
            i = this.f4813c.zzc();
            this.f4814d = i;
        }
        drawable = null;
        this.f4815e = drawable;
        uri = this.f4813c.zze();
        this.f4816f = uri;
        double d22 = this.f4813c.zzb();
        this.f4811a = d22;
        int i3 = -1;
        int i22 = this.f4813c.zzd();
        this.f4812b = i22;
        i3 = this.f4813c.zzc();
        this.f4814d = i3;
    }

    @Override // g.dqn
    public final Drawable getDrawable() {
        return this.f4815e;
    }

    @Override // g.dqn
    public final double getScale() {
        return this.f4811a;
    }

    @Override // g.dqn
    public final Uri getUri() {
        return this.f4816f;
    }

    @Override // g.dqn
    public final int zza() {
        return this.f4814d;
    }

    @Override // g.dqn
    public final int zzb() {
        return this.f4812b;
    }
}
