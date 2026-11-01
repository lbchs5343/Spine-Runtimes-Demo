package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.alq;
import g.awf;
import g.bw;
import g.ccp;
import g.ckj;
import g.crj;
import g.cto;
import g.dub;
import g.eij;
import g.fge;
import g.fqp;
import g.gcx;
import g.gef;
import g.gmy;
import g.gqn;
import g.gra;
import g.gy;
import g.tn;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzqw implements zzpu {

    /* renamed from: a, reason: collision with root package name */
    public static int f8851a;

    /* renamed from: b, reason: collision with root package name */
    public static ScheduledExecutorService f8852b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f8853c = new Object();
    public boolean aa;

    /* renamed from: ab, reason: collision with root package name */
    public bw f8854ab;
    public Handler ac;
    public zzbj ad;
    public final gy ae;
    public ByteBuffer af;
    public gmy ag;
    public AudioTrack ah;
    public gqn ai;
    public long aj;
    public zzh ak;
    public final gra al;
    public final gcx am;
    public Looper an;
    public final gra ao;
    public zzop ap;
    public long aq;
    public zzg ar;
    public long as;
    public int at;
    public boolean au;
    public final ckj av;
    public int aw;
    public boolean ax;
    public boolean ay;
    public final ArrayDeque az;
    public zzov ba;
    public final zzqc bb;

    /* renamed from: d, reason: collision with root package name */
    public long f8855d;

    /* renamed from: e, reason: collision with root package name */
    public alq f8856e;

    /* renamed from: f, reason: collision with root package name */
    public zzoj f8857f;

    /* renamed from: g, reason: collision with root package name */
    public ByteBuffer f8858g;
    public boolean h;
    public zzcj i;
    public long j;
    public fqp k;
    public boolean l;
    public float m;
    public long n;
    public gqn o;
    public final zzfzo p;
    public long q;
    public zzpr r;
    public final zzfzo s;
    public long t;
    public final Context u;
    public bw v;
    public boolean w;
    public int x;
    public boolean y;
    public final zzqm z;

    public zzqw(zzqk zzqkVar) {
        zzop zzopVar;
        Context context = zzqkVar.f8844c;
        this.u = context;
        zzg zzgVar = zzg.zza;
        this.ar = zzgVar;
        if (context != null) {
            zzop zzopVar2 = zzop.zza;
            int i = zzen.zza;
            zzopVar = zzop.e(context, zzgVar, null);
        } else {
            zzopVar = zzqkVar.f8846e;
        }
        this.ap = zzopVar;
        this.z = zzqkVar.f8843b;
        int i2 = zzen.zza;
        zzqc zzqcVar = zzqkVar.f8845d;
        zzqcVar.getClass();
        this.bb = zzqcVar;
        this.ae = new gy(new ccp(5, this));
        gcx gcxVar = new gcx();
        this.am = gcxVar;
        ckj ckjVar = new ckj();
        ckjVar.l = zzen.zzf;
        this.av = ckjVar;
        this.p = zzfzo.zzq(new zzcq(), gcxVar, ckjVar);
        this.s = zzfzo.zzo(new gef());
        this.m = 1.0f;
        this.at = 0;
        this.ak = new zzh(0, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        zzbj zzbjVar = zzbj.zza;
        this.f8854ab = new bw(zzbjVar, 0L, 0L);
        this.ad = zzbjVar;
        this.ay = false;
        this.az = new ArrayDeque();
        this.al = new gra();
        this.ao = new gra();
    }

    public static boolean bc(AudioTrack audioTrack) {
        boolean isOffloadedPlayback;
        if (zzen.zza < 29) {
            return false;
        }
        isOffloadedPlayback = audioTrack.isOffloadedPlayback();
        return isOffloadedPlayback;
    }

    public static /* synthetic */ void zzG(zzqw zzqwVar) {
        if (zzqwVar.n >= 300000) {
            ((fge) zzqwVar.r).f16738a.f8859a = true;
            zzqwVar.n = 0L;
        }
    }

    public final boolean bd() {
        if (!this.i.zzh()) {
            be();
            return this.af == null;
        }
        this.i.zzd();
        bl();
        if (!this.i.zzg()) {
            return false;
        }
        ByteBuffer byteBuffer = this.af;
        return byteBuffer == null || !byteBuffer.hasRemaining();
    }

    public final void be() {
        zzpr zzprVar;
        boolean z;
        gra graVar = this.ao;
        if (this.af == null) {
            return;
        }
        if (((Exception) graVar.f18626a) != null) {
            synchronized (f8853c) {
                z = f8851a > 0;
            }
            if (z || SystemClock.elapsedRealtime() < graVar.f18628d) {
                return;
            }
        }
        int remaining = this.af.remaining();
        int write = this.ah.write(this.af, remaining, 1);
        this.aj = SystemClock.elapsedRealtime();
        if (write < 0) {
            if ((zzen.zza >= 24 && write == -6) || write == -32) {
                if (bj() <= 0) {
                    if (bc(this.ah)) {
                        if (this.o.h == 1) {
                            this.au = true;
                        }
                    }
                }
                r2 = true;
            }
            zzpt zzptVar = new zzpt(write, this.o.f18585d, r2);
            zzpr zzprVar2 = this.r;
            if (zzprVar2 != null) {
                zzprVar2.zza(zzptVar);
            }
            if (zzptVar.zzb) {
                this.ap = zzop.zza;
                throw zzptVar;
            }
            graVar.e(zzptVar);
            return;
        }
        graVar.f18626a = null;
        graVar.f18627c = -9223372036854775807L;
        graVar.f18628d = -9223372036854775807L;
        if (bc(this.ah) && this.l && (zzprVar = this.r) != null && write < remaining) {
        }
        int i = this.o.h;
        if (i == 0) {
            this.aq += write;
        }
        if (write == remaining) {
            if (i != 0) {
                zzdb.zzf(this.af == this.f8858g);
                this.q = (this.x * this.aw) + this.q;
            }
            this.af = null;
        }
    }

    public final void bf() {
        Context context;
        if (this.ba != null || (context = this.u) == null) {
            return;
        }
        this.an = Looper.myLooper();
        zzov zzovVar = new zzov(context, new zzqf(this), this.ar, this.k);
        this.ba = zzovVar;
        this.ap = zzovVar.zzc();
    }

    public final long bg() {
        return this.o.h == 0 ? this.j / r0.f18588g : this.f8855d;
    }

    public final void bh() {
        if (this.h) {
            return;
        }
        this.h = true;
        long bj = bj();
        gy gyVar = this.ae;
        gyVar.f18989a = gyVar.ah();
        gyVar.ae = zzen.zzs(gyVar.f18995f.zzb());
        gyVar.z = bj;
        if (bc(this.ah)) {
            this.y = false;
        }
        this.ah.stop();
    }

    public final boolean bi() {
        return this.ah != null;
    }

    public final long bj() {
        gqn gqnVar = this.o;
        if (gqnVar.h != 0) {
            return this.q;
        }
        long j = this.aq;
        long j2 = gqnVar.f18583b;
        int i = zzen.zza;
        return ((j + j2) - 1) / j2;
    }

    public final void bk(long j) {
        zzbj zzbjVar;
        boolean z;
        int i = this.o.h;
        zzqm zzqmVar = this.z;
        if (i == 0) {
            zzbjVar = this.ad;
            zzqmVar.zzc(zzbjVar);
        } else {
            zzbjVar = zzbj.zza;
        }
        zzbj zzbjVar2 = zzbjVar;
        this.ad = zzbjVar2;
        if (this.o.h == 0) {
            z = this.ay;
            zzqmVar.zzd(z);
        } else {
            z = false;
        }
        this.ay = z;
        this.az.add(new bw(zzbjVar2, Math.max(0L, j), zzen.zzt(bj(), this.o.f18584c)));
        zzcj zzcjVar = this.o.f18587f;
        this.i = zzcjVar;
        zzcjVar.zzc();
        zzpr zzprVar = this.r;
        if (zzprVar != null) {
            ((fge) zzprVar).f16738a.f8864f.zzw(this.ay);
        }
    }

    public final void bl() {
        be();
        if (this.af != null) {
            return;
        }
        if (!this.i.zzh()) {
            ByteBuffer byteBuffer = this.f8858g;
            if (byteBuffer != null) {
                zzdb.zzf(this.af == null);
                if (byteBuffer.hasRemaining()) {
                    this.af = byteBuffer;
                }
                be();
                return;
            }
            return;
        }
        while (!this.i.zzg()) {
            do {
                ByteBuffer zzb = this.i.zzb();
                if (zzb.hasRemaining()) {
                    zzdb.zzf(this.af == null);
                    if (zzb.hasRemaining()) {
                        this.af = zzb;
                    }
                    be();
                } else {
                    ByteBuffer byteBuffer2 = this.f8858g;
                    if (byteBuffer2 == null || !byteBuffer2.hasRemaining()) {
                        return;
                    } else {
                        this.i.zze(this.f8858g);
                    }
                }
            } while (this.af == null);
            return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final boolean zzA(zzad zzadVar) {
        return zza(zzadVar) != 0;
    }

    public final void zzJ(zzop zzopVar) {
        zzlp zzlpVar;
        Looper myLooper = Looper.myLooper();
        Looper looper = this.an;
        if (looper != myLooper) {
            throw new IllegalStateException(tn.r("Current looper (", myLooper == null ? "null" : myLooper.getThread().getName(), ") is not the playback looper (", looper == null ? "null" : looper.getThread().getName(), ")"));
        }
        if (zzopVar.equals(this.ap)) {
            return;
        }
        this.ap = zzopVar;
        zzpr zzprVar = this.r;
        if (zzprVar != null) {
            zzrc zzrcVar = ((fge) zzprVar).f16738a;
            synchronized (zzrcVar.cg) {
                zzlpVar = zzrcVar.ck;
            }
            if (zzlpVar != null) {
                zzlpVar.zza(zzrcVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final int zza(zzad zzadVar) {
        bf();
        if (!"audio/raw".equals(zzadVar.zzo)) {
            return this.ap.zzb(zzadVar, this.ar) != null ? 2 : 0;
        }
        if (zzen.zzJ(zzadVar.zzE)) {
            return zzadVar.zzE != 2 ? 1 : 2;
        }
        dub.g(zzadVar.zzE, "Invalid PCM encoding: ", "DefaultAudioSink");
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final long zzb(boolean z) {
        ArrayDeque arrayDeque;
        long zzq;
        if (!bi() || this.ax) {
            return Long.MIN_VALUE;
        }
        long min = Math.min(this.ae.ai(z), zzen.zzt(bj(), this.o.f18584c));
        while (true) {
            arrayDeque = this.az;
            if (arrayDeque.isEmpty() || min < ((bw) arrayDeque.getFirst()).f12301c) {
                break;
            }
            this.f8854ab = (bw) arrayDeque.remove();
        }
        long j = min - this.f8854ab.f12301c;
        boolean isEmpty = arrayDeque.isEmpty();
        zzqm zzqmVar = this.z;
        if (isEmpty) {
            zzq = this.f8854ab.f12300b + zzqmVar.zza(j);
        } else {
            bw bwVar = (bw) arrayDeque.getFirst();
            zzq = bwVar.f12300b - zzen.zzq(bwVar.f12301c - min, this.f8854ab.f12299a.zzb);
        }
        long zzb = zzqmVar.zzb();
        long zzt = zzen.zzt(zzb, this.o.f18584c) + zzq;
        long j2 = this.t;
        if (zzb > j2) {
            long zzt2 = zzen.zzt(zzb - j2, this.o.f18584c);
            this.t = zzb;
            this.n += zzt2;
            if (this.ac == null) {
                this.ac = new Handler(Looper.myLooper());
            }
            this.ac.removeCallbacksAndMessages(null);
            this.ac.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqe
                @Override // java.lang.Runnable
                public final void run() {
                    zzqw.zzG(zzqw.this);
                }
            }, 100L);
        }
        return zzt;
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final zzbj zzc() {
        return this.ad;
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final zzoz zzd(zzad zzadVar) {
        return this.au ? zzoz.zza : this.bb.zza(zzadVar, this.ar);
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zze(zzad zzadVar, int i, int[] iArr) throws zzpp {
        int i2;
        int intValue;
        int intValue2;
        zzcj zzcjVar;
        int i3;
        int i4;
        int i5;
        int i6;
        int max;
        bf();
        if ("audio/raw".equals(zzadVar.zzo)) {
            zzdb.zzd(zzen.zzJ(zzadVar.zzE));
            i3 = zzen.zzk(zzadVar.zzE) * zzadVar.zzC;
            zzfzl zzfzlVar = new zzfzl();
            zzfzlVar.zzh(this.p);
            zzfzlVar.zzg(this.z.zze());
            zzcj zzcjVar2 = new zzcj(zzfzlVar.zzi());
            if (zzcjVar2.equals(this.i)) {
                zzcjVar2 = this.i;
            }
            int i7 = zzadVar.zzF;
            int i8 = zzadVar.zzG;
            ckj ckjVar = this.av;
            ckjVar.i = i7;
            ckjVar.n = i8;
            this.am.i = iArr;
            try {
                zzck zza = zzcjVar2.zza(new zzck(zzadVar.zzD, zzadVar.zzC, zzadVar.zzE));
                intValue = zza.zzd;
                i2 = zza.zzb;
                int i9 = zza.zzc;
                intValue2 = zzen.zzi(i9);
                zzcjVar = zzcjVar2;
                i5 = zzen.zzk(intValue) * i9;
                i4 = 0;
            } catch (zzcl e2) {
                throw new zzpp(e2, zzadVar);
            }
        } else {
            zzcj zzcjVar3 = new zzcj(zzfzo.zzn());
            i2 = zzadVar.zzD;
            zzoz zzozVar = zzoz.zza;
            Pair zzb = this.ap.zzb(zzadVar, this.ar);
            if (zzb == null) {
                throw new zzpp("Unable to configure passthrough for: ".concat(String.valueOf(zzadVar)), zzadVar);
            }
            intValue = ((Integer) zzb.first).intValue();
            intValue2 = ((Integer) zzb.second).intValue();
            zzcjVar = zzcjVar3;
            i3 = -1;
            i4 = 2;
            i5 = -1;
        }
        if (intValue == 0) {
            throw new zzpp("Invalid output encoding (mode=" + i4 + ") for: " + String.valueOf(zzadVar), zzadVar);
        }
        if (intValue2 == 0) {
            throw new zzpp("Invalid output channel config (mode=" + i4 + ") for: " + String.valueOf(zzadVar), zzadVar);
        }
        int i10 = zzadVar.zzj;
        if ("audio/vnd.dts.hd;profile=lbr".equals(zzadVar.zzo) && i10 == -1) {
            i10 = 768000;
        }
        int minBufferSize = AudioTrack.getMinBufferSize(i2, intValue2, intValue);
        zzdb.zzf(minBufferSize != -2);
        int i11 = i5 != -1 ? i5 : 1;
        int i12 = 250000;
        if (i4 == 0) {
            i6 = i4;
            long j = i2;
            long j2 = i11;
            max = Math.max(zzgcr.zzb(((250000 * j) * j2) / C.MICROS_PER_SECOND), Math.min(minBufferSize * 4, zzgcr.zzb(((750000 * j) * j2) / C.MICROS_PER_SECOND)));
        } else if (i4 != 1) {
            if (intValue == 5) {
                i12 = 500000;
            } else if (intValue == 8) {
                i12 = 1000000;
                intValue = 8;
            }
            i6 = i4;
            max = zzgcr.zzb((i12 * (i10 != -1 ? zzgck.zzb(i10, 8, RoundingMode.CEILING) : zzqy.a(intValue))) / C.MICROS_PER_SECOND);
        } else {
            i6 = i4;
            max = zzgcr.zzb((zzqy.a(intValue) * 50000000) / C.MICROS_PER_SECOND);
        }
        this.au = false;
        int i13 = i3;
        gqn gqnVar = new gqn(zzadVar, i13, i6, i5, i2, intValue2, intValue, (((Math.max(minBufferSize, max) + i11) - 1) / i11) * i11, zzcjVar);
        if (bi()) {
            this.ai = gqnVar;
        } else {
            this.o = gqnVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzf() {
        gmy gmyVar;
        if (bi()) {
            this.j = 0L;
            this.f8855d = 0L;
            this.aq = 0L;
            this.q = 0L;
            this.x = 0;
            this.f8854ab = new bw(this.ad, 0L, 0L);
            this.as = 0L;
            this.v = null;
            this.az.clear();
            this.f8858g = null;
            this.aw = 0;
            this.af = null;
            this.h = false;
            this.aa = false;
            this.y = false;
            this.av.k = 0L;
            zzcj zzcjVar = this.o.f18587f;
            this.i = zzcjVar;
            zzcjVar.zzc();
            AudioTrack audioTrack = this.ae.ac;
            audioTrack.getClass();
            if (audioTrack.getPlayState() == 3) {
                this.ah.pause();
            }
            if (bc(this.ah)) {
                alq alqVar = this.f8856e;
                alqVar.getClass();
                alqVar.e(this.ah);
            }
            gqn gqnVar = this.o;
            final zzpo zzpoVar = new zzpo(gqnVar.i, gqnVar.f18584c, gqnVar.f18586e, false, gqnVar.h == 1, gqnVar.f18582a);
            gqn gqnVar2 = this.ai;
            if (gqnVar2 != null) {
                this.o = gqnVar2;
                this.ai = null;
            }
            gy gyVar = this.ae;
            gyVar.f18992c = 0L;
            gyVar.q = 0;
            gyVar.p = 0;
            gyVar.j = 0L;
            gyVar.o = 0L;
            gyVar.f18990ab = 0L;
            gyVar.x = false;
            gyVar.ac = null;
            gyVar.k = null;
            if (zzen.zza >= 24 && (gmyVar = this.ag) != null) {
                gmyVar.e();
                this.ag = null;
            }
            final AudioTrack audioTrack2 = this.ah;
            final zzpr zzprVar = this.r;
            final Handler handler = new Handler(Looper.myLooper());
            synchronized (f8853c) {
                try {
                    if (f8852b == null) {
                        final String str = "ExoPlayer:AudioTrackReleaseThread";
                        f8852b = Executors.newSingleThreadScheduledExecutor(new ThreadFactory(str) { // from class: com.google.android.gms.internal.ads.zzem
                            public final /* synthetic */ String zza = "ExoPlayer:AudioTrackReleaseThread";

                            @Override // java.util.concurrent.ThreadFactory
                            public final Thread newThread(Runnable runnable) {
                                return new Thread(runnable, this.zza);
                            }
                        });
                    }
                    f8851a++;
                    f8852b.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqd
                        @Override // java.lang.Runnable
                        public final void run() {
                            AudioTrack audioTrack3 = audioTrack2;
                            final zzpr zzprVar2 = zzprVar;
                            Handler handler2 = handler;
                            final zzpo zzpoVar2 = zzpoVar;
                            try {
                                audioTrack3.flush();
                                audioTrack3.release();
                                if (zzprVar2 != null && handler2.getLooper().getThread().isAlive()) {
                                    handler2.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqg
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            ((fge) zzpr.this).f16738a.f8864f.zzd(zzpoVar2);
                                        }
                                    });
                                }
                                synchronized (zzqw.f8853c) {
                                    try {
                                        int i = zzqw.f8851a - 1;
                                        zzqw.f8851a = i;
                                        if (i == 0) {
                                            zzqw.f8852b.shutdown();
                                            zzqw.f8852b = null;
                                        }
                                    } finally {
                                    }
                                }
                            } catch (Throwable th) {
                                if (zzprVar2 != null && handler2.getLooper().getThread().isAlive()) {
                                    handler2.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqg
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            ((fge) zzpr.this).f16738a.f8864f.zzd(zzpoVar2);
                                        }
                                    });
                                }
                                synchronized (zzqw.f8853c) {
                                    try {
                                        int i2 = zzqw.f8851a - 1;
                                        zzqw.f8851a = i2;
                                        if (i2 == 0) {
                                            zzqw.f8852b.shutdown();
                                            zzqw.f8852b = null;
                                        }
                                        throw th;
                                    } finally {
                                    }
                                }
                            }
                        }
                    }, 20L, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.ah = null;
        }
        gra graVar = this.ao;
        graVar.f18626a = null;
        graVar.f18627c = -9223372036854775807L;
        graVar.f18628d = -9223372036854775807L;
        gra graVar2 = this.al;
        graVar2.f18626a = null;
        graVar2.f18627c = -9223372036854775807L;
        graVar2.f18628d = -9223372036854775807L;
        this.t = 0L;
        this.n = 0L;
        Handler handler2 = this.ac;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzg() {
        this.w = true;
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzh() {
        this.l = false;
        if (bi()) {
            gy gyVar = this.ae;
            gyVar.f18992c = 0L;
            gyVar.q = 0;
            gyVar.p = 0;
            gyVar.j = 0L;
            gyVar.o = 0L;
            gyVar.f18990ab = 0L;
            gyVar.x = false;
            if (gyVar.ae == -9223372036854775807L) {
                crj crjVar = gyVar.k;
                crjVar.getClass();
                crjVar.g(0);
            } else {
                gyVar.f18989a = gyVar.ah();
                if (!bc(this.ah)) {
                    return;
                }
            }
            this.ah.pause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzi() {
        this.l = true;
        if (bi()) {
            gy gyVar = this.ae;
            if (gyVar.ae != -9223372036854775807L) {
                gyVar.ae = zzen.zzs(gyVar.f18995f.zzb());
            }
            crj crjVar = gyVar.k;
            crjVar.getClass();
            crjVar.g(0);
            this.ah.play();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzj() throws zzpt {
        if (!this.aa && bi() && bd()) {
            bh();
            this.aa = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzk() {
        zzov zzovVar = this.ba;
        if (zzovVar != null) {
            zzovVar.zzi();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzl() {
        zzf();
        zzfzo zzfzoVar = this.p;
        int size = zzfzoVar.size();
        for (int i = 0; i < size; i++) {
            ((zzcm) zzfzoVar.get(i)).zzf();
        }
        zzfzo zzfzoVar2 = this.s;
        int size2 = zzfzoVar2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((zzcm) zzfzoVar2.get(i2)).zzf();
        }
        zzcj zzcjVar = this.i;
        if (zzcjVar != null) {
            zzcjVar.zzf();
        }
        this.l = false;
        this.au = false;
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzm(zzg zzgVar) {
        if (this.ar.equals(zzgVar)) {
            return;
        }
        this.ar = zzgVar;
        zzov zzovVar = this.ba;
        if (zzovVar != null) {
            zzovVar.zzg(zzgVar);
        }
        zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzn(int i) {
        if (this.at != i) {
            this.at = i;
            zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzo(zzh zzhVar) {
        if (this.ak.equals(zzhVar)) {
            return;
        }
        if (this.ah != null) {
            int i = this.ak.zza;
        }
        this.ak = zzhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzp(zzdc zzdcVar) {
        this.ae.f18995f = zzdcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzq(zzpr zzprVar) {
        this.r = zzprVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzr(int i, int i2) {
        AudioTrack audioTrack = this.ah;
        if (audioTrack != null) {
            bc(audioTrack);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzs(zzbj zzbjVar) {
        this.ad = new zzbj(Math.max(0.1f, Math.min(zzbjVar.zzb, 8.0f)), Math.max(0.1f, Math.min(zzbjVar.zzc, 8.0f)));
        bw bwVar = new bw(zzbjVar, -9223372036854775807L, -9223372036854775807L);
        if (bi()) {
            this.v = bwVar;
        } else {
            this.f8854ab = bwVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzt(zzoj zzojVar) {
        this.f8857f = zzojVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzu(AudioDeviceInfo audioDeviceInfo) {
        this.k = audioDeviceInfo == null ? null : new fqp(audioDeviceInfo);
        zzov zzovVar = this.ba;
        if (zzovVar != null) {
            zzovVar.zzh(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.ah;
        if (audioTrack != null) {
            cto.a(audioTrack, this.k);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzv(boolean z) {
        this.ay = z;
        bw bwVar = new bw(this.ad, -9223372036854775807L, -9223372036854775807L);
        if (bi()) {
            this.v = bwVar;
        } else {
            this.f8854ab = bwVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final void zzw(float f2) {
        if (this.m != f2) {
            this.m = f2;
            if (bi()) {
                this.ah.setVolume(this.m);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:273:0x0098, code lost:
    
        if (android.os.SystemClock.elapsedRealtime() < r7.f18628d) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:145:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x00a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x04a1 A[Catch: zzpq -> 0x0110, TryCatch #0 {zzpq -> 0x0110, blocks: (B:180:0x0075, B:191:0x00fa, B:193:0x0102, B:195:0x0108, B:196:0x0113, B:197:0x011d, B:199:0x0123, B:201:0x0127, B:202:0x012c, B:205:0x0142, B:207:0x0151, B:208:0x0158, B:212:0x0164, B:214:0x016d, B:217:0x0178, B:219:0x017c, B:220:0x0185, B:222:0x018c, B:225:0x0199, B:238:0x00bc, B:240:0x00c5, B:254:0x0497, B:255:0x049a, B:257:0x04a1, B:258:0x04a3, B:261:0x007e, B:262:0x0080, B:271:0x008e, B:278:0x04a6, B:264:0x0081, B:267:0x0088, B:244:0x00f7, B:248:0x048e, B:251:0x0496, B:252:0x0493, B:186:0x00a0, B:188:0x00b9, B:231:0x00ae, B:234:0x00b6, B:235:0x00b3), top: B:179:0x0075, inners: #1, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:259:? A[Catch: zzpq -> 0x0110, SYNTHETIC, TRY_LEAVE, TryCatch #0 {zzpq -> 0x0110, blocks: (B:180:0x0075, B:191:0x00fa, B:193:0x0102, B:195:0x0108, B:196:0x0113, B:197:0x011d, B:199:0x0123, B:201:0x0127, B:202:0x012c, B:205:0x0142, B:207:0x0151, B:208:0x0158, B:212:0x0164, B:214:0x016d, B:217:0x0178, B:219:0x017c, B:220:0x0185, B:222:0x018c, B:225:0x0199, B:238:0x00bc, B:240:0x00c5, B:254:0x0497, B:255:0x049a, B:257:0x04a1, B:258:0x04a3, B:261:0x007e, B:262:0x0080, B:271:0x008e, B:278:0x04a6, B:264:0x0081, B:267:0x0088, B:244:0x00f7, B:248:0x048e, B:251:0x0496, B:252:0x0493, B:186:0x00a0, B:188:0x00b9, B:231:0x00ae, B:234:0x00b6, B:235:0x00b3), top: B:179:0x0075, inners: #1, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:260:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzpu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzx(ByteBuffer byteBuffer, long j, int i) throws zzpq, zzpt {
        boolean z;
        Throwable th;
        boolean z2;
        AudioTrack audioTrack;
        Throwable th2;
        zzov zzovVar;
        zzoj zzojVar;
        gqn gqnVar;
        long j2;
        long j3;
        boolean z3;
        int zzb;
        int i2;
        int i3;
        byte b2;
        int i4;
        int i5;
        gy gyVar = this.ae;
        gra graVar = this.al;
        ByteBuffer byteBuffer2 = this.f8858g;
        zzdb.zzd(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.ai != null) {
            if (!bd()) {
                return false;
            }
            gqn gqnVar2 = this.ai;
            gqn gqnVar3 = this.o;
            if (gqnVar3.h == gqnVar2.h && gqnVar3.i == gqnVar2.i && gqnVar3.f18584c == gqnVar2.f18584c && gqnVar3.f18586e == gqnVar2.f18586e && gqnVar3.f18583b == gqnVar2.f18583b) {
                this.o = gqnVar2;
                this.ai = null;
                AudioTrack audioTrack2 = this.ah;
                if (audioTrack2 != null && bc(audioTrack2)) {
                    this.o.getClass();
                }
            } else {
                bh();
                if (zzy()) {
                    return false;
                }
                zzf();
            }
            bk(j);
        }
        if (bi()) {
            th2 = null;
        } else {
            try {
                if (((Exception) graVar.f18626a) == null) {
                    th = null;
                } else {
                    synchronized (f8853c) {
                        z = f8851a > 0;
                    }
                    if (z) {
                        th = null;
                    } else {
                        th = null;
                    }
                    z2 = true;
                    if (!z2) {
                        return false;
                    }
                    try {
                        gqnVar = this.o;
                    } catch (zzpq e2) {
                        gqn gqnVar4 = this.o;
                        if (gqnVar4.f18582a > 1000000) {
                            gqn gqnVar5 = new gqn(gqnVar4.f18585d, gqnVar4.f18588g, gqnVar4.h, gqnVar4.f18583b, gqnVar4.f18584c, gqnVar4.f18586e, gqnVar4.i, 1000000, gqnVar4.f18587f);
                            try {
                                try {
                                    AudioTrack j4 = gqnVar5.j(this.ar, this.at);
                                    this.o = gqnVar5;
                                    audioTrack = j4;
                                } catch (zzpq e3) {
                                    zzpr zzprVar = this.r;
                                    if (zzprVar != null) {
                                        zzprVar.zza(e3);
                                    }
                                    throw e3;
                                }
                            } catch (zzpq e4) {
                                e2.addSuppressed(e4);
                                if (this.o.h == 1) {
                                    throw e2;
                                }
                                this.au = true;
                                throw e2;
                            }
                        }
                        if (this.o.h == 1) {
                        }
                    }
                    if (gqnVar == null) {
                        throw th;
                    }
                    try {
                        audioTrack = gqnVar.j(this.ar, this.at);
                        this.ah = audioTrack;
                        if (bc(audioTrack)) {
                            AudioTrack audioTrack3 = this.ah;
                            if (this.f8856e == null) {
                                this.f8856e = new alq(this);
                            }
                            this.f8856e.d(audioTrack3);
                            this.o.getClass();
                        }
                        int i6 = zzen.zza;
                        if (i6 >= 31 && (zzojVar = this.f8857f) != null) {
                            eij.a(this.ah, zzojVar);
                        }
                        this.at = this.ah.getAudioSessionId();
                        gy gyVar2 = this.ae;
                        AudioTrack audioTrack4 = this.ah;
                        gqn gqnVar6 = this.o;
                        gyVar2.aj(audioTrack4, gqnVar6.h == 2, gqnVar6.i, gqnVar6.f18583b, gqnVar6.f18582a);
                        if (bi()) {
                            this.ah.setVolume(this.m);
                        }
                        int i7 = this.ak.zza;
                        fqp fqpVar = this.k;
                        if (fqpVar != null && i6 >= 23) {
                            cto.a(this.ah, fqpVar);
                            zzov zzovVar2 = this.ba;
                            if (zzovVar2 != null) {
                                zzovVar2.zzh(this.k.f17252a);
                            }
                        }
                        if (i6 >= 24 && (zzovVar = this.ba) != null) {
                            this.ag = new gmy(this.ah, zzovVar);
                        }
                        this.ax = true;
                        zzpr zzprVar2 = this.r;
                        if (zzprVar2 != null) {
                            gqn gqnVar7 = this.o;
                            ((fge) zzprVar2).f16738a.f8864f.zzc(new zzpo(gqnVar7.i, gqnVar7.f18584c, gqnVar7.f18586e, false, gqnVar7.h == 1, gqnVar7.f18582a));
                        }
                        th2 = th;
                    } catch (zzpq e5) {
                        zzpr zzprVar3 = this.r;
                        if (zzprVar3 != null) {
                            zzprVar3.zza(e5);
                        }
                        throw e5;
                    }
                }
                z2 = false;
                if (!z2) {
                }
            } catch (zzpq e6) {
                if (e6.zzb) {
                    throw e6;
                }
                graVar.e(e6);
                return false;
            }
        }
        graVar.f18626a = th2;
        long j5 = -9223372036854775807L;
        graVar.f18627c = -9223372036854775807L;
        graVar.f18628d = -9223372036854775807L;
        if (this.ax) {
            this.as = Math.max(0L, j);
            this.w = false;
            this.ax = false;
            bk(j);
            if (this.l) {
                zzi();
            }
        }
        long bj = bj();
        AudioTrack audioTrack5 = gyVar.ac;
        audioTrack5.getClass();
        int playState = audioTrack5.getPlayState();
        if (gyVar.af) {
            if (playState == 2) {
                gyVar.f18993d = false;
                return false;
            }
            if (playState == 1) {
                if (gyVar.ah() == 0) {
                    return false;
                }
                playState = 1;
            }
        }
        boolean z4 = gyVar.f18993d;
        boolean ak = gyVar.ak(bj);
        gyVar.f18993d = ak;
        if (z4 && !ak && playState != 1) {
            gyVar.l.zze(gyVar.h, zzen.zzv(gyVar.f18991b));
        }
        if (this.f8858g == null) {
            zzdb.zzd(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            gqn gqnVar8 = this.o;
            if (gqnVar8.h == 0 || this.x != 0) {
                j2 = -9223372036854775807L;
            } else {
                int i8 = gqnVar8.i;
                if (i8 != 20) {
                    if (i8 != 30) {
                        switch (i8) {
                            case 5:
                            case 6:
                                j2 = -9223372036854775807L;
                                zzb = zzabr.zza(byteBuffer);
                                z3 = true;
                                break;
                            case 7:
                            case 8:
                                break;
                            case 9:
                                j2 = -9223372036854775807L;
                                zzb = zzadk.zzc(zzen.zzj(byteBuffer, byteBuffer.position()));
                                if (zzb == -1) {
                                    throw new IllegalArgumentException();
                                }
                                z3 = true;
                                break;
                            case 10:
                                j2 = -9223372036854775807L;
                                zzb = 1024;
                                z3 = true;
                                break;
                            case 11:
                            case 12:
                                j2 = -9223372036854775807L;
                                zzb = 2048;
                                z3 = true;
                                break;
                            default:
                                switch (i8) {
                                    case 14:
                                        int position = byteBuffer.position();
                                        int limit = byteBuffer.limit() - 10;
                                        int i9 = position;
                                        while (true) {
                                            if (i9 <= limit) {
                                                j2 = j5;
                                                if ((zzen.zzj(byteBuffer, i9 + 4) & (-2)) == -126718022) {
                                                    i5 = i9 - position;
                                                } else {
                                                    i9++;
                                                    j5 = j2;
                                                }
                                            } else {
                                                j2 = j5;
                                                i5 = -1;
                                            }
                                        }
                                        if (i5 == -1) {
                                            zzb = 0;
                                        } else {
                                            zzb = (40 << ((byteBuffer.get((byteBuffer.position() + i5) + ((byteBuffer.get((byteBuffer.position() + i5) + 7) & 255) == 187 ? 9 : 8)) >> 4) & 7)) * 16;
                                        }
                                        z3 = true;
                                        break;
                                    case 15:
                                        zzb = 512;
                                        j2 = -9223372036854775807L;
                                        z3 = true;
                                        break;
                                    case 16:
                                        break;
                                    case 17:
                                        byte[] bArr = new byte[16];
                                        int position2 = byteBuffer.position();
                                        byteBuffer.get(bArr);
                                        byteBuffer.position(position2);
                                        zzb = zzabu.zza(new zzec(bArr, 16)).zzc;
                                        j2 = -9223372036854775807L;
                                        z3 = true;
                                        break;
                                    case 18:
                                        break;
                                    default:
                                        throw new IllegalStateException(awf.ac(i8, "Unexpected audio encoding: "));
                                }
                        }
                    }
                    j2 = -9223372036854775807L;
                    if (byteBuffer.getInt(0) != -233094848) {
                        if (byteBuffer.getInt(0) != -398277519) {
                            if (byteBuffer.getInt(0) == 622876772) {
                                zzb = 4096;
                                z3 = true;
                            } else {
                                int position3 = byteBuffer.position();
                                byte b3 = byteBuffer.get(position3);
                                if (b3 != -2) {
                                    if (b3 == -1) {
                                        i3 = (byteBuffer.get(position3 + 4) & 7) << 4;
                                        b2 = byteBuffer.get(position3 + 7);
                                    } else if (b3 != 31) {
                                        i3 = (byteBuffer.get(position3 + 4) & 1) << 6;
                                        i4 = byteBuffer.get(position3 + 5) & 252;
                                        i2 = (i4 >> 2) | i3;
                                        z3 = true;
                                    } else {
                                        i3 = (byteBuffer.get(position3 + 5) & 7) << 4;
                                        b2 = byteBuffer.get(position3 + 6);
                                    }
                                    i4 = b2 & 60;
                                    i2 = (i4 >> 2) | i3;
                                    z3 = true;
                                } else {
                                    z3 = true;
                                    i2 = ((byteBuffer.get(position3 + 5) & 1) << 6) | ((byteBuffer.get(position3 + 4) & 252) >> 2);
                                }
                                zzb = (i2 + 1) * 32;
                            }
                        }
                        zzb = 1024;
                        z3 = true;
                    } else {
                        z3 = true;
                        zzb = 1024;
                    }
                } else {
                    j2 = -9223372036854775807L;
                    z3 = true;
                    zzb = zzadm.zzb(byteBuffer);
                }
                this.x = zzb;
                if (zzb == 0) {
                    return z3;
                }
            }
            if (this.v != null) {
                if (!bd()) {
                    return false;
                }
                bk(j);
                this.v = null;
            }
            j3 = 0;
            long zzt = zzen.zzt(bg() - this.av.k, this.o.f18585d.zzD) + this.as;
            if (!this.w && Math.abs(zzt - j) > 200000) {
                zzpr zzprVar4 = this.r;
                if (zzprVar4 != null) {
                    zzprVar4.zza(new zzps(j, zzt));
                }
                this.w = true;
            }
            if (this.w) {
                if (!bd()) {
                    return false;
                }
                long j6 = j - zzt;
                this.as += j6;
                this.w = false;
                bk(j);
                zzpr zzprVar5 = this.r;
                if (zzprVar5 != null && j6 != 0) {
                    ((fge) zzprVar5).f16738a.f8863e = true;
                }
            }
            if (this.o.h == 0) {
                this.j += byteBuffer.remaining();
            } else {
                this.f8855d = (this.x * i) + this.f8855d;
            }
            this.f8858g = byteBuffer;
            this.aw = i;
        } else {
            j2 = -9223372036854775807L;
            j3 = 0;
        }
        bl();
        if (!this.f8858g.hasRemaining()) {
            this.f8858g = null;
            this.aw = 0;
            return true;
        }
        long bj2 = bj();
        if (gyVar.f18994e == j2 || bj2 <= j3 || gyVar.f18995f.zzb() - gyVar.f18994e < 200) {
            return false;
        }
        zzdt.zzf("DefaultAudioSink", "Resetting stalled audio track");
        zzf();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final boolean zzy() {
        boolean isOffloadedPlayback;
        if (!bi()) {
            return false;
        }
        if (zzen.zza >= 29) {
            isOffloadedPlayback = this.ah.isOffloadedPlayback();
            if (isOffloadedPlayback && this.y) {
                return false;
            }
        }
        return this.ae.ak(bj());
    }

    @Override // com.google.android.gms.internal.ads.zzpu
    public final boolean zzz() {
        if (bi()) {
            return this.aa && !zzy();
        }
        return true;
    }
}
