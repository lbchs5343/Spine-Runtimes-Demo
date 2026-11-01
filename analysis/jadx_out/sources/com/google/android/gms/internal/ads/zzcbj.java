package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.PersistableBundle;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.agd;
import g.amx;
import g.awf;
import g.cfg;
import g.cmu;
import g.cuf;
import g.eax;
import g.efr;
import g.esy;
import g.ti;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzcbj extends zzcbl implements TextureView.SurfaceTextureListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f5139a;

    /* renamed from: b, reason: collision with root package name */
    public MediaPlayer f5140b;

    /* renamed from: c, reason: collision with root package name */
    public zzcbk f5141c;

    /* renamed from: d, reason: collision with root package name */
    public int f5142d;

    /* renamed from: e, reason: collision with root package name */
    public int f5143e;

    /* renamed from: f, reason: collision with root package name */
    public int f5144f;

    /* renamed from: g, reason: collision with root package name */
    public final zzccf f5145g;
    public int h;
    public int i;
    public final zzccg j;
    public final boolean k;
    public Integer l;
    public Uri m;
    public final boolean n;
    public boolean o;
    public zzccd p;
    public int q;

    static {
        HashMap hashMap = new HashMap();
        f5139a = hashMap;
        hashMap.put(-1004, "MEDIA_ERROR_IO");
        hashMap.put(-1007, "MEDIA_ERROR_MALFORMED");
        hashMap.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
        hashMap.put(-110, "MEDIA_ERROR_TIMED_OUT");
        hashMap.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        hashMap.put(100, "MEDIA_ERROR_SERVER_DIED");
        hashMap.put(1, "MEDIA_ERROR_UNKNOWN");
        hashMap.put(1, "MEDIA_INFO_UNKNOWN");
        hashMap.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        hashMap.put(701, "MEDIA_INFO_BUFFERING_START");
        hashMap.put(702, "MEDIA_INFO_BUFFERING_END");
        hashMap.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        hashMap.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        hashMap.put(802, "MEDIA_INFO_METADATA_UPDATE");
        hashMap.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
        hashMap.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
    }

    public zzcbj(Context context, zzccf zzccfVar, boolean z, boolean z2, zzcce zzcceVar, zzccg zzccgVar) {
        super(context);
        this.q = 0;
        this.f5142d = 0;
        this.o = false;
        this.l = null;
        setSurfaceTextureListener(this);
        this.f5145g = zzccfVar;
        this.j = zzccgVar;
        this.n = z;
        this.k = z2;
        zzccgVar.zza(this);
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.h = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        agd.e("AdMediaPlayerView completion");
        u(5);
        this.f5142d = 5;
        esy.f16117a.post(new amx(this, 0));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Integer valueOf = Integer.valueOf(i);
        HashMap hashMap = f5139a;
        String str = (String) hashMap.get(valueOf);
        String str2 = (String) hashMap.get(Integer.valueOf(i2));
        agd.b("AdMediaPlayerView MediaPlayer error: " + str + ":" + str2);
        u(-1);
        this.f5142d = -1;
        esy.f16117a.post(new eax(this, str, str2, 10));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Integer valueOf = Integer.valueOf(i);
        HashMap hashMap = f5139a;
        agd.e("AdMediaPlayerView MediaPlayer info: " + ((String) hashMap.get(valueOf)) + ":" + ((String) hashMap.get(Integer.valueOf(i2))));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0061, code lost:
    
        if (r1 > r6) goto L30;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        int i3;
        int defaultSize = View.getDefaultSize(this.f5144f, i);
        int defaultSize2 = View.getDefaultSize(this.i, i2);
        if (this.f5144f > 0 && this.i > 0 && this.p == null) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824) {
                if (mode2 == 1073741824) {
                    int i4 = this.f5144f;
                    int i5 = i4 * size2;
                    int i6 = this.i;
                    int i7 = size * i6;
                    if (i5 < i7) {
                        defaultSize = i5 / i6;
                        defaultSize2 = size2;
                    } else {
                        if (i5 > i7) {
                            defaultSize2 = i7 / i4;
                            defaultSize = size;
                        }
                        defaultSize = size;
                        defaultSize2 = size2;
                    }
                } else {
                    mode = C.ENCODING_PCM_32BIT;
                }
            }
            if (mode == 1073741824) {
                int i8 = (this.i * size) / this.f5144f;
                if (mode2 != Integer.MIN_VALUE || i8 <= size2) {
                    defaultSize2 = i8;
                    defaultSize = size;
                }
                defaultSize = size;
                defaultSize2 = size2;
            } else {
                if (mode2 == 1073741824) {
                    i3 = (this.f5144f * size2) / this.i;
                    if (mode == Integer.MIN_VALUE) {
                    }
                } else {
                    int i9 = this.f5144f;
                    int i10 = this.i;
                    if (mode2 != Integer.MIN_VALUE || i10 <= size2) {
                        i3 = i9;
                        size2 = i10;
                    } else {
                        i3 = (size2 * i9) / i10;
                    }
                    if (mode == Integer.MIN_VALUE && i3 > size) {
                        defaultSize2 = (i10 * size) / i9;
                        defaultSize = size;
                    }
                }
                defaultSize = i3;
                defaultSize2 = size2;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
        zzccd zzccdVar = this.p;
        if (zzccdVar != null) {
            zzccdVar.zzc(defaultSize, defaultSize2);
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        agd.e("AdMediaPlayerView prepared");
        u(2);
        this.j.zzb();
        esy.f16117a.post(new efr(this, 26, mediaPlayer));
        this.f5144f = mediaPlayer.getVideoWidth();
        this.i = mediaPlayer.getVideoHeight();
        int i = this.f5143e;
        if (i != 0) {
            zzq(i);
        }
        if (this.k && r() && this.f5140b.getCurrentPosition() > 0 && this.f5142d != 3) {
            agd.e("AdMediaPlayerView nudging MediaPlayer");
            MediaPlayer mediaPlayer2 = this.f5140b;
            if (mediaPlayer2 != null) {
                try {
                    mediaPlayer2.setVolume(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                } catch (IllegalStateException unused) {
                }
            } else {
                agd.b("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
            }
            this.f5140b.start();
            int currentPosition = this.f5140b.getCurrentPosition();
            ti.f20033a.v.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            while (r() && this.f5140b.getCurrentPosition() == currentPosition) {
                ti.f20033a.v.getClass();
                if (System.currentTimeMillis() - currentTimeMillis > 250) {
                    break;
                }
            }
            this.f5140b.pause();
            zzn();
        }
        agd.k("AdMediaPlayerView stream dimensions: " + this.f5144f + " x " + this.i);
        if (this.f5142d == 3) {
            zzp();
        }
        zzn();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        agd.e("AdMediaPlayerView surface created");
        s();
        esy.f16117a.post(new amx(this, 1));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        agd.e("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.f5140b;
        if (mediaPlayer != null && this.f5143e == 0) {
            this.f5143e = mediaPlayer.getCurrentPosition();
        }
        zzccd zzccdVar = this.p;
        if (zzccdVar != null) {
            zzccdVar.zze();
        }
        esy.f16117a.post(new amx(this, 2));
        t(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        agd.e("AdMediaPlayerView surface changed");
        int i3 = this.f5142d;
        boolean z = false;
        if (this.f5144f == i && this.i == i2) {
            z = true;
        }
        if (this.f5140b != null && i3 == 3 && z) {
            int i4 = this.f5143e;
            if (i4 != 0) {
                zzq(i4);
            }
            zzp();
        }
        zzccd zzccdVar = this.p;
        if (zzccdVar != null) {
            zzccdVar.zzc(i, i2);
        }
        esy.f16117a.post(new cmu(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.j.zzf(this);
        this.v.zza(surfaceTexture, this.f5141c);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        agd.e("AdMediaPlayerView size changed: " + i + " x " + i2);
        this.f5144f = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.i = videoHeight;
        if (this.f5144f == 0 || videoHeight == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(final int i) {
        agd.e("AdMediaPlayerView window visibility changed to " + i);
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcba
            @Override // java.lang.Runnable
            public final void run() {
                zzcbj zzcbjVar = zzcbj.this;
                int i2 = i;
                zzcbk zzcbkVar = zzcbjVar.f5141c;
                if (zzcbkVar != null) {
                    zzcbkVar.onWindowVisibilityChanged(i2);
                }
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    public final boolean r() {
        int i;
        return (this.f5140b == null || (i = this.q) == -1 || i == 0 || i == 1) ? false : true;
    }

    public final void s() {
        agd.e("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.m == null || surfaceTexture == null) {
            return;
        }
        t(false);
        try {
            ti tiVar = ti.f20033a;
            cuf cufVar = tiVar.y;
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.f5140b = mediaPlayer;
            mediaPlayer.setOnBufferingUpdateListener(this);
            this.f5140b.setOnCompletionListener(this);
            this.f5140b.setOnErrorListener(this);
            this.f5140b.setOnInfoListener(this);
            this.f5140b.setOnPreparedListener(this);
            this.f5140b.setOnVideoSizeChangedListener(this);
            this.h = 0;
            if (this.n) {
                zzccd zzccdVar = new zzccd(getContext());
                this.p = zzccdVar;
                zzccdVar.zzd(surfaceTexture, getWidth(), getHeight());
                this.p.start();
                SurfaceTexture zzb = this.p.zzb();
                if (zzb != null) {
                    surfaceTexture = zzb;
                } else {
                    this.p.zze();
                    this.p = null;
                }
            }
            this.f5140b.setDataSource(getContext(), this.m);
            cfg cfgVar = tiVar.m;
            this.f5140b.setSurface(new Surface(surfaceTexture));
            this.f5140b.setAudioStreamType(3);
            this.f5140b.setScreenOnWhilePlaying(true);
            this.f5140b.prepareAsync();
            u(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException unused) {
            "Failed to initialize MediaPlayer at ".concat(String.valueOf(this.m));
            zzfxd zzfxdVar = agd.f10175a;
            onError(this.f5140b, 1, 0);
        }
    }

    public final void t(boolean z) {
        agd.e("AdMediaPlayerView release");
        zzccd zzccdVar = this.p;
        if (zzccdVar != null) {
            zzccdVar.zze();
            this.p = null;
        }
        MediaPlayer mediaPlayer = this.f5140b;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f5140b.release();
            this.f5140b = null;
            u(0);
            if (z) {
                this.f5142d = 0;
            }
        }
    }

    @Override // android.view.View
    public final String toString() {
        return awf.i(zzcbj.class.getName(), "@", Integer.toHexString(hashCode()));
    }

    public final void u(int i) {
        zzccj zzccjVar = this.w;
        zzccg zzccgVar = this.j;
        if (i == 3) {
            zzccgVar.zzc();
            zzccjVar.zzb();
        } else if (this.q == 3) {
            zzccgVar.zze();
            zzccjVar.zzc();
        }
        this.q = i;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zza() {
        if (r()) {
            return this.f5140b.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zzb() {
        PersistableBundle metrics;
        if (Build.VERSION.SDK_INT < 26 || !r()) {
            return -1;
        }
        metrics = this.f5140b.getMetrics();
        return metrics.getInt("android.media.mediaplayer.dropped");
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zzc() {
        if (r()) {
            return this.f5140b.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zzd() {
        MediaPlayer mediaPlayer = this.f5140b;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final int zze() {
        MediaPlayer mediaPlayer = this.f5140b;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final long zzf() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final long zzg() {
        if (this.l != null) {
            return (zzh() * this.h) / 100;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final long zzh() {
        if (this.l != null) {
            return zzc() * this.l.intValue();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final String zzj() {
        return "MediaPlayer".concat(true != this.n ? "" : " spherical");
    }

    @Override // com.google.android.gms.internal.ads.zzcbl, g.ehb
    public final void zzn() {
        float zza = this.w.zza();
        MediaPlayer mediaPlayer = this.f5140b;
        if (mediaPlayer == null) {
            agd.b("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        } else {
            try {
                mediaPlayer.setVolume(zza, zza);
            } catch (IllegalStateException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzo() {
        agd.e("AdMediaPlayerView pause");
        if (r() && this.f5140b.isPlaying()) {
            this.f5140b.pause();
            u(4);
            esy.f16117a.post(new amx(this, 4));
        }
        this.f5142d = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzp() {
        agd.e("AdMediaPlayerView play");
        if (r()) {
            this.f5140b.start();
            u(3);
            this.v.zzb();
            esy.f16117a.post(new amx(this, 3));
        }
        this.f5142d = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzq(int i) {
        agd.e("AdMediaPlayerView seek " + i);
        if (!r()) {
            this.f5143e = i;
        } else {
            this.f5140b.seekTo(i);
            this.f5143e = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzr(zzcbk zzcbkVar) {
        this.f5141c = zzcbkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzs(String str) {
        Uri parse = Uri.parse(str);
        zzbax zza = zzbax.zza(parse);
        if (zza == null || zza.zza != null) {
            if (zza != null) {
                parse = Uri.parse(zza.zza);
            }
            this.m = parse;
            this.f5143e = 0;
            s();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzt() {
        agd.e("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.f5140b;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f5140b.release();
            this.f5140b = null;
            u(0);
            this.f5142d = 0;
        }
        this.j.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcbl
    public final void zzu(float f2, float f3) {
        zzccd zzccdVar = this.p;
        if (zzccdVar != null) {
            zzccdVar.zzf(f2, f3);
        }
    }
}
