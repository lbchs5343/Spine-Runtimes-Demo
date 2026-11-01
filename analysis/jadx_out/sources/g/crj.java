package g;

import android.media.AudioTrack;
import com.bykv.vk.component.ttvideo.ILivePlayer;

/* loaded from: classes3.dex */
public final class crj {

    /* renamed from: a, reason: collision with root package name */
    public long f13383a;

    /* renamed from: b, reason: collision with root package name */
    public long f13384b;

    /* renamed from: c, reason: collision with root package name */
    public final dxp f13385c;

    /* renamed from: d, reason: collision with root package name */
    public long f13386d;

    /* renamed from: e, reason: collision with root package name */
    public int f13387e;

    /* renamed from: f, reason: collision with root package name */
    public long f13388f;

    public crj(AudioTrack audioTrack) {
        this.f13385c = new dxp(audioTrack);
        g(0);
    }

    public final void g(int i) {
        this.f13387e = i;
        long j = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
        if (i == 0) {
            this.f13384b = 0L;
            this.f13386d = -1L;
            this.f13388f = System.nanoTime() / 1000;
        } else {
            if (i == 1) {
                this.f13383a = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
                return;
            }
            j = (i == 2 || i == 3) ? 10000000L : 500000L;
        }
        this.f13383a = j;
    }
}
