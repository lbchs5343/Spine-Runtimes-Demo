package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.agd;
import g.esy;
import g.ti;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzccx extends zzcbl implements TextureView.SurfaceTextureListener, zzcbv {

    /* renamed from: a, reason: collision with root package name */
    public zzcbw f5187a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5188b;

    /* renamed from: c, reason: collision with root package name */
    public Surface f5189c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5190d;

    /* renamed from: e, reason: collision with root package name */
    public String[] f5191e;

    /* renamed from: f, reason: collision with root package name */
    public final zzccf f5192f;

    /* renamed from: g, reason: collision with root package name */
    public int f5193g;
    public boolean h;
    public float i;
    public final zzccg j;
    public final zzcce k;
    public int l;
    public String m;
    public final boolean n;
    public int o;
    public zzccd p;
    public zzcbk q;

    public zzccx(Context context, zzccg zzccgVar, zzccf zzccfVar, boolean z, boolean z2, zzcce zzcceVar) {
        super(context);
        this.f5193g = 1;
        this.f5192f = zzccfVar;
        this.j = zzccgVar;
        this.n = z;
        this.k = zzcceVar;
        setSurfaceTextureListener(this);
        zzccgVar.zza(this);
    }

    public static String r(String str, Exception exc) {
        return str + "/" + exc.getClass().getCanonicalName() + ":" + exc.getMessage();
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f2 = this.i;
        if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && this.p == null) {
            float f3 = measuredWidth;
            float f4 = f3 / measuredHeight;
            if (f2 > f4) {
                measuredHeight = (int) (f3 / f2);
            }
            if (f2 < f4) {
                measuredWidth = (int) (measuredHeight * f2);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        zzccd zzccdVar = this.p;
        if (zzccdVar != null) {
            zzccdVar.zzc(measuredWidth, measuredHeight);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzcbw zzcbwVar;
        float f2;
        int i3;
        if (this.n) {
            zzccd zzccdVar = new zzccd(getContext());
            this.p = zzccdVar;
            zzccdVar.zzd(surfaceTexture, i, i2);
            this.p.start();
            SurfaceTexture zzb = this.p.zzb();
            if (zzb != null) {
                surfaceTexture = zzb;
            } else {
                this.p.zze();
                this.p = null;
            }
        }
        Surface surface = new Surface(surfaceTexture);
        this.f5189c = surface;
        if (this.f5187a == null) {
            y(false, null);
        } else {
            t(surface, true);
            if (!this.k.zza && (zzcbwVar = this.f5187a) != null) {
                zzcbwVar.zzQ(true);
            }
        }
        int i4 = this.o;
        if (i4 == 0 || (i3 = this.l) == 0) {
            f2 = i2 > 0 ? i / i2 : 1.0f;
            if (this.i != f2) {
                this.i = f2;
                requestLayout();
            }
        } else {
            f2 = i3 > 0 ? i4 / i3 : 1.0f;
            if (this.i != f2) {
                this.i = f2;
                requestLayout();
            }
        }
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcct
            @Override // java.lang.Runnable
            public final void run() {
                zzcbk zzcbkVar = zzccx.this.q;
                if (zzcbkVar != null) {
                    zzcbkVar.zzh();
                }
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzo();
        zzccd zzccdVar = this.p;
        if (zzccdVar != null) {
            zzccdVar.zze();
            this.p = null;
        }
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar != null) {
            if (zzcbwVar != null) {
                zzcbwVar.zzQ(false);
            }
            Surface surface = this.f5189c;
            if (surface != null) {
                surface.release();
            }
            this.f5189c = null;
            t(null, true);
        }
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzccp
            @Override // java.lang.Runnable
            public final void run() {
                zzcbk zzcbkVar = zzccx.this.q;
                if (zzcbkVar != null) {
                    zzcbkVar.zzi();
                }
            }
        });
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, final int i, final int i2) {
        zzccd zzccdVar = this.p;
        if (zzccdVar != null) {
            zzccdVar.zzc(i, i2);
        }
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcco
            @Override // java.lang.Runnable
            public final void run() {
                zzccx zzccxVar = zzccx.this;
                int i3 = i;
                int i4 = i2;
                zzcbk zzcbkVar = zzccxVar.q;
                if (zzcbkVar != null) {
                    zzcbkVar.zzj(i3, i4);
                }
            }
        });
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.j.zzf(this);
        this.v.zza(surfaceTexture, this.q);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(final int i) {
        agd.e("AdExoPlayerView3 window visibility changed to " + i);
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzccn
            @Override // java.lang.Runnable
            public final void run() {
                zzccx zzccxVar = zzccx.this;
                int i2 = i;
                zzcbk zzcbkVar = zzccxVar.q;
                if (zzcbkVar != null) {
                    zzcbkVar.onWindowVisibilityChanged(i2);
                }
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    public final void s() {
        if (this.f5187a != null) {
            t(null, true);
            zzcbw zzcbwVar = this.f5187a;
            if (zzcbwVar != null) {
                zzcbwVar.zzL(null);
                this.f5187a.zzH();
                this.f5187a = null;
            }
            this.f5193g = 1;
            this.h = false;
            this.f5190d = false;
            this.f5188b = false;
        }
    }

    public final void t(Surface surface, boolean z) {
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar == null) {
            agd.b("Trying to set surface before player is initialized.");
            return;
        }
        try {
            zzcbwVar.zzS(surface, z);
        } catch (IOException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    public final boolean u() {
        return z() && this.f5193g != 1;
    }

    public final void x() {
        if (this.f5190d) {
            return;
        }
        this.f5190d = true;
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzccw
            @Override // java.lang.Runnable
            public final void run() {
                zzcbk zzcbkVar = zzccx.this.q;
                if (zzcbkVar != null) {
                    zzcbkVar.zzf();
                }
            }
        });
        zzn();
        this.j.zzb();
        if (this.f5188b) {
            zzp();
        }
    }

    public final void y(boolean z, Integer num) {
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar != null && !z) {
            zzcbwVar.zzP(num);
            return;
        }
        if (this.m == null || this.f5189c == null) {
            return;
        }
        if (z) {
            if (!z()) {
                agd.b("No valid ExoPlayerAdapter exists when switch source.");
                return;
            } else {
                zzcbwVar.zzU();
                s();
            }
        }
        boolean startsWith = this.m.startsWith("cache:");
        zzcce zzcceVar = this.k;
        zzccf zzccfVar = this.f5192f;
        if (startsWith) {
            zzcdr zzp = zzccfVar.zzp(this.m);
            if (zzp instanceof zzcea) {
                zzcbw zza = ((zzcea) zzp).zza();
                this.f5187a = zza;
                zza.zzP(num);
                if (!this.f5187a.zzV()) {
                    agd.b("Precached video player has been released.");
                    return;
                }
            } else {
                if (!(zzp instanceof zzcdx)) {
                    agd.b("Stream cache miss: ".concat(String.valueOf(this.m)));
                    return;
                }
                zzcdx zzcdxVar = (zzcdx) zzp;
                String at = ti.f20033a.z.at(zzccfVar.getContext(), zzccfVar.zzn().afmaVersion);
                ByteBuffer zzl = zzcdxVar.zzl();
                boolean zzm = zzcdxVar.zzm();
                String zzk = zzcdxVar.zzk();
                if (zzk == null) {
                    agd.b("Stream cache URL is null.");
                    return;
                }
                zzces zzcesVar = new zzces(zzccfVar.getContext(), zzcceVar, zzccfVar, num);
                agd.k("ExoPlayerAdapter initialized.");
                this.f5187a = zzcesVar;
                zzcesVar.zzG(new Uri[]{Uri.parse(zzk)}, at, zzl, zzm);
            }
        } else {
            zzces zzcesVar2 = new zzces(zzccfVar.getContext(), zzcceVar, zzccfVar, num);
            agd.k("ExoPlayerAdapter initialized.");
            this.f5187a = zzcesVar2;
            String at2 = ti.f20033a.z.at(zzccfVar.getContext(), zzccfVar.zzn().afmaVersion);
            Uri[] uriArr = new Uri[this.f5191e.length];
            int i = 0;
            while (true) {
                String[] strArr = this.f5191e;
                if (i >= strArr.length) {
                    break;
                }
                uriArr[i] = Uri.parse(strArr[i]);
                i++;
            }
            this.f5187a.zzF(uriArr, at2);
        }
        this.f5187a.zzL(this);
        t(this.f5189c, false);
        if (this.f5187a.zzV()) {
            int zzt = this.f5187a.zzt();
            this.f5193g = zzt;
            if (zzt == 3) {
                x();
            }
        }
    }

    public final boolean z() {
        zzcbw zzcbwVar = this.f5187a;
        return (zzcbwVar == null || !zzcbwVar.zzV() || this.h) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzA(int i) {
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar != null) {
            zzcbwVar.zzN(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzB(int i) {
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar != null) {
            zzcbwVar.zzR(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzC(String str, String[] strArr, Integer num) {
        if (str == null) {
            return;
        }
        if (strArr == null) {
            this.f5191e = new String[]{str};
        } else {
            this.f5191e = (String[]) Arrays.copyOf(strArr, strArr.length);
        }
        String str2 = this.m;
        boolean z = false;
        if (this.k.zzk && str2 != null && !str.equals(str2) && this.f5193g == 4) {
            z = true;
        }
        this.m = str;
        y(z, num);
    }

    @Override // com.google.android.gms.internal.ads.zzcbv
    public final void zzD(int i, int i2) {
        this.o = i;
        this.l = i2;
        float f2 = i2 > 0 ? i / i2 : 1.0f;
        if (this.i != f2) {
            this.i = f2;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zza() {
        if (u()) {
            return (int) this.f5187a.zzy();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zzb() {
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar != null) {
            return zzcbwVar.zzr();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zzc() {
        if (u()) {
            return (int) this.f5187a.zzz();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zzd() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zze() {
        return this.o;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final long zzf() {
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar != null) {
            return zzcbwVar.zzx();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final long zzg() {
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar != null) {
            return zzcbwVar.zzA();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final long zzh() {
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar != null) {
            return zzcbwVar.zzB();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbv
    public final void zzi(final boolean z, final long j) {
        if (this.f5192f != null) {
            zzcaj.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzccq
                @Override // java.lang.Runnable
                public final void run() {
                    zzccx zzccxVar = zzccx.this;
                    zzccxVar.f5192f.zzv(z, j);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final String zzj() {
        return "ExoPlayer/2".concat(true != this.n ? "" : " spherical");
    }

    @Override // com.google.android.gms.internal.ads.zzcbv
    public final void zzk(String str, Exception exc) {
        zzcbw zzcbwVar;
        final String r = r(str, exc);
        agd.b("ExoPlayerAdapter error: ".concat(r));
        this.h = true;
        if (this.k.zza && (zzcbwVar = this.f5187a) != null) {
            zzcbwVar.zzQ(false);
        }
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzccu
            @Override // java.lang.Runnable
            public final void run() {
                zzccx zzccxVar = zzccx.this;
                String str2 = r;
                zzcbk zzcbkVar = zzccxVar.q;
                if (zzcbkVar != null) {
                    zzcbkVar.zzb("ExoPlayerAdapter error", str2);
                }
            }
        });
        ti.f20033a.f20034ab.zzv(exc, "AdExoPlayerView.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcbv
    public final void zzl(String str, Exception exc) {
        final String r = r("onLoadException", exc);
        agd.b("ExoPlayerAdapter exception: ".concat(r));
        ti.f20033a.f20034ab.zzv(exc, "AdExoPlayerView.onException");
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzccr
            @Override // java.lang.Runnable
            public final void run() {
                zzccx zzccxVar = zzccx.this;
                String str2 = r;
                zzcbk zzcbkVar = zzccxVar.q;
                if (zzcbkVar != null) {
                    zzcbkVar.zzc("ExoPlayerAdapter exception", str2);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcbv
    public final void zzm(int i) {
        zzcbw zzcbwVar;
        if (this.f5193g != i) {
            this.f5193g = i;
            if (i == 3) {
                x();
                return;
            }
            if (i != 4) {
                return;
            }
            if (this.k.zza && (zzcbwVar = this.f5187a) != null) {
                zzcbwVar.zzQ(false);
            }
            this.j.zze();
            this.w.zzc();
            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzccv
                @Override // java.lang.Runnable
                public final void run() {
                    zzcbk zzcbkVar = zzccx.this.q;
                    if (zzcbkVar != null) {
                        zzcbkVar.zza();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl, g.ehb
    public final void zzn() {
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzccm
            @Override // java.lang.Runnable
            public final void run() {
                zzccx zzccxVar = zzccx.this;
                float zza = zzccxVar.w.zza();
                zzcbw zzcbwVar = zzccxVar.f5187a;
                if (zzcbwVar == null) {
                    agd.b("Trying to set volume before player is initialized.");
                    return;
                }
                try {
                    zzcbwVar.zzT(zza, false);
                } catch (IOException unused) {
                    zzfxd zzfxdVar = agd.f10175a;
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzo() {
        zzcbw zzcbwVar;
        if (u()) {
            if (this.k.zza && (zzcbwVar = this.f5187a) != null) {
                zzcbwVar.zzQ(false);
            }
            this.f5187a.zzO(false);
            this.j.zze();
            this.w.zzc();
            esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzccs
                @Override // java.lang.Runnable
                public final void run() {
                    zzcbk zzcbkVar = zzccx.this.q;
                    if (zzcbkVar != null) {
                        zzcbkVar.zzd();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzp() {
        zzcbw zzcbwVar;
        if (!u()) {
            this.f5188b = true;
            return;
        }
        if (this.k.zza && (zzcbwVar = this.f5187a) != null) {
            zzcbwVar.zzQ(true);
        }
        this.f5187a.zzO(true);
        this.j.zzc();
        this.w.zzb();
        this.v.zzb();
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzccl
            @Override // java.lang.Runnable
            public final void run() {
                zzcbk zzcbkVar = zzccx.this.q;
                if (zzcbkVar != null) {
                    zzcbkVar.zze();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzq(int i) {
        if (u()) {
            this.f5187a.zzI(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzr(zzcbk zzcbkVar) {
        this.q = zzcbkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzs(String str) {
        if (str != null) {
            zzC(str, null, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzt() {
        if (z()) {
            this.f5187a.zzU();
            s();
        }
        zzccg zzccgVar = this.j;
        zzccgVar.zze();
        this.w.zzc();
        zzccgVar.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzu(float f2, float f3) {
        zzccd zzccdVar = this.p;
        if (zzccdVar != null) {
            zzccdVar.zzf(f2, f3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbv
    public final void zzv() {
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcck
            @Override // java.lang.Runnable
            public final void run() {
                zzcbk zzcbkVar = zzccx.this.q;
                if (zzcbkVar != null) {
                    zzcbkVar.zzg();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final Integer zzw() {
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar != null) {
            return zzcbwVar.zzC();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzx(int i) {
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar != null) {
            zzcbwVar.zzJ(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzy(int i) {
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar != null) {
            zzcbwVar.zzK(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzz(int i) {
        zzcbw zzcbwVar = this.f5187a;
        if (zzcbwVar != null) {
            zzcbwVar.zzM(i);
        }
    }
}
