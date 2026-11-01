package g;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class cii extends bfk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gnb f12930a;

    /* renamed from: b, reason: collision with root package name */
    public final eyn f12931b;
    public long i;
    public boolean j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cii(gnb gnbVar, eyn eynVar) {
        super(gnbVar);
        bff.p(eynVar, abn.EXTRA_URL);
        this.f12930a = gnbVar;
        this.f12931b = eynVar;
        this.i = -1L;
        this.j = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ab, code lost:
    
        if (r9.j == false) goto L32;
     */
    @Override // g.bfk, g.cpv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long c(clq clqVar, long j) {
        gnb gnbVar = this.f12930a;
        dsy dsyVar = (dsy) gnbVar.i;
        bff.p(clqVar, "sink");
        if (this.f11450g) {
            throw new IllegalStateException("closed");
        }
        if (this.j) {
            long j2 = this.i;
            if (j2 == 0 || j2 == -1) {
                if (j2 != -1) {
                    dsyVar.ai();
                }
                try {
                    this.i = dsyVar.q();
                    String obj = dcv.bk(dsyVar.ai()).toString();
                    if (this.i < 0 || (obj.length() > 0 && !dmc.bw(obj, ";", false))) {
                        throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.i + obj + '\"');
                    }
                    if (this.i == 0) {
                        this.j = false;
                        fmk fmkVar = (fmk) gnbVar.l;
                        fmkVar.getClass();
                        ais aisVar = new ais(0);
                        while (true) {
                            String s = ((dsy) fmkVar.f17035c).s(fmkVar.f17034b);
                            fmkVar.f17034b -= s.length();
                            if (s.length() == 0) {
                                break;
                            }
                            aisVar.g(s);
                        }
                        gnbVar.o = aisVar.d();
                        fys fysVar = (fys) gnbVar.m;
                        bff.d(fysVar);
                        ao aoVar = fysVar.j;
                        dvq dvqVar = (dvq) gnbVar.o;
                        bff.d(dvqVar);
                        fyd.b(aoVar, this.f12931b, dvqVar);
                        h();
                    }
                } catch (NumberFormatException e2) {
                    throw new ProtocolException(e2.getMessage());
                }
            }
            long c2 = super.c(clqVar, Math.min(8192L, this.i));
            if (c2 != -1) {
                this.i -= c2;
                return c2;
            }
            ((gba) gnbVar.n).w();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            h();
            throw protocolException;
        }
        return -1L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        boolean z;
        if (this.f11450g) {
            return;
        }
        if (this.j) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            byte[] bArr = erq.f16043c;
            bff.p(timeUnit, "timeUnit");
            try {
                z = erq.ab(this, 100);
            } catch (IOException unused) {
                z = false;
            }
            if (!z) {
                ((gba) this.f12930a.n).w();
                h();
            }
        }
        this.f11450g = true;
    }
}
