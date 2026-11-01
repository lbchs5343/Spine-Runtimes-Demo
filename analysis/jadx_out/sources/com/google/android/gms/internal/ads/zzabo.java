package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import g.awf;

/* loaded from: classes3.dex */
public final class zzabo {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f4040a = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, AVMDLDataLoader.KeyIsLiveSetLoaderType, 7350};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f4041b = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};
    public static final /* synthetic */ int zza = 0;

    public static int c(zzec zzecVar) {
        int zzd = zzecVar.zzd(4);
        if (zzd == 15) {
            if (zzecVar.zza() >= 24) {
                return zzecVar.zzd(24);
            }
            throw zzbh.zza("AAC header insufficient data", null);
        }
        if (zzd < 13) {
            return f4040a[zzd];
        }
        throw zzbh.zza("AAC header wrong Sampling Frequency Index", null);
    }

    public static zzabm zza(byte[] bArr) throws zzbh {
        return zzb(new zzec(bArr, bArr.length), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ba, code lost:
    
        if (r11 != 3) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzabm zzb(zzec zzecVar, boolean z) throws zzbh {
        int zzd = zzecVar.zzd(5);
        if (zzd == 31) {
            zzd = zzecVar.zzd(6) + 32;
        }
        int c2 = c(zzecVar);
        int zzd2 = zzecVar.zzd(4);
        String ac = awf.ac(zzd, "mp4a.40.");
        int i = 22;
        if (zzd == 5 || zzd == 29) {
            c2 = c(zzecVar);
            int zzd3 = zzecVar.zzd(5);
            if (zzd3 == 31) {
                zzd3 = zzecVar.zzd(6) + 32;
            }
            zzd = zzd3;
            if (zzd == 22) {
                zzd2 = zzecVar.zzd(4);
            }
        }
        if (z) {
            int i2 = 3;
            if (zzd != 1 && zzd != 2 && zzd != 3 && zzd != 4 && zzd != 6 && zzd != 7 && zzd != 17) {
                switch (zzd) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw zzbh.zzc("Unsupported audio object type: " + zzd);
                }
            }
            if (zzecVar.zzp()) {
                zzdt.zzf("AacUtil", "Unexpected frameLengthFlag = 1");
            }
            if (zzecVar.zzp()) {
                zzecVar.zzn(14);
            }
            boolean zzp = zzecVar.zzp();
            if (zzd2 == 0) {
                throw new UnsupportedOperationException();
            }
            if (zzd != 6) {
                if (zzd == 20) {
                    zzd = 20;
                }
                if (zzp) {
                    if (zzd == 22) {
                        zzecVar.zzn(16);
                    } else {
                        i = zzd;
                    }
                    if (i == 17 || i == 19 || i == 20 || i == 23) {
                        zzecVar.zzn(3);
                    }
                    zzecVar.zzn(1);
                }
                switch (zzd) {
                    case 17:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        int zzd4 = zzecVar.zzd(2);
                        if (zzd4 == 2) {
                            i2 = zzd4;
                        }
                        throw zzbh.zzc("Unsupported epConfig: " + i2);
                }
            }
            zzecVar.zzn(3);
            if (zzp) {
            }
            switch (zzd) {
            }
        }
        int i3 = f4041b[zzd2];
        if (i3 != -1) {
            return new zzabm(c2, i3, ac);
        }
        throw zzbh.zza(null, null);
    }
}
