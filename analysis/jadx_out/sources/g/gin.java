package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class gin {

    /* renamed from: a, reason: collision with root package name */
    public static final gin f18199a = new gin(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 50, "320x50_mb");

    /* renamed from: b, reason: collision with root package name */
    public static final gin f18200b;

    /* renamed from: c, reason: collision with root package name */
    public static final gin f18201c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18202d;

    /* renamed from: e, reason: collision with root package name */
    public int f18203e;

    /* renamed from: f, reason: collision with root package name */
    public final int f18204f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f18205g;
    public final int h;
    public final String i;
    public int j;

    static {
        new gin(468, 60, "468x60_as");
        new gin(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME, 100, "320x100_as");
        new gin(728, 90, "728x90_as");
        new gin(TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX, MediaPlayer.MEDIA_PLAYER_OPTION_TT_HLS_DRM, "300x250_as");
        new gin(160, 600, "160x600_as");
        new gin(-1, -2, "smart_banner");
        f18200b = new gin(-3, -4, "fluid");
        f18201c = new gin(0, 0, "invalid");
        new gin(50, 50, "50x50_mb");
        new gin(-3, 0, "search_v2");
    }

    public gin(int i, int i2) {
        this(i, i2, (i == -1 ? "FULL" : String.valueOf(i)) + "x" + (i2 == -2 ? "AUTO" : String.valueOf(i2)) + "_as");
    }

    public gin(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            throw new IllegalArgumentException(awf.ac(i, "Invalid width for AdSize: "));
        }
        if (i2 < 0 && i2 != -2 && i2 != -4) {
            throw new IllegalArgumentException(awf.ac(i2, "Invalid height for AdSize: "));
        }
        this.f18204f = i;
        this.h = i2;
        this.i = str;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof gin)) {
            return false;
        }
        gin ginVar = (gin) obj;
        return this.f18204f == ginVar.f18204f && this.h == ginVar.h && this.i.equals(ginVar.i);
    }

    public final int hashCode() {
        return this.i.hashCode();
    }

    public final String toString() {
        return this.i;
    }
}
