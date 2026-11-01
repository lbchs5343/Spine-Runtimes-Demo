package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class zzacq {
    public static final /* synthetic */ int zza = 0;

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f4092d = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f4095g = {-1, AVMDLDataLoader.KeyIsLiveSetLoaderType, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
    public static final int[] h = {64, 112, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT, 224, 256, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, 448, 512, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f4090b = {AVMDLDataLoader.KeyIsLiveSetLoaderType, 16000, 32000, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, 192000, 384000};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f4091c = {5, 8, 10, 12};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f4093e = {6, 9, 12, 15};
    public static final int[] i = {2, 4, 6, 8};

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f4089a = {9, 11, 13, 16};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f4094f = {5, 8, 10, 12};

    public static int j(zzec zzecVar, int[] iArr) {
        int i2 = 0;
        for (int i3 = 0; i3 < 3 && zzecVar.zzp(); i3++) {
            i2++;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 += 1 << iArr[i5];
        }
        return zzecVar.zzd(iArr[i2]) + i4;
    }

    public static zzec k(byte[] bArr) {
        byte b2 = bArr[0];
        if (b2 == Byte.MAX_VALUE || b2 == 100 || b2 == 64 || b2 == 113) {
            return new zzec(bArr, bArr.length);
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        byte b3 = copyOf[0];
        if (b3 == -2 || b3 == -1 || b3 == 37 || b3 == -14 || b3 == -24) {
            for (int i2 = 0; i2 < copyOf.length - 1; i2 += 2) {
                byte b4 = copyOf[i2];
                int i3 = i2 + 1;
                copyOf[i2] = copyOf[i3];
                copyOf[i3] = b4;
            }
        }
        int length = copyOf.length;
        zzec zzecVar = new zzec(copyOf, length);
        if (copyOf[0] == 31) {
            zzec zzecVar2 = new zzec(copyOf, length);
            while (zzecVar2.zza() >= 16) {
                zzecVar2.zzn(2);
                zzecVar.zzg(zzecVar2.zzd(14), 14);
            }
        }
        zzecVar.zzk(copyOf, copyOf.length);
        return zzecVar;
    }

    public static int zza(byte[] bArr) {
        zzec k = k(bArr);
        k.zzn(42);
        return k.zzd(true != k.zzp() ? 8 : 12) + 1;
    }

    public static int zzb(byte[] bArr) {
        zzec k = k(bArr);
        k.zzn(32);
        return j(k, f4094f) + 1;
    }

    public static zzad zzc(byte[] bArr, String str, String str2, int i2, zzw zzwVar) {
        zzec k = k(bArr);
        k.zzn(60);
        int i3 = f4092d[k.zzd(6)];
        int i4 = f4095g[k.zzd(4)];
        int zzd = k.zzd(5);
        int i5 = zzd >= 29 ? -1 : (h[zzd] * 1000) / 2;
        k.zzn(10);
        int i6 = i3 + (k.zzd(2) > 0 ? 1 : 0);
        zzab zzabVar = new zzab();
        zzabVar.zzL(str);
        zzabVar.zzZ("audio/vnd.dts");
        zzabVar.zzy(i5);
        zzabVar.zzz(i6);
        zzabVar.zzaa(i4);
        zzabVar.zzF(null);
        zzabVar.zzP(str2);
        zzabVar.zzX(i2);
        return zzabVar.zzaf();
    }

    public static zzaco zzd(byte[] bArr) throws zzbh {
        int i2;
        int i3;
        long j;
        int i4;
        zzec k = k(bArr);
        k.zzn(40);
        int zzd = k.zzd(2);
        boolean zzp = k.zzp();
        int i5 = true != zzp ? 16 : 20;
        k.zzn(true != zzp ? 8 : 12);
        int zzd2 = k.zzd(i5) + 1;
        boolean zzp2 = k.zzp();
        int i6 = -1;
        int i7 = 0;
        if (zzp2) {
            i2 = k.zzd(2);
            int zzd3 = k.zzd(3) + 1;
            if (k.zzp()) {
                k.zzn(36);
            }
            int zzd4 = k.zzd(3) + 1;
            int zzd5 = k.zzd(3) + 1;
            if (zzd4 != 1 || zzd5 != 1) {
                throw zzbh.zzc("Multiple audio presentations or assets not supported");
            }
            int i8 = zzd + 1;
            int zzd6 = k.zzd(i8);
            for (int i9 = 0; i9 < i8; i9++) {
                if (((zzd6 >> i9) & 1) == 1) {
                    k.zzn(8);
                }
            }
            int i10 = zzd3 * 512;
            if (k.zzp()) {
                k.zzn(2);
                int zzd7 = (k.zzd(2) + 1) << 2;
                int zzd8 = k.zzd(2) + 1;
                while (i7 < zzd8) {
                    k.zzn(zzd7);
                    i7++;
                }
            }
            i7 = i10;
        } else {
            i2 = -1;
        }
        k.zzn(i5);
        k.zzn(12);
        if (zzp2) {
            if (k.zzp()) {
                k.zzn(4);
            }
            if (k.zzp()) {
                k.zzn(24);
            }
            if (k.zzp()) {
                k.zzo(k.zzd(10) + 1);
            }
            k.zzn(5);
            i3 = f4090b[k.zzd(4)];
            i6 = k.zzd(8) + 1;
        } else {
            i3 = -2147483647;
        }
        if (zzp2) {
            if (i2 == 0) {
                i4 = 32000;
            } else if (i2 == 1) {
                i4 = 44100;
            } else {
                if (i2 != 2) {
                    throw zzbh.zza("Unsupported reference clock code in DTS HD header: " + i2, null);
                }
                i4 = 48000;
            }
            j = zzen.zzu(i7, C.MICROS_PER_SECOND, i4, RoundingMode.FLOOR);
        } else {
            j = -9223372036854775807L;
        }
        return new zzaco(i6, i3, "audio/vnd.dts.hd;profile=lbr", zzd2, j);
    }

    public static zzaco zze(byte[] bArr, AtomicInteger atomicInteger) throws zzbh {
        long j;
        int i2;
        AtomicInteger atomicInteger2;
        int i3;
        int i4;
        zzec k = k(bArr);
        int zzd = k.zzd(32);
        int j2 = j(k, f4091c);
        int i5 = j2 + 1;
        char c2 = zzd == 1078008818 ? (char) 1 : (char) 0;
        if (c2 == 0) {
            j = -9223372036854775807L;
            i2 = -2147483647;
        } else {
            if (!k.zzp()) {
                throw zzbh.zzc("Only supports full channel mask-based audio presentation");
            }
            int i6 = j2 - 1;
            if (((bArr[j2] & 255) | ((char) (bArr[i6] << 8))) != zzen.zze(bArr, 0, i6, 65535)) {
                throw zzbh.zza("CRC check failed", null);
            }
            int zzd2 = k.zzd(2);
            if (zzd2 == 0) {
                i3 = 512;
            } else if (zzd2 == 1) {
                i3 = 480;
            } else {
                if (zzd2 != 2) {
                    throw zzbh.zza("Unsupported base duration index in DTS UHD header: " + zzd2, null);
                }
                i3 = MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
            }
            int zzd3 = k.zzd(3) + 1;
            int zzd4 = k.zzd(2);
            if (zzd4 == 0) {
                i4 = 32000;
            } else if (zzd4 == 1) {
                i4 = 44100;
            } else {
                if (zzd4 != 2) {
                    throw zzbh.zza("Unsupported clock rate index in DTS UHD header: " + zzd4, null);
                }
                i4 = 48000;
            }
            if (k.zzp()) {
                k.zzn(36);
            }
            int zzd5 = (1 << k.zzd(2)) * i4;
            j = zzen.zzu(i3 * zzd3, C.MICROS_PER_SECOND, i4, RoundingMode.FLOOR);
            i2 = zzd5;
        }
        long j3 = j;
        int i7 = 0;
        for (char c3 = 0; c3 < c2; c3 = 1) {
            i7 += j(k, f4093e);
        }
        for (int i8 = 0; i8 <= 0; i8++) {
            if (c2 != 0) {
                atomicInteger2 = atomicInteger;
                atomicInteger2.set(j(k, i));
            } else {
                atomicInteger2 = atomicInteger;
            }
            i7 += atomicInteger2.get() != 0 ? j(k, f4089a) : 0;
        }
        return new zzaco(2, i2, "audio/vnd.dts.uhd;profile=p2", i5 + i7, j3);
    }
}
