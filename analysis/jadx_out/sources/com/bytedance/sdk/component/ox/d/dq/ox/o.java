package com.bytedance.sdk.component.ox.d.dq.ox;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.f;
import com.bytedance.sdk.component.ox.d.gh;
import com.bytedance.sdk.component.ox.d.h;
import com.bytedance.sdk.component.ox.d.k;
import com.bytedance.sdk.component.ox.d.kx;
import com.bytedance.sdk.component.ox.d.n;
import com.bytedance.sdk.component.ox.d.op;
import com.bytedance.sdk.component.ox.d.r;
import com.bytedance.sdk.component.ox.d.wp;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public final class o implements r {

    /* renamed from: d, reason: collision with root package name */
    private final boolean f2078d;
    private final k dq;
    private com.bytedance.sdk.component.ox.d.dq.d.mn ox;
    private Object p;
    private volatile boolean s;

    public o(k kVar, boolean z) {
        this.dq = kVar;
        this.f2078d = z;
    }

    private com.bytedance.sdk.component.ox.d.dq dq(gh ghVar) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        com.bytedance.sdk.component.ox.d.mn mnVar;
        if (ghVar.p()) {
            sSLSocketFactory = this.dq.o();
            hostnameVerifier = this.dq.no();
            mnVar = this.dq.ig();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            mnVar = null;
        }
        return new com.bytedance.sdk.component.ox.d.dq(ghVar.mn(), ghVar.ia(), this.dq.ia(), this.dq.kk(), sSLSocketFactory, hostnameVerifier, mnVar, this.dq.q(), this.dq.p(), this.dq.r(), this.dq.i(), this.dq.s());
    }

    private kx dq(bl blVar) throws IOException {
        String dq;
        gh ox;
        if (blVar == null) {
            throw new IllegalStateException();
        }
        com.bytedance.sdk.component.ox.d.dq.d.ox d2 = this.ox.d();
        op dq2 = d2 != null ? d2.dq() : null;
        int ox2 = blVar.ox();
        String d3 = blVar.dq().d();
        if (ox2 == 307 || ox2 == 308) {
            if (!d3.equals("GET") && !d3.equals("HEAD")) {
                return null;
            }
        } else {
            if (ox2 == 401) {
                return this.dq.mp().dq(dq2, blVar);
            }
            if (ox2 == 407) {
                if ((dq2 != null ? dq2.d() : this.dq.p()).type() == Proxy.Type.HTTP) {
                    return this.dq.q().dq(dq2, blVar);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            if (ox2 == 408) {
                if (!this.dq.cd() || (blVar.dq().p() instanceof ig)) {
                    return null;
                }
                if (blVar.no() == null || blVar.no().ox() != 408) {
                    return blVar.dq();
                }
                return null;
            }
            switch (ox2) {
                case TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX /* 300 */:
                case MediaPlayer.MEDIA_PLAYER_OPTION_NOTIFY_DEAD_LOCK /* 301 */:
                case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_AUDIO_EFFECT /* 302 */:
                case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_PREGAIN /* 303 */:
                    break;
                default:
                    return null;
            }
        }
        if (!this.dq.fw() || (dq = blVar.dq("Location")) == null || (ox = blVar.dq().dq().ox(dq)) == null) {
            return null;
        }
        if (!ox.ox().equals(blVar.dq().dq().ox()) && !this.dq.f()) {
            return null;
        }
        kx.dq iw = blVar.dq().iw();
        if (iw.ox(d3)) {
            boolean p = iw.p(d3);
            if (iw.s(d3)) {
                iw.dq("GET", (h) null);
            } else {
                iw.dq(d3, p ? blVar.dq().p() : null);
            }
            if (!p) {
                iw.d("Transfer-Encoding");
                iw.d("Content-Length");
                iw.d("Content-Type");
            }
        }
        if (!dq(blVar, ox)) {
            iw.d("Authorization");
        }
        return iw.dq(ox).dq();
    }

    private boolean dq(bl blVar, gh ghVar) {
        gh dq = blVar.dq().dq();
        return dq.mn().equals(ghVar.mn()) && dq.ia() == ghVar.ia() && dq.ox().equals(ghVar.ox());
    }

    private boolean dq(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private boolean dq(IOException iOException, boolean z, kx kxVar) {
        this.ox.dq(iOException);
        if (this.dq.cd()) {
            return !(z && (kxVar.p() instanceof ig)) && dq(iOException, z) && this.ox.iw();
        }
        return false;
    }

    public boolean d() {
        return this.s;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x006b  */
    @Override // com.bytedance.sdk.component.ox.d.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public bl dq(r.dq dqVar) throws IOException {
        String str;
        int i;
        bl dq;
        int i2;
        kx dq2 = dqVar.dq();
        mn mnVar = (mn) dqVar;
        com.bytedance.sdk.component.ox.d.s call = mnVar.call();
        f ia = mnVar.ia();
        this.ox = new com.bytedance.sdk.component.ox.d.dq.d.mn(this.dq.jy(), dq(dq2.dq()), call, ia, this.p);
        try {
            int parseInt = Integer.parseInt(dq2.ox().dq("csj_client_source_from"));
            str = dq2.ox().dq("csj_extra_info");
            try {
                dq2 = dq2.iw().d("csj_client_source_from").d("csj_extra_info").dq();
                i = parseInt;
            } catch (Exception unused) {
                i = 0;
                String str2 = str;
                String ghVar = dq2.dq().toString();
                ArrayList arrayList = new ArrayList();
                bl blVar = null;
                int i3 = 0;
                while (!this.s) {
                }
                this.ox.ox();
                throw new IOException("Canceled");
            }
        } catch (Exception unused2) {
            str = "";
        }
        String str22 = str;
        String ghVar2 = dq2.dq().toString();
        ArrayList arrayList2 = new ArrayList();
        bl blVar2 = null;
        int i32 = 0;
        while (!this.s) {
            if (this.dq.n != null && dq2.dq() != null) {
                Iterator<String> it = this.dq.n.iterator();
                while (it.hasNext()) {
                    Iterator<String> it2 = it;
                    String[] split = it.next().split("@");
                    if (split.length >= 2) {
                        String str3 = split[0];
                        try {
                            i2 = Integer.parseInt(split[1]);
                        } catch (Exception unused3) {
                            i2 = 0;
                        }
                        if ((i2 & i) != 0 && Pattern.compile(str3).matcher(dq2.dq().toString()).find()) {
                            bl.dq dqVar2 = new bl.dq();
                            dqVar2.dq(8848);
                            dqVar2.dq(dq2.dq().toString());
                            dqVar2.dq(dq2);
                            dqVar2.dq(wp.HTTP_1_1);
                            dqVar2.dq(com.bytedance.sdk.component.ox.d.dq.ox.ox);
                            if (arrayList2.size() <= 0) {
                                return dqVar2.dq();
                            }
                            arrayList2.add(0, ghVar2);
                            return dqVar2.dq("csj-location-record", arrayList2.toString()).dq("csj-source-from", String.valueOf(i)).dq("csj-extra-info", String.valueOf(str22)).dq();
                        }
                    }
                    it = it2;
                }
            }
            try {
                try {
                    dq = mnVar.dq(dq2, this.ox, null, null);
                    if (blVar2 != null) {
                        dq = dq.kk().ox(blVar2.kk().dq((n) null).dq()).dq();
                    }
                    dq2 = dq(dq);
                } catch (Throwable th) {
                    this.ox.dq((IOException) null);
                    this.ox.ox();
                    throw th;
                }
            } catch (com.bytedance.sdk.component.ox.d.dq.d.s e2) {
                if (!dq(e2.dq(), false, dq2)) {
                    throw e2.dq();
                }
            } catch (IOException e3) {
                if (!dq(e3, !(e3 instanceof com.bytedance.sdk.component.ox.d.dq.s.dq), dq2)) {
                    throw e3;
                }
            }
            if (dq2 == null) {
                if (!this.f2078d) {
                    this.ox.ox();
                }
                if (arrayList2.size() <= 0) {
                    return dq;
                }
                arrayList2.add(0, ghVar2);
                return dq.kk().dq("csj-location-record", arrayList2.toString()).dq("csj-source-from", String.valueOf(i)).dq("csj-extra-info", String.valueOf(str22)).dq();
            }
            arrayList2.add(dq2.dq().toString());
            com.bytedance.sdk.component.ox.d.dq.ox.dq(dq.ia());
            int i4 = i32 + 1;
            if (i4 > 20) {
                this.ox.ox();
                throw new ProtocolException("Too many follow-up requests: ".concat(String.valueOf(i4)));
            }
            if (dq2.p() instanceof ig) {
                this.ox.ox();
                throw new HttpRetryException("Cannot retry streamed HTTP body", dq.ox());
            }
            if (!dq(dq, dq2.dq())) {
                this.ox.ox();
                this.ox = new com.bytedance.sdk.component.ox.d.dq.d.mn(this.dq.jy(), dq(dq2.dq()), call, ia, this.p);
            } else if (this.ox.dq() != null) {
                throw new IllegalStateException("Closing the body of " + dq + " didn't close its backing stream. Bad interceptor?");
            }
            blVar2 = dq;
            i32 = i4;
        }
        this.ox.ox();
        throw new IOException("Canceled");
    }

    public void dq() {
        this.s = true;
        com.bytedance.sdk.component.ox.d.dq.d.mn mnVar = this.ox;
        if (mnVar != null) {
            mnVar.s();
        }
    }

    public void dq(Object obj) {
        this.p = obj;
    }
}
