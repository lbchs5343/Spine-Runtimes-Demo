package g;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzhj;
import com.google.android.gms.internal.ads.zzsj;
import com.google.android.gms.internal.ads.zzsm;
import com.google.android.gms.internal.ads.zzsn;
import g.cfp;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class gop implements zzsn {

    /* renamed from: a, reason: collision with root package name */
    public final zzsj f18503a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f18504b;

    /* renamed from: c, reason: collision with root package name */
    public final MediaCodec f18505c;

    /* renamed from: d, reason: collision with root package name */
    public int f18506d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final cfp f18507e;

    /* renamed from: f, reason: collision with root package name */
    public final csw f18508f;

    public /* synthetic */ gop(MediaCodec mediaCodec, HandlerThread handlerThread, csw cswVar, zzsj zzsjVar) {
        this.f18505c = mediaCodec;
        this.f18507e = new cfp(handlerThread);
        this.f18508f = cswVar;
        this.f18503a = zzsjVar;
    }

    public static void g(gop gopVar, MediaFormat mediaFormat, Surface surface, int i) {
        zzsj zzsjVar;
        cfp cfpVar = gopVar.f18507e;
        MediaCodec mediaCodec = gopVar.f18505c;
        HandlerThread handlerThread = cfpVar.l;
        zzdb.zzf(cfpVar.n == null);
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        mediaCodec.setCallback(cfpVar, handler);
        cfpVar.n = handler;
        Trace.beginSection("configureCodec");
        mediaCodec.configure(mediaFormat, surface, (MediaCrypto) null, i);
        Trace.endSection();
        gopVar.f18508f.zzh();
        Trace.beginSection("startCodec");
        mediaCodec.start();
        Trace.endSection();
        if (zzen.zza >= 35 && (zzsjVar = gopVar.f18503a) != null) {
            zzsjVar.zza(mediaCodec);
        }
        gopVar.f18506d = 1;
    }

    public static String h(int i, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i == 1) {
            sb.append("Audio");
        } else if (i == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i);
            sb.append(")");
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002c A[Catch: all -> 0x002e, DONT_GENERATE, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x000a, B:6:0x000f, B:8:0x0013, B:10:0x0017, B:12:0x0021, B:18:0x002c, B:21:0x0030, B:26:0x0048, B:29:0x003e, B:30:0x004a, B:31:0x004f, B:33:0x0050, B:34:0x0052, B:35:0x0053, B:36:0x0055, B:37:0x0056, B:38:0x0058), top: B:3:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0030 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x000a, B:6:0x000f, B:8:0x0013, B:10:0x0017, B:12:0x0021, B:18:0x002c, B:21:0x0030, B:26:0x0048, B:29:0x003e, B:30:0x004a, B:31:0x004f, B:33:0x0050, B:34:0x0052, B:35:0x0053, B:36:0x0055, B:37:0x0056, B:38:0x0058), top: B:3:0x000a }] */
    @Override // com.google.android.gms.internal.ads.zzsn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zza() {
        boolean z;
        this.f18508f.zzc();
        cfp cfpVar = this.f18507e;
        synchronized (cfpVar.h) {
            try {
                IllegalStateException illegalStateException = cfpVar.f12797d;
                if (illegalStateException != null) {
                    cfpVar.f12797d = null;
                    throw illegalStateException;
                }
                MediaCodec.CodecException codecException = cfpVar.m;
                if (codecException != null) {
                    cfpVar.m = null;
                    throw codecException;
                }
                MediaCodec.CryptoException cryptoException = cfpVar.f12795b;
                if (cryptoException != null) {
                    cfpVar.f12795b = null;
                    throw cryptoException;
                }
                if (cfpVar.f12799f <= 0 && !cfpVar.j) {
                    z = false;
                    int i = -1;
                    if (!z) {
                        return -1;
                    }
                    adr adrVar = cfpVar.f12798e;
                    int i2 = adrVar.f10055c;
                    int i3 = adrVar.f10056d;
                    if (!(i2 == i3)) {
                        if (i2 == i3) {
                            throw new ArrayIndexOutOfBoundsException();
                        }
                        i = adrVar.f10054b[i2];
                        adrVar.f10055c = (i2 + 1) & adrVar.f10053a;
                    }
                    return i;
                }
                z = true;
                int i4 = -1;
                if (!z) {
                }
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002c A[Catch: all -> 0x002e, DONT_GENERATE, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x000a, B:6:0x000f, B:8:0x0013, B:10:0x0017, B:12:0x0021, B:18:0x002c, B:21:0x0031, B:25:0x003c, B:28:0x0040, B:30:0x004c, B:31:0x0074, B:35:0x0069, B:36:0x0076, B:37:0x007b, B:39:0x007c, B:40:0x007e, B:41:0x007f, B:42:0x0081, B:43:0x0082, B:44:0x0084), top: B:3:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0031 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x000a, B:6:0x000f, B:8:0x0013, B:10:0x0017, B:12:0x0021, B:18:0x002c, B:21:0x0031, B:25:0x003c, B:28:0x0040, B:30:0x004c, B:31:0x0074, B:35:0x0069, B:36:0x0076, B:37:0x007b, B:39:0x007c, B:40:0x007e, B:41:0x007f, B:42:0x0081, B:43:0x0082, B:44:0x0084), top: B:3:0x000a }] */
    @Override // com.google.android.gms.internal.ads.zzsn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        boolean z;
        this.f18508f.zzc();
        cfp cfpVar = this.f18507e;
        synchronized (cfpVar.h) {
            try {
                IllegalStateException illegalStateException = cfpVar.f12797d;
                if (illegalStateException != null) {
                    cfpVar.f12797d = null;
                    throw illegalStateException;
                }
                MediaCodec.CodecException codecException = cfpVar.m;
                if (codecException != null) {
                    cfpVar.m = null;
                    throw codecException;
                }
                MediaCodec.CryptoException cryptoException = cfpVar.f12795b;
                if (cryptoException != null) {
                    cfpVar.f12795b = null;
                    throw cryptoException;
                }
                if (cfpVar.f12799f <= 0 && !cfpVar.j) {
                    z = false;
                    if (!z) {
                        return -1;
                    }
                    adr adrVar = cfpVar.f12800g;
                    int i = adrVar.f10055c;
                    int i2 = adrVar.f10056d;
                    if (i == i2) {
                        return -1;
                    }
                    if (i == i2) {
                        throw new ArrayIndexOutOfBoundsException();
                    }
                    int i3 = adrVar.f10054b[i];
                    adrVar.f10055c = (i + 1) & adrVar.f10053a;
                    if (i3 >= 0) {
                        zzdb.zzb(cfpVar.f12794a);
                        MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) cfpVar.i.remove();
                        bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                    } else if (i3 == -2) {
                        cfpVar.f12794a = (MediaFormat) cfpVar.o.remove();
                        i3 = -2;
                    }
                    return i3;
                }
                z = true;
                if (!z) {
                }
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final MediaFormat zzc() {
        MediaFormat mediaFormat;
        cfp cfpVar = this.f18507e;
        synchronized (cfpVar.h) {
            try {
                mediaFormat = cfpVar.f12794a;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final ByteBuffer zzf(int i) {
        return this.f18505c.getInputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final ByteBuffer zzg(int i) {
        return this.f18505c.getOutputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzi() {
        this.f18505c.detachOutputSurface();
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzj() {
        this.f18508f.zzb();
        this.f18505c.flush();
        final cfp cfpVar = this.f18507e;
        synchronized (cfpVar.h) {
            cfpVar.f12799f++;
            Handler handler = cfpVar.n;
            int i = zzen.zza;
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzsc
                @Override // java.lang.Runnable
                public final void run() {
                    cfp cfpVar2 = cfp.this;
                    synchronized (cfpVar2.h) {
                        try {
                            if (cfpVar2.j) {
                                return;
                            }
                            long j = cfpVar2.f12799f - 1;
                            cfpVar2.f12799f = j;
                            if (j > 0) {
                                return;
                            }
                            if (j >= 0) {
                                cfpVar2.p();
                                return;
                            }
                            IllegalStateException illegalStateException = new IllegalStateException();
                            synchronized (cfpVar2.h) {
                                cfpVar2.f12797d = illegalStateException;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            });
        }
        this.f18505c.start();
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzk(int i, int i2, int i3, long j, int i4) {
        this.f18508f.g(i, i3, i4, j);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzl(int i, int i2, zzhj zzhjVar, long j, int i3) {
        this.f18508f.d(i, zzhjVar, j);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzm() {
        zzsj zzsjVar;
        zzsj zzsjVar2;
        zzsj zzsjVar3;
        try {
            try {
                if (this.f18506d == 1) {
                    this.f18508f.zzg();
                    cfp cfpVar = this.f18507e;
                    synchronized (cfpVar.h) {
                        cfpVar.j = true;
                        cfpVar.l.quit();
                        cfpVar.p();
                    }
                }
                this.f18506d = 2;
                if (this.f18504b) {
                    return;
                }
                int i = zzen.zza;
                if (i >= 30 && i < 33) {
                    this.f18505c.stop();
                }
                if (i >= 35 && (zzsjVar3 = this.f18503a) != null) {
                    zzsjVar3.zzc(this.f18505c);
                }
                this.f18505c.release();
                this.f18504b = true;
            } catch (Throwable th) {
                if (!this.f18504b) {
                    int i2 = zzen.zza;
                    if (i2 >= 30 && i2 < 33) {
                        this.f18505c.stop();
                    }
                    if (i2 >= 35 && (zzsjVar2 = this.f18503a) != null) {
                        zzsjVar2.zzc(this.f18505c);
                    }
                    this.f18505c.release();
                    this.f18504b = true;
                }
                throw th;
            }
        } catch (Throwable th2) {
            if (zzen.zza >= 35 && (zzsjVar = this.f18503a) != null) {
                zzsjVar.zzc(this.f18505c);
            }
            this.f18505c.release();
            this.f18504b = true;
            throw th2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzn(int i, long j) {
        this.f18505c.releaseOutputBuffer(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzo(int i, boolean z) {
        this.f18505c.releaseOutputBuffer(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzp(Surface surface) {
        this.f18505c.setOutputSurface(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzq(Bundle bundle) {
        this.f18508f.f(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final void zzr(int i) {
        this.f18505c.setVideoScalingMode(i);
    }

    @Override // com.google.android.gms.internal.ads.zzsn
    public final boolean zzs(zzsm zzsmVar) {
        cfp cfpVar = this.f18507e;
        synchronized (cfpVar.h) {
            cfpVar.f12796c = zzsmVar;
        }
        return true;
    }
}
