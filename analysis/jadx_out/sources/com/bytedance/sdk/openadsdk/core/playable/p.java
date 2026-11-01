package com.bytedance.sdk.openadsdk.core.playable;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public class p {
    private static volatile p dq;

    /* renamed from: d, reason: collision with root package name */
    private LruCache<String, com.bytedance.sdk.openadsdk.core.playable.dq.dq> f3404d;
    private final long ox;
    private int p;
    private CopyOnWriteArrayList<String> s = new CopyOnWriteArrayList<>();
    private CopyOnWriteArrayList<String> iw = new CopyOnWriteArrayList<>();
    private ConcurrentHashMap<String, WeakReference<com.bytedance.sdk.openadsdk.core.fw.ox>> mn = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, Long> ia = new ConcurrentHashMap<>();
    private final Object kk = new Object();

    private p() {
        int ux = wp.d().ux();
        this.p = ux;
        if (ux > 30) {
            this.p = 30;
        } else if (ux < 0) {
            this.p = 5;
        }
        this.ox = wp.d().en() * 1000;
        this.f3404d = new LruCache<String, com.bytedance.sdk.openadsdk.core.playable.dq.dq>(this.p) { // from class: com.bytedance.sdk.openadsdk.core.playable.p.1
            @Override // android.util.LruCache
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public int sizeOf(String str, com.bytedance.sdk.openadsdk.core.playable.dq.dq dqVar) {
                return 1;
            }
        };
    }

    public static p dq() {
        if (dq == null) {
            synchronized (p.class) {
                try {
                    if (dq == null) {
                        dq = new p();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public static /* synthetic */ void dq(p pVar, String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(j jVar, final String str) {
        com.bytedance.sdk.openadsdk.core.le.d.dq(jVar, jVar == null ? null : jVar.td(), new com.bytedance.sdk.openadsdk.core.fw.ox() { // from class: com.bytedance.sdk.openadsdk.core.playable.p.3
            @Override // com.bytedance.sdk.openadsdk.core.fw.ox
            public void dq(boolean z, List<j> list, boolean z2) {
                try {
                    if (p.this.iw != null && p.this.iw.contains(str)) {
                        p.dq(p.this, "prefetchCache-onAdLoaded.. discardTask. key: " + str);
                        return;
                    }
                    p.dq(p.this, "prefetchCache-onAdLoaded.. success: ".concat(String.valueOf(z)));
                    synchronized (p.this.kk) {
                        if (z && list != null) {
                            try {
                                if (list.size() > 0) {
                                    com.bytedance.sdk.openadsdk.core.playable.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.playable.dq.dq();
                                    dqVar.dq = list;
                                    dqVar.f3401d = z;
                                    dqVar.ox = SystemClock.elapsedRealtime();
                                    p.this.f3404d.put(str, dqVar);
                                    p.dq(p.this, "prefetchCache-onAdLoaded.. 缓存save  key: " + str);
                                }
                            } finally {
                            }
                        }
                        p.this.s.remove(str);
                    }
                    WeakReference weakReference = (WeakReference) p.this.mn.get(str);
                    com.bytedance.sdk.openadsdk.core.fw.ox oxVar = weakReference == null ? null : (com.bytedance.sdk.openadsdk.core.fw.ox) weakReference.get();
                    if (oxVar != null) {
                        oxVar.dq(z, list, true);
                        p.this.mn.remove(str);
                        p.dq(p.this, "prefetchCache-onAdLoaded..callback invoke key: " + str);
                    }
                } catch (Exception unused) {
                }
            }
        }, (com.bytedance.sdk.openadsdk.f.d.ox.d) null);
    }

    private boolean dq(com.bytedance.sdk.openadsdk.core.playable.dq.dq dqVar) {
        return this.ox > 0 && dqVar != null && SystemClock.elapsedRealtime() - dqVar.ox > this.ox;
    }

    private void p(final j jVar) {
        if (TextUtils.isEmpty(jVar.mz())) {
            return;
        }
        final String mz = jVar.mz();
        if (this.s.contains(mz) || this.iw.contains(mz) || this.f3404d.get(mz) != null) {
            return;
        }
        this.s.add(mz);
        this.ia.put(mz, Long.valueOf(System.currentTimeMillis()));
        com.bytedance.sdk.component.o.mn.d(new kk("playable_prefetch") { // from class: com.bytedance.sdk.openadsdk.core.playable.p.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    p.this.dq(jVar, mz);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void d(j jVar) {
        if (jVar != null) {
            try {
                if (TextUtils.isEmpty(jVar.mz())) {
                    return;
                }
                String mz = jVar.mz();
                this.iw.add(mz);
                this.f3404d.remove(mz);
                this.s.remove(mz);
                this.mn.remove(mz);
                this.ia.remove(mz);
                this.f3404d.size();
                this.s.size();
                this.iw.size();
            } catch (Exception unused) {
            }
        }
    }

    public void dq(j jVar) {
        if (jVar != null) {
            try {
                if (jVar.xs() == 3) {
                    p(jVar);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public boolean dq(j jVar, com.bytedance.sdk.openadsdk.core.fw.ox oxVar) {
        if (jVar != null && !TextUtils.isEmpty(jVar.mz())) {
            String mz = jVar.mz();
            try {
                synchronized (this.kk) {
                    try {
                        if (this.s.contains(mz)) {
                            this.mn.put(mz, new WeakReference<>(oxVar));
                            return true;
                        }
                        com.bytedance.sdk.openadsdk.core.playable.dq.dq dqVar = this.f3404d.get(mz);
                        if (dqVar == null) {
                            return false;
                        }
                        if (dq(dqVar)) {
                            d(jVar);
                            return false;
                        }
                        if (oxVar != null) {
                            oxVar.dq(dqVar.f3401d, dqVar.dq, true);
                            return true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public long ox(j jVar) {
        try {
            if (this.ia == null || jVar == null || TextUtils.isEmpty(jVar.mz())) {
                return 0L;
            }
            return this.ia.get(jVar.mz()).longValue();
        } catch (Exception unused) {
            return 0L;
        }
    }
}
