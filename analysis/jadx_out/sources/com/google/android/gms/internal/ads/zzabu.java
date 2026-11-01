package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.ZeusPluginEventCallback;

/* loaded from: classes3.dex */
public final class zzabu {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f4048a = {2002, ZeusPluginEventCallback.EVENT_START_LOAD, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, 2048};
    public static final /* synthetic */ int zza = 0;

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0086, code lost:
    
        if (r10 != 11) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008d, code lost:
    
        if (r10 != 11) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0092, code lost:
    
        if (r10 != 8) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzabs zza(zzec zzecVar) {
        int i;
        int i2;
        int zzd = zzecVar.zzd(16);
        int zzd2 = zzecVar.zzd(16);
        if (zzd2 == 65535) {
            zzd2 = zzecVar.zzd(24);
            i = 7;
        } else {
            i = 4;
        }
        int i3 = zzd2 + i;
        if (zzd == 44097) {
            i3 += 2;
        }
        if (zzecVar.zzd(2) == 3) {
            do {
                zzecVar.zzd(2);
            } while (zzecVar.zzp());
        }
        int zzd3 = zzecVar.zzd(10);
        if (zzecVar.zzp() && zzecVar.zzd(3) > 0) {
            zzecVar.zzn(2);
        }
        int i4 = true != zzecVar.zzp() ? 44100 : 48000;
        int zzd4 = zzecVar.zzd(4);
        int[] iArr = f4048a;
        if (i4 == 44100 && zzd4 == 13) {
            i2 = iArr[13];
        } else if (i4 != 48000 || zzd4 >= 14) {
            i2 = 0;
        } else {
            int i5 = iArr[zzd4];
            int i6 = zzd3 % 5;
            if (i6 != 1) {
                if (i6 == 2) {
                    if (zzd4 != 8) {
                    }
                    i2 = i5 + 1;
                } else if (i6 != 3) {
                    if (i6 == 4) {
                        if (zzd4 != 3) {
                            if (zzd4 != 8) {
                            }
                        }
                        i2 = i5 + 1;
                    }
                    i2 = i5;
                }
            }
            if (zzd4 != 3) {
            }
            i2 = i5 + 1;
        }
        return new zzabs(i4, i3, i2);
    }

    public static void zzb(int i, zzed zzedVar) {
        zzedVar.zzI(7);
        byte[] zzN = zzedVar.zzN();
        zzN[0] = -84;
        zzN[1] = 64;
        zzN[2] = -1;
        zzN[3] = -1;
        zzN[4] = (byte) ((i >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        zzN[5] = (byte) ((i >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        zzN[6] = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
    }
}
