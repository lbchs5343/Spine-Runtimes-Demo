package com.bytedance.sdk.component.ox.dq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.awf;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
final class i {
    public static final Charset dq = Charset.forName("UTF-8");

    private static <T extends Throwable> void d(Throwable th) throws Throwable {
        throw th;
    }

    public static int dq(int i) {
        return ((i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    public static short dq(short s) {
        return (short) (((s & 255) << 8) | ((65280 & s) >>> 8));
    }

    public static void dq(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            StringBuilder l = awf.l(j, "size=", " offset=");
            l.append(j2);
            l.append(" byteCount=");
            l.append(j3);
            throw new ArrayIndexOutOfBoundsException(l.toString());
        }
    }

    public static void dq(Throwable th) {
        d(th);
    }

    public static boolean dq(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }
}
