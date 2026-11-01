package g;

import java.io.EOFException;
import java.io.IOException;
import java.net.Proxy;
import java.net.Socket;

/* loaded from: classes3.dex */
public final class gnb implements axn {
    public Object i;
    public Object j;
    public int k;
    public Object l;
    public Object m;
    public Object n;
    public Object o;

    public gnb(fys fysVar, gba gbaVar, deb debVar, ago agoVar) {
        bff.p(debVar, abn.EXTRA_SOURCE);
        bff.p(agoVar, "sink");
        this.m = fysVar;
        this.n = gbaVar;
        this.i = debVar;
        this.j = agoVar;
        this.l = new fmk(debVar);
    }

    @Override // g.axn
    public cpv a(enb enbVar) {
        if (!fyd.a(enbVar)) {
            return p(0L);
        }
        if ("chunked".equalsIgnoreCase(enb.o("Transfer-Encoding", enbVar))) {
            eyn eynVar = (eyn) enbVar.i.f13886e;
            if (this.k == 4) {
                this.k = 5;
                return new cii(this, eynVar);
            }
            throw new IllegalStateException(("state: " + this.k).toString());
        }
        long z = erq.z(enbVar);
        if (z != -1) {
            return p(z);
        }
        if (this.k == 4) {
            this.k = 5;
            ((gba) this.n).w();
            return new gjh(this);
        }
        throw new IllegalStateException(("state: " + this.k).toString());
    }

    @Override // g.axn
    public gba b() {
        return (gba) this.n;
    }

    @Override // g.axn
    public void c() {
        ((cbs) this.j).flush();
    }

    @Override // g.axn
    public void cancel() {
        Socket socket = ((gba) this.n).r;
        if (socket != null) {
            erq.o(socket);
        }
    }

    @Override // g.axn
    public void d() {
        ((cbs) this.j).flush();
    }

    @Override // g.axn
    public void e(daw dawVar) {
        Proxy.Type type = ((gba) this.n).o.f15501b.type();
        bff.e(type, "connection.route().proxy.type()");
        StringBuilder sb = new StringBuilder();
        sb.append((String) dawVar.f13887f);
        sb.append(' ');
        eyn eynVar = (eyn) dawVar.f13886e;
        if (eynVar.i || type != Proxy.Type.HTTP) {
            String q = eynVar.q();
            String m = eynVar.m();
            if (m != null) {
                q = q + '?' + m;
            }
            sb.append(q);
        } else {
            sb.append(eynVar);
        }
        sb.append(" HTTP/1.1");
        String sb2 = sb.toString();
        bff.e(sb2, "StringBuilder().apply(builderAction).toString()");
        q((dvq) dawVar.f13882a, sb2);
    }

    @Override // g.axn
    public long f(enb enbVar) {
        if (!fyd.a(enbVar)) {
            return 0L;
        }
        if ("chunked".equalsIgnoreCase(enb.o("Transfer-Encoding", enbVar))) {
            return -1L;
        }
        return erq.z(enbVar);
    }

    @Override // g.axn
    public hdt g(boolean z) {
        fmk fmkVar = (fmk) this.l;
        int i = this.k;
        if (i != 1 && i != 2 && i != 3) {
            throw new IllegalStateException(("state: " + this.k).toString());
        }
        try {
            String s = ((dsy) fmkVar.f17035c).s(fmkVar.f17034b);
            fmkVar.f17034b -= s.length();
            dsg x = awt.x(s);
            int i2 = x.f14707d;
            hdt hdtVar = new hdt();
            aqt aqtVar = (aqt) x.f14704a;
            bff.p(aqtVar, "protocol");
            hdtVar.j = aqtVar;
            hdtVar.l = i2;
            hdtVar.f19295c = (String) x.f14705b;
            ais aisVar = new ais(0);
            while (true) {
                String s2 = ((dsy) fmkVar.f17035c).s(fmkVar.f17034b);
                fmkVar.f17034b -= s2.length();
                if (s2.length() == 0) {
                    break;
                }
                aisVar.g(s2);
            }
            hdtVar.p(aisVar.d());
            if (z && i2 == 100) {
                return null;
            }
            if (i2 == 100) {
                this.k = 3;
                return hdtVar;
            }
            if (102 > i2 || i2 >= 200) {
                this.k = 4;
                return hdtVar;
            }
            this.k = 3;
            return hdtVar;
        } catch (EOFException e2) {
            throw new IOException("unexpected end of stream on ".concat(((gba) this.n).o.f15500a.f12590a.s()), e2);
        }
    }

    @Override // g.axn
    public evq h(daw dawVar, long j) {
        if ("chunked".equalsIgnoreCase(((dvq) dawVar.f13882a).c("Transfer-Encoding"))) {
            if (this.k == 1) {
                this.k = 2;
                return new fax(this);
            }
            throw new IllegalStateException(("state: " + this.k).toString());
        }
        if (j == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        if (this.k == 1) {
            this.k = 2;
            return new bfs(this);
        }
        throw new IllegalStateException(("state: " + this.k).toString());
    }

    public qk p(long j) {
        if (this.k == 4) {
            this.k = 5;
            return new qk(this, j);
        }
        throw new IllegalStateException(("state: " + this.k).toString());
    }

    public void q(dvq dvqVar, String str) {
        cbs cbsVar = (cbs) this.j;
        bff.p(str, "requestLine");
        if (this.k != 0) {
            throw new IllegalStateException(("state: " + this.k).toString());
        }
        cbsVar.j(str).j("\r\n");
        int size = dvqVar.size();
        for (int i = 0; i < size; i++) {
            cbsVar.j(dvqVar.e(i)).j(": ").j(dvqVar.b(i)).j("\r\n");
        }
        cbsVar.j("\r\n");
        this.k = 1;
    }
}
