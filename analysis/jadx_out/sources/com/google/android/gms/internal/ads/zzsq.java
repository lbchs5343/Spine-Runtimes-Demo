package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.aky;
import g.awf;
import g.bkn;
import g.tn;
import j$.util.Objects;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzsq {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f8879a;
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final MediaCodecInfo.CodecCapabilities zzd;
    public final boolean zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;

    public zzsq(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4) {
        str.getClass();
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = codecCapabilities;
        this.zzg = z;
        this.zze = z2;
        this.zzf = z3;
        this.zzh = z4;
        this.f8879a = zzbg.zzi(str2);
    }

    public static Point b(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        int i3 = zzen.zza;
        return new Point((((i + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i2 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
    }

    public static boolean c(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d2) {
        Point b2 = b(videoCapabilities, i, i2);
        int i3 = b2.x;
        int i4 = b2.y;
        return (d2 == -1.0d || d2 < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
    
        if ("Nexus 10".equals(r0) == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
    
        if ("OMX.Exynos.AVC.Decoder.secure".equals(r3) == false) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzsq zzc(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6;
        boolean z7 = true;
        boolean z8 = false;
        if (codecCapabilities != null && codecCapabilities.isFeatureSupported("adaptive-playback")) {
            if (zzen.zza <= 22) {
                String str4 = zzen.zzd;
                if (!"ODROID-XU3".equals(str4)) {
                }
                if (!"OMX.Exynos.AVC.Decoder".equals(str)) {
                }
            }
            if (codecCapabilities != null) {
                codecCapabilities.isFeatureSupported("tunneled-playback");
            }
            if (!z5 || (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback"))) {
                z8 = true;
            }
            z6 = false;
            if (zzen.zza >= 35 && codecCapabilities != null && codecCapabilities.isFeatureSupported("detached-surface")) {
                z6 = true;
            }
            return new zzsq(str, str2, str3, codecCapabilities, z, z7, z8, z6);
        }
        z7 = false;
        if (codecCapabilities != null) {
        }
        if (!z5) {
        }
        z8 = true;
        z6 = false;
        if (zzen.zza >= 35) {
            z6 = true;
        }
        return new zzsq(str, str2, str3, codecCapabilities, z, z7, z8, z6);
    }

    public final boolean d(zzad zzadVar, boolean z) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        HashMap hashMap = zztl.f8880a;
        Pair zza = zzdd.zza(zzadVar);
        String str = zzadVar.zzo;
        if (str != null && str.equals("video/mv-hevc") && this.zzc.equals("video/hevc")) {
            String zzg = zzfp.zzg(zzadVar.zzr);
            if (zzg == null) {
                zza = null;
            } else {
                String trim = zzg.trim();
                int i = zzen.zza;
                zza = zzdd.zzb(zzg, trim.split("\\.", -1), zzadVar.zzB);
            }
        }
        if (zza != null) {
            int intValue = ((Integer) zza.first).intValue();
            int intValue2 = ((Integer) zza.second).intValue();
            int i2 = 8;
            if ("video/dolby-vision".equals(zzadVar.zzo)) {
                if ("video/avc".equals(this.zzb)) {
                    intValue2 = 0;
                    intValue = 8;
                } else if ("video/hevc".equals(this.zzb)) {
                    intValue2 = 0;
                    intValue = 2;
                }
            }
            if (!this.f8879a) {
                if (intValue == 42) {
                    intValue = 42;
                }
            }
            MediaCodecInfo.CodecProfileLevel[] zzh = zzh();
            if (zzen.zza <= 23 && "video/x-vnd.on2.vp9".equals(this.zzb) && zzh.length == 0) {
                MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
                int intValue3 = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : videoCapabilities.getBitrateRange().getUpper().intValue();
                if (intValue3 >= 180000000) {
                    i2 = 1024;
                } else if (intValue3 >= 120000000) {
                    i2 = 512;
                } else if (intValue3 >= 60000000) {
                    i2 = 256;
                } else if (intValue3 >= 30000000) {
                    i2 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
                } else if (intValue3 >= 18000000) {
                    i2 = 64;
                } else if (intValue3 >= 12000000) {
                    i2 = 32;
                } else if (intValue3 >= 7200000) {
                    i2 = 16;
                } else if (intValue3 < 3600000) {
                    i2 = intValue3 >= 1800000 ? 4 : intValue3 >= 800000 ? 2 : 1;
                }
                MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
                codecProfileLevel.profile = 1;
                codecProfileLevel.level = i2;
                zzh = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel2 : zzh) {
                if (codecProfileLevel2.profile == intValue && (codecProfileLevel2.level >= intValue2 || !z)) {
                    if ("video/hevc".equals(this.zzb) && intValue == 2) {
                        String str2 = zzen.zzb;
                        if (!"sailfish".equals(str2) && !"marlin".equals(str2)) {
                        }
                    }
                }
            }
            e("codec.profileLevel, " + zzadVar.zzk + ", " + this.zzc);
            return false;
        }
        return true;
    }

    public final void e(String str) {
        String str2 = zzen.zze;
        StringBuilder p = awf.p("NoSupport [", str, "] [");
        p.append(this.zza);
        p.append(", ");
        zzdt.zzb("MediaCodecInfo", awf.r(p, this.zzb, "] [", str2, "]"));
    }

    public final String toString() {
        return this.zza;
    }

    public final Point zza(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return b(videoCapabilities, i, i2);
    }

    public final zzhy zzb(zzad zzadVar, zzad zzadVar2) {
        zzad zzadVar3;
        zzad zzadVar4;
        int i = true != Objects.equals(zzadVar.zzo, zzadVar2.zzo) ? 8 : 0;
        if (this.f8879a) {
            if (zzadVar.zzx != zzadVar2.zzx) {
                i |= 1024;
            }
            if (!this.zze && (zzadVar.zzu != zzadVar2.zzu || zzadVar.zzv != zzadVar2.zzv)) {
                i |= 512;
            }
            if ((!zzm.zzg(zzadVar.zzB) || !zzm.zzg(zzadVar2.zzB)) && !Objects.equals(zzadVar.zzB, zzadVar2.zzB)) {
                i |= 2048;
            }
            String str = this.zza;
            if (zzen.zzd.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str) && !zzadVar.zzd(zzadVar2)) {
                i |= 2;
            }
            if (i == 0) {
                return new zzhy(this.zza, zzadVar, zzadVar2, true != zzadVar.zzd(zzadVar2) ? 2 : 3, 0);
            }
            zzadVar3 = zzadVar;
            zzadVar4 = zzadVar2;
        } else {
            zzadVar3 = zzadVar;
            zzadVar4 = zzadVar2;
            if (zzadVar3.zzC != zzadVar4.zzC) {
                i |= 4096;
            }
            if (zzadVar3.zzD != zzadVar4.zzD) {
                i |= 8192;
            }
            if (zzadVar3.zzE != zzadVar4.zzE) {
                i |= 16384;
            }
            if (i == 0 && "audio/mp4a-latm".equals(this.zzb)) {
                HashMap hashMap = zztl.f8880a;
                Pair zza = zzdd.zza(zzadVar3);
                Pair zza2 = zzdd.zza(zzadVar4);
                if (zza != null && zza2 != null) {
                    int intValue = ((Integer) zza.first).intValue();
                    int intValue2 = ((Integer) zza2.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new zzhy(this.zza, zzadVar3, zzadVar4, 3, 0);
                    }
                }
            }
            if (!zzadVar3.zzd(zzadVar4)) {
                i |= 32;
            }
            if ("audio/opus".equals(this.zzb)) {
                i |= 2;
            }
            if (i == 0) {
                return new zzhy(this.zza, zzadVar3, zzadVar4, 1, 0);
            }
        }
        return new zzhy(this.zza, zzadVar3, zzadVar4, 0, i);
    }

    public final boolean zzd(zzad zzadVar) {
        return (this.zzb.equals(zzadVar.zzo) || this.zzb.equals(zztl.zzb(zzadVar))) && d(zzadVar, false);
    }

    public final boolean zze(zzad zzadVar) throws zztf {
        int i;
        if ((!this.zzb.equals(zzadVar.zzo) && !this.zzb.equals(zztl.zzb(zzadVar))) || !d(zzadVar, true)) {
            return false;
        }
        if (this.f8879a) {
            int i2 = zzadVar.zzu;
            if (i2 > 0 && (i = zzadVar.zzv) > 0) {
                return zzg(i2, i, zzadVar.zzw);
            }
        } else {
            int i3 = zzadVar.zzD;
            if (i3 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
                if (codecCapabilities == null) {
                    e("sampleRate.caps");
                    return false;
                }
                MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities == null) {
                    e("sampleRate.aCaps");
                    return false;
                }
                if (!audioCapabilities.isSampleRateSupported(i3)) {
                    e("sampleRate.support, " + i3);
                    return false;
                }
            }
            int i4 = zzadVar.zzC;
            if (i4 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.zzd;
                if (codecCapabilities2 == null) {
                    e("channelCount.caps");
                    return false;
                }
                MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities2.getAudioCapabilities();
                if (audioCapabilities2 == null) {
                    e("channelCount.aCaps");
                    return false;
                }
                String str = this.zza;
                String str2 = this.zzb;
                int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
                if (maxInputChannelCount <= 1 && ((zzen.zza < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
                    int i5 = "audio/ac3".equals(str2) ? 6 : "audio/eac3".equals(str2) ? 16 : 30;
                    zzdt.zzf("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + maxInputChannelCount + " to " + i5 + "]");
                    maxInputChannelCount = i5;
                }
                if (maxInputChannelCount < i4) {
                    e("channelCount.support, " + i4);
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean zzf(zzad zzadVar) {
        if (this.f8879a) {
            return this.zze;
        }
        HashMap hashMap = zztl.f8880a;
        Pair zza = zzdd.zza(zzadVar);
        return zza != null && ((Integer) zza.first).intValue() == 42;
    }

    public final boolean zzg(int i, int i2, double d2) {
        Boolean bool;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null) {
            e("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            e("sizeAndRate.vCaps");
            return false;
        }
        int i3 = zzen.zza;
        if (i3 >= 29) {
            int a2 = (i3 < 29 || ((bool = aky.f10422b) != null && bool.booleanValue())) ? 0 : bkn.a(videoCapabilities, i, i2, d2);
            if (a2 != 2) {
                if (a2 == 1) {
                    StringBuilder z = awf.z(i, i2, "sizeAndRate.cover, ", "x", "@");
                    z.append(d2);
                    e(z.toString());
                    return false;
                }
            }
            return true;
        }
        if (!c(videoCapabilities, i, i2, d2)) {
            if (i >= i2 || (("OMX.MTK.VIDEO.DECODER.HEVC".equals(this.zza) && "mcv5a".equals(zzen.zzb)) || !c(videoCapabilities, i2, i, d2))) {
                StringBuilder z2 = awf.z(i, i2, "sizeAndRate.support, ", "x", "@");
                z2.append(d2);
                e(z2.toString());
                return false;
            }
            StringBuilder z3 = awf.z(i, i2, "sizeAndRate.rotated, ", "x", "@");
            z3.append(d2);
            zzdt.zzb("MediaCodecInfo", awf.r(tn.o("AssumedSupport [", z3.toString(), "] [", this.zza, ", "), this.zzb, "] [", zzen.zze, "]"));
        }
        return true;
    }

    public final MediaCodecInfo.CodecProfileLevel[] zzh() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }
}
