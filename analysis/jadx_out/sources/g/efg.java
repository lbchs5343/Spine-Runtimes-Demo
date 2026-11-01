package g;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class efg {

    /* renamed from: a, reason: collision with root package name */
    public int f15431a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15432b;

    /* renamed from: c, reason: collision with root package name */
    public final cbm f15433c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f15434d;

    /* renamed from: e, reason: collision with root package name */
    public final aoy f15435e;

    /* renamed from: f, reason: collision with root package name */
    public final List f15436f;

    public efg(cbm cbmVar, aoy aoyVar, dnw dnwVar) {
        List i;
        bff.p(aoyVar, "routeDatabase");
        this.f15433c = cbmVar;
        this.f15435e = aoyVar;
        fai faiVar = fai.f16469a;
        this.f15436f = faiVar;
        this.f15432b = faiVar;
        this.f15434d = new ArrayList();
        eyn eynVar = cbmVar.f12590a;
        bff.p(eynVar, abn.EXTRA_URL);
        URI l = eynVar.l();
        if (l.getHost() == null) {
            i = erq.i(Proxy.NO_PROXY);
        } else {
            List<Proxy> select = cbmVar.j.select(l);
            i = (select == null || select.isEmpty()) ? erq.i(Proxy.NO_PROXY) : erq.s(select);
        }
        this.f15436f = i;
        this.f15431a = 0;
    }

    public final boolean g() {
        return this.f15431a < this.f15436f.size() || !this.f15434d.isEmpty();
    }

    /* JADX WARN: Type inference failed for: r1v21, types: [java.lang.Object, java.util.List] */
    public final gqc h() {
        String str;
        int i;
        List list;
        boolean contains;
        if (!g()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (this.f15431a < this.f15436f.size()) {
            cbm cbmVar = this.f15433c;
            if (this.f15431a >= this.f15436f.size()) {
                throw new SocketException("No route to " + cbmVar.f12590a.f16373c + "; exhausted proxy configurations: " + this.f15436f);
            }
            List list2 = this.f15436f;
            int i2 = this.f15431a;
            this.f15431a = i2 + 1;
            Proxy proxy = (Proxy) list2.get(i2);
            ArrayList arrayList2 = new ArrayList();
            this.f15432b = arrayList2;
            if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
                eyn eynVar = cbmVar.f12590a;
                str = eynVar.f16373c;
                i = eynVar.f16374d;
            } else {
                SocketAddress address = proxy.address();
                if (!(address instanceof InetSocketAddress)) {
                    throw new IllegalArgumentException(("Proxy.address() is not an InetSocketAddress: " + address.getClass()).toString());
                }
                bff.e(address, "proxyAddress");
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                bff.p(inetSocketAddress, "<this>");
                InetAddress address2 = inetSocketAddress.getAddress();
                if (address2 == null) {
                    str = inetSocketAddress.getHostName();
                    bff.e(str, "hostName");
                } else {
                    str = address2.getHostAddress();
                    bff.e(str, "address.hostAddress");
                }
                i = inetSocketAddress.getPort();
            }
            if (1 > i || i >= 65536) {
                throw new SocketException("No route to " + str + ':' + i + "; port is out of range");
            }
            if (proxy.type() == Proxy.Type.SOCKS) {
                arrayList2.add(InetSocketAddress.createUnresolved(str, i));
            } else {
                byte[] bArr = erq.f16043c;
                bff.p(str, "<this>");
                if (erq.f16044d.a(str)) {
                    list = cro.r(InetAddress.getByName(str));
                } else {
                    List lookup = cbmVar.f12593d.lookup(str);
                    if (lookup.isEmpty()) {
                        throw new UnknownHostException(cbmVar.f12593d + " returned no addresses for " + str);
                    }
                    list = lookup;
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new InetSocketAddress((InetAddress) it.next(), i));
                }
            }
            Iterator it2 = this.f15432b.iterator();
            while (it2.hasNext()) {
                ego egoVar = new ego(this.f15433c, proxy, (InetSocketAddress) it2.next());
                aoy aoyVar = this.f15435e;
                synchronized (aoyVar) {
                    contains = ((LinkedHashSet) aoyVar.h).contains(egoVar);
                }
                if (contains) {
                    this.f15434d.add(egoVar);
                } else {
                    arrayList.add(egoVar);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            eko.c(arrayList, this.f15434d);
            this.f15434d.clear();
        }
        return new gqc(11, arrayList);
    }
}
