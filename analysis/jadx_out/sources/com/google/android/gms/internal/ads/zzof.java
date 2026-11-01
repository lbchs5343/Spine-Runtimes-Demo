package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import g.eee;
import g.equ;
import g.ffr;
import g.fnh;
import j$.util.Objects;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class zzof implements zzlz, zzog {

    /* renamed from: b, reason: collision with root package name */
    public ffr f8816b;

    /* renamed from: c, reason: collision with root package name */
    public zzad f8817c;

    /* renamed from: e, reason: collision with root package name */
    public int f8819e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8820f;

    /* renamed from: g, reason: collision with root package name */
    public ffr f8821g;
    public PlaybackMetrics.Builder h;
    public final PlaybackSession i;
    public int k;
    public boolean l;
    public zzad m;
    public zzad p;
    public final Context q;
    public boolean r;
    public int s;
    public String t;
    public final zzod u;
    public zzbi v;
    public int w;
    public ffr x;
    public final zzbu o = new zzbu();
    public final zzbt z = new zzbt();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8815a = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f8818d = new HashMap();
    public final long n = SystemClock.elapsedRealtime();
    public int j = 0;
    public int y = 0;

    public zzof(Context context, PlaybackSession playbackSession) {
        this.q = context.getApplicationContext();
        this.i = playbackSession;
        zzod zzodVar = new zzod(zzod.zza);
        this.u = zzodVar;
        zzodVar.zzh(this);
    }

    public static zzof zzb(Context context) {
        PlaybackSession createPlaybackSession;
        MediaMetricsManager k = equ.k(context.getSystemService("media_metrics"));
        if (k == null) {
            return null;
        }
        createPlaybackSession = k.createPlaybackSession();
        return new zzof(context, createPlaybackSession);
    }

    public final boolean aa(ffr ffrVar) {
        return ffrVar != null && ((String) ffrVar.f16719c).equals(this.u.zze());
    }

    public final void ab() {
        PlaybackMetrics build;
        PlaybackMetrics.Builder builder = this.h;
        if (builder != null && this.r) {
            builder.setAudioUnderrunCount(this.f8819e);
            this.h.setVideoFramesDropped(this.w);
            this.h.setVideoFramesPlayed(this.s);
            Long l = (Long) this.f8818d.get(this.t);
            this.h.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l2 = (Long) this.f8815a.get(this.t);
            this.h.setNetworkBytesRead(l2 == null ? 0L : l2.longValue());
            this.h.setStreamSource((l2 == null || l2.longValue() <= 0) ? 0 : 1);
            PlaybackSession playbackSession = this.i;
            build = this.h.build();
            playbackSession.reportPlaybackMetrics(build);
        }
        this.h = null;
        this.t = null;
        this.f8819e = 0;
        this.w = 0;
        this.s = 0;
        this.p = null;
        this.m = null;
        this.f8817c = null;
        this.r = false;
    }

    public final void ac(zzbv zzbvVar, zzur zzurVar) {
        int zza;
        PlaybackMetrics.Builder builder = this.h;
        if (zzurVar == null || (zza = zzbvVar.zza(zzurVar.zza)) == -1) {
            return;
        }
        zzbt zzbtVar = this.z;
        int i = 0;
        zzbvVar.zzd(zza, zzbtVar, false);
        int i2 = zzbtVar.zzc;
        zzbu zzbuVar = this.o;
        zzbvVar.zze(i2, zzbuVar, 0L);
        zzar zzarVar = zzbuVar.zzd.zzb;
        if (zzarVar != null) {
            int zzo = zzen.zzo(zzarVar.zza);
            i = zzo != 0 ? zzo != 1 ? zzo != 2 ? 1 : 4 : 5 : 3;
        }
        builder.setStreamType(i);
        long j = zzbuVar.zzm;
        if (j != -9223372036854775807L && !zzbuVar.zzk && !zzbuVar.zzi && !zzbuVar.zzb()) {
            builder.setMediaDurationMillis(zzen.zzv(j));
        }
        builder.setPlaybackType(true != zzbuVar.zzb() ? 1 : 2);
        this.r = true;
    }

    public final void ad(int i, long j, zzad zzadVar, int i2) {
        TrackChangeEvent.Builder timeSinceCreatedMillis;
        TrackChangeEvent build;
        timeSinceCreatedMillis = eee.w(i).setTimeSinceCreatedMillis(j - this.n);
        if (zzadVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(i2 != 1 ? 1 : 2);
            String str = zzadVar.zzn;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = zzadVar.zzo;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = zzadVar.zzk;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i3 = zzadVar.zzj;
            if (i3 != -1) {
                timeSinceCreatedMillis.setBitrate(i3);
            }
            int i4 = zzadVar.zzu;
            if (i4 != -1) {
                timeSinceCreatedMillis.setWidth(i4);
            }
            int i5 = zzadVar.zzv;
            if (i5 != -1) {
                timeSinceCreatedMillis.setHeight(i5);
            }
            int i6 = zzadVar.zzC;
            if (i6 != -1) {
                timeSinceCreatedMillis.setChannelCount(i6);
            }
            int i7 = zzadVar.zzD;
            if (i7 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i7);
            }
            String str4 = zzadVar.zzd;
            if (str4 != null) {
                int i8 = zzen.zza;
                String[] split = str4.split("-", -1);
                Pair create = Pair.create(split[0], split.length >= 2 ? split[1] : null);
                timeSinceCreatedMillis.setLanguage((String) create.first);
                Object obj = create.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f2 = zzadVar.zzw;
            if (f2 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f2);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.r = true;
        PlaybackSession playbackSession = this.i;
        build = timeSinceCreatedMillis.build();
        playbackSession.reportTrackChangeEvent(build);
    }

    public final LogSessionId zza() {
        LogSessionId sessionId;
        sessionId = this.i.getSessionId();
        return sessionId;
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final void zzc(zzlx zzlxVar, String str) {
        PlaybackMetrics.Builder playerName;
        PlaybackMetrics.Builder playerVersion;
        zzur zzurVar = zzlxVar.zzd;
        if (zzurVar == null || !zzurVar.zzb()) {
            ab();
            this.t = str;
            playerName = eee.q().setPlayerName("AndroidXMedia3");
            playerVersion = playerName.setPlayerVersion("1.5.0-alpha01");
            this.h = playerVersion;
            ac(zzlxVar.zzb, zzlxVar.zzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final void zzd(zzlx zzlxVar, String str, boolean z) {
        zzur zzurVar = zzlxVar.zzd;
        if ((zzurVar == null || !zzurVar.zzb()) && str.equals(this.t)) {
            ab();
        }
        this.f8818d.remove(str);
        this.f8815a.remove(str);
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final /* synthetic */ void zze(zzlx zzlxVar, zzad zzadVar, zzhy zzhyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzf(zzlx zzlxVar, int i, long j, long j2) {
        zzur zzurVar = zzlxVar.zzd;
        if (zzurVar != null) {
            String zzf = this.u.zzf(zzlxVar.zzb, zzurVar);
            HashMap hashMap = this.f8815a;
            Long l = (Long) hashMap.get(zzf);
            HashMap hashMap2 = this.f8818d;
            Long l2 = (Long) hashMap2.get(zzf);
            hashMap.put(zzf, Long.valueOf((l == null ? 0L : l.longValue()) + j));
            hashMap2.put(zzf, Long.valueOf((l2 != null ? l2.longValue() : 0L) + i));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzg(zzlx zzlxVar, zzun zzunVar) {
        zzur zzurVar = zzlxVar.zzd;
        if (zzurVar == null) {
            return;
        }
        zzad zzadVar = zzunVar.zzb;
        zzadVar.getClass();
        ffr ffrVar = new ffr(zzadVar, 20, this.u.zzf(zzlxVar.zzb, zzurVar));
        int i = zzunVar.zza;
        if (i != 0) {
            if (i == 1) {
                this.f8816b = ffrVar;
                return;
            } else if (i != 2) {
                if (i != 3) {
                    return;
                }
                this.x = ffrVar;
                return;
            }
        }
        this.f8821g = ffrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final /* synthetic */ void zzh(zzlx zzlxVar, int i, long j) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:156:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0163 A[PHI: r4
      0x0163: PHI (r4v21 int) = (r4v7 int), (r4v51 int) binds: [B:315:0x0266, B:237:0x015f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0167 A[PHI: r4
      0x0167: PHI (r4v20 int) = (r4v7 int), (r4v51 int) binds: [B:315:0x0266, B:237:0x015f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x017f A[PHI: r4
      0x017f: PHI (r4v19 int) = (r4v7 int), (r4v47 int), (r4v51 int) binds: [B:315:0x0266, B:250:0x017e, B:237:0x015f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0199 A[PHI: r4
      0x0199: PHI (r4v18 int) = (r4v7 int), (r4v46 int), (r4v51 int) binds: [B:315:0x0266, B:259:0x0198, B:237:0x015f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0176 A[PHI: r4
      0x0176: PHI (r4v17 int) = (r4v7 int), (r4v48 int), (r4v51 int) binds: [B:315:0x0266, B:247:0x0175, B:237:0x015f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02ff  */
    @Override // com.google.android.gms.internal.ads.zzlz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzi(zzbp zzbpVar, zzly zzlyVar) {
        zzod zzodVar;
        int i;
        int errorCode;
        PlaybackErrorEvent.Builder timeSinceCreatedMillis;
        PlaybackErrorEvent.Builder errorCode2;
        PlaybackErrorEvent.Builder subErrorCode;
        PlaybackErrorEvent.Builder exception;
        PlaybackErrorEvent build;
        int i2;
        int i3;
        ffr ffrVar;
        int i4;
        boolean z;
        int i5;
        boolean z2;
        PlaybackStateEvent.Builder state;
        PlaybackStateEvent.Builder timeSinceCreatedMillis2;
        PlaybackStateEvent build2;
        NetworkEvent.Builder networkType;
        NetworkEvent.Builder timeSinceCreatedMillis3;
        NetworkEvent build3;
        boolean z3;
        zzad zzadVar;
        zzw zzwVar;
        int i6;
        int i7;
        if (zzlyVar.zzb() == 0) {
            return;
        }
        int i8 = 0;
        while (true) {
            int zzb = zzlyVar.zzb();
            zzodVar = this.u;
            if (i8 >= zzb) {
                break;
            }
            int zza = zzlyVar.zza(i8);
            zzlx zzc = zzlyVar.zzc(zza);
            if (zza == 0) {
                zzodVar.zzk(zzc);
            } else if (zza == 11) {
                zzodVar.zzj(zzc, this.k);
            } else {
                zzodVar.zzi(zzc);
            }
            i8++;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (zzlyVar.zzd(0)) {
            zzlx zzc2 = zzlyVar.zzc(0);
            if (this.h != null) {
                ac(zzc2.zzb, zzc2.zzd);
            }
        }
        if (zzlyVar.zzd(2) && this.h != null) {
            zzfzo zza2 = zzbpVar.zzo().zza();
            int size = zza2.size();
            int i9 = 0;
            loop1: while (true) {
                if (i9 >= size) {
                    zzwVar = null;
                    break;
                }
                zzcc zzccVar = (zzcc) zza2.get(i9);
                int i10 = 0;
                while (true) {
                    i7 = i9 + 1;
                    if (i10 < zzccVar.zza) {
                        if (zzccVar.zzd(i10) && (zzwVar = zzccVar.zzb(i10).zzs) != null) {
                            break loop1;
                        } else {
                            i10++;
                        }
                    }
                }
                i9 = i7;
            }
            if (zzwVar != null) {
                PlaybackMetrics.Builder builder = this.h;
                int i11 = zzen.zza;
                PlaybackMetrics.Builder u = equ.u(builder);
                int i12 = 0;
                while (true) {
                    if (i12 >= zzwVar.zzb) {
                        i6 = 1;
                        break;
                    }
                    UUID uuid = zzwVar.zza(i12).zza;
                    if (uuid.equals(zzj.zzd)) {
                        i6 = 3;
                        break;
                    } else if (uuid.equals(zzj.zze)) {
                        i6 = 2;
                        break;
                    } else {
                        if (uuid.equals(zzj.zzc)) {
                            i6 = 6;
                            break;
                        }
                        i12++;
                    }
                }
                u.setDrmType(i6);
            }
        }
        if (zzlyVar.zzd(AVMDLDataLoader.KeyIsGetCostLog)) {
            this.f8819e++;
        }
        zzbi zzbiVar = this.v;
        Context context = this.q;
        long j = this.n;
        if (zzbiVar == null) {
            i2 = 1;
        } else {
            if (zzbiVar.zza == 1001) {
                i = 20;
            } else {
                zzig zzigVar = (zzig) zzbiVar;
                boolean z4 = zzigVar.zzc == 1;
                int i13 = zzigVar.zzg;
                Throwable cause = zzbiVar.getCause();
                cause.getClass();
                if (cause instanceof IOException) {
                    if (cause instanceof zzgw) {
                        errorCode = ((zzgw) cause).zzc;
                        i = 5;
                    } else if ((cause instanceof zzgv) || (cause instanceof zzbh)) {
                        errorCode = 0;
                        i = 11;
                    } else {
                        boolean z5 = cause instanceof zzgu;
                        if (z5 || (cause instanceof zzhe)) {
                            if (zzeb.zzb(context).zza() == 1) {
                                errorCode = 0;
                                i = 3;
                            } else {
                                Throwable cause2 = cause.getCause();
                                if (cause2 instanceof UnknownHostException) {
                                    errorCode = 0;
                                    i = 6;
                                } else if (cause2 instanceof SocketTimeoutException) {
                                    errorCode = 0;
                                    i = 7;
                                } else if (z5 && ((zzgu) cause).zzb == 1) {
                                    errorCode = 0;
                                    i = 4;
                                } else {
                                    errorCode = 0;
                                    i = 8;
                                }
                            }
                        } else if (zzbiVar.zza == 1002) {
                            i = 21;
                        } else if (cause instanceof zzri) {
                            Throwable cause3 = cause.getCause();
                            cause3.getClass();
                            if (cause3 instanceof MediaDrm.MediaDrmStateException) {
                                errorCode = zzen.zzm(((MediaDrm.MediaDrmStateException) cause3).getDiagnosticInfo());
                                switch (zzen.zzl(errorCode)) {
                                    case 6002:
                                        i = 24;
                                        break;
                                    case 6003:
                                        i = 28;
                                        break;
                                    case 6004:
                                        i = 25;
                                        break;
                                    case 6005:
                                        i = 26;
                                        break;
                                    default:
                                        i = 27;
                                        break;
                                }
                            } else if (zzen.zza >= 23 && fnh.ab(cause3)) {
                                errorCode = 0;
                                i = 27;
                            } else if (cause3 instanceof NotProvisionedException) {
                                errorCode = 0;
                                i = 24;
                            } else if (cause3 instanceof DeniedByServerException) {
                                i = 29;
                            } else {
                                if (!(cause3 instanceof zzrs)) {
                                    if (cause3 instanceof zzrh) {
                                        errorCode = 0;
                                        i = 28;
                                    } else {
                                        i = 30;
                                    }
                                }
                                errorCode = 0;
                                i = 23;
                            }
                        } else if ((cause instanceof zzgr) && (cause.getCause() instanceof FileNotFoundException)) {
                            Throwable cause4 = cause.getCause();
                            cause4.getClass();
                            Throwable cause5 = cause4.getCause();
                            if ((cause5 instanceof ErrnoException) && ((ErrnoException) cause5).errno == OsConstants.EACCES) {
                                i = 32;
                            } else {
                                errorCode = 0;
                                i = 31;
                            }
                        } else {
                            errorCode = 0;
                            i = 9;
                        }
                    }
                    PlaybackSession playbackSession = this.i;
                    timeSinceCreatedMillis = eee.j().setTimeSinceCreatedMillis(elapsedRealtime - j);
                    errorCode2 = timeSinceCreatedMillis.setErrorCode(i);
                    subErrorCode = errorCode2.setSubErrorCode(errorCode);
                    exception = subErrorCode.setException(zzbiVar);
                    build = exception.build();
                    playbackSession.reportPlaybackErrorEvent(build);
                    i2 = 1;
                    this.r = true;
                    this.v = null;
                } else {
                    if (z4 && (i13 == 0 || i13 == 1)) {
                        errorCode = 0;
                        i = 35;
                    } else if (z4 && i13 == 3) {
                        i = 15;
                    } else {
                        if (!z4 || i13 != 2) {
                            if (cause instanceof zzsu) {
                                errorCode = zzen.zzm(((zzsu) cause).zzd);
                                i = 13;
                            } else {
                                i = 14;
                                if (cause instanceof zzsp) {
                                    errorCode = ((zzsp) cause).zzb;
                                } else if (!(cause instanceof OutOfMemoryError)) {
                                    if (cause instanceof zzpq) {
                                        errorCode = ((zzpq) cause).zza;
                                        i = 17;
                                    } else if (cause instanceof zzpt) {
                                        errorCode = ((zzpt) cause).zza;
                                        i = 18;
                                    } else if (cause instanceof MediaCodec.CryptoException) {
                                        errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                                        switch (zzen.zzl(errorCode)) {
                                        }
                                    } else {
                                        i = 22;
                                    }
                                }
                            }
                        }
                        errorCode = 0;
                        i = 23;
                    }
                    PlaybackSession playbackSession2 = this.i;
                    timeSinceCreatedMillis = eee.j().setTimeSinceCreatedMillis(elapsedRealtime - j);
                    errorCode2 = timeSinceCreatedMillis.setErrorCode(i);
                    subErrorCode = errorCode2.setSubErrorCode(errorCode);
                    exception = subErrorCode.setException(zzbiVar);
                    build = exception.build();
                    playbackSession2.reportPlaybackErrorEvent(build);
                    i2 = 1;
                    this.r = true;
                    this.v = null;
                }
            }
            errorCode = 0;
            PlaybackSession playbackSession22 = this.i;
            timeSinceCreatedMillis = eee.j().setTimeSinceCreatedMillis(elapsedRealtime - j);
            errorCode2 = timeSinceCreatedMillis.setErrorCode(i);
            subErrorCode = errorCode2.setSubErrorCode(errorCode);
            exception = subErrorCode.setException(zzbiVar);
            build = exception.build();
            playbackSession22.reportPlaybackErrorEvent(build);
            i2 = 1;
            this.r = true;
            this.v = null;
        }
        if (zzlyVar.zzd(2)) {
            zzcd zzo = zzbpVar.zzo();
            boolean zzb2 = zzo.zzb(2);
            boolean zzb3 = zzo.zzb(i2);
            boolean zzb4 = zzo.zzb(3);
            if (zzb2 || zzb3) {
                z3 = zzb4;
            } else if (zzb4) {
                z3 = true;
            }
            if (zzb2) {
                zzadVar = null;
            } else {
                zzadVar = null;
                if (!Objects.equals(this.p, null)) {
                    int i14 = this.p == null ? 1 : 0;
                    this.p = null;
                    i3 = 4;
                    ad(1, elapsedRealtime, null, i14);
                    if (!zzb3 && !Objects.equals(this.m, zzadVar)) {
                        int i15 = this.m != null ? 1 : 0;
                        this.m = zzadVar;
                        ad(0, elapsedRealtime, zzadVar, i15);
                    }
                    if (!z3 && !Objects.equals(this.f8817c, zzadVar)) {
                        int i16 = this.f8817c != null ? 1 : 0;
                        this.f8817c = zzadVar;
                        ad(2, elapsedRealtime, zzadVar, i16);
                    }
                    ffrVar = zzadVar;
                    if (aa(this.f8821g)) {
                        zzad zzadVar2 = (zzad) this.f8821g.f16721f;
                        if (zzadVar2.zzv != -1) {
                            if (!Objects.equals(this.p, zzadVar2)) {
                                int i17 = this.p == null ? 1 : 0;
                                this.p = zzadVar2;
                                ad(1, elapsedRealtime, zzadVar2, i17);
                            }
                            this.f8821g = ffrVar;
                        }
                    }
                    if (aa(this.f8816b)) {
                        zzad zzadVar3 = (zzad) this.f8816b.f16721f;
                        if (!Objects.equals(this.m, zzadVar3)) {
                            int i18 = this.m == null ? 1 : 0;
                            this.m = zzadVar3;
                            ad(0, elapsedRealtime, zzadVar3, i18);
                        }
                        this.f8816b = ffrVar;
                    }
                    if (aa(this.x)) {
                        zzad zzadVar4 = (zzad) this.x.f16721f;
                        if (!Objects.equals(this.f8817c, zzadVar4)) {
                            int i19 = this.f8817c == null ? 1 : 0;
                            this.f8817c = zzadVar4;
                            ad(2, elapsedRealtime, zzadVar4, i19);
                        }
                        this.x = ffrVar;
                    }
                    switch (zzeb.zzb(context).zza()) {
                        case 0:
                            i4 = 0;
                            break;
                        case 1:
                            i4 = 9;
                            break;
                        case 2:
                            i4 = 2;
                            break;
                        case 3:
                            i4 = 4;
                            break;
                        case 4:
                            i4 = 5;
                            break;
                        case 5:
                            i4 = 6;
                            break;
                        case 6:
                        case 8:
                        default:
                            i4 = 1;
                            break;
                        case 7:
                            i4 = 3;
                            break;
                        case 9:
                            i4 = 8;
                            break;
                        case 10:
                            i4 = 7;
                            break;
                    }
                    if (i4 != this.y) {
                        this.y = i4;
                        PlaybackSession playbackSession3 = this.i;
                        networkType = eee.g().setNetworkType(i4);
                        timeSinceCreatedMillis3 = networkType.setTimeSinceCreatedMillis(elapsedRealtime - j);
                        build3 = timeSinceCreatedMillis3.build();
                        playbackSession3.reportNetworkEvent(build3);
                    }
                    if (zzbpVar.zzf() != 2) {
                        z = false;
                        this.l = false;
                    } else {
                        z = false;
                    }
                    if (((zzlu) zzbpVar).zzC() == null) {
                        this.f8820f = z;
                    } else if (zzlyVar.zzd(10)) {
                        this.f8820f = true;
                    }
                    int zzf = zzbpVar.zzf();
                    if (this.l) {
                        z2 = true;
                        i5 = 5;
                    } else if (this.f8820f) {
                        z2 = true;
                        i5 = 13;
                    } else if (zzf == i3) {
                        z2 = true;
                        i5 = 11;
                    } else {
                        i5 = 12;
                        if (zzf == 2) {
                            int i20 = this.j;
                            if (i20 == 0 || i20 == 2 || i20 == 12) {
                                z2 = true;
                                i5 = 2;
                            } else if (zzbpVar.zzu()) {
                                z2 = true;
                                i5 = zzbpVar.zzg() != 0 ? 10 : 6;
                            } else {
                                z2 = true;
                                i5 = 7;
                            }
                        } else if (zzf != 3) {
                            z2 = true;
                            if (zzf != 1 || this.j == 0) {
                                i5 = this.j;
                            }
                        } else if (zzbpVar.zzu()) {
                            z2 = true;
                            i5 = zzbpVar.zzg() != 0 ? 9 : 3;
                        } else {
                            z2 = true;
                            i5 = 4;
                        }
                    }
                    if (this.j != i5) {
                        this.j = i5;
                        this.r = z2;
                        PlaybackSession playbackSession4 = this.i;
                        state = eee.u().setState(this.j);
                        timeSinceCreatedMillis2 = state.setTimeSinceCreatedMillis(elapsedRealtime - j);
                        build2 = timeSinceCreatedMillis2.build();
                        playbackSession4.reportPlaybackStateEvent(build2);
                    }
                    if (zzlyVar.zzd(1028)) {
                        zzodVar.zzg(zzlyVar.zzc(1028));
                        return;
                    }
                    return;
                }
            }
            i3 = 4;
            if (!zzb3) {
                if (this.m != null) {
                }
                this.m = zzadVar;
                ad(0, elapsedRealtime, zzadVar, i15);
            }
            if (!z3) {
                if (this.f8817c != null) {
                }
                this.f8817c = zzadVar;
                ad(2, elapsedRealtime, zzadVar, i16);
            }
            ffrVar = zzadVar;
            if (aa(this.f8821g)) {
            }
            if (aa(this.f8816b)) {
            }
            if (aa(this.x)) {
            }
            switch (zzeb.zzb(context).zza()) {
            }
            if (i4 != this.y) {
            }
            if (zzbpVar.zzf() != 2) {
            }
            if (((zzlu) zzbpVar).zzC() == null) {
            }
            int zzf2 = zzbpVar.zzf();
            if (this.l) {
            }
            if (this.j != i5) {
            }
            if (zzlyVar.zzd(1028)) {
            }
        }
        i3 = 4;
        ffrVar = 0;
        if (aa(this.f8821g)) {
        }
        if (aa(this.f8816b)) {
        }
        if (aa(this.x)) {
        }
        switch (zzeb.zzb(context).zza()) {
        }
        if (i4 != this.y) {
        }
        if (zzbpVar.zzf() != 2) {
        }
        if (((zzlu) zzbpVar).zzC() == null) {
        }
        int zzf22 = zzbpVar.zzf();
        if (this.l) {
        }
        if (this.j != i5) {
        }
        if (zzlyVar.zzd(1028)) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzj(zzlx zzlxVar, zzui zzuiVar, zzun zzunVar, IOException iOException, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final /* synthetic */ void zzk(zzlx zzlxVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzl(zzlx zzlxVar, zzbi zzbiVar) {
        this.v = zzbiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzm(zzlx zzlxVar, zzbn zzbnVar, zzbn zzbnVar2, int i) {
        if (i == 1) {
            this.l = true;
            i = 1;
        }
        this.k = i;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final /* synthetic */ void zzn(zzlx zzlxVar, Object obj, long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzo(zzlx zzlxVar, zzhx zzhxVar) {
        this.w += zzhxVar.zzg;
        this.s += zzhxVar.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final /* synthetic */ void zzp(zzlx zzlxVar, zzad zzadVar, zzhy zzhyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzq(zzlx zzlxVar, zzci zzciVar) {
        ffr ffrVar = this.f8821g;
        if (ffrVar != null) {
            zzad zzadVar = (zzad) ffrVar.f16721f;
            if (zzadVar.zzv == -1) {
                zzab zzb = zzadVar.zzb();
                zzb.zzae(zzciVar.zzb);
                zzb.zzJ(zzciVar.zzc);
                this.f8821g = new ffr(zzb.zzaf(), 20, (String) ffrVar.f16719c);
            }
        }
    }
}
