package com.bytedance.sdk.component.ox.d.dq.d;

import com.bytedance.sdk.component.ox.d.f;
import com.bytedance.sdk.component.ox.d.gh;
import com.bytedance.sdk.component.ox.d.op;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class iw {

    /* renamed from: d, reason: collision with root package name */
    private final p f2047d;
    private final com.bytedance.sdk.component.ox.d.dq dq;
    private final List<op> ia;
    private int iw;
    private List<InetSocketAddress> mn;
    private final com.bytedance.sdk.component.ox.d.s ox;
    private final f p;
    private List<Proxy> s;

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        private int f2048d = 0;
        private final List<op> dq;

        public dq(List<op> list) {
            this.dq = list;
        }

        public op d() {
            if (!dq()) {
                throw new NoSuchElementException();
            }
            List<op> list = this.dq;
            int i = this.f2048d;
            this.f2048d = i + 1;
            return list.get(i);
        }

        public boolean dq() {
            return this.f2048d < this.dq.size();
        }

        public List<op> ox() {
            return new ArrayList(this.dq);
        }
    }

    public iw(com.bytedance.sdk.component.ox.d.dq dqVar, p pVar, com.bytedance.sdk.component.ox.d.s sVar, f fVar) throws IOException {
        List list = Collections.EMPTY_LIST;
        this.s = list;
        this.mn = list;
        this.ia = new ArrayList();
        this.dq = dqVar;
        this.f2047d = pVar;
        this.ox = sVar;
        this.p = fVar;
        dq(dqVar.dq(), dqVar.ia());
    }

    public static String dq(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    private void dq(gh ghVar, Proxy proxy) throws IOException {
        if (proxy != null) {
            this.s = Collections.singletonList(proxy);
        } else {
            try {
                List<Proxy> select = this.dq.mn().select(ghVar.d());
                this.s = (select == null || select.isEmpty()) ? com.bytedance.sdk.component.ox.d.dq.ox.dq(Proxy.NO_PROXY) : com.bytedance.sdk.component.ox.d.dq.ox.dq(select);
            } catch (IllegalArgumentException unused) {
                throw new IOException();
            }
        }
        this.iw = 0;
    }

    private void dq(Proxy proxy) throws IOException {
        String mn;
        int ia;
        this.mn = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            mn = this.dq.dq().mn();
            ia = this.dq.dq().ia();
        } else {
            SocketAddress address = proxy.address();
            if (!(address instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
            mn = dq(inetSocketAddress);
            ia = inetSocketAddress.getPort();
        }
        if (ia <= 0 || ia > 65535) {
            throw new SocketException("No route to " + mn + ":" + ia + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.mn.add(InetSocketAddress.createUnresolved(mn, ia));
            return;
        }
        List<InetAddress> dq2 = this.dq.d().dq(mn);
        if (dq2.isEmpty()) {
            return;
        }
        int size = dq2.size();
        for (int i = 0; i < size; i++) {
            this.mn.add(new InetSocketAddress(dq2.get(i), ia));
        }
    }

    private boolean ox() {
        return this.iw < this.s.size();
    }

    private Proxy p() throws IOException {
        if (!ox()) {
            throw new SocketException("No route to " + this.dq.dq().mn() + "; exhausted proxy configurations: " + this.s);
        }
        List<Proxy> list = this.s;
        int i = this.iw;
        this.iw = i + 1;
        Proxy proxy = list.get(i);
        dq(proxy);
        return proxy;
    }

    public dq d() throws IOException {
        if (!dq()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (ox()) {
            Proxy p = p();
            int size = this.mn.size();
            for (int i = 0; i < size; i++) {
                op opVar = new op(this.dq, p, this.mn.get(i));
                if (this.f2047d.ox(opVar)) {
                    this.ia.add(opVar);
                } else {
                    arrayList.add(opVar);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.ia);
            this.ia.clear();
        }
        return new dq(arrayList);
    }

    public void dq(op opVar, IOException iOException) {
        if (opVar.d().type() != Proxy.Type.DIRECT && this.dq.mn() != null) {
            this.dq.mn().connectFailed(this.dq.dq().d(), opVar.d().address(), iOException);
        }
        this.f2047d.dq(opVar);
    }

    public boolean dq() {
        return ox() || !this.ia.isEmpty();
    }
}
