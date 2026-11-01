package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* loaded from: classes3.dex */
public final class zzadk {

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f4109c = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f4111e = {44100, 48000, 32000};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f4112f = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f4107a = {32000, 48000, 56000, 64000, MediationConstant.ErrorCode.ADN_INIT_FAIL, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f4108b = {32000, 48000, 56000, 64000, MediationConstant.ErrorCode.ADN_INIT_FAIL, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f4110d = {32000, 40000, 48000, 56000, 64000, MediationConstant.ErrorCode.ADN_INIT_FAIL, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f4113g = {AVMDLDataLoader.KeyIsLiveSetLoaderType, 16000, 24000, 32000, 40000, 48000, 56000, 64000, MediationConstant.ErrorCode.ADN_INIT_FAIL, 96000, 112000, 128000, 144000, 160000};

    public static int zzb(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i6 = i4 - 1;
        int i7 = f4111e[i5];
        if (i2 == 2) {
            i7 /= 2;
        } else if (i2 == 0) {
            i7 /= 4;
        }
        int i8 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? f4112f[i6] : f4107a[i6]) * 12) / i7) + i8) * 4;
        }
        int i9 = i2 == 3 ? i3 == 2 ? f4108b[i6] : f4110d[i6] : f4113g[i6];
        if (i2 == 3) {
            return ((i9 * 144) / i7) + i8;
        }
        return (((i3 == 1 ? 72 : 144) * i9) / i7) + i8;
    }

    public static int zzc(int i) {
        int i2;
        int i3;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0) {
            return -1;
        }
        int i4 = i >>> 12;
        int i5 = (i >>> 10) & 3;
        int i6 = i4 & 15;
        if (i6 == 0 || i6 == 15 || i5 == 3) {
            return -1;
        }
        if (i3 == 1) {
            return i2 == 3 ? 1152 : 576;
        }
        if (i3 != 2) {
            return MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
        }
        return 1152;
    }
}
