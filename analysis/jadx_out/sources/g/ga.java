package g;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public abstract class ga {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadPoolExecutor f17768a = new ThreadPoolExecutor(2, he.UNDEFINED_ITEM_ID, 10, TimeUnit.SECONDS, new SynchronousQueue(), new dvm("ClientDefault", 0));

    /* renamed from: b, reason: collision with root package name */
    public static final ExecutorService f17769b = Executors.newSingleThreadExecutor(new dvm("ClientSingle", 0));
}
