package g;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.internal.ads.zzdc;
import com.google.android.gms.internal.ads.zzen;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class gy {

    /* renamed from: a, reason: collision with root package name */
    public long f18989a;
    public long aa;

    /* renamed from: ab, reason: collision with root package name */
    public long f18990ab;
    public AudioTrack ac;
    public long ad;
    public long ae;
    public boolean af;
    public long ag;

    /* renamed from: b, reason: collision with root package name */
    public long f18991b;

    /* renamed from: c, reason: collision with root package name */
    public long f18992c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18993d;

    /* renamed from: e, reason: collision with root package name */
    public long f18994e;

    /* renamed from: f, reason: collision with root package name */
    public zzdc f18995f;

    /* renamed from: g, reason: collision with root package name */
    public long f18996g;
    public int h;
    public long i;
    public long j;
    public crj k;
    public final ccp l;
    public long m;
    public boolean n;
    public long o;
    public int p;
    public int q;
    public int r;
    public long s;
    public boolean t;
    public Method u;
    public float v;
    public final long[] w;
    public boolean x;
    public long y;
    public long z;

    public gy(ccp ccpVar) {
        this.l = ccpVar;
        try {
            this.u = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.w = new long[10];
        this.f18995f = zzdc.zza;
    }

    public final long ah() {
        long zzb = this.f18995f.zzb();
        int i = 2;
        if (this.ae != -9223372036854775807L) {
            AudioTrack audioTrack = this.ac;
            audioTrack.getClass();
            if (audioTrack.getPlayState() == 2) {
                return this.f18989a;
            }
            return Math.min(this.z, this.f18989a + zzen.zzp(zzen.zzq(zzen.zzs(zzb) - this.ae, this.v), this.r));
        }
        if (zzb - this.ag >= 5) {
            AudioTrack audioTrack2 = this.ac;
            audioTrack2.getClass();
            int playState = audioTrack2.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = audioTrack2.getPlaybackHeadPosition() & 4294967295L;
                long j = 0;
                if (this.af) {
                    if (playState != 2) {
                        i = playState;
                    } else if (playbackHeadPosition == 0) {
                        this.m = this.s;
                    }
                    playbackHeadPosition += this.m;
                    playState = i;
                }
                if (zzen.zza <= 29) {
                    if (playbackHeadPosition != 0) {
                        j = playbackHeadPosition;
                    } else if (this.s > 0 && playState == 3) {
                        if (this.f18994e == -9223372036854775807L) {
                            this.f18994e = zzb;
                        }
                    }
                    this.f18994e = -9223372036854775807L;
                    playbackHeadPosition = j;
                }
                if (this.s > playbackHeadPosition) {
                    this.aa++;
                }
                this.s = playbackHeadPosition;
            }
            this.ag = zzb;
        }
        return this.s + (this.aa << 32);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0162 A[Catch: Exception -> 0x0189, TryCatch #0 {Exception -> 0x0189, blocks: (B:30:0x015e, B:32:0x0162, B:34:0x0182, B:36:0x0188), top: B:29:0x015e }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0188 A[Catch: Exception -> 0x0189, TRY_LEAVE, TryCatch #0 {Exception -> 0x0189, blocks: (B:30:0x015e, B:32:0x0162, B:34:0x0182, B:36:0x0188), top: B:29:0x015e }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long ai(boolean z) {
        long zzt;
        boolean timestamp;
        long j;
        Method method;
        AudioTrack audioTrack;
        AudioTrack audioTrack2 = this.ac;
        audioTrack2.getClass();
        int playState = audioTrack2.getPlayState();
        ccp ccpVar = this.l;
        if (playState == 3) {
            long zzc = this.f18995f.zzc() / 1000;
            if (zzc - this.j >= 30000) {
                long zzt2 = zzen.zzt(ah(), this.r);
                if (zzt2 != 0) {
                    int i = this.p;
                    long zzr = zzen.zzr(zzt2, this.v) - zzc;
                    long[] jArr = this.w;
                    jArr[i] = zzr;
                    this.p = (this.p + 1) % 10;
                    int i2 = this.q;
                    if (i2 < 10) {
                        this.q = i2 + 1;
                    }
                    this.j = zzc;
                    this.f18992c = 0L;
                    int i3 = 0;
                    while (true) {
                        int i4 = this.q;
                        if (i3 >= i4) {
                            break;
                        }
                        this.f18992c = (jArr[i3] / i4) + this.f18992c;
                        i3++;
                    }
                }
            }
            if (!this.af) {
                crj crjVar = this.k;
                crjVar.getClass();
                dxp dxpVar = crjVar.f13385c;
                if (zzc - crjVar.f13384b >= crjVar.f13383a) {
                    crjVar.f13384b = zzc;
                    AudioTrack audioTrack3 = (AudioTrack) dxpVar.f15028a;
                    AudioTimestamp audioTimestamp = (AudioTimestamp) dxpVar.f15029b;
                    timestamp = audioTrack3.getTimestamp(audioTimestamp);
                    if (timestamp) {
                        long j2 = audioTimestamp.framePosition;
                        if (dxpVar.f15031d > j2) {
                            dxpVar.f15030c++;
                        }
                        dxpVar.f15031d = j2;
                        dxpVar.f15032e = j2 + (dxpVar.f15030c << 32);
                    }
                    int i5 = crjVar.f13387e;
                    if (i5 != 0) {
                        if (i5 != 1) {
                            if (i5 == 2) {
                                if (!timestamp) {
                                    crjVar.g(0);
                                }
                                timestamp = true;
                            } else if (i5 == 3) {
                                if (timestamp) {
                                    crjVar.g(0);
                                    timestamp = true;
                                }
                            }
                        } else if (timestamp) {
                            if (dxpVar.f15032e > crjVar.f13386d) {
                                crjVar.g(2);
                            }
                            timestamp = true;
                        } else {
                            crjVar.g(0);
                        }
                    } else if (timestamp) {
                        if (audioTimestamp.nanoTime / 1000 >= crjVar.f13388f) {
                            crjVar.f13386d = dxpVar.f15032e;
                            crjVar.g(1);
                            timestamp = true;
                        }
                    } else if (zzc - crjVar.f13388f > 500000) {
                        crjVar.g(3);
                    }
                    if (timestamp) {
                        j = 5000000;
                    } else {
                        long j3 = ((AudioTimestamp) dxpVar.f15029b).nanoTime / 1000;
                        long j4 = dxpVar.f15032e;
                        j = 5000000;
                        long zzt3 = zzen.zzt(ah(), this.r);
                        if (Math.abs(j3 - zzc) > 5000000) {
                            ccpVar.zzd(j4, j3, zzc, zzt3);
                            crjVar.g(4);
                        } else if (Math.abs(zzen.zzt(j4, this.r) - zzt3) > 5000000) {
                            ccpVar.zzc(j4, j3, zzc, zzt3);
                            crjVar.g(4);
                        } else if (crjVar.f13387e == 4) {
                            crjVar.g(0);
                        }
                    }
                    if (this.t && (method = this.u) != null && zzc - this.y >= 500000) {
                        try {
                            audioTrack = this.ac;
                        } catch (Exception unused) {
                            this.u = null;
                        }
                        if (audioTrack != null) {
                            throw null;
                        }
                        Integer num = (Integer) method.invoke(audioTrack, null);
                        int i6 = zzen.zza;
                        long intValue = (num.intValue() * 1000) - this.f18991b;
                        this.f18996g = intValue;
                        long max = Math.max(intValue, 0L);
                        this.f18996g = max;
                        if (max > j) {
                            ccpVar.zza(max);
                            this.f18996g = 0L;
                        }
                        this.y = zzc;
                    }
                }
                timestamp = false;
                if (timestamp) {
                }
                if (this.t) {
                    audioTrack = this.ac;
                    if (audioTrack != null) {
                    }
                }
            }
        }
        long zzc2 = this.f18995f.zzc() / 1000;
        crj crjVar2 = this.k;
        crjVar2.getClass();
        dxp dxpVar2 = crjVar2.f13385c;
        boolean z2 = crjVar2.f13387e == 2;
        if (z2) {
            zzt = zzen.zzq(zzc2 - (((AudioTimestamp) dxpVar2.f15029b).nanoTime / 1000), this.v) + zzen.zzt(dxpVar2.f15032e, this.r);
        } else {
            zzt = this.q == 0 ? zzen.zzt(ah(), this.r) : zzen.zzq(this.f18992c + zzc2, this.v);
            if (!z) {
                zzt = Math.max(0L, zzt - this.f18996g);
            }
        }
        if (this.n != z2) {
            this.f18990ab = this.o;
            this.ad = this.i;
        }
        long j5 = zzc2 - this.f18990ab;
        if (j5 < C.MICROS_PER_SECOND) {
            long zzq = zzen.zzq(j5, this.v) + this.ad;
            long j6 = (j5 * 1000) / C.MICROS_PER_SECOND;
            zzt = (((1000 - j6) * zzq) + (zzt * j6)) / 1000;
        }
        if (!this.x) {
            long j7 = this.i;
            if (zzt > j7) {
                this.x = true;
                ccpVar.zzb(this.f18995f.zza() - zzen.zzv(zzen.zzr(zzen.zzv(zzt - j7), this.v)));
            }
        }
        this.o = zzc2;
        this.i = zzt;
        this.n = z2;
        return zzt;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void aj(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        boolean z2;
        this.ac = audioTrack;
        this.h = i3;
        this.k = new crj(audioTrack);
        this.r = audioTrack.getSampleRate();
        if (z && zzen.zza < 23) {
            z2 = true;
            if (i != 5) {
                if (i == 6) {
                    i = 6;
                }
            }
            this.af = z2;
            boolean zzJ = zzen.zzJ(i);
            this.t = zzJ;
            this.f18991b = !zzJ ? zzen.zzt(i3 / i2, this.r) : -9223372036854775807L;
            this.s = 0L;
            this.aa = 0L;
            this.m = 0L;
            this.f18993d = false;
            this.ae = -9223372036854775807L;
            this.f18994e = -9223372036854775807L;
            this.y = 0L;
            this.f18996g = 0L;
            this.v = 1.0f;
        }
        z2 = false;
        this.af = z2;
        boolean zzJ2 = zzen.zzJ(i);
        this.t = zzJ2;
        this.f18991b = !zzJ2 ? zzen.zzt(i3 / i2, this.r) : -9223372036854775807L;
        this.s = 0L;
        this.aa = 0L;
        this.m = 0L;
        this.f18993d = false;
        this.ae = -9223372036854775807L;
        this.f18994e = -9223372036854775807L;
        this.y = 0L;
        this.f18996g = 0L;
        this.v = 1.0f;
    }

    public final boolean ak(long j) {
        if (j > zzen.zzp(ai(false), this.r)) {
            return true;
        }
        if (this.af) {
            AudioTrack audioTrack = this.ac;
            audioTrack.getClass();
            if (audioTrack.getPlayState() == 2 && ah() == 0) {
                return true;
            }
        }
        return false;
    }
}
