package com.bykv.vk.openvk.component.video.dq.d;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.bykv.vk.openvk.component.video.dq.d.d;
import com.bykv.vk.openvk.component.video.dq.d.kk;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class p {
    private static volatile p s;

    /* renamed from: d, reason: collision with root package name */
    private final SparseArray<Map<String, com.bykv.vk.openvk.component.video.dq.d.d>> f550d;
    private volatile int dq = 163840;
    private volatile com.bykv.vk.openvk.component.video.dq.d.dq.d ia;
    private volatile ox ig;
    private volatile com.bykv.vk.openvk.component.video.dq.d.d.ox iw;
    private final HashSet<dq> kk;
    private volatile com.bykv.vk.openvk.component.video.dq.d.dq.ox mn;
    private volatile String mp;
    private volatile ox no;
    private final d.InterfaceC0006d o;
    private final d<Runnable> ox;
    private final ExecutorService p;
    private volatile boolean q;

    public static final class d<T> extends LinkedBlockingDeque<T> {
        private ThreadPoolExecutor dq;

        private d() {
        }

        public void dq(ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                try {
                    if (this.dq != null) {
                        throw new IllegalStateException("You can only call setExecutor() once!");
                    }
                    if (threadPoolExecutor == null) {
                        throw new NullPointerException("executor argument can't be null!");
                    }
                    this.dq = threadPoolExecutor;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.concurrent.LinkedBlockingDeque, java.util.Queue, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue, java.util.Deque
        public boolean offer(T t) {
            synchronized (this) {
                try {
                    int poolSize = this.dq.getPoolSize();
                    int activeCount = this.dq.getActiveCount();
                    int maximumPoolSize = this.dq.getMaximumPoolSize();
                    if (activeCount < poolSize || poolSize >= maximumPoolSize) {
                        return offerFirst(t);
                    }
                    boolean z = s.ox;
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        final boolean f552d;
        final boolean dq;
        final String[] iw;
        final int ox;
        final String p;
        final Map<String, String> s;

        public dq(boolean z, boolean z2, int i, String str, Map<String, String> map, String[] strArr) {
            this.dq = z;
            this.f552d = z2;
            this.ox = i;
            this.p = str;
            this.s = map;
            this.iw = strArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || dq.class != obj.getClass()) {
                return false;
            }
            dq dqVar = (dq) obj;
            if (this.dq == dqVar.dq && this.f552d == dqVar.f552d && this.ox == dqVar.ox) {
                return this.p.equals(dqVar.p);
            }
            return false;
        }

        public int hashCode() {
            return this.p.hashCode() + ((((((this.dq ? 1 : 0) * 31) + (this.f552d ? 1 : 0)) * 31) + this.ox) * 31);
        }
    }

    private p() {
        SparseArray<Map<String, com.bykv.vk.openvk.component.video.dq.d.d>> sparseArray = new SparseArray<>(2);
        this.f550d = sparseArray;
        this.kk = new HashSet<>();
        this.o = new d.InterfaceC0006d() { // from class: com.bykv.vk.openvk.component.video.dq.d.p.1
            @Override // com.bykv.vk.openvk.component.video.dq.d.d.InterfaceC0006d
            public void dq(com.bykv.vk.openvk.component.video.dq.d.d dVar) {
                int iw = dVar.iw();
                synchronized (p.this.f550d) {
                    try {
                        Map map = (Map) p.this.f550d.get(iw);
                        if (map != null) {
                            map.remove(dVar.ia);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                boolean z = s.ox;
            }
        };
        d<Runnable> dVar = new d<>();
        this.ox = dVar;
        ExecutorService dq2 = dq(dVar);
        this.p = dq2;
        dVar.dq((ThreadPoolExecutor) dq2);
        sparseArray.put(0, new HashMap());
        sparseArray.put(1, new HashMap());
    }

    private static ExecutorService dq(final d<Runnable> dVar) {
        int dq2 = com.bykv.vk.openvk.component.video.dq.ox.dq.dq();
        return new com.bytedance.sdk.component.o.p.p(0, dq2 <= 0 ? 1 : dq2 > 4 ? 4 : dq2, 60L, TimeUnit.SECONDS, dVar, new ThreadFactory() { // from class: com.bykv.vk.openvk.component.video.dq.d.p.4
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                com.bytedance.sdk.component.o.p.ox oxVar = new com.bytedance.sdk.component.o.p.ox(runnable) { // from class: com.bykv.vk.openvk.component.video.dq.d.p.4.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Process.setThreadPriority(10);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        super.run();
                    }
                };
                oxVar.setName("csj_video_preload_" + oxVar.getId());
                oxVar.setDaemon(true);
                if (s.ox) {
                    oxVar.getName();
                }
                return oxVar;
            }
        }, new RejectedExecutionHandler() { // from class: com.bykv.vk.openvk.component.video.dq.d.p.5
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                try {
                    d.this.offerFirst(runnable);
                    boolean z = s.ox;
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    public static p ox() {
        if (s == null) {
            synchronized (p.class) {
                try {
                    if (s == null) {
                        s = new p();
                    }
                } finally {
                }
            }
        }
        return s;
    }

    public ox d() {
        return this.ig;
    }

    public ox dq() {
        return this.no;
    }

    public void dq(int i) {
        if (i > 0) {
            this.dq = i;
        }
        if (s.ox) {
            "MaxPreloadSize: ".concat(String.valueOf(i));
        }
    }

    public void dq(com.bykv.vk.openvk.component.video.dq.d.d.ox oxVar) {
        this.iw = oxVar;
    }

    public void dq(com.bykv.vk.openvk.component.video.dq.d.dq.ox oxVar) {
        this.mn = oxVar;
    }

    public void dq(String str) {
        dq(false, false, str);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:31:0x005f
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1179)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public void dq(boolean r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.component.video.dq.d.p.dq(boolean, java.lang.String):void");
    }

    public void dq(boolean z, boolean z2, int i, String str, Map<String, String> map, String... strArr) {
        ArrayList arrayList;
        boolean z3 = s.ox;
        com.bykv.vk.openvk.component.video.dq.d.dq.dq dqVar = z ? this.ia : this.mn;
        com.bykv.vk.openvk.component.video.dq.d.d.ox oxVar = this.iw;
        if (dqVar == null || oxVar == null) {
            if (s.ox) {
                Log.e("TAG_PROXY_Preloader", "cache or videoProxyDB null in Preloader!!!");
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            return;
        }
        int i2 = i <= 0 ? this.dq : i;
        String dq2 = z2 ? str : com.bykv.vk.openvk.component.video.api.iw.d.dq(str);
        File p = dqVar.p(dq2);
        if (p != null && p.length() >= i2) {
            if (s.ox) {
                p.length();
                return;
            }
            return;
        }
        if (iw.dq().dq(com.bykv.vk.openvk.component.video.dq.d.d.d.dq(z), dq2)) {
            if (s.ox) {
                "has running proxy task, skip preload for key: ".concat(String.valueOf(str));
                return;
            }
            return;
        }
        synchronized (this.f550d) {
            try {
                Map<String, com.bykv.vk.openvk.component.video.dq.d.d> map2 = this.f550d.get(z ? 1 : 0);
                if (map2.containsKey(dq2)) {
                    return;
                }
                dq dqVar2 = new dq(z, z2, i2, str, map, strArr);
                String str2 = this.mp;
                if (str2 != null) {
                    int i3 = s.ia;
                    if (i3 == 3) {
                        synchronized (this.kk) {
                            this.kk.add(dqVar2);
                        }
                        boolean z4 = s.ox;
                        return;
                    } else if (i3 == 2) {
                        if (s.ox) {
                            "cancel preload: ".concat(String.valueOf(str));
                        }
                        return;
                    } else if (i3 == 1 && this.q == z && str2.equals(dq2)) {
                        boolean z5 = s.ox;
                        return;
                    }
                }
                List<kk.d> dq3 = com.bykv.vk.openvk.component.video.dq.ox.dq.dq(com.bykv.vk.openvk.component.video.dq.ox.dq.dq(map));
                if (dq3 != null) {
                    arrayList = new ArrayList(dq3.size());
                    int size = dq3.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        kk.d dVar = dq3.get(i4);
                        if (dVar != null) {
                            arrayList.add(new kk.d(dVar.dq, dVar.f541d));
                        }
                    }
                } else {
                    arrayList = null;
                }
                com.bykv.vk.openvk.component.video.dq.d.d dq4 = new d.dq().dq(dqVar).dq(oxVar).dq(str).d(dq2).dq(new ig(com.bykv.vk.openvk.component.video.dq.ox.dq.dq(strArr))).dq((List<kk.d>) arrayList).dq(i2).dq(this.o).dq(dqVar2).dq();
                map2.put(dq2, dq4);
                this.p.execute(dq4);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dq(boolean z, boolean z2, int i, String str, String... strArr) {
        dq(z, z2, i, str, null, strArr);
    }

    public void dq(final boolean z, final boolean z2, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bykv.vk.openvk.component.video.dq.ox.dq.dq(new com.bytedance.sdk.component.o.kk("cancel b b S") { // from class: com.bykv.vk.openvk.component.video.dq.d.p.2
            @Override // java.lang.Runnable
            public void run() {
                com.bykv.vk.openvk.component.video.dq.d.d dVar;
                synchronized (p.this.f550d) {
                    try {
                        Map map = (Map) p.this.f550d.get(com.bykv.vk.openvk.component.video.dq.d.d.d.dq(z));
                        if (map != null) {
                            dVar = (com.bykv.vk.openvk.component.video.dq.d.d) map.remove(z2 ? str : com.bykv.vk.openvk.component.video.api.iw.d.dq(str));
                        } else {
                            dVar = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (dVar != null) {
                    dVar.dq();
                }
            }
        });
    }

    public void p() {
        com.bykv.vk.openvk.component.video.dq.ox.dq.dq(new com.bytedance.sdk.component.o.kk("cancelAll") { // from class: com.bykv.vk.openvk.component.video.dq.d.p.3
            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                synchronized (p.this.f550d) {
                    try {
                        int size = p.this.f550d.size();
                        for (int i = 0; i < size; i++) {
                            Map map = (Map) p.this.f550d.get(p.this.f550d.keyAt(i));
                            if (map != null) {
                                arrayList.addAll(map.values());
                                map.clear();
                            }
                        }
                        p.this.ox.clear();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    com.bykv.vk.openvk.component.video.dq.d.d dVar = (com.bykv.vk.openvk.component.video.dq.d.d) it.next();
                    dVar.dq();
                    if (s.ox) {
                        dVar.toString();
                    }
                }
            }
        });
    }
}
