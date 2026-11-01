package g;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public final class ug implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public static final che f20088a;

    /* renamed from: b, reason: collision with root package name */
    public final gfw f20089b;

    /* renamed from: c, reason: collision with root package name */
    public final che f20090c;

    /* renamed from: d, reason: collision with root package name */
    public long f20091d;

    /* renamed from: e, reason: collision with root package name */
    public final amr f20092e;

    /* renamed from: f, reason: collision with root package name */
    public final LinkedHashSet f20093f;

    /* renamed from: g, reason: collision with root package name */
    public final Socket f20094g;
    public long h;
    public final gfw i;
    public final String j;
    public long k;
    public final bmr l;
    public long m;
    public long n;
    public int o;
    public int p;
    public long q;
    public final ayg r;
    public final dvj s;
    public final gfw t;
    public final LinkedHashMap u = new LinkedHashMap();
    public long v;
    public final djf w;
    public che x;
    public long y;
    public boolean z;

    static {
        che cheVar = new che();
        cheVar.e(7, 65535);
        cheVar.e(5, 16384);
        f20088a = cheVar;
    }

    public ug(daw dawVar) {
        this.r = (ayg) dawVar.f13888g;
        String str = (String) dawVar.f13882a;
        if (str == null) {
            bff.v("connectionName");
            throw null;
        }
        this.j = str;
        this.p = 3;
        amr amrVar = (amr) dawVar.f13886e;
        this.f20092e = amrVar;
        this.f20089b = amrVar.l();
        this.t = amrVar.l();
        this.i = amrVar.l();
        this.l = bmr.p;
        che cheVar = new che();
        cheVar.e(7, 16777216);
        this.f20090c = cheVar;
        this.x = f20088a;
        this.m = r0.c();
        Socket socket = (Socket) dawVar.f13887f;
        if (socket == null) {
            bff.v("socket");
            throw null;
        }
        this.f20094g = socket;
        ago agoVar = (ago) dawVar.f13885d;
        if (agoVar == null) {
            bff.v("sink");
            throw null;
        }
        this.w = new djf(agoVar);
        deb debVar = (deb) dawVar.f13883b;
        if (debVar == null) {
            bff.v(abn.EXTRA_SOURCE);
            throw null;
        }
        this.s = new dvj(this, new gvn(debVar));
        this.f20093f = new LinkedHashSet();
    }

    public final synchronized void aa(long j) {
        long j2 = this.q + j;
        this.q = j2;
        long j3 = j2 - this.n;
        if (j3 >= this.f20090c.c() / 2) {
            ae(0, j3);
            this.n += j3;
        }
    }

    public final synchronized btb ab(int i) {
        return (btb) this.u.get(Integer.valueOf(i));
    }

    public final synchronized boolean ac(long j) {
        if (this.z) {
            return false;
        }
        if (this.v < this.y) {
            if (j >= this.h) {
                return false;
            }
        }
        return true;
    }

    public final synchronized btb ad(int i) {
        btb btbVar;
        btbVar = (btb) this.u.remove(Integer.valueOf(i));
        notifyAll();
        return btbVar;
    }

    public final void ae(int i, long j) {
        this.f20089b.l(new bcg(this.j + '[' + i + "] windowUpdate", this, i, j), 0L);
    }

    public final void af(amc amcVar, amc amcVar2, IOException iOException) {
        int i;
        Object[] objArr;
        bff.p(amcVar, "connectionCode");
        bff.p(amcVar2, "streamCode");
        byte[] bArr = erq.f16043c;
        try {
            aj(amcVar);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (this.u.isEmpty()) {
                objArr = null;
            } else {
                objArr = this.u.values().toArray(new btb[0]);
                this.u.clear();
            }
        }
        btb[] btbVarArr = (btb[]) objArr;
        if (btbVarArr != null) {
            for (btb btbVar : btbVarArr) {
                try {
                    btbVar.x(amcVar2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.w.close();
        } catch (IOException unused3) {
        }
        try {
            this.f20094g.close();
        } catch (IOException unused4) {
        }
        this.f20089b.j();
        this.t.j();
        this.i.j();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0035, code lost:
    
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r5 - r3), r8.w.f14267b);
        r6 = r3;
        r8.f20091d += r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ag(int i, boolean z, clq clqVar, long j) {
        int min;
        long j2;
        if (j == 0) {
            this.w.m(z, i, clqVar, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            long j3 = this.f20091d;
                            long j4 = this.m;
                            if (j3 < j4) {
                                break;
                            } else {
                                if (!this.u.containsKey(Integer.valueOf(i))) {
                                    throw new IOException("stream closed");
                                }
                                wait();
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            j -= j2;
            this.w.m(z && j == 0, i, clqVar, min);
        }
    }

    public final void ah(IOException iOException) {
        amc amcVar = amc.PROTOCOL_ERROR;
        af(amcVar, amcVar, iOException);
    }

    public final void ai(int i, amc amcVar) {
        bff.p(amcVar, MediationConstant.KEY_ERROR_CODE);
        this.f20089b.l(new bge(this.j + '[' + i + "] writeSynReset", this, i, amcVar, 2), 0L);
    }

    public final void aj(amc amcVar) {
        bff.p(amcVar, "statusCode");
        synchronized (this.w) {
            synchronized (this) {
                if (this.z) {
                    return;
                }
                this.z = true;
                this.w.i(this.o, amcVar, erq.f16043c);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        af(amc.NO_ERROR, amc.CANCEL, null);
    }

    public final void flush() {
        this.w.flush();
    }
}
