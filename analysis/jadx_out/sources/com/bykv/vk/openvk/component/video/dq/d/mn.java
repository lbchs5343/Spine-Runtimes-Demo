package com.bykv.vk.openvk.component.video.dq.d;

import android.os.SystemClock;
import android.util.Log;
import com.bykv.vk.openvk.component.video.dq.d.d;
import com.bykv.vk.openvk.component.video.dq.d.ia;
import com.bykv.vk.openvk.component.video.dq.d.ig;
import com.bykv.vk.openvk.component.video.dq.d.kk;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;

/* loaded from: classes.dex */
class mn extends com.bykv.vk.openvk.component.video.dq.d.dq {

    /* renamed from: f, reason: collision with root package name */
    private volatile com.bykv.vk.openvk.component.video.dq.d.d f544f;
    private volatile boolean fw;
    private final p jy;
    private final Socket mp;
    private final ox q;

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        private int f546d;
        private final OutputStream dq;
        private boolean ox;

        public d(OutputStream outputStream, int i) {
            this.dq = outputStream;
            this.f546d = i;
        }

        public int d() {
            return this.f546d;
        }

        public void d(byte[] bArr, int i, int i2) throws com.bykv.vk.openvk.component.video.dq.d.ox.p {
            try {
                this.dq.write(bArr, i, i2);
                this.f546d += i2;
            } catch (IOException e2) {
                throw new com.bykv.vk.openvk.component.video.dq.d.ox.p(e2);
            }
        }

        public void dq(byte[] bArr, int i, int i2) throws com.bykv.vk.openvk.component.video.dq.d.ox.p {
            if (this.ox) {
                return;
            }
            try {
                this.dq.write(bArr, i, i2);
                this.ox = true;
            } catch (IOException e2) {
                throw new com.bykv.vk.openvk.component.video.dq.d.ox.p(e2);
            }
        }

        public boolean dq() {
            return this.ox;
        }
    }

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        com.bykv.vk.openvk.component.video.dq.d.d.ox f547d;
        com.bykv.vk.openvk.component.video.dq.d.dq.dq dq;
        Socket ox;
        ox p;

        public dq dq(com.bykv.vk.openvk.component.video.dq.d.d.ox oxVar) {
            if (oxVar == null) {
                throw new IllegalArgumentException("db == null");
            }
            this.f547d = oxVar;
            return this;
        }

        public dq dq(ox oxVar) {
            this.p = oxVar;
            return this;
        }

        public dq dq(Socket socket) {
            if (socket == null) {
                throw new IllegalArgumentException("socket == null");
            }
            this.ox = socket;
            return this;
        }

        public mn dq() {
            if (this.f547d == null || this.ox == null) {
                throw new IllegalArgumentException();
            }
            return new mn(this);
        }
    }

    public interface ox {
        void d(mn mnVar);

        void dq(mn mnVar);
    }

    public mn(dq dqVar) {
        super(dqVar.dq, dqVar.f547d);
        this.fw = true;
        this.mp = dqVar.ox;
        this.q = dqVar.p;
        this.jy = p.ox();
    }

    private void d(d dVar, ig.dq dqVar) throws IOException, com.bykv.vk.openvk.component.video.dq.d.ox.p {
        byte[] dq2 = dq(this.f528d.query(this.ia, this.kk.ox.dq), dVar, dqVar);
        if (dq2 == null) {
            return;
        }
        dVar.dq(dq2, 0, dq2.length);
    }

    private void dq(com.bykv.vk.openvk.component.video.dq.d.d.dq dqVar, File file, d dVar, ig.dq dqVar2) throws IOException, com.bykv.vk.openvk.component.video.dq.d.ox.p, ia.dq, com.bykv.vk.openvk.component.video.dq.d.ox.dq, com.bykv.vk.openvk.component.video.dq.d.ox.d {
        final com.bytedance.sdk.component.o.ia iaVar;
        ia iaVar2;
        com.bykv.vk.openvk.component.video.dq.d.d dVar2;
        if (!dVar.dq()) {
            byte[] dq2 = dq(dqVar, dVar, dqVar2);
            s();
            if (dq2 == null) {
                return;
            } else {
                dVar.dq(dq2, 0, dq2.length);
            }
        }
        ia iaVar3 = null;
        if (dqVar == null && (dqVar = this.f528d.query(this.ia, this.kk.ox.dq)) == null) {
            if (s.ox) {
                Log.e("TAG_PROXY_ProxyTask", "failed to get video header info from db");
            }
            dq(null, dVar, dqVar2);
            dqVar = this.f528d.query(this.ia, this.kk.ox.dq);
            if (dqVar == null) {
                throw new com.bykv.vk.openvk.component.video.dq.d.ox.ox("failed to get header, rawKey: " + this.mn + ", url: " + dqVar2);
            }
        }
        if (file.length() >= dqVar.ox || !((dVar2 = this.f544f) == null || dVar2.d() || dVar2.p())) {
            iaVar = null;
        } else {
            com.bykv.vk.openvk.component.video.dq.d.d dq3 = new d.dq().dq(this.dq).dq(this.f528d).dq(this.mn).d(this.ia).dq(new ig(dqVar2.dq)).dq(this.iw).dq(this.kk).dq(new d.InterfaceC0006d() { // from class: com.bykv.vk.openvk.component.video.dq.d.mn.1
                @Override // com.bykv.vk.openvk.component.video.dq.d.d.InterfaceC0006d
                public void dq(com.bykv.vk.openvk.component.video.dq.d.d dVar3) {
                    mn.this.ox.addAndGet(dVar3.ox.get());
                    mn.this.p.addAndGet(dVar3.p.get());
                    synchronized (dVar3.mp) {
                        dVar3.mp.notifyAll();
                    }
                    if (dVar3.p()) {
                        mn.this.jy.dq(mn.this.mn(), null);
                    }
                }
            }).dq();
            this.f544f = dq3;
            iaVar = new com.bytedance.sdk.component.o.ia(dq3, null, 10, 1);
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("processCacheNetWorkConcurrent") { // from class: com.bykv.vk.openvk.component.video.dq.d.mn.2
                @Override // java.lang.Runnable
                public void run() {
                    iaVar.run();
                }
            });
            if (s.ox) {
                Log.e("TAG_PROXY_ProxyTask", "fire download in process cache task");
            }
        }
        byte[] bArr = new byte[8192];
        try {
            iaVar2 = new ia(file, "r");
        } catch (Throwable th) {
            th = th;
        }
        try {
            iaVar2.dq(dVar.d());
            int min = this.kk.ox.s > 0 ? Math.min(dqVar.ox, this.kk.ox.s) : dqVar.ox;
            while (dVar.d() < min) {
                s();
                int dq4 = iaVar2.dq(bArr);
                if (dq4 <= 0) {
                    com.bykv.vk.openvk.component.video.dq.d.d dVar3 = this.f544f;
                    if (dVar3 != null) {
                        com.bykv.vk.openvk.component.video.dq.d.ox.d kk = dVar3.kk();
                        if (kk != null) {
                            throw kk;
                        }
                        ia.dq ia = dVar3.ia();
                        if (ia != null) {
                            throw ia;
                        }
                    }
                    if (dVar3 != null && !dVar3.d() && !dVar3.p()) {
                        s();
                        synchronized (dVar3.mp) {
                            try {
                                dVar3.mp.wait(1000L);
                            } catch (InterruptedException e2) {
                                e2.printStackTrace();
                            }
                        }
                    }
                    if (s.ox) {
                        Log.e("TAG_PROXY_ProxyTask", "download task has finished!!!");
                    }
                    throw new com.bykv.vk.openvk.component.video.dq.d.ox.ox("illegal state download task has finished, rawKey: " + this.mn + ", url: " + dqVar2);
                }
                dVar.d(bArr, 0, dq4);
                s();
            }
            if (s.ox) {
                dVar.d();
            }
            ox();
            iaVar2.dq();
            if (iaVar != null) {
                try {
                    iaVar.get();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        } catch (Throwable th3) {
            th = th3;
            iaVar3 = iaVar2;
            if (iaVar3 != null) {
                iaVar3.dq();
            }
            if (iaVar != null) {
                try {
                    iaVar.get();
                } catch (Throwable th4) {
                    th4.printStackTrace();
                }
            }
            throw th;
        }
    }

    private void dq(d dVar, ig.dq dqVar) throws com.bykv.vk.openvk.component.video.dq.d.ox.p, IOException, ia.dq, com.bykv.vk.openvk.component.video.dq.d.ox.dq, com.bykv.vk.openvk.component.video.dq.d.ox.d {
        if ("HEAD".equalsIgnoreCase(this.kk.dq.dq)) {
            d(dVar, dqVar);
        } else {
            ox(dVar, dqVar);
        }
    }

    private boolean dq(d dVar) throws com.bykv.vk.openvk.component.video.dq.d.ox.dq {
        while (this.o.dq()) {
            s();
            ig.dq d2 = this.o.d();
            try {
                dq(dVar, d2);
                return true;
            } catch (ia.dq e2) {
                if (s.ox) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
                }
                this.fw = false;
                mn();
            } catch (com.bykv.vk.openvk.component.video.dq.d.ox.d e3) {
                if (s.ox) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e3));
                }
                return false;
            } catch (com.bykv.vk.openvk.component.video.dq.d.ox.ox unused) {
                d2.dq();
                mn();
            } catch (com.bykv.vk.openvk.component.video.dq.d.ox.p e4) {
                if (s.ox) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e4));
                }
                return true;
            } catch (IOException e5) {
                if (e5 instanceof SocketTimeoutException) {
                    d2.d();
                }
                if (!d()) {
                    mn();
                } else if (s.ox && !"Canceled".equalsIgnoreCase(e5.getMessage())) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e5));
                }
            } catch (Exception e6) {
                if (s.ox) {
                    Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e6));
                }
            }
        }
        return false;
    }

    private byte[] dq(com.bykv.vk.openvk.component.video.dq.d.d.dq dqVar, d dVar, ig.dq dqVar2) throws IOException {
        if (dqVar != null) {
            boolean z = s.ox;
            return com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dqVar, dVar.d()).getBytes(com.bykv.vk.openvk.component.video.dq.ox.dq.dq);
        }
        com.bykv.vk.openvk.component.video.dq.d.s.dq dq2 = dq(dqVar2, 0, -1, "HEAD");
        if (dq2 == null) {
            return null;
        }
        try {
            String dq3 = com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq2, false, false);
            if (dq3 == null) {
                com.bykv.vk.openvk.component.video.dq.d.d.dq dq4 = com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq2, this.f528d, this.ia, this.kk.ox.dq);
                boolean z2 = s.ox;
                return com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq4, dVar.d()).getBytes(com.bykv.vk.openvk.component.video.dq.ox.dq.dq);
            }
            throw new com.bykv.vk.openvk.component.video.dq.d.ox.ox(dq3 + ", rawKey: " + this.mn + ", url: " + dqVar2);
        } finally {
            com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq2.p());
        }
    }

    private d ia() {
        try {
            this.kk = kk.dq(this.mp.getInputStream());
            OutputStream outputStream = this.mp.getOutputStream();
            com.bykv.vk.openvk.component.video.dq.d.dq.dq dqVar = this.kk.ox.dq == 1 ? s.dq : s.f553d;
            if (dqVar == null) {
                if (s.ox) {
                    Log.e("TAG_PROXY_ProxyTask", "cache is null");
                }
                return null;
            }
            this.dq = dqVar;
            this.mn = this.kk.ox.f542d;
            this.ia = this.kk.ox.ox;
            this.o = new ig(this.kk.ox.mn);
            this.iw = this.kk.f540d;
            if (s.ox) {
                this.kk.toString();
            }
            return new d(outputStream, this.kk.ox.p);
        } catch (kk.p e2) {
            com.bykv.vk.openvk.component.video.dq.ox.dq.dq(this.mp);
            if (s.ox) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
            }
            if (this.dq != null) {
                mn();
            }
            return null;
        } catch (IOException e3) {
            com.bykv.vk.openvk.component.video.dq.ox.dq.dq(this.mp);
            if (s.ox) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e3));
            }
            if (this.dq != null) {
                mn();
            }
            return null;
        }
    }

    private void kk() {
        com.bykv.vk.openvk.component.video.dq.d.d dVar = this.f544f;
        this.f544f = null;
        if (dVar != null) {
            dVar.dq();
        }
    }

    private void ox(d dVar, ig.dq dqVar) throws ia.dq, com.bykv.vk.openvk.component.video.dq.d.ox.p, IOException, com.bykv.vk.openvk.component.video.dq.d.ox.dq, com.bykv.vk.openvk.component.video.dq.d.ox.d {
        if (this.fw) {
            File ox2 = this.dq.ox(this.ia);
            long length = ox2.length();
            com.bykv.vk.openvk.component.video.dq.d.d.dq query = this.f528d.query(this.ia, this.kk.ox.dq);
            dVar.d();
            if (length > dVar.d()) {
                boolean z = s.ox;
                dq(query, ox2, dVar, dqVar);
                return;
            }
        }
        p(dVar, dqVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0104 A[Catch: all -> 0x00f4, TRY_LEAVE, TryCatch #1 {all -> 0x00f4, blocks: (B:33:0x00eb, B:34:0x0100, B:36:0x0104, B:37:0x0116, B:40:0x0128, B:83:0x0126, B:86:0x00fc), top: B:24:0x00c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0137 A[Catch: all -> 0x0169, TryCatch #4 {all -> 0x0169, blocks: (B:43:0x0131, B:45:0x0137, B:47:0x013c, B:50:0x016c, B:57:0x0147, B:52:0x0173, B:73:0x0177, B:54:0x0142), top: B:42:0x0131, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0177 A[EDGE_INSN: B:72:0x0177->B:73:0x0177 BREAK  A[LOOP:0: B:42:0x0131->B:52:0x0173], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0126 A[Catch: all -> 0x00f4, TryCatch #1 {all -> 0x00f4, blocks: (B:33:0x00eb, B:34:0x0100, B:36:0x0104, B:37:0x0116, B:40:0x0128, B:83:0x0126, B:86:0x00fc), top: B:24:0x00c6 }] */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void p(d dVar, ig.dq dqVar) throws com.bykv.vk.openvk.component.video.dq.d.ox.p, IOException, com.bykv.vk.openvk.component.video.dq.d.ox.dq, com.bykv.vk.openvk.component.video.dq.d.ox.d {
        String dq2;
        int i;
        byte[] bArr;
        InputStream p;
        int i2;
        ia iaVar;
        int read;
        ia iaVar2;
        kk();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int d2 = dVar.d();
        com.bykv.vk.openvk.component.video.dq.d.s.dq dq3 = dq(dqVar, d2, this.kk.ox.s, "GET");
        if (dq3 == null) {
            return;
        }
        ia iaVar3 = null;
        int i3 = 0;
        try {
            dq2 = com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq3, false, true);
        } catch (Throwable th) {
            th = th;
        }
        if (dq2 != null) {
            throw new com.bykv.vk.openvk.component.video.dq.d.ox.ox(dq2 + ", rawKey: " + this.mn + ", url: " + dqVar);
        }
        com.bykv.vk.openvk.component.video.dq.d.d.dq query = this.f528d.query(this.ia, iw());
        int dq4 = com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq3);
        if (query != null && query.ox != dq4) {
            if (s.ox) {
                Log.e("TAG_PROXY_ProxyTask", "Content-Length not match, old: " + query.ox + ", " + dq4 + ", key: " + this.ia);
            }
            throw new com.bykv.vk.openvk.component.video.dq.d.ox.d("Content-Length not match, old length: " + query.ox + ", new length: " + dq4 + ", rawKey: " + this.mn + ", currentUrl: " + dqVar + ", previousInfo: " + query.s);
        }
        if (!dVar.dq()) {
            String dq5 = com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq3, d2);
            s();
            byte[] bytes = dq5.getBytes(com.bykv.vk.openvk.component.video.dq.ox.dq.dq);
            dVar.dq(bytes, 0, bytes.length);
        }
        s();
        File p2 = this.dq.p(this.ia);
        ?? r2 = this.fw;
        try {
            if (r2 == 0 || p2 == null || p2.length() < dVar.d()) {
                if (s.ox) {
                    p2.length();
                    dVar.d();
                }
                r2 = 0;
            } else {
                com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq3, this.f528d, this.ia, this.kk.ox.dq);
                try {
                    ia iaVar4 = new ia(p2, "rwd");
                    try {
                        iaVar4.dq(dVar.d());
                        iaVar2 = iaVar4;
                    } catch (ia.dq e2) {
                        e = e2;
                        e.printStackTrace();
                        iaVar2 = null;
                        r2 = iaVar2;
                        if (s.ox) {
                        }
                        com.bykv.vk.openvk.component.video.dq.d.d.dq query2 = this.f528d.query(this.ia, iw());
                        if (query2 != null) {
                        }
                        bArr = new byte[8192];
                        p = dq3.p();
                        i2 = 0;
                        iaVar = r2;
                        while (true) {
                            try {
                                read = p.read(bArr);
                                if (read >= 0) {
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                iaVar3 = iaVar;
                            }
                            th = th2;
                            iaVar3 = iaVar;
                            i3 = i2;
                            com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq3.p());
                            if (iaVar3 != null) {
                            }
                            this.ox.addAndGet(i3);
                            this.p.addAndGet(SystemClock.elapsedRealtime() - elapsedRealtime);
                            throw th;
                            s();
                            iaVar = iaVar;
                        }
                        boolean z = s.ox;
                        ox();
                        com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq3.p());
                        if (iaVar != null) {
                        }
                        this.ox.addAndGet(i2);
                        this.p.addAndGet(SystemClock.elapsedRealtime() - elapsedRealtime);
                    }
                } catch (ia.dq e3) {
                    e = e3;
                }
                r2 = iaVar2;
                if (s.ox) {
                    p2.length();
                    dVar.d();
                    r2 = iaVar2;
                }
            }
            com.bykv.vk.openvk.component.video.dq.d.d.dq query22 = this.f528d.query(this.ia, iw());
            i = query22 != null ? 0 : query22.ox;
            bArr = new byte[8192];
            p = dq3.p();
            i2 = 0;
            iaVar = r2;
        } catch (Throwable th3) {
            th = th3;
            iaVar3 = r2;
        }
        while (true) {
            read = p.read(bArr);
            if (read >= 0) {
                break;
            }
            s();
            if (read > 0) {
                dVar.d(bArr, 0, read);
                i2 += read;
                iaVar = iaVar;
                if (iaVar != null) {
                    try {
                        iaVar.dq(bArr, 0, read);
                        iaVar = iaVar;
                    } catch (Throwable th4) {
                        iaVar.dq();
                        try {
                            if (s.ox) {
                                Log.e("TAG_PROXY_ProxyTask", "append to cache file error in network task!!! " + Log.getStackTraceString(th4));
                            }
                            iaVar = null;
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    }
                }
                dq(i, dVar.d());
            }
            s();
            iaVar = iaVar;
            th = th2;
            iaVar3 = iaVar;
            i3 = i2;
            com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq3.p());
            if (iaVar3 != null) {
                iaVar3.dq();
            }
            this.ox.addAndGet(i3);
            this.p.addAndGet(SystemClock.elapsedRealtime() - elapsedRealtime);
            throw th;
        }
        boolean z2 = s.ox;
        ox();
        com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq3.p());
        if (iaVar != null) {
            iaVar.dq();
        }
        this.ox.addAndGet(i2);
        this.p.addAndGet(SystemClock.elapsedRealtime() - elapsedRealtime);
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.dq
    public void dq() {
        super.dq();
        kk();
    }

    @Override // java.lang.Runnable
    public void run() {
        com.bykv.vk.openvk.component.video.dq.d.d.dq query;
        d ia = ia();
        if (ia == null) {
            return;
        }
        ox oxVar = this.q;
        if (oxVar != null) {
            oxVar.dq(this);
        }
        this.dq.dq(this.ia);
        if (s.ia != 0 && ((query = this.f528d.query(this.ia, this.kk.ox.dq)) == null || this.dq.ox(this.ia).length() < query.ox)) {
            this.jy.dq(mn(), this.ia);
        }
        try {
            dq(ia);
        } catch (com.bykv.vk.openvk.component.video.dq.d.ox.dq e2) {
            if (s.ox) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(e2));
            }
        } catch (Throwable th) {
            if (s.ox) {
                Log.e("TAG_PROXY_ProxyTask", Log.getStackTraceString(th));
            }
        }
        this.dq.d(this.ia);
        this.jy.dq(mn(), null);
        dq();
        com.bykv.vk.openvk.component.video.dq.ox.dq.dq(this.mp);
        ox oxVar2 = this.q;
        if (oxVar2 != null) {
            oxVar2.d(this);
        }
    }
}
