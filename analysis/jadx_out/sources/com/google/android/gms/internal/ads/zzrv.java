package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import g.bgb;
import g.bgy;
import g.csw;
import g.gop;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzrv implements zzsl {

    /* renamed from: a, reason: collision with root package name */
    public final zzrt f8873a;

    /* renamed from: b, reason: collision with root package name */
    public final zzru f8874b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8875c;

    public zzrv(int i) {
        zzrt zzrtVar = new zzrt(i);
        zzru zzruVar = new zzru(i);
        this.f8873a = zzrtVar;
        this.f8874b = zzruVar;
        this.f8875c = true;
    }

    public final gop zzc(zzsk zzskVar) throws IOException {
        MediaCodec mediaCodec;
        csw bgyVar;
        int i;
        gop gopVar;
        Surface surface;
        String str = zzskVar.zza.zza;
        gop gopVar2 = null;
        try {
            Trace.beginSection("createCodec:" + str);
            mediaCodec = MediaCodec.createByCodecName(str);
            try {
                try {
                    if (this.f8875c) {
                        zzad zzadVar = zzskVar.zzc;
                        int i2 = zzen.zza;
                        if (i2 >= 34 && (i2 >= 35 || zzbg.zzi(zzadVar.zzo))) {
                            bgyVar = new bgb(6, mediaCodec);
                            i = 4;
                            gopVar = new gop(mediaCodec, new HandlerThread(gop.h(this.f8873a.zza, "ExoPlayer:MediaCodecAsyncAdapter:")), bgyVar, zzskVar.zzf);
                            Trace.endSection();
                            surface = zzskVar.zzd;
                            if (surface == null && zzskVar.zza.zzh && zzen.zza >= 35) {
                                i |= 8;
                            }
                            gop.g(gopVar, zzskVar.zzb, surface, i);
                            return gopVar;
                        }
                    }
                    Trace.endSection();
                    surface = zzskVar.zzd;
                    if (surface == null) {
                        i |= 8;
                    }
                    gop.g(gopVar, zzskVar.zzb, surface, i);
                    return gopVar;
                } catch (Exception e2) {
                    e = e2;
                    gopVar2 = gopVar;
                    if (gopVar2 != null) {
                        gopVar2.zzm();
                    } else if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                    throw e;
                }
                bgyVar = new bgy(mediaCodec, new HandlerThread(gop.h(this.f8874b.zza, "ExoPlayer:MediaCodecQueueingThread:")));
                i = 0;
                gopVar = new gop(mediaCodec, new HandlerThread(gop.h(this.f8873a.zza, "ExoPlayer:MediaCodecAsyncAdapter:")), bgyVar, zzskVar.zzf);
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Exception e4) {
            e = e4;
            mediaCodec = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsl
    public final /* bridge */ /* synthetic */ zzsn zzd(zzsk zzskVar) throws IOException {
        throw null;
    }

    public final void zze(boolean z) {
        this.f8875c = true;
    }
}
