package com.ss.android.socialbase.downloader.network.dq;

import com.ss.android.socialbase.downloader.network.mn;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ox implements mn {
    private static final ArrayList<String> s;

    /* renamed from: d, reason: collision with root package name */
    protected final long f9453d;
    protected final String dq;
    private long ia;
    private boolean kk;
    private int mn;
    private mn no;
    private boolean o;
    protected List<com.ss.android.socialbase.downloader.model.ox> ox;
    private Map<String, String> iw = null;
    protected final Object p = new Object();

    static {
        ArrayList<String> arrayList = new ArrayList<>(6);
        s = arrayList;
        arrayList.add("Content-Length");
        arrayList.add("Content-Range");
        arrayList.add("Transfer-Encoding");
        arrayList.add("Accept-Ranges");
        arrayList.add("Etag");
        arrayList.add("Content-Disposition");
    }

    public ox(String str, List<com.ss.android.socialbase.downloader.model.ox> list, long j) {
        this.dq = str;
        this.ox = list;
        this.f9453d = j;
    }

    private void dq(mn mnVar, Map<String, String> map) {
        if (mnVar == null || map == null) {
            return;
        }
        Iterator<String> it = s.iterator();
        while (it.hasNext()) {
            String next = it.next();
            map.put(next, mnVar.dq(next));
        }
    }

    @Override // com.ss.android.socialbase.downloader.network.mn
    public int d() throws IOException {
        return this.mn;
    }

    @Override // com.ss.android.socialbase.downloader.network.mn
    public String dq(String str) {
        Map<String, String> map = this.iw;
        if (map != null) {
            return map.get(str);
        }
        mn mnVar = this.no;
        if (mnVar != null) {
            return mnVar.dq(str);
        }
        return null;
    }

    public void dq() throws Exception {
        if (this.iw != null) {
            return;
        }
        try {
            this.o = true;
            this.no = com.ss.android.socialbase.downloader.downloader.ox.dq(this.dq, this.ox);
            synchronized (this.p) {
                try {
                    if (this.no != null) {
                        HashMap hashMap = new HashMap();
                        this.iw = hashMap;
                        dq(this.no, hashMap);
                        this.mn = this.no.d();
                        this.ia = System.currentTimeMillis();
                        this.kk = dq(this.mn);
                    }
                    this.o = false;
                    this.p.notifyAll();
                } finally {
                }
            }
        } catch (Throwable th) {
            synchronized (this.p) {
                try {
                    if (this.no != null) {
                        HashMap hashMap2 = new HashMap();
                        this.iw = hashMap2;
                        dq(this.no, hashMap2);
                        this.mn = this.no.d();
                        this.ia = System.currentTimeMillis();
                        this.kk = dq(this.mn);
                    }
                    this.o = false;
                    this.p.notifyAll();
                    throw th;
                } finally {
                }
            }
        }
    }

    public boolean dq(int i) {
        return i >= 200 && i < 300;
    }

    public List<com.ss.android.socialbase.downloader.model.ox> ia() {
        return this.ox;
    }

    public boolean iw() {
        return System.currentTimeMillis() - this.ia < d.f9450d;
    }

    public Map<String, String> kk() {
        return this.iw;
    }

    public boolean mn() {
        return this.o;
    }

    @Override // com.ss.android.socialbase.downloader.network.mn
    public void ox() {
        mn mnVar = this.no;
        if (mnVar != null) {
            mnVar.ox();
        }
    }

    public void p() throws InterruptedException {
        synchronized (this.p) {
            try {
                if (this.o && this.iw == null) {
                    this.p.wait();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean s() {
        return this.kk;
    }
}
