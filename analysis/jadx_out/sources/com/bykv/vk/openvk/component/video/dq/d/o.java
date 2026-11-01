package com.bykv.vk.openvk.component.video.dq.d;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
class o extends ProxySelector {
    private static final List<Proxy> dq = Collections.singletonList(Proxy.NO_PROXY);

    /* renamed from: d, reason: collision with root package name */
    private final ProxySelector f548d = ProxySelector.getDefault();
    private final String ox;
    private final int p;

    private o(String str, int i) {
        this.ox = str;
        this.p = i;
    }

    public static void dq(String str, int i) {
        ProxySelector.setDefault(new o(str, i));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f548d.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        if (uri != null) {
            return (this.ox.equalsIgnoreCase(uri.getHost()) && this.p == uri.getPort()) ? dq : this.f548d.select(uri);
        }
        throw new IllegalArgumentException("URI can't be null");
    }
}
