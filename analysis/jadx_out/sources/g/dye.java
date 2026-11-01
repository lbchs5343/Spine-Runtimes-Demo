package g;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class dye implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final long f15082a;

    public dye(long j) {
        this.f15082a = j;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        ConcurrentHashMap concurrentHashMap;
        concurrentHashMap = AdOverlayInfoParcel.zzz;
        if (concurrentHashMap.remove(Long.valueOf(this.f15082a)) == null) {
            return null;
        }
        ti.f20033a.f20034ab.zzw(new Exception("Key was non-null in AdOverlayObjectsCleanupTask"), "AdOverlayObjectsCleanupTask");
        return null;
    }
}
