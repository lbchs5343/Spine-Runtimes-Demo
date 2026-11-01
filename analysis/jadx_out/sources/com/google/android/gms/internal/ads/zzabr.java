package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class zzabr {
    public static final /* synthetic */ int zza = 0;

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f4044c = {1, 2, 3, 6};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f4046e = {48000, 44100, 32000};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f4047f = {24000, 22050, 16000};

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f4042a = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f4043b = {32, 40, 48, 56, 64, 80, 96, 112, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, 160, MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT, 224, 256, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, 448, 512, 576, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f4045d = {69, 87, 104, 121, 139, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_DRM_DOWNGRADE, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_SIZE, MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC, MediaPlayer.MEDIA_PLAYER_OPTION_ALWAYS_DO_AV_SYNC, TTAdConstant.LIVE_FEED_URL_CODE, 487, MediaPlayer.MEDIA_PLAYER_OPTION_CLIP_HEAACV2_FIRSTPTS_PACKET, 696, 835, 975, 1114, 1253, 1393};

    public static int g(int i, int i2) {
        int i3;
        if (i < 0 || i >= 3 || i2 < 0 || (i3 = i2 >> 1) >= 19) {
            return -1;
        }
        int i4 = f4046e[i];
        if (i4 == 44100) {
            int i5 = f4045d[i3] + (i2 & 1);
            return i5 + i5;
        }
        int i6 = f4043b[i3];
        return i4 == 32000 ? i6 * 6 : i6 * 4;
    }

    public static int zza(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return f4044c[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static int zzb(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) <= 10) {
            byte b2 = bArr[4];
            return g((b2 & 192) >> 6, b2 & 63);
        }
        int i = bArr[2] & 7;
        int i2 = ((bArr[3] & 255) | (i << 8)) + 1;
        return i2 + i2;
    }

    public static zzad zzc(zzed zzedVar, String str, String str2, zzw zzwVar) {
        zzec zzecVar = new zzec();
        zzecVar.zzj(zzedVar);
        int i = f4046e[zzecVar.zzd(2)];
        zzecVar.zzn(8);
        int i2 = f4042a[zzecVar.zzd(3)];
        if (zzecVar.zzd(1) != 0) {
            i2++;
        }
        int i3 = f4043b[zzecVar.zzd(5)] * 1000;
        zzecVar.zzf();
        zzedVar.zzL(zzecVar.zzb());
        zzab zzabVar = new zzab();
        zzabVar.zzL(str);
        zzabVar.zzZ("audio/ac3");
        zzabVar.zzz(i2);
        zzabVar.zzaa(i);
        zzabVar.zzF(zzwVar);
        zzabVar.zzP(str2);
        zzabVar.zzy(i3);
        zzabVar.zzU(i3);
        return zzabVar.zzaf();
    }

    public static zzad zzd(zzed zzedVar, String str, String str2, zzw zzwVar) {
        String str3;
        zzec zzecVar = new zzec();
        zzecVar.zzj(zzedVar);
        int zzd = zzecVar.zzd(13) * 1000;
        zzecVar.zzn(3);
        int i = f4046e[zzecVar.zzd(2)];
        zzecVar.zzn(10);
        int i2 = f4042a[zzecVar.zzd(3)];
        if (zzecVar.zzd(1) != 0) {
            i2++;
        }
        zzecVar.zzn(3);
        int zzd2 = zzecVar.zzd(4);
        zzecVar.zzn(1);
        if (zzd2 > 0) {
            zzecVar.zzn(6);
            if (zzecVar.zzd(1) != 0) {
                i2 += 2;
            }
            zzecVar.zzn(1);
        }
        if (zzecVar.zza() > 7) {
            zzecVar.zzn(7);
            if (zzecVar.zzd(1) != 0) {
                str3 = "audio/eac3-joc";
                zzecVar.zzf();
                zzedVar.zzL(zzecVar.zzb());
                zzab zzabVar = new zzab();
                zzabVar.zzL(str);
                zzabVar.zzZ(str3);
                zzabVar.zzz(i2);
                zzabVar.zzaa(i);
                zzabVar.zzF(zzwVar);
                zzabVar.zzP(str2);
                zzabVar.zzU(zzd);
                return zzabVar.zzaf();
            }
        }
        str3 = "audio/eac3";
        zzecVar.zzf();
        zzedVar.zzL(zzecVar.zzb());
        zzab zzabVar2 = new zzab();
        zzabVar2.zzL(str);
        zzabVar2.zzZ(str3);
        zzabVar2.zzz(i2);
        zzabVar2.zzaa(i);
        zzabVar2.zzF(zzwVar);
        zzabVar2.zzP(str2);
        zzabVar2.zzU(zzd);
        return zzabVar2.zzaf();
    }

    public static zzabp zze(zzec zzecVar) {
        int g2;
        int i;
        String str;
        int i2;
        int i3;
        int i4;
        int zzd;
        int i5;
        int i6;
        int i7;
        int i8;
        int zzc = zzecVar.zzc();
        zzecVar.zzn(40);
        int zzd2 = zzecVar.zzd(5);
        zzecVar.zzl(zzc);
        int[] iArr = f4042a;
        int[] iArr2 = f4046e;
        if (zzd2 > 10) {
            zzecVar.zzn(16);
            int zzd3 = zzecVar.zzd(2);
            if (zzd3 == 0) {
                r5 = 0;
            } else if (zzd3 == 1) {
                r5 = 1;
            } else if (zzd3 == 2) {
                r5 = 2;
            }
            zzecVar.zzn(3);
            int zzd4 = zzecVar.zzd(11) + 1;
            int zzd5 = zzecVar.zzd(2);
            if (zzd5 == 3) {
                i5 = f4047f[zzecVar.zzd(2)];
                i6 = 6;
                zzd = 3;
            } else {
                zzd = zzecVar.zzd(2);
                int i9 = f4044c[zzd];
                i5 = iArr2[zzd5];
                i6 = i9;
            }
            g2 = zzd4 + zzd4;
            int i10 = (g2 * i5) / (i6 * 32);
            int zzd6 = zzecVar.zzd(3);
            boolean zzp = zzecVar.zzp();
            i = iArr[zzd6] + (zzp ? 1 : 0);
            zzecVar.zzn(10);
            if (zzecVar.zzp()) {
                zzecVar.zzn(8);
            }
            if (zzd6 == 0) {
                zzecVar.zzn(5);
                if (zzecVar.zzp()) {
                    zzecVar.zzn(8);
                }
                i7 = 0;
                zzd6 = 0;
            } else {
                i7 = zzd6;
            }
            if (r5 == 1) {
                if (zzecVar.zzp()) {
                    zzecVar.zzn(16);
                }
                r5 = 1;
            }
            if (zzecVar.zzp()) {
                if (i7 > 2) {
                    zzecVar.zzn(2);
                }
                if ((i7 & 1) != 0 && i7 > 2) {
                    zzecVar.zzn(6);
                }
                if ((i7 & 4) != 0) {
                    zzecVar.zzn(6);
                }
                if (zzp && zzecVar.zzp()) {
                    zzecVar.zzn(5);
                }
                if (r5 == 0) {
                    if (zzecVar.zzp()) {
                        zzecVar.zzn(6);
                    }
                    if (i7 == 0 && zzecVar.zzp()) {
                        zzecVar.zzn(6);
                    }
                    if (zzecVar.zzp()) {
                        zzecVar.zzn(6);
                    }
                    int zzd7 = zzecVar.zzd(2);
                    if (zzd7 == 1) {
                        zzecVar.zzn(5);
                    } else if (zzd7 == 2) {
                        zzecVar.zzn(12);
                    } else if (zzd7 == 3) {
                        int zzd8 = zzecVar.zzd(5);
                        if (zzecVar.zzp()) {
                            zzecVar.zzn(5);
                            if (zzecVar.zzp()) {
                                zzecVar.zzn(4);
                            }
                            if (zzecVar.zzp()) {
                                zzecVar.zzn(4);
                            }
                            if (zzecVar.zzp()) {
                                zzecVar.zzn(4);
                            }
                            if (zzecVar.zzp()) {
                                zzecVar.zzn(4);
                            }
                            if (zzecVar.zzp()) {
                                zzecVar.zzn(4);
                            }
                            if (zzecVar.zzp()) {
                                zzecVar.zzn(4);
                            }
                            if (zzecVar.zzp()) {
                                zzecVar.zzn(4);
                            }
                            if (zzecVar.zzp()) {
                                if (zzecVar.zzp()) {
                                    zzecVar.zzn(4);
                                }
                                if (zzecVar.zzp()) {
                                    zzecVar.zzn(4);
                                }
                            }
                        }
                        if (zzecVar.zzp()) {
                            zzecVar.zzn(5);
                            if (zzecVar.zzp()) {
                                zzecVar.zzn(7);
                                if (zzecVar.zzp()) {
                                    zzecVar.zzn(8);
                                    zzecVar.zzn((zzd8 + 2) * 8);
                                    zzecVar.zzf();
                                }
                            }
                        }
                        zzecVar.zzn((zzd8 + 2) * 8);
                        zzecVar.zzf();
                    }
                    if (i7 < 2) {
                        if (zzecVar.zzp()) {
                            zzecVar.zzn(14);
                        }
                        if (zzd6 == 0 && zzecVar.zzp()) {
                            zzecVar.zzn(14);
                        }
                    }
                    if (zzecVar.zzp()) {
                        if (zzd == 0) {
                            zzecVar.zzn(5);
                            r5 = 0;
                            zzd = 0;
                        } else {
                            for (int i11 = 0; i11 < i6; i11++) {
                                if (zzecVar.zzp()) {
                                    zzecVar.zzn(5);
                                }
                            }
                        }
                    }
                    r5 = 0;
                }
            }
            if (zzecVar.zzp()) {
                zzecVar.zzn(5);
                if (i7 == 2) {
                    zzecVar.zzn(4);
                    i7 = 2;
                }
                if (i7 >= 6) {
                    zzecVar.zzn(2);
                }
                if (zzecVar.zzp()) {
                    i8 = 8;
                    zzecVar.zzn(8);
                } else {
                    i8 = 8;
                }
                if (i7 == 0 && zzecVar.zzp()) {
                    zzecVar.zzn(i8);
                }
                if (zzd5 < 3) {
                    zzecVar.zzm();
                }
            }
            if (r5 == 0 && zzd != 3) {
                zzecVar.zzm();
            }
            if (r5 == 2 && (zzd == 3 || zzecVar.zzp())) {
                zzecVar.zzn(6);
            }
            str = (zzecVar.zzp() && zzecVar.zzd(6) == 1 && zzecVar.zzd(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i2 = i5;
            i4 = i6 * 256;
            i3 = i10;
        } else {
            zzecVar.zzn(32);
            int zzd9 = zzecVar.zzd(2);
            String str2 = zzd9 == 3 ? null : "audio/ac3";
            int zzd10 = zzecVar.zzd(6);
            int i12 = f4043b[zzd10 / 2] * 1000;
            g2 = g(zzd9, zzd10);
            zzecVar.zzn(8);
            int zzd11 = zzecVar.zzd(3);
            if ((zzd11 & 1) != 0 && zzd11 != 1) {
                zzecVar.zzn(2);
            }
            if ((zzd11 & 4) != 0) {
                zzecVar.zzn(2);
            }
            if (zzd11 == 2) {
                zzecVar.zzn(2);
            }
            r5 = zzd9 < 3 ? iArr2[zzd9] : -1;
            i = iArr[zzd11] + (zzecVar.zzp() ? 1 : 0);
            str = str2;
            i2 = r5;
            i3 = i12;
            i4 = 1536;
        }
        return new zzabp(str, i, i2, g2, i4, i3);
    }
}
