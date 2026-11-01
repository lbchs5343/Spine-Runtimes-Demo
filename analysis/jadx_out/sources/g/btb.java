package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.IOException;
import java.util.ArrayDeque;

/* loaded from: classes3.dex */
public final class btb {

    /* renamed from: a, reason: collision with root package name */
    public boolean f12167a;

    /* renamed from: b, reason: collision with root package name */
    public final vz f12168b;

    /* renamed from: c, reason: collision with root package name */
    public IOException f12169c;

    /* renamed from: d, reason: collision with root package name */
    public long f12170d;

    /* renamed from: e, reason: collision with root package name */
    public final vz f12171e;

    /* renamed from: f, reason: collision with root package name */
    public long f12172f;

    /* renamed from: g, reason: collision with root package name */
    public final int f12173g;
    public long h;
    public amc i;
    public final eoi j;
    public final ug k;
    public final kx l;
    public long m;
    public final ArrayDeque n;

    public btb(int i, ug ugVar, boolean z, boolean z2, dvq dvqVar) {
        bff.p(ugVar, "connection");
        this.f12173g = i;
        this.k = ugVar;
        this.h = ugVar.x.c();
        ArrayDeque arrayDeque = new ArrayDeque();
        this.n = arrayDeque;
        this.j = new eoi(this, ugVar.f20090c.c(), z2);
        this.l = new kx(this, z);
        this.f12168b = new vz(this);
        this.f12171e = new vz(this);
        if (dvqVar == null) {
            if (!o()) {
                throw new IllegalStateException("remotely-initiated streams should have headers");
            }
        } else {
            if (o()) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            }
            arrayDeque.add(dvqVar);
        }
    }

    public final boolean o() {
        boolean z = (this.f12173g & 1) == 1;
        this.k.getClass();
        return true == z;
    }

    public final synchronized void p(amc amcVar) {
        bff.p(amcVar, MediationConstant.KEY_ERROR_CODE);
        if (this.i == null) {
            this.i = amcVar;
            notifyAll();
        }
    }

    public final boolean q(amc amcVar, IOException iOException) {
        byte[] bArr = erq.f16043c;
        synchronized (this) {
            if (this.i != null) {
                return false;
            }
            this.i = amcVar;
            this.f12169c = iOException;
            notifyAll();
            if (this.j.f15898g) {
                if (this.l.f19572c) {
                    return false;
                }
            }
            this.k.ad(this.f12173g);
            return true;
        }
    }

    public final void r(amc amcVar) {
        bff.p(amcVar, MediationConstant.KEY_ERROR_CODE);
        if (q(amcVar, null)) {
            this.k.ai(this.f12173g, amcVar);
        }
    }

    public final void s() {
        boolean z;
        boolean u;
        byte[] bArr = erq.f16043c;
        synchronized (this) {
            try {
                eoi eoiVar = this.j;
                if (!eoiVar.f15898g && eoiVar.f15896d) {
                    kx kxVar = this.l;
                    if (!kxVar.f19572c) {
                        if (kxVar.f19570a) {
                        }
                    }
                    z = true;
                    u = u();
                }
                z = false;
                u = u();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            x(amc.CANCEL, null);
        } else {
            if (u) {
                return;
            }
            this.k.ad(this.f12173g);
        }
    }

    public final synchronized amc t() {
        return this.i;
    }

    public final synchronized boolean u() {
        try {
            if (this.i != null) {
                return false;
            }
            eoi eoiVar = this.j;
            if (!eoiVar.f15898g) {
                if (eoiVar.f15896d) {
                }
                return true;
            }
            kx kxVar = this.l;
            if (kxVar.f19572c || kxVar.f19570a) {
                if (this.f12167a) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void v() {
        kx kxVar = this.l;
        if (kxVar.f19570a) {
            throw new IOException("stream closed");
        }
        if (kxVar.f19572c) {
            throw new IOException("stream finished");
        }
        if (this.i != null) {
            IOException iOException = this.f12169c;
            if (iOException != null) {
                throw iOException;
            }
            amc amcVar = this.i;
            bff.d(amcVar);
            throw new gts(amcVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021 A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:4:0x0008, B:8:0x0010, B:10:0x0021, B:11:0x0025, B:19:0x0018), top: B:3:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void w(dvq dvqVar, boolean z) {
        boolean u;
        bff.p(dvqVar, TTDownloadField.TT_HEADERS);
        byte[] bArr = erq.f16043c;
        synchronized (this) {
            try {
                if (this.f12167a && z) {
                    this.j.getClass();
                    if (z) {
                        this.j.f15898g = true;
                    }
                    u = u();
                    notifyAll();
                }
                this.f12167a = true;
                this.n.add(dvqVar);
                if (z) {
                }
                u = u();
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (u) {
            return;
        }
        this.k.ad(this.f12173g);
    }

    public final void x(amc amcVar, IOException iOException) {
        bff.p(amcVar, "rstStatusCode");
        if (q(amcVar, iOException)) {
            ug ugVar = this.k;
            ugVar.getClass();
            ugVar.w.g(this.f12173g, amcVar);
        }
    }

    public final kx y() {
        synchronized (this) {
            if (!this.f12167a && !o()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.l;
    }
}
