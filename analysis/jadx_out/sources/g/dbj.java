package g;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes.dex */
public final class dbj extends bgf {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f13918a = new ThreadLocal();

    public final int b() {
        ThreadLocal threadLocal = f13918a;
        byte[] bArr = (byte[]) threadLocal.get();
        if (bArr == null) {
            bArr = new byte[4];
            threadLocal.set(bArr);
        }
        ak(bArr, 0, 4);
        return ((bArr[0] & 255) << 24) | (bArr[3] & 255) | ((bArr[2] & 255) << 8) | ((bArr[1] & 255) << 16);
    }

    public final boolean c(String str) {
        if (!TextUtils.isEmpty(str) && str.length() == 4) {
            int g2 = g();
            for (int i = 0; i < 4; i++) {
                if (((g2 >> (i * 8)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) == str.charAt(i)) {
                }
            }
            return true;
        }
        return false;
    }

    public final int g() {
        ThreadLocal threadLocal = f13918a;
        byte[] bArr = (byte[]) threadLocal.get();
        if (bArr == null) {
            bArr = new byte[4];
            threadLocal.set(bArr);
        }
        ak(bArr, 0, 4);
        return (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 24);
    }
}
