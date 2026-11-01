package g;

import android.net.Uri;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes.dex */
public final class gnf {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f18443a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18444b;

    /* renamed from: c, reason: collision with root package name */
    public final Uri f18445c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18446d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18447e;

    /* renamed from: f, reason: collision with root package name */
    public final int f18448f;

    public gnf(Uri uri, int i, int i2, boolean z, int i3) {
        uri.getClass();
        this.f18445c = uri;
        this.f18447e = i;
        this.f18448f = i2;
        this.f18443a = z;
        this.f18444b = null;
        this.f18446d = i3;
    }

    public gnf(String str, String str2) {
        this.f18445c = new Uri.Builder().scheme("systemfont").authority(str).build();
        this.f18447e = 0;
        this.f18448f = MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL;
        this.f18443a = false;
        this.f18444b = str2;
        this.f18446d = 0;
    }
}
