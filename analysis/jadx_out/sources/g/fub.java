package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class fub {
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReferenceArray f17425e = new AtomicReferenceArray(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f17423c = AtomicReferenceFieldUpdater.newUpdater(fub.class, Object.class, "lastScheduledTask$volatile");

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f17424d = AtomicIntegerFieldUpdater.newUpdater(fub.class, "producerIndex$volatile");

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f17421a = AtomicIntegerFieldUpdater.newUpdater(fub.class, "consumerIndex$volatile");

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f17422b = AtomicIntegerFieldUpdater.newUpdater(fub.class, "blockingTasksInBuffer$volatile");

    public final hbm f(hbm hbmVar) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f17424d;
        if (atomicIntegerFieldUpdater.get(this) - f17421a.get(this) == 127) {
            return hbmVar;
        }
        if (hbmVar.ah.f13765e == 1) {
            f17422b.incrementAndGet(this);
        }
        int i = atomicIntegerFieldUpdater.get(this) & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.f17425e;
            if (atomicReferenceArray.get(i) == null) {
                atomicReferenceArray.lazySet(i, hbmVar);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }

    public final hbm g() {
        hbm hbmVar;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f17421a;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i - f17424d.get(this) == 0) {
                return null;
            }
            int i2 = i & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i, i + 1) && (hbmVar = (hbm) this.f17425e.getAndSet(i2, null)) != null) {
                if (hbmVar.ah.f13765e == 1) {
                    f17422b.decrementAndGet(this);
                }
                return hbmVar;
            }
        }
    }

    public final hbm h(int i, boolean z) {
        int i2 = i & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
        AtomicReferenceArray atomicReferenceArray = this.f17425e;
        hbm hbmVar = (hbm) atomicReferenceArray.get(i2);
        if (hbmVar != null) {
            if ((hbmVar.ah.f13765e == 1) == z) {
                while (!atomicReferenceArray.compareAndSet(i2, hbmVar, null)) {
                    if (atomicReferenceArray.get(i2) != hbmVar) {
                    }
                }
                if (z) {
                    f17422b.decrementAndGet(this);
                }
                return hbmVar;
            }
        }
        return null;
    }
}
