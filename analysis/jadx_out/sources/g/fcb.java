package g;

import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes3.dex */
public final class fcb extends dyd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16552a;

    public /* synthetic */ fcb(int i) {
        this.f16552a = i;
    }

    @Override // g.dyd
    public final long bt() {
        switch (this.f16552a) {
            case 0:
                return SystemClock.elapsedRealtimeNanos();
            default:
                return SystemClock.elapsedRealtime() * C.MICROS_PER_SECOND;
        }
    }
}
