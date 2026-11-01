package com.bykv.vk.openvk.component.video.dq.d;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.bykv.vk.openvk.component.video.dq.d.ia;
import com.bykv.vk.openvk.component.video.dq.d.ig;
import com.bykv.vk.openvk.component.video.dq.d.kk;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.util.List;

/* loaded from: classes.dex */
class d extends com.bykv.vk.openvk.component.video.dq.d.dq {
    private volatile com.bykv.vk.openvk.component.video.dq.d.ox.d cd;

    /* renamed from: f, reason: collision with root package name */
    private final InterfaceC0006d f521f;
    private volatile ia.dq fw;
    private final int jy;
    final Object mp;
    final Object q;

    /* renamed from: com.bykv.vk.openvk.component.video.dq.d.d$d, reason: collision with other inner class name */
    public interface InterfaceC0006d {
        void dq(d dVar);
    }

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        String f523d;
        String dq;
        kk ia;
        List<kk.d> iw;
        InterfaceC0006d kk;
        int mn;
        Object o;
        ig ox;
        com.bykv.vk.openvk.component.video.dq.d.dq.dq p;
        com.bykv.vk.openvk.component.video.dq.d.d.ox s;

        public dq d(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("key == null");
            }
            this.f523d = str;
            return this;
        }

        public dq dq(int i) {
            this.mn = i;
            return this;
        }

        public dq dq(InterfaceC0006d interfaceC0006d) {
            this.kk = interfaceC0006d;
            return this;
        }

        public dq dq(com.bykv.vk.openvk.component.video.dq.d.d.ox oxVar) {
            if (oxVar == null) {
                throw new IllegalArgumentException("db == null");
            }
            this.s = oxVar;
            return this;
        }

        public dq dq(com.bykv.vk.openvk.component.video.dq.d.dq.dq dqVar) {
            if (dqVar == null) {
                throw new IllegalArgumentException("cache == null");
            }
            this.p = dqVar;
            return this;
        }

        public dq dq(ig igVar) {
            if (igVar == null) {
                throw new IllegalArgumentException("urls is empty");
            }
            this.ox = igVar;
            return this;
        }

        public dq dq(kk kkVar) {
            this.ia = kkVar;
            return this;
        }

        public dq dq(Object obj) {
            this.o = obj;
            return this;
        }

        public dq dq(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("rawKey == null");
            }
            this.dq = str;
            return this;
        }

        public dq dq(List<kk.d> list) {
            this.iw = list;
            return this;
        }

        public d dq() {
            if (this.p == null || this.s == null || TextUtils.isEmpty(this.dq) || TextUtils.isEmpty(this.f523d) || this.ox == null) {
                throw new IllegalArgumentException();
            }
            return new d(this);
        }
    }

    public d(dq dqVar) {
        super(dqVar.p, dqVar.s);
        this.jy = dqVar.mn;
        this.f521f = dqVar.kk;
        this.mp = this;
        this.mn = dqVar.dq;
        this.ia = dqVar.f523d;
        this.iw = dqVar.iw;
        this.o = dqVar.ox;
        this.kk = dqVar.ia;
        this.q = dqVar.o;
    }

    private void dq(ig.dq dqVar) throws IOException, ia.dq, com.bykv.vk.openvk.component.video.dq.d.ox.dq, com.bykv.vk.openvk.component.video.dq.d.ox.d {
        File ox = this.dq.ox(this.ia);
        long length = ox.length();
        int i = this.jy;
        if (i > 0 && length >= i) {
            boolean z = s.ox;
            return;
        }
        int iw = iw();
        com.bykv.vk.openvk.component.video.dq.d.d.dq query = this.f528d.query(this.ia, iw);
        if (query != null && length >= query.ox) {
            boolean z2 = s.ox;
            return;
        }
        s();
        int i2 = (int) length;
        com.bykv.vk.openvk.component.video.dq.d.s.dq dq2 = dq(dqVar, i2, this.jy, "GET");
        if (dq2 == null) {
            return;
        }
        boolean z3 = true;
        ia iaVar = null;
        try {
            s();
            String dq3 = com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq2, this.kk == null && s.s, true);
            if (dq3 != null) {
                throw new com.bykv.vk.openvk.component.video.dq.d.ox.ox(dq3 + ", rawKey: " + this.mn + ", url: " + dqVar);
            }
            int dq4 = com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq2);
            if (query != null && query.ox != dq4) {
                if (s.ox) {
                    Log.e("TAG_PROXY_DownloadTask", "Content-Length not match, old: " + query.ox + ", " + dq4 + ", key: " + this.ia);
                }
                throw new com.bykv.vk.openvk.component.video.dq.d.ox.d("Content-Length not match, old length: " + query.ox + ", new length: " + dq4 + ", rawKey: " + this.mn + ", currentUrl: " + dqVar + ", previousInfo: " + query.s);
            }
            com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq2, this.f528d, this.ia, iw);
            com.bykv.vk.openvk.component.video.dq.d.d.dq query2 = this.f528d.query(this.ia, iw);
            int i3 = query2 == null ? 0 : query2.ox;
            InputStream p = dq2.p();
            ia iaVar2 = new ia(ox, s.p ? "rwd" : "rw");
            try {
                iaVar2.dq(length);
                if (s.ox) {
                    "preload start from: ".concat(String.valueOf(length));
                }
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = p.read(bArr);
                    if (read < 0) {
                        try {
                            ox();
                            boolean z4 = s.ox;
                            com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq2.p());
                            iaVar2.dq();
                            return;
                        } catch (Throwable th) {
                            th = th;
                            iaVar = iaVar2;
                            z3 = false;
                            com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq2.p());
                            if (iaVar != null) {
                                iaVar.dq();
                            }
                            if (z3) {
                                dq();
                                boolean z5 = s.ox;
                            }
                            throw th;
                        }
                    }
                    s();
                    if (read > 0) {
                        iaVar2.dq(bArr, 0, read);
                        i2 += read;
                        if (this.kk != null) {
                            synchronized (this.mp) {
                                this.mp.notifyAll();
                            }
                        }
                        this.ox.addAndGet(read);
                        dq(i3, i2);
                    }
                    int i4 = this.jy;
                    if (i4 > 0 && i2 >= i4) {
                        boolean z6 = s.ox;
                        com.bykv.vk.openvk.component.video.dq.ox.dq.dq(dq2.p());
                        iaVar2.dq();
                        dq();
                        return;
                    }
                    s();
                }
            } catch (Throwable th2) {
                th = th2;
                iaVar = iaVar2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private boolean o() throws com.bykv.vk.openvk.component.video.dq.d.ox.dq {
        while (this.o.dq()) {
            s();
            ig.dq d2 = this.o.d();
            try {
                dq(d2);
                return true;
            } catch (ia.dq e2) {
                this.fw = e2;
                mn();
                return false;
            } catch (com.bykv.vk.openvk.component.video.dq.d.ox.d e3) {
                this.cd = e3;
                return false;
            } catch (com.bykv.vk.openvk.component.video.dq.d.ox.ox unused) {
                d2.dq();
                mn();
            } catch (IOException e4) {
                if (e4 instanceof SocketTimeoutException) {
                    d2.d();
                }
                if (!d()) {
                    mn();
                }
            } catch (Throwable unused2) {
                return false;
            }
        }
        return false;
    }

    public ia.dq ia() {
        return this.fw;
    }

    public com.bykv.vk.openvk.component.video.dq.d.ox.d kk() {
        return this.cd;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.dq.dq(this.ia);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            o();
        } catch (Throwable unused) {
        }
        this.p.set(SystemClock.elapsedRealtime() - elapsedRealtime);
        this.dq.d(this.ia);
        InterfaceC0006d interfaceC0006d = this.f521f;
        if (interfaceC0006d != null) {
            interfaceC0006d.dq(this);
        }
    }
}
