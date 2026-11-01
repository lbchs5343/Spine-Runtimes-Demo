package com.bytedance.pangle.download;

import android.os.Handler;
import android.os.Looper;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class b {

    /* renamed from: e, reason: collision with root package name */
    private static volatile b f1356e;

    /* renamed from: a, reason: collision with root package name */
    final Map<String, Long> f1357a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final Handler f1358b = new Handler(Looper.getMainLooper());

    /* renamed from: c, reason: collision with root package name */
    public final Map<String, Runnable> f1359c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    final Map<String, Runnable> f1360d = new ConcurrentHashMap();

    private b() {
    }

    public static b a() {
        if (f1356e == null) {
            synchronized (b.class) {
                try {
                    if (f1356e == null) {
                        f1356e = new b();
                    }
                } finally {
                }
            }
        }
        return f1356e;
    }
}
