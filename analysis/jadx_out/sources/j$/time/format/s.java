package j$.time.format;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public static final s f20564a = new s();

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        ((s) obj).getClass();
        return true;
    }

    public final int hashCode() {
        return MediaPlayer.MEDIA_PLAYER_OPTION_SET_DEFAULT_CODEC_ID;
    }

    public final String toString() {
        return "DecimalStyle[0+-.]";
    }
}
