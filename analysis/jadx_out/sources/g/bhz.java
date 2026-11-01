package g;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class bhz {

    /* renamed from: a, reason: collision with root package name */
    public static volatile bhz f11617a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11618b;

    /* renamed from: c, reason: collision with root package name */
    public final String f11619c;

    /* renamed from: d, reason: collision with root package name */
    public final ExecutorService f11620d;

    /* renamed from: e, reason: collision with root package name */
    public volatile ees f11621e;

    /* renamed from: f, reason: collision with root package name */
    public final fnq f11622f;

    /* renamed from: g, reason: collision with root package name */
    public int f11623g;

    public bhz(Context context, String str, String str2, Bundle bundle) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new dil(6));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f11620d = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.f11622f = new fnq(4, this);
        new ArrayList();
        try {
            cux.av(context, awt.v(context));
        } catch (IllegalStateException unused) {
        }
        this.f11619c = "fa";
        l(new dhn(this, str, str2, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new eoa(1, this));
    }

    public static bhz h(Context context, String str, String str2, Bundle bundle) {
        ckd.k(context);
        if (f11617a == null) {
            synchronized (bhz.class) {
                try {
                    if (f11617a == null) {
                        f11617a = new bhz(context, str, str2, bundle);
                    }
                } finally {
                }
            }
        }
        return f11617a;
    }

    public final long i() {
        bay bayVar = new bay();
        l(new flf(this, bayVar, 2));
        Long l = (Long) bay.c(Long.class, bayVar.d(500L));
        if (l != null) {
            return l.longValue();
        }
        long nextLong = new Random(System.nanoTime() ^ System.currentTimeMillis()).nextLong();
        int i = this.f11623g + 1;
        this.f11623g = i;
        return nextLong + i;
    }

    public final void j(Exception exc, boolean z, boolean z2) {
        this.f11618b |= z;
        if (!z && z2) {
            l(new dhq(this, exc));
        }
    }

    public final List k(String str, String str2) {
        bay bayVar = new bay();
        l(new ejs(this, str, str2, bayVar, 1));
        List list = (List) bay.c(List.class, bayVar.d(PushUIConfig.dismissTime));
        return list == null ? Collections.EMPTY_LIST : list;
    }

    public final void l(bvf bvfVar) {
        this.f11620d.execute(bvfVar);
    }

    public final int m(String str) {
        bay bayVar = new bay();
        l(new dhn(this, str, bayVar));
        Integer num = (Integer) bay.c(Integer.class, bayVar.d(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT));
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final Map n(String str, String str2, boolean z) {
        bay bayVar = new bay();
        l(new sp(this, str, str2, z, bayVar));
        Bundle d2 = bayVar.d(PushUIConfig.dismissTime);
        if (d2 == null || d2.size() == 0) {
            return Collections.EMPTY_MAP;
        }
        HashMap hashMap = new HashMap(d2.size());
        for (String str3 : d2.keySet()) {
            Object obj = d2.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }
}
