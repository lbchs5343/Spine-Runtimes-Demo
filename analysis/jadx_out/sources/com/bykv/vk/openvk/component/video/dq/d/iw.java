package com.bykv.vk.openvk.component.video.dq.d;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.bykv.vk.openvk.component.video.dq.d.mn;
import com.bytedance.pangle.ZeusPluginEventCallback;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class iw {
    private static volatile iw p;

    /* renamed from: d, reason: collision with root package name */
    private volatile int f534d;
    private volatile ServerSocket dq;
    private final SparseArray<Set<mn>> ia;
    private final Runnable ig;
    private volatile com.bykv.vk.openvk.component.video.dq.d.dq.ox iw;
    private final mn.ox kk;
    private volatile com.bykv.vk.openvk.component.video.dq.d.dq.d mn;
    private final AtomicBoolean mp;
    private volatile ox no;
    private volatile ox o;
    private final AtomicInteger ox = new AtomicInteger(0);
    private volatile com.bykv.vk.openvk.component.video.dq.d.d.ox s;

    public static final class dq implements Callable<Boolean> {

        /* renamed from: d, reason: collision with root package name */
        private final int f536d;
        private final String dq;

        public dq(String str, int i) {
            this.dq = str;
            this.f536d = i;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() {
            Socket socket;
            Throwable th;
            try {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("ProxyServer", "call: ");
                socket = new Socket(this.dq, this.f536d);
                try {
                    socket.setSoTimeout(ZeusPluginEventCallback.EVENT_START_LOAD);
                    OutputStream outputStream = socket.getOutputStream();
                    outputStream.write("Ping\n".getBytes(com.bykv.vk.openvk.component.video.dq.ox.dq.dq));
                    outputStream.flush();
                    if ("OK".equals(new BufferedReader(new InputStreamReader(socket.getInputStream())).readLine())) {
                        return Boolean.TRUE;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        th.printStackTrace();
                        com.bykv.vk.openvk.component.video.api.iw.ox.dq("ProxyServer", "call: " + th.getMessage());
                        iw.dq("ping error", Log.getStackTraceString(th));
                        return Boolean.FALSE;
                    } finally {
                        com.bykv.vk.openvk.component.video.dq.ox.dq.dq(socket);
                    }
                }
            } catch (Throwable th3) {
                socket = null;
                th = th3;
            }
            return Boolean.FALSE;
        }
    }

    private iw() {
        SparseArray<Set<mn>> sparseArray = new SparseArray<>(2);
        this.ia = sparseArray;
        this.kk = new mn.ox() { // from class: com.bykv.vk.openvk.component.video.dq.d.iw.1
            @Override // com.bykv.vk.openvk.component.video.dq.d.mn.ox
            public void d(mn mnVar) {
                boolean z = s.ox;
                int iw = mnVar.iw();
                synchronized (iw.this.ia) {
                    try {
                        Set set = (Set) iw.this.ia.get(iw);
                        if (set != null) {
                            set.remove(mnVar);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // com.bykv.vk.openvk.component.video.dq.d.mn.ox
            public void dq(mn mnVar) {
                synchronized (iw.this.ia) {
                    try {
                        Set set = (Set) iw.this.ia.get(mnVar.iw());
                        if (set != null) {
                            set.add(mnVar);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.ig = new Runnable() { // from class: com.bykv.vk.openvk.component.video.dq.d.iw.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    int i = 0;
                    iw.this.dq = new ServerSocket(0, 50, InetAddress.getByName(iw.this.kk()));
                    iw iwVar = iw.this;
                    iwVar.f534d = iwVar.dq.getLocalPort();
                    if (iw.this.f534d == -1) {
                        iw.dq("socket not bound", "");
                        iw.this.s();
                        return;
                    }
                    o.dq(iw.this.kk(), iw.this.f534d);
                    if (iw.this.mn()) {
                        com.bykv.vk.openvk.component.video.api.iw.ox.dq("ProxyServer", "run:  state = ", iw.this.ox);
                        if (iw.this.ox.compareAndSet(0, 1)) {
                            com.bykv.vk.openvk.component.video.api.iw.ox.dq("ProxyServer", "run:  state = ", iw.this.ox);
                            if (s.ox) {
                                com.bykv.vk.openvk.component.video.api.iw.ox.dq("ProxyServer", "proxy server start!");
                            }
                            while (iw.this.ox.get() == 1) {
                                try {
                                    try {
                                        Socket accept = iw.this.dq.accept();
                                        com.bykv.vk.openvk.component.video.dq.d.d.ox oxVar = iw.this.s;
                                        if (oxVar != null) {
                                            final mn dq2 = new mn.dq().dq(oxVar).dq(accept).dq(iw.this.kk).dq();
                                            com.bytedance.sdk.component.o.mn.dq().execute(new com.bytedance.sdk.component.o.kk("ProxyTask", 10) { // from class: com.bykv.vk.openvk.component.video.dq.d.iw.2.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    dq2.run();
                                                }
                                            });
                                        } else {
                                            com.bykv.vk.openvk.component.video.dq.ox.dq.dq(accept);
                                        }
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                        iw.dq("accept error", Log.getStackTraceString(e2));
                                        i++;
                                        if (i > 3) {
                                            break;
                                        }
                                    }
                                } catch (Throwable th) {
                                    String stackTraceString = Log.getStackTraceString(th);
                                    Log.e("ProxyServer", "proxy server crashed!  ".concat(String.valueOf(stackTraceString)));
                                    iw.dq(AVErrorInfo.ERROR, stackTraceString);
                                }
                            }
                            if (s.ox) {
                                com.bykv.vk.openvk.component.video.api.iw.ox.dq("ProxyServer", "proxy server closed!");
                            }
                            iw.this.s();
                        }
                    }
                } catch (IOException e3) {
                    if (s.ox) {
                        Log.e("ProxyServer", "create ServerSocket error!  " + Log.getStackTraceString(e3));
                    }
                    iw.dq("create ServerSocket error", Log.getStackTraceString(e3));
                    iw.this.s();
                }
            }
        };
        this.mp = new AtomicBoolean();
        sparseArray.put(0, new HashSet());
        sparseArray.put(1, new HashSet());
    }

    public static iw dq() {
        if (p == null) {
            synchronized (iw.class) {
                try {
                    if (p == null) {
                        p = new iw();
                    }
                } finally {
                }
            }
        }
        return p;
    }

    public static /* synthetic */ void dq(String str, String str2) {
    }

    private void ia() {
        Socket socket = null;
        try {
            try {
                socket = this.dq.accept();
                socket.setSoTimeout(ZeusPluginEventCallback.EVENT_START_LOAD);
                if ("Ping".equals(new BufferedReader(new InputStreamReader(socket.getInputStream())).readLine())) {
                    OutputStream outputStream = socket.getOutputStream();
                    outputStream.write("OK\n".getBytes(com.bykv.vk.openvk.component.video.dq.ox.dq.dq));
                    outputStream.flush();
                }
            } catch (IOException e2) {
                e2.printStackTrace();
                Log.getStackTraceString(e2);
            }
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("ProxyServer", "answerPing: ");
        } finally {
            com.bykv.vk.openvk.component.video.dq.ox.dq.dq(socket);
        }
    }

    private void iw() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.ia) {
            try {
                int size = this.ia.size();
                for (int i = 0; i < size; i++) {
                    SparseArray<Set<mn>> sparseArray = this.ia;
                    Set<mn> set = sparseArray.get(sparseArray.keyAt(i));
                    if (set != null) {
                        arrayList.addAll(set);
                        set.clear();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((mn) it.next()).dq();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String kk() {
        return new String(Base64.decode("MTI3LjAuMC4x".getBytes(), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean mn() {
        com.bytedance.sdk.component.o.ia iaVar = new com.bytedance.sdk.component.o.ia(new dq(kk(), this.f534d), 5, 1);
        com.bytedance.sdk.component.o.mn.dq().submit(iaVar);
        ia();
        try {
            if (!((Boolean) iaVar.get()).booleanValue()) {
                Log.e("ProxyServer", "Ping error");
                s();
                return false;
            }
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("ProxyServer", "pingTest: ");
            if (s.ox) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("ProxyServer", "Ping OK!");
            }
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            Log.getStackTraceString(th);
            s();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        if (this.ox.compareAndSet(1, 2) || this.ox.compareAndSet(0, 2)) {
            com.bykv.vk.openvk.component.video.dq.ox.dq.dq(this.dq);
            iw();
        }
    }

    public ox d() {
        return this.o;
    }

    public String dq(boolean z, boolean z2, String str, String... strArr) {
        List<String> dq2;
        String str2;
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        if (!TextUtils.isEmpty(str) && this.s != null) {
            if ((z ? this.mn : this.iw) != null && this.ox.get() == 1 && (dq2 = com.bykv.vk.openvk.component.video.dq.ox.dq.dq(strArr)) != null) {
                String dq3 = kk.dq(str, z2 ? str : com.bykv.vk.openvk.component.video.api.iw.d.dq(str), dq2);
                if (dq3 == null) {
                    return strArr[0];
                }
                if (z) {
                    str2 = "https://" + kk() + ":" + this.f534d + "?f=1&" + dq3;
                } else {
                    str2 = "https://" + kk() + ":" + this.f534d + "?" + dq3;
                }
                return str2.replaceFirst("s", "");
            }
            return strArr[0];
        }
        return strArr[0];
    }

    public void dq(com.bykv.vk.openvk.component.video.dq.d.d.ox oxVar) {
        this.s = oxVar;
    }

    public void dq(com.bykv.vk.openvk.component.video.dq.d.dq.ox oxVar) {
        this.iw = oxVar;
    }

    public boolean dq(int i, String str) {
        if (str == null) {
            return false;
        }
        synchronized (this.ia) {
            try {
                Set<mn> set = this.ia.get(i);
                if (set != null) {
                    for (mn mnVar : set) {
                        if (mnVar != null && str.equals(mnVar.ia)) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ox ox() {
        return this.no;
    }

    public void p() {
        if (this.mp.compareAndSet(false, true)) {
            com.bytedance.sdk.component.o.p.ox oxVar = new com.bytedance.sdk.component.o.p.ox(this.ig, "r/ProxyServer");
            oxVar.setName("csj_proxy_server");
            oxVar.start();
        }
    }
}
