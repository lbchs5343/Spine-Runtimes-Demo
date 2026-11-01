package g;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class ezv implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadPoolExecutor f16425a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile ThreadPoolExecutor f16426b;

    /* renamed from: c, reason: collision with root package name */
    public static dae f16427c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ adh f16428d;

    /* renamed from: e, reason: collision with root package name */
    public volatile egx f16429e = egx.PENDING;

    /* renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f16430f = new AtomicBoolean();

    /* renamed from: g, reason: collision with root package name */
    public final AtomicBoolean f16431g = new AtomicBoolean();
    public final gzm h;
    public final ely i;
    public final CountDownLatch j;

    static {
        dil dilVar = new dil(3);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(10), dilVar);
        f16425a = threadPoolExecutor;
        f16426b = threadPoolExecutor;
    }

    public ezv(adh adhVar) {
        this.f16428d = adhVar;
        gzm gzmVar = new gzm(1, this);
        this.h = gzmVar;
        this.i = new ely(this, gzmVar, 0);
        this.j = new CountDownLatch(1);
    }

    public final void k(Object obj) {
        dae daeVar;
        synchronized (ezv.class) {
            try {
                boolean z = false;
                int i = 1;
                if (f16427c == null) {
                    f16427c = new dae(Looper.getMainLooper(), i, z);
                }
                daeVar = f16427c;
            } catch (Throwable th) {
                throw th;
            }
        }
        daeVar.obtainMessage(1, new dzr(this, obj)).sendToTarget();
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16428d.o();
    }
}
