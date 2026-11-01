package com.bytedance.sdk.component.ox.d.dq.d;

import com.bytedance.sdk.component.ox.d.dq.d.iw;
import com.bytedance.sdk.component.ox.d.dq.s.jy;
import com.bytedance.sdk.component.ox.d.f;
import com.bytedance.sdk.component.ox.d.k;
import com.bytedance.sdk.component.ox.d.o;
import com.bytedance.sdk.component.ox.d.op;
import com.bytedance.sdk.component.ox.d.r;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;

/* loaded from: classes.dex */
public final class mn {
    static final /* synthetic */ boolean p = true;

    /* renamed from: d, reason: collision with root package name */
    public final com.bytedance.sdk.component.ox.d.s f2049d;
    public final com.bytedance.sdk.component.ox.d.dq dq;
    private final Object ia;
    private boolean ig;
    private op iw;
    private com.bytedance.sdk.component.ox.d.dq.ox.ox jy;
    private final iw kk;
    private final o mn;
    private boolean mp;
    private ox no;
    private int o;
    public final f ox;
    private boolean q;
    private iw.dq s;

    public static final class dq extends WeakReference<mn> {
        public final Object dq;

        public dq(mn mnVar, Object obj) {
            super(mnVar);
            this.dq = obj;
        }
    }

    public mn(o oVar, com.bytedance.sdk.component.ox.d.dq dqVar, com.bytedance.sdk.component.ox.d.s sVar, f fVar, Object obj) throws IOException {
        this.mn = oVar;
        this.dq = dqVar;
        this.f2049d = sVar;
        this.ox = fVar;
        this.kk = new iw(dqVar, ia(), sVar, fVar);
        this.ia = obj;
    }

    private void d(ox oxVar) {
        int size = oxVar.p.size();
        for (int i = 0; i < size; i++) {
            if (oxVar.p.get(i).get() == this) {
                oxVar.p.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private ox dq(int i, int i2, int i3, boolean z) throws IOException {
        Socket mn;
        ox oxVar;
        Socket socket;
        op opVar;
        boolean z2;
        boolean z3;
        ox oxVar2;
        iw.dq dqVar;
        synchronized (this.mn) {
            try {
                if (this.mp) {
                    throw new IllegalStateException("released");
                }
                if (this.jy != null) {
                    throw new IllegalStateException("codec != null");
                }
                if (this.q) {
                    throw new IOException("Canceled");
                }
                mn = mn();
                oxVar = this.no;
                socket = null;
                if (oxVar == null) {
                    oxVar = null;
                }
                if (oxVar == null) {
                    com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(this.mn, this.dq, this, null);
                    ox oxVar3 = this.no;
                    if (oxVar3 != null) {
                        oxVar = oxVar3;
                        z2 = true;
                        opVar = null;
                    } else {
                        opVar = this.iw;
                    }
                } else {
                    opVar = null;
                }
                z2 = false;
            } finally {
            }
        }
        com.bytedance.sdk.component.ox.d.dq.ox.dq(mn);
        if (oxVar != null) {
            return oxVar;
        }
        if (opVar != null || ((dqVar = this.s) != null && dqVar.dq())) {
            z3 = false;
        } else {
            this.s = this.kk.d();
            z3 = true;
        }
        synchronized (this.mn) {
            try {
                if (this.q) {
                    throw new IOException("Canceled");
                }
                if (z3) {
                    List<op> ox = this.s.ox();
                    int size = ox.size();
                    int i4 = 0;
                    while (true) {
                        if (i4 >= size) {
                            break;
                        }
                        op opVar2 = ox.get(i4);
                        com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(this.mn, this.dq, this, opVar2);
                        ox oxVar4 = this.no;
                        if (oxVar4 != null) {
                            this.iw = opVar2;
                            oxVar = oxVar4;
                            z2 = true;
                            break;
                        }
                        i4++;
                    }
                }
                if (!z2) {
                    if (opVar == null) {
                        opVar = this.s.d();
                    }
                    this.iw = opVar;
                    this.o = 0;
                    oxVar = new ox(this.mn, opVar);
                    dq(oxVar, false);
                }
                oxVar2 = oxVar;
            } finally {
            }
        }
        if (z2) {
            return oxVar2;
        }
        oxVar2.dq(i, i2, i3, z, this.f2049d, this.ox);
        ia().d(oxVar2.dq());
        synchronized (this.mn) {
            try {
                this.ig = true;
                com.bytedance.sdk.component.ox.d.dq.dq.dq.d(this.mn, oxVar2);
                if (oxVar2.s()) {
                    socket = com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(this.mn, this.dq, this);
                    oxVar2 = this.no;
                }
            } finally {
            }
        }
        com.bytedance.sdk.component.ox.d.dq.ox.dq(socket);
        return oxVar2;
    }

    private ox dq(int i, int i2, int i3, boolean z, boolean z2) throws IOException {
        while (true) {
            ox dq2 = dq(i, i2, i3, z);
            synchronized (this.mn) {
                try {
                    if (dq2.f2050d == 0) {
                        return dq2;
                    }
                    if (dq2.dq(z2)) {
                        return dq2;
                    }
                    p();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private Socket dq(boolean z, boolean z2, boolean z3) {
        Socket socket;
        if (!p && !Thread.holdsLock(this.mn)) {
            throw new AssertionError();
        }
        if (z3) {
            this.jy = null;
        }
        if (z2) {
            this.mp = true;
        }
        ox oxVar = this.no;
        if (oxVar != null) {
            if (z) {
                oxVar.dq = true;
            }
            if (this.jy == null && (this.mp || oxVar.dq)) {
                d(oxVar);
                if (this.no.p.isEmpty()) {
                    this.no.s = System.nanoTime();
                    if (com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(this.mn, this.no)) {
                        socket = this.no.ox();
                        this.no = null;
                        return socket;
                    }
                }
                socket = null;
                this.no = null;
                return socket;
            }
        }
        return null;
    }

    private p ia() {
        return com.bytedance.sdk.component.ox.d.dq.dq.dq.dq(this.mn);
    }

    private Socket mn() {
        if (!p && !Thread.holdsLock(this.mn)) {
            throw new AssertionError();
        }
        ox oxVar = this.no;
        if (oxVar == null || !oxVar.dq) {
            return null;
        }
        return dq(false, false, true);
    }

    public synchronized ox d() {
        return this.no;
    }

    public com.bytedance.sdk.component.ox.d.dq.ox.ox dq() {
        com.bytedance.sdk.component.ox.d.dq.ox.ox oxVar;
        synchronized (this.mn) {
            oxVar = this.jy;
        }
        return oxVar;
    }

    public com.bytedance.sdk.component.ox.d.dq.ox.ox dq(k kVar, r.dq dqVar, boolean z) {
        try {
            com.bytedance.sdk.component.ox.d.dq.ox.ox dq2 = dq(dqVar.d(), dqVar.ox(), dqVar.p(), kVar.cd(), z).dq(kVar, dqVar, this);
            synchronized (this.mn) {
                this.jy = dq2;
            }
            return dq2;
        } catch (IOException e2) {
            throw new s(e2);
        }
    }

    public Socket dq(ox oxVar) {
        if (!p && !Thread.holdsLock(this.mn)) {
            throw new AssertionError();
        }
        if (this.jy != null || this.no.p.size() != 1) {
            throw new IllegalStateException();
        }
        Reference<mn> reference = this.no.p.get(0);
        Socket dq2 = dq(true, false, false);
        this.no = oxVar;
        oxVar.p.add(reference);
        return dq2;
    }

    public void dq(ox oxVar, boolean z) {
        if (!p && !Thread.holdsLock(this.mn)) {
            throw new AssertionError();
        }
        if (this.no != null) {
            throw new IllegalStateException();
        }
        this.no = oxVar;
        this.ig = z;
        oxVar.p.add(new dq(this, this.ia));
    }

    public void dq(IOException iOException) {
        boolean z;
        Socket dq2;
        synchronized (this.mn) {
            try {
                if (iOException instanceof jy) {
                    com.bytedance.sdk.component.ox.d.dq.s.d dVar = ((jy) iOException).dq;
                    com.bytedance.sdk.component.ox.d.dq.s.d dVar2 = com.bytedance.sdk.component.ox.d.dq.s.d.REFUSED_STREAM;
                    if (dVar == dVar2) {
                        this.o++;
                    }
                    if (dVar != dVar2 || this.o > 1) {
                        this.iw = null;
                        z = true;
                    }
                    z = false;
                } else {
                    ox oxVar = this.no;
                    if (oxVar != null && (!oxVar.s() || (iOException instanceof com.bytedance.sdk.component.ox.d.dq.s.dq))) {
                        if (this.no.f2050d == 0) {
                            op opVar = this.iw;
                            if (opVar != null && iOException != null) {
                                this.kk.dq(opVar, iOException);
                            }
                            this.iw = null;
                        }
                        z = true;
                    }
                    z = false;
                }
                dq2 = dq(z, false, true);
            } catch (Throwable th) {
                throw th;
            }
        }
        com.bytedance.sdk.component.ox.d.dq.ox.dq(dq2);
    }

    public void dq(boolean z, com.bytedance.sdk.component.ox.d.dq.ox.ox oxVar, long j, IOException iOException) {
        Socket dq2;
        synchronized (this.mn) {
            if (oxVar != null) {
                try {
                    if (oxVar == this.jy) {
                        if (!z) {
                            this.no.f2050d++;
                        }
                        dq2 = dq(z, false, true);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            throw new IllegalStateException("expected " + this.jy + " but was " + oxVar);
        }
        com.bytedance.sdk.component.ox.d.dq.ox.dq(dq2);
    }

    public boolean iw() {
        if (this.iw != null) {
            return true;
        }
        iw.dq dqVar = this.s;
        return (dqVar != null && dqVar.dq()) || this.kk.dq();
    }

    public void ox() {
        Socket dq2;
        synchronized (this.mn) {
            dq2 = dq(false, true, false);
        }
        com.bytedance.sdk.component.ox.d.dq.ox.dq(dq2);
    }

    public void p() {
        Socket dq2;
        synchronized (this.mn) {
            dq2 = dq(true, false, false);
        }
        com.bytedance.sdk.component.ox.d.dq.ox.dq(dq2);
    }

    public void s() {
        com.bytedance.sdk.component.ox.d.dq.ox.ox oxVar;
        ox oxVar2;
        synchronized (this.mn) {
            this.q = true;
            oxVar = this.jy;
            oxVar2 = this.no;
        }
        if (oxVar != null) {
            oxVar.ox();
        } else if (oxVar2 != null) {
            oxVar2.d();
        }
    }

    public String toString() {
        ox d2 = d();
        return d2 != null ? d2.toString() : this.dq.toString();
    }
}
