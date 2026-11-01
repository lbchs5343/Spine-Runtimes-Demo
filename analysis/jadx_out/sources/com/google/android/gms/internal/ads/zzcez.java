package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import g.agd;
import g.awf;
import g.esy;

/* loaded from: classes3.dex */
public final class zzcez extends zzcbl {

    /* renamed from: a, reason: collision with root package name */
    public int f5240a;

    /* renamed from: b, reason: collision with root package name */
    public final zzccg f5241b;

    /* renamed from: c, reason: collision with root package name */
    public zzcfa f5242c;

    /* renamed from: d, reason: collision with root package name */
    public zzcbk f5243d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5244e;

    public zzcez(Context context, zzccg zzccgVar) {
        super(context);
        this.f5240a = 1;
        this.f5244e = false;
        this.f5241b = zzccgVar;
        zzccgVar.zza(this);
    }

    public final boolean f() {
        int i = this.f5240a;
        return (i == 1 || i == 2 || this.f5242c == null) ? false : true;
    }

    public final void g(int i) {
        zzccj zzccjVar = this.w;
        zzccg zzccgVar = this.f5241b;
        if (i == 4) {
            zzccgVar.zzc();
            zzccjVar.zzb();
        } else if (this.f5240a == 4) {
            zzccgVar.zze();
            zzccjVar.zzc();
        }
        this.f5240a = i;
    }

    @Override // android.view.View
    public final String toString() {
        return awf.i(zzcez.class.getName(), "@", Integer.toHexString(hashCode()));
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zzb() {
        return f() ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zzc() {
        return f() ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zze() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final long zzf() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final long zzg() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final long zzh() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final String zzj() {
        return "ImmersivePlayer";
    }

    @Override // com.google.android.gms.internal.ads.zzcbl, g.ehb
    public final void zzn() {
        if (this.f5242c != null) {
            this.w.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzo() {
        agd.e("AdImmersivePlayerView pause");
        if (f() && this.f5242c.zzd()) {
            this.f5242c.zza();
            g(5);
            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcey
                @Override // java.lang.Runnable
                public final void run() {
                    zzcbk zzcbkVar = zzcez.this.f5243d;
                    if (zzcbkVar != null) {
                        zzcbkVar.zzd();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzp() {
        agd.e("AdImmersivePlayerView play");
        if (f()) {
            this.f5242c.zzb();
            g(4);
            this.v.zzb();
            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcex
                @Override // java.lang.Runnable
                public final void run() {
                    zzcez zzcezVar = zzcez.this;
                    zzcbk zzcbkVar = zzcezVar.f5243d;
                    if (zzcbkVar != null) {
                        if (!zzcezVar.f5244e) {
                            zzcbkVar.zzg();
                            zzcezVar.f5244e = true;
                        }
                        zzcezVar.f5243d.zze();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzq(int i) {
        agd.e("AdImmersivePlayerView seek " + i);
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzr(zzcbk zzcbkVar) {
        this.f5243d = zzcbkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzs(String str) {
        if (str != null) {
            this.f5242c = new zzcfa(Uri.parse(str).toString());
            g(3);
            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcew
                @Override // java.lang.Runnable
                public final void run() {
                    zzcbk zzcbkVar = zzcez.this.f5243d;
                    if (zzcbkVar != null) {
                        zzcbkVar.zzf();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzt() {
        agd.e("AdImmersivePlayerView stop");
        zzcfa zzcfaVar = this.f5242c;
        if (zzcfaVar != null) {
            zzcfaVar.zzc();
            this.f5242c = null;
            g(1);
        }
        this.f5241b.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzu(float f2, float f3) {
    }
}
