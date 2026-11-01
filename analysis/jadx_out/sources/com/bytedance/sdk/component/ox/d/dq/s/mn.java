package com.bytedance.sdk.component.ox.d.dq.s;

import android.os.SystemClock;
import com.bytedance.sdk.component.ox.d.dq.s.ia;
import g.he;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class mn implements Closeable {
    static final ExecutorService dq = new com.bytedance.sdk.component.o.p.p(0, he.UNDEFINED_ITEM_ID, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.bytedance.sdk.component.ox.d.dq.ox.dq("OkHttp Http2Connection", true));
    static final /* synthetic */ boolean gh = true;
    final Set<Integer> cd;

    /* renamed from: d, reason: collision with root package name */
    final boolean f2094d;

    /* renamed from: f, reason: collision with root package name */
    final o f2095f;
    final ox fw;
    private Map<Integer, ig> i;
    boolean ia;
    int iw;
    final Socket jy;
    final mp kk;
    private int le;
    int mn;
    final q mp;
    long no;
    final d ox;
    boolean q;
    private final ExecutorService r;
    final String s;
    final Map<Integer, kk> p = new LinkedHashMap();
    long o = 0;
    q ig = new q();

    public static abstract class d {
        public static final d iw = new d() { // from class: com.bytedance.sdk.component.ox.d.dq.s.mn.d.1
            @Override // com.bytedance.sdk.component.ox.d.dq.s.mn.d
            public void dq(kk kkVar) throws IOException {
                kkVar.dq(com.bytedance.sdk.component.ox.d.dq.s.d.REFUSED_STREAM);
            }
        };

        public abstract void dq(kk kkVar) throws IOException;

        public void dq(mn mnVar) {
        }
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        String f2096d;
        Socket dq;
        boolean mn;
        com.bytedance.sdk.component.ox.dq.s ox;
        com.bytedance.sdk.component.ox.dq.p p;
        d s = d.iw;
        mp iw = mp.dq;

        public dq(boolean z) {
            this.mn = z;
        }

        public dq dq(d dVar) {
            this.s = dVar;
            return this;
        }

        public dq dq(Socket socket, String str, com.bytedance.sdk.component.ox.dq.s sVar, com.bytedance.sdk.component.ox.dq.p pVar) {
            this.dq = socket;
            this.f2096d = str;
            this.ox = sVar;
            this.p = pVar;
            return this;
        }

        public mn dq() {
            return new mn(this);
        }
    }

    public class ox extends com.bytedance.sdk.component.ox.d.dq.d implements ia.d {
        final ia dq;

        public ox(ia iaVar) {
            super("OkHttp %s", mn.this.s);
            this.dq = iaVar;
        }

        private void dq(final q qVar) {
            try {
                mn.dq.execute(new com.bytedance.sdk.component.ox.d.dq.d("OkHttp %s ACK Settings", new Object[]{mn.this.s}) { // from class: com.bytedance.sdk.component.ox.d.dq.s.mn.ox.3
                    @Override // com.bytedance.sdk.component.ox.d.dq.d
                    public void ox() {
                        try {
                            mn.this.f2095f.dq(qVar);
                        } catch (IOException unused) {
                        }
                    }
                });
            } catch (Throwable unused) {
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.s.ia.d
        public void dq(int i, int i2, List<com.bytedance.sdk.component.ox.d.dq.s.ox> list) {
            mn.this.dq(i2, list);
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.s.ia.d
        public void dq(int i, long j) {
            if (i == 0) {
                synchronized (mn.this) {
                    mn mnVar = mn.this;
                    mnVar.no += j;
                    mnVar.notifyAll();
                }
                return;
            }
            kk dq = mn.this.dq(i);
            if (dq != null) {
                synchronized (dq) {
                    dq.dq(j);
                }
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.s.ia.d
        public void dq(int i, com.bytedance.sdk.component.ox.d.dq.s.d dVar) {
            if (mn.this.p(i)) {
                mn.this.ox(i, dVar);
                return;
            }
            kk d2 = mn.this.d(i);
            if (d2 != null) {
                d2.ox(dVar);
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.s.ia.d
        public void dq(int i, com.bytedance.sdk.component.ox.d.dq.s.d dVar, com.bytedance.sdk.component.ox.dq.iw iwVar) {
            kk[] kkVarArr;
            synchronized (mn.this) {
                kkVarArr = (kk[]) mn.this.p.values().toArray(new kk[mn.this.p.size()]);
                mn.this.ia = true;
            }
            for (kk kkVar : kkVarArr) {
                if (kkVar.dq() > i && kkVar.ox()) {
                    kkVar.ox(com.bytedance.sdk.component.ox.d.dq.s.d.REFUSED_STREAM);
                    mn.this.d(kkVar.dq());
                }
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.s.ia.d
        public void dq(boolean z, int i, int i2) {
            if (!z) {
                mn.this.dq(true, i, i2, (ig) null);
                return;
            }
            ig ox = mn.this.ox(i);
            if (ox != null) {
                ox.d();
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.s.ia.d
        public void dq(boolean z, int i, int i2, List<com.bytedance.sdk.component.ox.d.dq.s.ox> list) {
            if (mn.this.p(i)) {
                mn.this.dq(i, list, z);
                return;
            }
            synchronized (mn.this) {
                try {
                    kk dq = mn.this.dq(i);
                    if (dq != null) {
                        dq.dq(list);
                        if (z) {
                            dq.kk();
                            return;
                        }
                        return;
                    }
                    mn mnVar = mn.this;
                    if (mnVar.ia) {
                        return;
                    }
                    if (i <= mnVar.iw) {
                        return;
                    }
                    if (i % 2 == mnVar.mn % 2) {
                        return;
                    }
                    final kk kkVar = new kk(i, mnVar, false, z, list);
                    mn mnVar2 = mn.this;
                    mnVar2.iw = i;
                    mnVar2.p.put(Integer.valueOf(i), kkVar);
                    try {
                        mn.dq.execute(new com.bytedance.sdk.component.ox.d.dq.d("OkHttp %s stream %d", new Object[]{mn.this.s, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.component.ox.d.dq.s.mn.ox.1
                            @Override // com.bytedance.sdk.component.ox.d.dq.d
                            public void ox() {
                                try {
                                    mn.this.ox.dq(kkVar);
                                } catch (IOException e2) {
                                    com.bytedance.sdk.component.ox.d.dq.mn.s.d().dq(4, "Http2Connection.Listener failure for " + mn.this.s, e2);
                                    try {
                                        kkVar.dq(com.bytedance.sdk.component.ox.d.dq.s.d.PROTOCOL_ERROR);
                                    } catch (IOException unused) {
                                    }
                                }
                            }
                        });
                    } catch (Throwable unused) {
                    }
                } finally {
                }
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.s.ia.d
        public void dq(boolean z, int i, com.bytedance.sdk.component.ox.dq.s sVar, int i2) throws IOException {
            if (mn.this.p(i)) {
                mn.this.dq(i, sVar, i2, z);
                return;
            }
            kk dq = mn.this.dq(i);
            if (dq == null) {
                mn.this.dq(i, com.bytedance.sdk.component.ox.d.dq.s.d.PROTOCOL_ERROR);
                sVar.ia(i2);
            } else {
                dq.dq(sVar, i2);
                if (z) {
                    dq.kk();
                }
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.s.ia.d
        public void dq(boolean z, q qVar) {
            kk[] kkVarArr;
            long j;
            int i;
            synchronized (mn.this) {
                try {
                    int p = mn.this.mp.p();
                    if (z) {
                        mn.this.mp.dq();
                    }
                    mn.this.mp.dq(qVar);
                    dq(qVar);
                    int p2 = mn.this.mp.p();
                    kkVarArr = null;
                    if (p2 == -1 || p2 == p) {
                        j = 0;
                    } else {
                        j = p2 - p;
                        mn mnVar = mn.this;
                        if (!mnVar.q) {
                            mnVar.dq(j);
                            mn.this.q = true;
                        }
                        if (!mn.this.p.isEmpty()) {
                            kkVarArr = (kk[]) mn.this.p.values().toArray(new kk[mn.this.p.size()]);
                        }
                    }
                    try {
                        mn.dq.execute(new com.bytedance.sdk.component.ox.d.dq.d("OkHttp %s settings", mn.this.s) { // from class: com.bytedance.sdk.component.ox.d.dq.s.mn.ox.2
                            @Override // com.bytedance.sdk.component.ox.d.dq.d
                            public void ox() {
                                mn mnVar2 = mn.this;
                                mnVar2.ox.dq(mnVar2);
                            }
                        });
                    } catch (Throwable unused) {
                    }
                } finally {
                }
            }
            if (kkVarArr == null || j == 0) {
                return;
            }
            for (kk kkVar : kkVarArr) {
                synchronized (kkVar) {
                    kkVar.dq(j);
                }
            }
        }

        @Override // com.bytedance.sdk.component.ox.d.dq.d
        public void ox() {
            com.bytedance.sdk.component.ox.d.dq.s.d dVar;
            mn mnVar;
            com.bytedance.sdk.component.ox.d.dq.s.d dVar2 = com.bytedance.sdk.component.ox.d.dq.s.d.INTERNAL_ERROR;
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                try {
                    this.dq.dq(this);
                    while (this.dq.dq(false, (ia.d) this)) {
                    }
                } catch (Exception unused) {
                }
                try {
                    mn.this.dq(com.bytedance.sdk.component.ox.d.dq.s.d.NO_ERROR, com.bytedance.sdk.component.ox.d.dq.s.d.CANCEL);
                } catch (IOException unused2) {
                    dVar = com.bytedance.sdk.component.ox.d.dq.s.d.PROTOCOL_ERROR;
                    mnVar = mn.this;
                    mnVar.dq(dVar, dVar);
                    com.bytedance.sdk.component.ox.d.dq.ox.dq(this.dq);
                } catch (NullPointerException unused3) {
                    dVar = com.bytedance.sdk.component.ox.d.dq.s.d.PROTOCOL_ERROR;
                    mnVar = mn.this;
                    mnVar.dq(dVar, dVar);
                    com.bytedance.sdk.component.ox.d.dq.ox.dq(this.dq);
                }
            } catch (IOException unused4) {
            } catch (NullPointerException unused5) {
            } catch (Throwable th2) {
                th = th2;
                try {
                    mn.this.dq(dVar2, dVar2);
                } catch (Exception unused6) {
                }
                com.bytedance.sdk.component.ox.d.dq.ox.dq(this.dq);
                throw th;
            }
            com.bytedance.sdk.component.ox.d.dq.ox.dq(this.dq);
        }
    }

    public mn(dq dqVar) {
        q qVar = new q();
        this.mp = qVar;
        this.q = false;
        this.cd = new LinkedHashSet();
        this.kk = dqVar.iw;
        boolean z = dqVar.mn;
        this.f2094d = z;
        this.ox = dqVar.s;
        int i = z ? 1 : 2;
        this.mn = i;
        if (z) {
            this.mn = i + 2;
        }
        this.le = z ? 1 : 2;
        if (z) {
            this.ig.dq(7, 16777216);
        }
        String str = dqVar.f2096d;
        this.s = str;
        this.r = new com.bytedance.sdk.component.o.p.p(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.bytedance.sdk.component.ox.d.dq.ox.dq(com.bytedance.sdk.component.ox.d.dq.ox.dq("OkHttp %s Push Observer", str), true));
        qVar.dq(7, 65535);
        qVar.dq(5, 16384);
        this.no = qVar.p();
        this.jy = dqVar.dq;
        this.f2095f = new o(dqVar.p, z);
        this.fw = new ox(new ia(dqVar.ox, z));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0035 A[Catch: all -> 0x002b, TryCatch #3 {all -> 0x002b, blocks: (B:12:0x0015, B:14:0x001a, B:16:0x0022, B:20:0x002f, B:22:0x0035, B:23:0x003e, B:44:0x006e, B:39:0x0068, B:40:0x006d), top: B:4:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0041 A[Catch: all -> 0x0047, TRY_ENTER, TryCatch #2 {all -> 0x0047, blocks: (B:25:0x0041, B:26:0x0053, B:31:0x004a, B:33:0x004e, B:34:0x005c, B:35:0x0063, B:49:0x0073, B:45:0x006f), top: B:3:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004a A[Catch: all -> 0x0047, TryCatch #2 {all -> 0x0047, blocks: (B:25:0x0041, B:26:0x0053, B:31:0x004a, B:33:0x004e, B:34:0x005c, B:35:0x0063, B:49:0x0073, B:45:0x006f), top: B:3:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private kk d(int i, List<com.bytedance.sdk.component.ox.d.dq.s.ox> list, boolean z) throws IOException {
        boolean z2;
        boolean z3 = !z;
        synchronized (this.f2095f) {
            try {
                try {
                    try {
                        synchronized (this) {
                            try {
                                if (this.ia) {
                                    throw new com.bytedance.sdk.component.ox.d.dq.s.dq();
                                }
                                int i2 = this.mn;
                                this.mn = i2 + 2;
                                kk kkVar = new kk(i2, this, z3, false, list);
                                if (z && this.no != 0 && kkVar.f2090d != 0) {
                                    z2 = false;
                                    if (kkVar.d()) {
                                        this.p.put(Integer.valueOf(i2), kkVar);
                                    }
                                    if (i != 0) {
                                        this.f2095f.dq(z3, i2, i, list);
                                    } else {
                                        if (this.f2094d) {
                                            throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                                        }
                                        this.f2095f.dq(i, i2, list);
                                    }
                                    if (z2) {
                                        this.f2095f.d();
                                    }
                                    return kkVar;
                                }
                                z2 = true;
                                if (kkVar.d()) {
                                }
                                if (i != 0) {
                                }
                                if (z2) {
                                }
                                return kkVar;
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        dq(com.bytedance.sdk.component.ox.d.dq.s.d.NO_ERROR, com.bytedance.sdk.component.ox.d.dq.s.d.CANCEL);
    }

    public synchronized kk d(int i) {
        kk remove;
        remove = this.p.remove(Integer.valueOf(i));
        notifyAll();
        return remove;
    }

    public void d() throws IOException {
        this.f2095f.d();
    }

    public void d(int i, com.bytedance.sdk.component.ox.d.dq.s.d dVar) throws IOException {
        this.f2095f.dq(i, dVar);
    }

    public void d(boolean z, int i, int i2, ig igVar) throws IOException {
        synchronized (this.f2095f) {
            if (igVar != null) {
                try {
                    igVar.dq();
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f2095f.dq(z, i, i2);
        }
    }

    public synchronized int dq() {
        return this.mp.ox(he.UNDEFINED_ITEM_ID);
    }

    public synchronized kk dq(int i) {
        return this.p.get(Integer.valueOf(i));
    }

    public kk dq(List<com.bytedance.sdk.component.ox.d.dq.s.ox> list, boolean z) throws IOException {
        return d(0, list, z);
    }

    public void dq(final int i, final long j) {
        try {
            dq.execute(new com.bytedance.sdk.component.ox.d.dq.d("OkHttp Window Update %s stream %d", new Object[]{this.s, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.component.ox.d.dq.s.mn.2
                @Override // com.bytedance.sdk.component.ox.d.dq.d
                public void ox() {
                    try {
                        mn.this.f2095f.dq(i, j);
                    } catch (IOException unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void dq(final int i, final com.bytedance.sdk.component.ox.d.dq.s.d dVar) {
        try {
            dq.execute(new com.bytedance.sdk.component.ox.d.dq.d("OkHttp %s stream %d", new Object[]{this.s, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.component.ox.d.dq.s.mn.1
                @Override // com.bytedance.sdk.component.ox.d.dq.d
                public void ox() {
                    try {
                        mn.this.d(i, dVar);
                    } catch (IOException unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void dq(final int i, com.bytedance.sdk.component.ox.dq.s sVar, final int i2, final boolean z) throws IOException {
        final com.bytedance.sdk.component.ox.dq.ox oxVar = new com.bytedance.sdk.component.ox.dq.ox();
        long j = i2;
        sVar.dq(j);
        sVar.dq(oxVar, j);
        if (oxVar.d() == j) {
            this.r.execute(new com.bytedance.sdk.component.ox.d.dq.d("OkHttp %s Push Data[%s]", new Object[]{this.s, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.component.ox.d.dq.s.mn.6
                @Override // com.bytedance.sdk.component.ox.d.dq.d
                public void ox() {
                    try {
                        boolean dq2 = mn.this.kk.dq(i, oxVar, i2, z);
                        if (dq2) {
                            mn.this.f2095f.dq(i, com.bytedance.sdk.component.ox.d.dq.s.d.CANCEL);
                        }
                        if (dq2 || z) {
                            synchronized (mn.this) {
                                mn.this.cd.remove(Integer.valueOf(i));
                            }
                        }
                    } catch (IOException unused) {
                    }
                }
            });
            return;
        }
        throw new IOException(oxVar.d() + " != " + i2);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:22:0x0047
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1179)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public void dq(final int r8, final java.util.List<com.bytedance.sdk.component.ox.d.dq.s.ox> r9) {
        /*
            r7 = this;
            monitor-enter(r7)
            java.util.Set<java.lang.Integer> r0 = r7.cd     // Catch: java.lang.Throwable -> L42
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L42
            boolean r0 = r0.contains(r1)     // Catch: java.lang.Throwable -> L42
            if (r0 == 0) goto L18
            com.bytedance.sdk.component.ox.d.dq.s.d r9 = com.bytedance.sdk.component.ox.d.dq.s.d.PROTOCOL_ERROR     // Catch: java.lang.Throwable -> L14
            r7.dq(r8, r9)     // Catch: java.lang.Throwable -> L14
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L14
            return
        L14:
            r0 = move-exception
            r8 = r0
            r2 = r7
            goto L45
        L18:
            java.util.Set<java.lang.Integer> r0 = r7.cd     // Catch: java.lang.Throwable -> L42
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L42
            r0.add(r1)     // Catch: java.lang.Throwable -> L42
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L42
            java.util.concurrent.ExecutorService r0 = r7.r
            com.bytedance.sdk.component.ox.d.dq.s.mn$4 r1 = new com.bytedance.sdk.component.ox.d.dq.s.mn$4
            java.lang.String r3 = "OkHttp %s Push Request[%s]"
            java.lang.String r2 = r7.s
            java.lang.Integer r4 = java.lang.Integer.valueOf(r8)
            r5 = 2
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r6 = 0
            r5[r6] = r2
            r2 = 1
            r5[r2] = r4
            r2 = r7
            r6 = r9
            r4 = r5
            r5 = r8
            r1.<init>(r3, r4)
            r0.execute(r1)
            return
        L42:
            r0 = move-exception
            r2 = r7
        L44:
            r8 = r0
        L45:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L47
            throw r8
        L47:
            r0 = move-exception
            goto L44
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.ox.d.dq.s.mn.dq(int, java.util.List):void");
    }

    public void dq(final int i, final List<com.bytedance.sdk.component.ox.d.dq.s.ox> list, final boolean z) {
        this.r.execute(new com.bytedance.sdk.component.ox.d.dq.d("OkHttp %s Push Headers[%s]", new Object[]{this.s, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.component.ox.d.dq.s.mn.5
            @Override // com.bytedance.sdk.component.ox.d.dq.d
            public void ox() {
                boolean dq2 = mn.this.kk.dq(i, list, z);
                if (dq2) {
                    try {
                        mn.this.f2095f.dq(i, com.bytedance.sdk.component.ox.d.dq.s.d.CANCEL);
                    } catch (IOException unused) {
                        return;
                    }
                }
                if (dq2 || z) {
                    synchronized (mn.this) {
                        mn.this.cd.remove(Integer.valueOf(i));
                    }
                }
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r3), r8.f2095f.ox());
        r6 = r3;
        r8.no -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(int i, boolean z, com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
        int min;
        long j2;
        if (j == 0) {
            this.f2095f.dq(z, i, oxVar, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            long j3 = this.no;
                            if (j3 > 0) {
                                break;
                            } else {
                                if (!this.p.containsKey(Integer.valueOf(i))) {
                                    throw new IOException("stream closed");
                                }
                                wait();
                            }
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            j -= j2;
            this.f2095f.dq(z && j == 0, i, oxVar, min);
        }
    }

    public void dq(long j) {
        this.no += j;
        if (j > 0) {
            notifyAll();
        }
    }

    public void dq(com.bytedance.sdk.component.ox.d.dq.s.d dVar) throws IOException {
        synchronized (this.f2095f) {
            synchronized (this) {
                if (this.ia) {
                    return;
                }
                this.ia = true;
                this.f2095f.dq(this.iw, dVar, com.bytedance.sdk.component.ox.d.dq.ox.dq);
            }
        }
    }

    public void dq(com.bytedance.sdk.component.ox.d.dq.s.d dVar, com.bytedance.sdk.component.ox.d.dq.s.d dVar2) throws IOException {
        kk[] kkVarArr;
        if (!gh && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        ig[] igVarArr = null;
        try {
            dq(dVar);
            e = null;
        } catch (IOException e2) {
            e = e2;
        }
        synchronized (this) {
            try {
                if (this.p.isEmpty()) {
                    kkVarArr = null;
                } else {
                    kkVarArr = (kk[]) this.p.values().toArray(new kk[this.p.size()]);
                    this.p.clear();
                }
                Map<Integer, ig> map = this.i;
                if (map != null) {
                    ig[] igVarArr2 = (ig[]) map.values().toArray(new ig[this.i.size()]);
                    this.i = null;
                    igVarArr = igVarArr2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (kkVarArr != null) {
            for (kk kkVar : kkVarArr) {
                try {
                    kkVar.dq(dVar2);
                } catch (IOException e3) {
                    if (e != null) {
                        e = e3;
                    }
                }
            }
        }
        if (igVarArr != null) {
            for (ig igVar : igVarArr) {
                igVar.ox();
            }
        }
        try {
            this.f2095f.close();
        } catch (IOException e4) {
            if (e == null) {
                e = e4;
            }
        }
        try {
            this.jy.close();
        } catch (IOException e5) {
            e = e5;
        }
        if (e != null) {
            throw e;
        }
    }

    public void dq(boolean z) throws IOException {
        if (z) {
            this.f2095f.dq();
            this.f2095f.d(this.ig);
            if (this.ig.p() != 65535) {
                this.f2095f.dq(0, r5 - 65535);
            }
        }
        com.bytedance.sdk.component.o.p.ox oxVar = new com.bytedance.sdk.component.o.p.ox(this.fw, "Http2Connection");
        oxVar.setName("csj_http2_connection" + SystemClock.uptimeMillis());
        oxVar.start();
    }

    public void dq(final boolean z, final int i, final int i2, final ig igVar) {
        try {
            dq.execute(new com.bytedance.sdk.component.ox.d.dq.d("OkHttp %s ping %08x%08x", new Object[]{this.s, Integer.valueOf(i), Integer.valueOf(i2)}) { // from class: com.bytedance.sdk.component.ox.d.dq.s.mn.3
                @Override // com.bytedance.sdk.component.ox.d.dq.d
                public void ox() {
                    try {
                        mn.this.d(z, i, i2, igVar);
                    } catch (IOException unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public synchronized ig ox(int i) {
        Map<Integer, ig> map = this.i;
        if (map == null) {
            return null;
        }
        return map.remove(Integer.valueOf(i));
    }

    public void ox() throws IOException {
        dq(true);
    }

    public void ox(final int i, final com.bytedance.sdk.component.ox.d.dq.s.d dVar) {
        this.r.execute(new com.bytedance.sdk.component.ox.d.dq.d("OkHttp %s Push Reset[%s]", new Object[]{this.s, Integer.valueOf(i)}) { // from class: com.bytedance.sdk.component.ox.d.dq.s.mn.7
            @Override // com.bytedance.sdk.component.ox.d.dq.d
            public void ox() {
                synchronized (mn.this) {
                    mn.this.cd.remove(Integer.valueOf(i));
                }
            }
        });
    }

    public synchronized boolean p() {
        return this.ia;
    }

    public boolean p(int i) {
        return i != 0 && (i & 1) == 0;
    }
}
