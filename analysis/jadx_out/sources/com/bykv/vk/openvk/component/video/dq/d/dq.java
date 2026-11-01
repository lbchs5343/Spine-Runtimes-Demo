package com.bykv.vk.openvk.component.video.dq.d;

import com.bykv.vk.openvk.component.video.dq.d.ig;
import com.bykv.vk.openvk.component.video.dq.d.kk;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
abstract class dq implements no {
    private static final AtomicLong mp = new AtomicLong();

    /* renamed from: d, reason: collision with root package name */
    protected final com.bykv.vk.openvk.component.video.dq.d.d.ox f528d;
    protected volatile com.bykv.vk.openvk.component.video.dq.d.dq.dq dq;
    protected volatile String ia;
    protected volatile List<kk.d> iw;
    protected volatile kk kk;
    protected volatile String mn;
    protected volatile ig o;
    protected com.bykv.vk.openvk.component.video.dq.d.p.dq s;
    protected final AtomicInteger ox = new AtomicInteger();
    protected final AtomicLong p = new AtomicLong();
    protected volatile boolean no = false;
    public final long ig = mp.incrementAndGet();
    private final AtomicInteger q = new AtomicInteger(0);
    private int jy = -1;

    public dq(com.bykv.vk.openvk.component.video.dq.d.dq.dq dqVar, com.bykv.vk.openvk.component.video.dq.d.d.ox oxVar) {
        this.dq = dqVar;
        this.f528d = oxVar;
    }

    public boolean d() {
        return this.q.get() == 1;
    }

    public com.bykv.vk.openvk.component.video.dq.d.s.dq dq(ig.dq dqVar, int i, int i2, String str) throws IOException {
        com.bykv.vk.openvk.component.video.dq.d.s.d d2 = com.bykv.vk.openvk.component.video.dq.d.s.ox.dq().d();
        com.bykv.vk.openvk.component.video.dq.d.s.s sVar = new com.bykv.vk.openvk.component.video.dq.d.s.s();
        HashMap hashMap = new HashMap();
        sVar.f555d = dqVar.dq;
        sVar.dq = 0;
        if ("HEAD".equalsIgnoreCase(str)) {
            sVar.dq = 4;
        }
        List<kk.d> list = this.iw;
        if (list != null && !list.isEmpty()) {
            for (kk.d dVar : list) {
                if (!"Range".equalsIgnoreCase(dVar.dq) && !"Connection".equalsIgnoreCase(dVar.dq) && !"Proxy-Connection".equalsIgnoreCase(dVar.dq) && !"Host".equalsIgnoreCase(dVar.dq)) {
                    hashMap.put(dVar.dq, dVar.f541d);
                }
            }
        }
        String dq = com.bykv.vk.openvk.component.video.dq.ox.dq.dq(i, i2);
        if (dq != null) {
            hashMap.put("Range", dq);
        }
        if (s.iw) {
            hashMap.put("Cache-Control", "no-cache");
        }
        p ox = p.ox();
        iw dq2 = iw.dq();
        boolean z = this.kk == null;
        ox dq3 = z ? ox.dq() : dq2.d();
        ox d3 = z ? ox.d() : dq2.ox();
        if (dq3 != null || d3 != null) {
            if (dq3 != null) {
                sVar.ox = dq3.dq(dqVar.f533d);
            }
            if (d3 != null) {
                sVar.p = d3.dq(dqVar.f533d);
            }
        }
        sVar.s = hashMap;
        if (!this.no) {
            return d2.dq(sVar);
        }
        this.no = false;
        return null;
    }

    public void dq() {
        this.q.compareAndSet(0, 1);
    }

    public void dq(int i, int i2) {
        if (i <= 0 || i2 < 0) {
            return;
        }
        int i3 = s.mn;
        int iw = iw();
        if (i3 == 1 || (i3 == 2 && iw == 1)) {
            int i4 = (int) ((i2 / i) * 100.0f);
            if (i4 > 100) {
                i4 = 100;
            }
            synchronized (this) {
                try {
                    if (i4 <= this.jy) {
                        return;
                    }
                    this.jy = i4;
                    com.bykv.vk.openvk.component.video.dq.ox.dq.dq(new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.d.dq.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (dq.this.s != null) {
                                int unused = dq.this.jy;
                            }
                        }
                    });
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public int iw() {
        return this.kk != null ? this.kk.ox.dq : this.dq instanceof com.bykv.vk.openvk.component.video.dq.d.dq.d ? 1 : 0;
    }

    public boolean mn() {
        return iw() == 1;
    }

    public void ox() {
        this.q.compareAndSet(0, 2);
    }

    public boolean p() {
        return this.q.get() == 2;
    }

    public void s() throws com.bykv.vk.openvk.component.video.dq.d.ox.dq {
        if (d()) {
            throw new com.bykv.vk.openvk.component.video.dq.d.ox.dq();
        }
    }
}
