package com.ss.android.socialbase.downloader.network;

import android.net.Uri;
import android.os.Handler;
import java.net.InetAddress;
import java.util.List;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private final Handler f9457d;
    private final com.ss.android.socialbase.downloader.kk.ia<String, d> dq;
    private final Handler ox;

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        long f9460d;
        List<InetAddress> dq;

        private d() {
        }
    }

    public interface dq {
        void dq(String str, List<InetAddress> list);
    }

    /* renamed from: com.ss.android.socialbase.downloader.network.ox$ox, reason: collision with other inner class name */
    public static class C0255ox {
        private static final ox dq = new ox();
    }

    private ox() {
        this.dq = new com.ss.android.socialbase.downloader.kk.ia<>(4, 16, false);
        this.f9457d = new Handler(com.ss.android.socialbase.downloader.network.dq.d.dq());
        this.ox = new Handler(com.ss.android.socialbase.downloader.ia.s.dq());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(14:1|2|a|(2:8|(1:(2:11|12)(1:14)))|15|(6:19|20|(3:36|37|38)|(3:28|29|(2:31|32)(1:33))|29|(0)(0))|45|(1:22)|36|37|38|(4:25|28|29|(0)(0))|29|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0088, code lost:
    
        r10 = r2.dq;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0075, code lost:
    
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0076, code lost:
    
        r11.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0091 A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #2 {all -> 0x003b, blocks: (B:2:0x0000, B:3:0x000a, B:8:0x0016, B:11:0x0035, B:15:0x003d, B:17:0x0054, B:22:0x0066, B:25:0x007b, B:28:0x0082, B:29:0x008a, B:31:0x0091, B:35:0x0088, B:36:0x006c, B:41:0x0076, B:44:0x0060, B:49:0x0097, B:38:0x0070, B:5:0x000b, B:6:0x0013, B:20:0x005a), top: B:1:0x0000, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(final String str, final dq dqVar, long j) {
        final d dVar;
        List<InetAddress> list;
        iw le;
        try {
            String host = Uri.parse(str).getHost();
            synchronized (this.dq) {
                dVar = this.dq.get(host);
            }
            if (dVar != null) {
                if (System.currentTimeMillis() - dVar.f9460d < com.ss.android.socialbase.downloader.mn.dq.ox().dq("dns_expire_min", 10) * 60000) {
                    if (dqVar != null) {
                        dqVar.dq(str, dVar.dq);
                        return;
                    }
                    return;
                }
            }
            Runnable runnable = new Runnable() { // from class: com.ss.android.socialbase.downloader.network.ox.2
                @Override // java.lang.Runnable
                public void run() {
                    dq dqVar2 = dqVar;
                    if (dqVar2 != null) {
                        String str2 = str;
                        d dVar2 = dVar;
                        dqVar2.dq(str2, dVar2 == null ? null : dVar2.dq);
                    }
                }
            };
            this.ox.postDelayed(runnable, j);
            if (com.ss.android.socialbase.downloader.mn.dq.ox().dq("use_host_dns", 1) == 1 && (le = com.ss.android.socialbase.downloader.downloader.ox.le()) != null) {
                try {
                    list = le.dq(host);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                if (list != null || list.isEmpty()) {
                    list = com.ss.android.socialbase.downloader.downloader.ox.k().dq(host);
                }
                if (list != null && !list.isEmpty()) {
                    dq(host, list);
                    this.ox.removeCallbacks(runnable);
                    if (dqVar == null) {
                        dqVar.dq(str, list);
                        return;
                    }
                    return;
                }
                this.ox.removeCallbacks(runnable);
                if (dqVar == null) {
                }
            }
            list = null;
            if (list != null) {
            }
            list = com.ss.android.socialbase.downloader.downloader.ox.k().dq(host);
            if (list != null) {
                dq(host, list);
                this.ox.removeCallbacks(runnable);
                if (dqVar == null) {
                }
            }
            this.ox.removeCallbacks(runnable);
            if (dqVar == null) {
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static ox dq() {
        return C0255ox.dq;
    }

    private void dq(String str, List<InetAddress> list) {
        synchronized (this.dq) {
            try {
                d dVar = this.dq.get(str);
                if (dVar == null) {
                    dVar = new d();
                    this.dq.put(str, dVar);
                }
                dVar.dq = list;
                dVar.f9460d = System.currentTimeMillis();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dq(final String str, final dq dqVar, final long j) {
        this.f9457d.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.network.ox.1
            @Override // java.lang.Runnable
            public void run() {
                ox.this.d(str, dqVar, j);
            }
        });
    }
}
