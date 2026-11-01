package com.ss.android.socialbase.downloader.downloader;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.ss.android.socialbase.downloader.depend.er;
import com.ss.android.socialbase.downloader.depend.h;
import com.ss.android.socialbase.downloader.depend.op;
import com.ss.android.socialbase.downloader.downloader.i;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.impls.DownloadHandleService;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import com.ss.android.socialbase.downloader.network.IDownloadHttpService;
import g.aqt;
import g.awf;
import g.bff;
import g.cop;
import g.erq;
import g.fuv;
import g.fys;
import g.gjb;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {
    private static volatile h bl;
    private static final List<com.ss.android.socialbase.downloader.depend.no> by;

    /* renamed from: c, reason: collision with root package name */
    private static volatile com.ss.android.socialbase.downloader.network.iw f9359c;
    private static volatile ExecutorService cd;
    private static volatile i ce;

    /* renamed from: d, reason: collision with root package name */
    private static volatile o f9360d;
    private static volatile Context dq;
    private static cd ds;

    /* renamed from: e, reason: collision with root package name */
    private static volatile DownloadReceiver f9361e;

    /* renamed from: f, reason: collision with root package name */
    private static volatile ExecutorService f9362f;
    private static volatile ExecutorService fw;
    private static volatile ExecutorService gh;
    private static boolean gx;
    private static volatile fw h;
    private static volatile boolean ha;
    private static volatile ExecutorService i;
    private static volatile jy ia;
    private static volatile IDownloadHttpService ig;
    private static volatile com.ss.android.socialbase.downloader.impls.dq iw;
    private static int j;
    private static volatile com.ss.android.socialbase.downloader.p.d ji;
    private static volatile ExecutorService jy;
    private static volatile ScheduledExecutorService k;
    private static volatile dq kk;
    private static volatile gh kx;
    private static final int l;
    private static volatile ExecutorService le;
    private static volatile jy mn;
    private static volatile com.ss.android.socialbase.downloader.network.ia mp;
    private static final int nh;
    private static volatile com.ss.android.socialbase.downloader.network.ia no;
    private static volatile IDownloadHttpService o;
    private static final int ob;
    private static volatile no ox;
    private static volatile ia p;
    private static volatile ig q;
    private static volatile ExecutorService r;
    private static volatile op s;
    private static int t;
    private static volatile com.ss.android.socialbase.downloader.network.iw u;
    private static final List<Object> uh;
    private static boolean v;
    private static final int vf;
    private static com.ss.android.socialbase.downloader.p.ox vw;
    private static volatile mn wp;
    private static int xz;
    private static boolean yy;
    private static volatile List<er> n = new ArrayList();
    private static volatile boolean op = false;
    private static volatile fys ir = null;
    private static final List<com.ss.android.socialbase.downloader.depend.mp> er = new ArrayList();
    private static boolean wn = false;

    public interface dq {

        /* renamed from: com.ss.android.socialbase.downloader.downloader.ox$dq$dq, reason: collision with other inner class name */
        public interface InterfaceC0247dq {
            void dq();
        }

        mp d();

        jy dq();

        r dq(InterfaceC0247dq interfaceC0247dq);
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors() + 1;
        nh = availableProcessors;
        vf = (Runtime.getRuntime().availableProcessors() * 2) + 1;
        ob = availableProcessors;
        l = availableProcessors;
        t = 8192;
        by = new ArrayList();
        uh = new ArrayList();
        yy = true;
        v = false;
        ha = false;
    }

    private ox() {
    }

    public static no bl() {
        if (ox == null) {
            synchronized (ox.class) {
                try {
                    if (ox == null) {
                        ox = new com.ss.android.socialbase.downloader.impls.kk();
                    }
                } finally {
                }
            }
        }
        return ox;
    }

    public static boolean by() {
        return ha;
    }

    public static boolean c() {
        return yy;
    }

    public static ExecutorService cd() {
        if (r == null) {
            synchronized (ox.class) {
                try {
                    if (r == null) {
                        int i2 = l;
                        com.bytedance.sdk.component.o.p.p pVar = new com.bytedance.sdk.component.o.p.p(i2, i2, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.ss.android.socialbase.downloader.ia.dq("DownloadThreadPool-db-fixed", true));
                        try {
                            pVar.allowCoreThreadTimeOut(true);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        r = pVar;
                    }
                } finally {
                }
            }
        }
        return r;
    }

    public static synchronized int ce() {
        int i2;
        synchronized (ox.class) {
            i2 = t;
        }
        return i2;
    }

    private static com.ss.android.socialbase.downloader.network.mn d(String str, List<com.ss.android.socialbase.downloader.model.ox> list, int i2, boolean z, DownloadInfo downloadInfo) throws BaseException, IOException {
        Throwable th;
        IOException iOException;
        com.ss.android.socialbase.downloader.network.ia iw2 = i2 == 1 ? iw() : kk();
        if (iw2 == null) {
            throw new BaseException(1022, new IOException(awf.ac(i2, "httpService not exist, netLib = ")));
        }
        long j2 = 0;
        try {
            if (z) {
                try {
                    j2 = System.currentTimeMillis();
                } catch (IOException e2) {
                    throw e2;
                }
            }
            try {
                com.ss.android.socialbase.downloader.network.mn dq2 = iw2.dq(str, list);
                if (z) {
                    com.ss.android.socialbase.downloader.p.dq.dq(dq2, str, null, System.currentTimeMillis() - j2, "head", i2, null, downloadInfo);
                }
                return dq2;
            } catch (Throwable th2) {
                th = th2;
                iOException = null;
                if (!z) {
                    throw th;
                }
                com.ss.android.socialbase.downloader.p.dq.dq(null, str, null, System.currentTimeMillis() - j2, "head", i2, iOException, downloadInfo);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            iOException = null;
        }
    }

    public static synchronized void d() {
        synchronized (ox.class) {
            if (op) {
                return;
            }
            op = true;
            try {
                Intent intent = new Intent(ob(), (Class<?>) DownloadHandleService.class);
                intent.setAction("com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY");
                ob().startService(intent);
                if (!com.ss.android.socialbase.downloader.kk.iw.ox()) {
                    com.ss.android.socialbase.downloader.impls.ig.dq(true).startService();
                }
            } catch (Throwable th) {
                op = false;
                th.printStackTrace();
            }
        }
    }

    private static void d(int i2) {
        if (i2 > 0) {
            j = i2;
        }
    }

    public static void d(com.ss.android.socialbase.downloader.depend.no noVar) {
        List<com.ss.android.socialbase.downloader.depend.no> list = by;
        synchronized (list) {
            if (noVar != null) {
                try {
                    if (list.contains(noVar)) {
                        list.remove(noVar);
                    }
                } finally {
                }
            }
        }
    }

    public static synchronized void d(DownloaderBuilder downloaderBuilder) {
        synchronized (ox.class) {
            ox(downloaderBuilder);
        }
    }

    public static void d(DownloadTask downloadTask, int i2) {
        List<Object> list = uh;
        synchronized (list) {
            try {
                Iterator<Object> it = list.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void d(Runnable runnable) {
        d(runnable, false);
    }

    public static void d(Runnable runnable, boolean z) {
        if (runnable == null) {
            return;
        }
        if (!z || com.ss.android.socialbase.downloader.kk.iw.p()) {
            mp().execute(runnable);
        } else {
            runnable.run();
        }
    }

    public static void d(ExecutorService executorService) {
        if (executorService != null) {
            le = executorService;
        }
    }

    private static void d(boolean z) {
        yy = z;
    }

    public static int dq(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return 0;
        }
        String taskKey = downloadInfo.getTaskKey();
        if (TextUtils.isEmpty(taskKey)) {
            taskKey = downloadInfo.getUrl();
        }
        return dq(taskKey, downloadInfo.getSavePath());
    }

    public static int dq(String str, String str2) {
        no bl2 = bl();
        if (bl2 == null) {
            return 0;
        }
        return bl2.dq(str, str2);
    }

    private static com.ss.android.socialbase.downloader.network.kk dq(int i2, String str, String str2, List<com.ss.android.socialbase.downloader.model.ox> list, int i3, boolean z, DownloadInfo downloadInfo) throws BaseException, IOException {
        Throwable th;
        IOException iOException;
        IDownloadHttpService p2 = i3 == 1 ? p() : ia();
        if (p2 == null) {
            throw new BaseException(1022, new IOException(awf.ac(i3, "httpService not exist, netLib = ")));
        }
        long j2 = 0;
        try {
            if (z) {
                try {
                    j2 = System.currentTimeMillis();
                } catch (IOException e2) {
                    throw e2;
                }
            }
            iOException = null;
            try {
                com.ss.android.socialbase.downloader.network.kk downloadWithConnection = p2.downloadWithConnection(i2, str, list);
                if (z) {
                    com.ss.android.socialbase.downloader.p.dq.dq(downloadWithConnection, str, str2, System.currentTimeMillis() - j2, "get", i3, null, downloadInfo);
                }
                return downloadWithConnection;
            } catch (Throwable th2) {
                th = th2;
                if (!z) {
                    throw th;
                }
                com.ss.android.socialbase.downloader.p.dq.dq(null, str, str2, System.currentTimeMillis() - j2, "get", i3, iOException, downloadInfo);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            iOException = null;
        }
    }

    public static com.ss.android.socialbase.downloader.network.kk dq(boolean z, int i2, String str, String str2, List<com.ss.android.socialbase.downloader.model.ox> list, int i3, boolean z2, DownloadInfo downloadInfo) throws Exception {
        List<com.ss.android.socialbase.downloader.model.ox> list2;
        int i4;
        com.ss.android.socialbase.downloader.network.kk dq2;
        if (!TextUtils.isEmpty(str2)) {
            List<com.ss.android.socialbase.downloader.model.ox> arrayList = list == null ? new ArrayList<>() : list;
            arrayList.add(new com.ss.android.socialbase.downloader.model.ox("ss_d_request_host_ip_114", str2));
            list2 = arrayList;
            i4 = 1;
        } else if (z) {
            list2 = list;
            i4 = i3;
        } else {
            i4 = 2;
            list2 = list;
        }
        Exception e2 = null;
        for (int i5 : dq(i4)) {
            try {
                dq2 = dq(i2, str, str2, list2, i5, z2, downloadInfo);
            } catch (Exception e3) {
                e2 = e3;
                if (!downloadInfo.isExpiredRedownload()) {
                    continue;
                } else if (!com.ss.android.socialbase.downloader.kk.iw.mn(e2)) {
                    continue;
                } else if (com.ss.android.socialbase.downloader.kk.iw.ox(list2)) {
                    com.ss.android.socialbase.downloader.ox.dq.dq("dcach::http exception 304, throw excepiton, not retry " + e2);
                    throw e2;
                }
            }
            if (dq2 != null) {
                return dq2;
            }
        }
        if (e2 == null) {
            return null;
        }
        throw e2;
    }

    public static com.ss.android.socialbase.downloader.network.kk dq(boolean z, int i2, String str, List<com.ss.android.socialbase.downloader.model.ox> list) throws Exception {
        return dq(z, i2, str, null, list, 0, false, null);
    }

    public static com.ss.android.socialbase.downloader.network.mn dq(String str, List<com.ss.android.socialbase.downloader.model.ox> list) throws Exception {
        return dq(str, list, 0, false, null);
    }

    public static com.ss.android.socialbase.downloader.network.mn dq(String str, List<com.ss.android.socialbase.downloader.model.ox> list, int i2, boolean z, DownloadInfo downloadInfo) throws Exception {
        com.ss.android.socialbase.downloader.network.mn d2;
        Exception e2 = null;
        for (int i3 : dq(i2)) {
            try {
                d2 = d(str, list, i3, z, downloadInfo);
            } catch (Exception e3) {
                e2 = e3;
            }
            if (d2 != null) {
                return d2;
            }
        }
        if (e2 == null) {
            return null;
        }
        throw e2;
    }

    public static Future dq(Runnable runnable, long j2, TimeUnit timeUnit) {
        if (runnable == null) {
            return null;
        }
        return r().schedule(runnable, j2, timeUnit);
    }

    public static synchronized void dq() {
        synchronized (ox.class) {
            try {
                if (wn && f9361e != null && dq != null) {
                    dq.unregisterReceiver(f9361e);
                    wn = false;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static synchronized void dq(Context context) {
        synchronized (ox.class) {
            if (context != null) {
                if (dq == null) {
                    dq = context.getApplicationContext();
                    com.ss.android.socialbase.downloader.dq.dq.dq().dq(dq);
                }
            }
        }
    }

    public static void dq(com.ss.android.socialbase.downloader.constants.p pVar) {
        List<com.ss.android.socialbase.downloader.depend.no> list = by;
        synchronized (list) {
            try {
                for (com.ss.android.socialbase.downloader.depend.no noVar : list) {
                    if (noVar != null && pVar != com.ss.android.socialbase.downloader.constants.p.SYNC_START && pVar == com.ss.android.socialbase.downloader.constants.p.SYNC_SUCCESS) {
                        noVar.dq();
                    }
                }
                if (pVar == com.ss.android.socialbase.downloader.constants.p.SYNC_SUCCESS) {
                    by.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void dq(er erVar) {
        if (erVar == null) {
            return;
        }
        synchronized (n) {
            n.add(erVar);
        }
    }

    public static void dq(h hVar) {
        bl = hVar;
        com.ss.android.socialbase.downloader.mn.dq.dq();
    }

    public static void dq(com.ss.android.socialbase.downloader.depend.no noVar) {
        List<com.ss.android.socialbase.downloader.depend.no> list = by;
        synchronized (list) {
            if (noVar != null) {
                try {
                    if (!list.contains(noVar)) {
                        list.add(noVar);
                    }
                } finally {
                }
            }
        }
    }

    public static void dq(op opVar) {
        if (opVar != null) {
            s = opVar;
        }
    }

    public static synchronized void dq(DownloaderBuilder downloaderBuilder) {
        synchronized (ox.class) {
            if (ha) {
                com.ss.android.socialbase.downloader.ox.dq.s("DownloadComponentManager", "component has init");
                return;
            }
            boolean z = op;
            ox(downloaderBuilder);
            if (f9360d == null) {
                f9360d = new com.ss.android.socialbase.downloader.impls.p();
            }
            if (mn == null) {
                mn = new com.ss.android.socialbase.downloader.impls.ia();
            }
            if (ia == null && kk != null) {
                ia = kk.dq();
            }
            if (ox == null) {
                ox = new com.ss.android.socialbase.downloader.impls.kk();
            }
            if (iw == null) {
                iw = new com.ss.android.socialbase.downloader.impls.s();
            }
            if (p == null) {
                p = new com.ss.android.socialbase.downloader.impls.ox();
            }
            if (wp == null) {
                wp = new com.ss.android.socialbase.downloader.impls.d();
            }
            if (kx == null) {
                kx = new com.ss.android.socialbase.downloader.impls.o();
            }
            int i2 = j;
            if (i2 <= 0 || i2 > nh) {
                j = nh;
            }
            yy();
            if (op && !z && !com.ss.android.socialbase.downloader.kk.iw.ox()) {
                com.ss.android.socialbase.downloader.impls.ig.dq(true).startService();
            } else if (com.ss.android.socialbase.downloader.kk.iw.p()) {
                ExecutorService mp2 = mp();
                if (mp2 != null) {
                    mp2.execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.ox.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Context ob2 = ox.ob();
                            if (ob2 != null) {
                                com.ss.android.socialbase.downloader.kk.iw.p(ob2);
                            }
                        }
                    });
                }
            } else {
                Context ob2 = ob();
                if (ob2 != null) {
                    com.ss.android.socialbase.downloader.kk.iw.p(ob2);
                }
            }
            u();
            ha = true;
        }
    }

    public static void dq(cd cdVar) {
    }

    private static void dq(ia iaVar) {
        if (iaVar != null) {
            p = iaVar;
        }
    }

    public static synchronized void dq(ig igVar) {
        synchronized (ox.class) {
            if (igVar != null) {
                q = igVar;
                if (f9360d instanceof com.ss.android.socialbase.downloader.impls.p) {
                    ((com.ss.android.socialbase.downloader.impls.p) f9360d).ia();
                }
            }
        }
    }

    private static void dq(mn mnVar) {
        if (mnVar != null) {
            wp = mnVar;
        }
    }

    private static void dq(no noVar) {
        if (noVar != null) {
            ox = noVar;
        }
    }

    private static void dq(o oVar) {
        if (oVar != null) {
            f9360d = oVar;
        }
    }

    public static void dq(dq dqVar) {
        com.ss.android.socialbase.downloader.ox.dq.dq("wjd", "setIndependentServiceCreator::creator=" + dqVar);
        kk = dqVar;
    }

    public static void dq(DownloadTask downloadTask, int i2) {
        List<Object> list = uh;
        synchronized (list) {
            try {
                Iterator<Object> it = list.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void dq(IDownloadHttpService iDownloadHttpService) {
        if (iDownloadHttpService != null) {
            o = iDownloadHttpService;
        }
        gx = o != null;
    }

    public static void dq(com.ss.android.socialbase.downloader.network.ia iaVar) {
        if (iaVar != null) {
            no = iaVar;
        }
    }

    private static void dq(com.ss.android.socialbase.downloader.p.d dVar) {
        if (dVar != null) {
            ji = dVar;
        }
    }

    public static void dq(com.ss.android.socialbase.downloader.p.ox oxVar) {
        vw = oxVar;
    }

    public static void dq(Runnable runnable) {
        dq(runnable, false);
    }

    public static void dq(Runnable runnable, boolean z) {
        if (runnable == null) {
            return;
        }
        if (!z || com.ss.android.socialbase.downloader.kk.iw.p()) {
            ig().execute(runnable);
        } else {
            runnable.run();
        }
    }

    private static void dq(List<com.ss.android.socialbase.downloader.depend.mp> list) {
        List<com.ss.android.socialbase.downloader.depend.mp> list2 = er;
        if (list2.isEmpty()) {
            synchronized (list2) {
                list2.addAll(list);
            }
        }
    }

    public static void dq(ExecutorService executorService) {
        if (executorService != null) {
            i = executorService;
        }
    }

    public static void dq(boolean z) {
        v = z;
    }

    private static int[] dq(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? new int[]{1, 0} : new int[]{0, 1} : new int[]{1} : new int[]{0};
    }

    public static o e() {
        if (f9360d == null) {
            synchronized (ox.class) {
                try {
                    if (f9360d == null) {
                        f9360d = new com.ss.android.socialbase.downloader.impls.p();
                    }
                } finally {
                }
            }
        }
        return f9360d;
    }

    public static ia er() {
        if (p == null) {
            synchronized (ox.class) {
                try {
                    if (p == null) {
                        p = new com.ss.android.socialbase.downloader.impls.ox();
                    }
                } finally {
                }
            }
        }
        return p;
    }

    public static ExecutorService f() {
        if (fw == null) {
            synchronized (ox.class) {
                try {
                    if (fw == null) {
                        int i2 = ob;
                        com.bytedance.sdk.component.o.p.p pVar = new com.bytedance.sdk.component.o.p.p(i2, i2, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.ss.android.socialbase.downloader.ia.dq("DownloadThreadPool-mix-fixed", true));
                        try {
                            pVar.allowCoreThreadTimeOut(true);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        fw = pVar;
                    }
                } finally {
                }
            }
        }
        return fw;
    }

    public static ExecutorService fw() {
        if (i == null) {
            synchronized (ox.class) {
                try {
                    if (i == null) {
                        int i2 = vf;
                        com.bytedance.sdk.component.o.p.p pVar = new com.bytedance.sdk.component.o.p.p(i2, i2, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.ss.android.socialbase.downloader.ia.dq("DownloadThreadPool-chunk-fixed", true));
                        try {
                            pVar.allowCoreThreadTimeOut(true);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        i = pVar;
                    }
                } finally {
                }
            }
        }
        return i;
    }

    public static fys gh() {
        if (ir == null) {
            synchronized (ox.class) {
                try {
                    if (ir == null) {
                        gjb i2 = i();
                        i2.getClass();
                        ir = new fys(i2);
                    }
                } finally {
                }
            }
        }
        return ir;
    }

    public static cd gx() {
        return ds;
    }

    public static jy h() {
        if (ia == null) {
            synchronized (ox.class) {
                try {
                    if (ia == null) {
                        ia = kk.dq();
                    }
                } finally {
                }
            }
        }
        return ia;
    }

    public static gjb i() {
        gjb gjbVar = new gjb();
        bff.p(TimeUnit.MILLISECONDS, "unit");
        gjbVar.k = erq.y();
        gjbVar.r = erq.y();
        gjbVar.i = erq.y();
        gjbVar.j = true;
        gjbVar.f18231a = true;
        aqt aqtVar = aqt.HTTP_1_1;
        List singletonList = Collections.singletonList(aqtVar);
        bff.p(singletonList, "protocols");
        ArrayList arrayList = new ArrayList(singletonList);
        aqt aqtVar2 = aqt.H2_PRIOR_KNOWLEDGE;
        if (!arrayList.contains(aqtVar2) && !arrayList.contains(aqtVar)) {
            throw new IllegalArgumentException(("protocols must contain h2_prior_knowledge or http/1.1: " + arrayList).toString());
        }
        if (arrayList.contains(aqtVar2) && arrayList.size() > 1) {
            throw new IllegalArgumentException(("protocols containing h2_prior_knowledge cannot use other protocols: " + arrayList).toString());
        }
        if (arrayList.contains(aqt.HTTP_1_0)) {
            throw new IllegalArgumentException(("protocols must not contain http/1.0: " + arrayList).toString());
        }
        if (arrayList.contains(null)) {
            throw new IllegalArgumentException("protocols must not contain null");
        }
        arrayList.remove(aqt.SPDY_3);
        arrayList.equals(gjbVar.l);
        List unmodifiableList = Collections.unmodifiableList(arrayList);
        bff.e(unmodifiableList, "unmodifiableList(protocolsCopy)");
        gjbVar.l = unmodifiableList;
        if (le != null) {
            ExecutorService executorService = le;
            bff.p(executorService, "executorService");
            cop copVar = new cop();
            copVar.f13235f = executorService;
            gjbVar.h = copVar;
        }
        return gjbVar;
    }

    public static IDownloadHttpService ia() {
        if (ig == null) {
            synchronized (ox.class) {
                try {
                    if (ig == null) {
                        ig = new com.ss.android.socialbase.downloader.impls.mn();
                    }
                } finally {
                }
            }
        }
        return ig;
    }

    private static void ia(ExecutorService executorService) {
        if (executorService != null) {
            r = executorService;
        }
    }

    public static ExecutorService ig() {
        if (jy == null) {
            synchronized (ox.class) {
                try {
                    if (jy == null) {
                        int i2 = nh;
                        com.bytedance.sdk.component.o.p.p pVar = new com.bytedance.sdk.component.o.p.p(i2, i2, 15L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.ss.android.socialbase.downloader.ia.dq("DownloadThreadPool-cpu-fixed", true));
                        try {
                            pVar.allowCoreThreadTimeOut(true);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        jy = pVar;
                    }
                } finally {
                }
            }
        }
        return jy;
    }

    public static JSONObject ir() {
        return (bl == null || bl.dq() == null) ? com.ss.android.socialbase.downloader.constants.s.kk : bl.dq();
    }

    public static com.ss.android.socialbase.downloader.network.ia iw() {
        return no;
    }

    private static void iw(ExecutorService executorService) {
        if (executorService != null) {
            cd = executorService;
        }
    }

    public static mn j() {
        if (wp == null) {
            synchronized (ox.class) {
                try {
                    if (wp == null) {
                        wp = new com.ss.android.socialbase.downloader.impls.d();
                    }
                } finally {
                }
            }
        }
        return wp;
    }

    public static List<com.ss.android.socialbase.downloader.depend.mp> ji() {
        return er;
    }

    public static ExecutorService jy() {
        return gh != null ? gh : f();
    }

    public static com.ss.android.socialbase.downloader.network.iw k() {
        if (f9359c == null) {
            synchronized (ox.class) {
                try {
                    if (f9359c == null) {
                        f9359c = new com.ss.android.socialbase.downloader.network.iw() { // from class: com.ss.android.socialbase.downloader.downloader.ox.2
                            @Override // com.ss.android.socialbase.downloader.network.iw
                            public List<InetAddress> dq(String str) throws UnknownHostException {
                                bff.p(str, "hostname");
                                try {
                                    InetAddress[] allByName = InetAddress.getAllByName(str);
                                    bff.e(allByName, "getAllByName(hostname)");
                                    return fuv.bg(allByName);
                                } catch (NullPointerException e2) {
                                    UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(str));
                                    unknownHostException.initCause(e2);
                                    throw unknownHostException;
                                }
                            }
                        };
                    }
                } finally {
                }
            }
        }
        return f9359c;
    }

    public static com.ss.android.socialbase.downloader.network.ia kk() {
        if (mp == null) {
            synchronized (ox.class) {
                try {
                    if (mp == null) {
                        mp = new com.ss.android.socialbase.downloader.impls.iw();
                    }
                } finally {
                }
            }
        }
        return mp;
    }

    public static jy kx() {
        if (mn == null) {
            synchronized (ox.class) {
                try {
                    if (mn == null) {
                        mn = new com.ss.android.socialbase.downloader.impls.ia();
                    }
                } finally {
                }
            }
        }
        return mn;
    }

    public static synchronized boolean l() {
        boolean z;
        synchronized (ox.class) {
            z = gx;
        }
        return z;
    }

    public static com.ss.android.socialbase.downloader.network.iw le() {
        return u;
    }

    public static com.ss.android.socialbase.downloader.p.d mn() {
        return ji;
    }

    private static void mn(ExecutorService executorService) {
        if (executorService != null) {
            gh = executorService;
        }
    }

    public static ExecutorService mp() {
        return f9362f != null ? f9362f : ig();
    }

    public static com.ss.android.socialbase.downloader.impls.dq n() {
        if (iw == null) {
            synchronized (ox.class) {
                try {
                    if (iw == null) {
                        iw = new com.ss.android.socialbase.downloader.impls.s();
                    }
                } finally {
                }
            }
        }
        return iw;
    }

    public static gh nh() {
        if (kx == null) {
            synchronized (ox.class) {
                try {
                    if (kx == null) {
                        kx = new com.ss.android.socialbase.downloader.impls.o();
                    }
                } finally {
                }
            }
        }
        return kx;
    }

    public static synchronized fw no() {
        fw fwVar;
        synchronized (ox.class) {
            fwVar = h;
        }
        return fwVar;
    }

    public static boolean o() {
        return com.ss.android.socialbase.downloader.mn.dq.ox().dq("switch_not_auto_boot_service", v ? 1 : 0) > 0;
    }

    public static synchronized Context ob() {
        Context context;
        synchronized (ox.class) {
            context = dq;
        }
        return context;
    }

    public static int op() {
        return xz;
    }

    private static void ox(DownloaderBuilder downloaderBuilder) {
        if (downloaderBuilder != null) {
            if (downloaderBuilder.getContext() != null) {
                dq(downloaderBuilder.getContext());
            }
            if (downloaderBuilder.getDownloadCache() != null) {
                dq(downloaderBuilder.getDownloadCache());
            }
            if (downloaderBuilder.getIdGenerator() != null) {
                dq(downloaderBuilder.getIdGenerator());
            }
            if (downloaderBuilder.getChunkCntCalculator() != null) {
                dq(downloaderBuilder.getChunkCntCalculator());
            }
            if (downloaderBuilder.getNotificationClickCallback() != null) {
                dq(downloaderBuilder.getNotificationClickCallback());
            }
            if (downloaderBuilder.getMaxDownloadPoolSize() != 0) {
                d(downloaderBuilder.getMaxDownloadPoolSize());
            }
            if (downloaderBuilder.getHttpService() != null) {
                dq(downloaderBuilder.getHttpService());
            }
            if (downloaderBuilder.getHeadHttpService() != null) {
                dq(downloaderBuilder.getHeadHttpService());
            }
            if (downloaderBuilder.getDownloadLaunchHandler() != null) {
                dq(downloaderBuilder.getDownloadLaunchHandler());
            }
            if (downloaderBuilder.getCPUThreadExecutor() != null) {
                ox(downloaderBuilder.getCPUThreadExecutor());
            }
            if (downloaderBuilder.getIOThreadExecutor() != null) {
                p(downloaderBuilder.getIOThreadExecutor());
            }
            if (downloaderBuilder.getMixDefaultDownloadExecutor() != null) {
                s(downloaderBuilder.getMixDefaultDownloadExecutor());
            }
            if (downloaderBuilder.getMixFrequentDownloadExecutor() != null) {
                iw(downloaderBuilder.getMixFrequentDownloadExecutor());
            }
            if (downloaderBuilder.getMixApkDownloadExecutor() != null) {
                mn(downloaderBuilder.getMixApkDownloadExecutor());
            }
            if (downloaderBuilder.getDBThreadExecutor() != null) {
                ia(downloaderBuilder.getDBThreadExecutor());
            }
            if (downloaderBuilder.getChunkThreadExecutor() != null) {
                dq(downloaderBuilder.getChunkThreadExecutor());
            }
            if (downloaderBuilder.getOkHttpDispatcherExecutor() != null) {
                d(downloaderBuilder.getOkHttpDispatcherExecutor());
            }
            if (!downloaderBuilder.getDownloadCompleteHandlers().isEmpty()) {
                dq(downloaderBuilder.getDownloadCompleteHandlers());
            }
            if (downloaderBuilder.getMonitorConfig() != null) {
                h = downloaderBuilder.getMonitorConfig();
            }
            if (downloaderBuilder.getWriteBufferSize() > 1024) {
                t = downloaderBuilder.getWriteBufferSize();
            }
            if (downloaderBuilder.getChunkAdjustCalculator() != null) {
                dq(downloaderBuilder.getChunkAdjustCalculator());
            }
            if (downloaderBuilder.isDownloadInMultiProcess()) {
                op = true;
            }
            if (downloaderBuilder.getDownloadExpSwitch() != 0) {
                xz = downloaderBuilder.getDownloadExpSwitch();
            }
            if (downloaderBuilder.getDownloadSetting() != null) {
                dq(downloaderBuilder.getDownloadSetting());
            }
            if (downloaderBuilder.getDownloadDns() != null) {
                u = downloaderBuilder.getDownloadDns();
            }
            if (downloaderBuilder.getTTNetHandler() != null) {
                i tTNetHandler = downloaderBuilder.getTTNetHandler();
                ce = tTNetHandler;
                if (tTNetHandler.dq()) {
                    dq(ce.d());
                    dq(ce.ox());
                } else {
                    dq(ia());
                    dq(kk());
                }
            }
            d(downloaderBuilder.needAutoRefreshUnSuccessTask());
            if (downloaderBuilder.getDownloadMonitorListener() != null) {
                dq(downloaderBuilder.getDownloadMonitorListener());
            }
        }
    }

    public static void ox(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (com.ss.android.socialbase.downloader.kk.iw.p()) {
            cd().execute(runnable);
        } else {
            runnable.run();
        }
    }

    private static void ox(ExecutorService executorService) {
        if (executorService != null) {
            jy = executorService;
        }
    }

    public static synchronized boolean ox() {
        boolean z;
        synchronized (ox.class) {
            z = op;
        }
        return z;
    }

    public static IDownloadHttpService p() {
        return o;
    }

    private static void p(ExecutorService executorService) {
        if (executorService != null) {
            f9362f = executorService;
        }
    }

    public static ExecutorService q() {
        return cd != null ? cd : f();
    }

    public static ScheduledExecutorService r() {
        if (k == null) {
            synchronized (ox.class) {
                try {
                    if (k == null) {
                        k = new com.bytedance.sdk.component.o.p.s(1, new com.ss.android.socialbase.downloader.ia.dq("DownloadThreadPool-Schedule", true));
                    }
                } finally {
                }
            }
        }
        return k;
    }

    public static List<er> s() {
        List<er> list;
        synchronized (n) {
            list = n;
        }
        return list;
    }

    private static void s(ExecutorService executorService) {
        if (executorService != null) {
            fw = executorService;
        }
    }

    public static com.ss.android.socialbase.downloader.p.ox t() {
        if (vw == null) {
            vw = new com.ss.android.socialbase.downloader.p.ox() { // from class: com.ss.android.socialbase.downloader.downloader.ox.3
                @Override // com.ss.android.socialbase.downloader.p.ox
                public void d(int i2, String str, JSONObject jSONObject) {
                }

                @Override // com.ss.android.socialbase.downloader.p.ox
                public void dq(int i2, String str, JSONObject jSONObject) {
                }
            };
        }
        return vw;
    }

    public static void u() {
        if (TextUtils.isEmpty(com.ss.android.socialbase.downloader.constants.s.ox)) {
            com.ss.android.socialbase.downloader.constants.s.ox = "oppo";
            com.ss.android.socialbase.downloader.constants.s.f9317d = "oppo".toUpperCase();
        }
    }

    public static boolean uh() {
        StringBuilder sb = new StringBuilder("supportMultiProc::=");
        sb.append(kk != null);
        com.ss.android.socialbase.downloader.ox.dq.dq("wjd", sb.toString());
        return kk != null;
    }

    public static i vf() {
        if (ce == null) {
            synchronized (ox.class) {
                try {
                    if (ce == null) {
                        ce = new i.dq();
                    }
                } finally {
                }
            }
        }
        return ce;
    }

    public static op wn() {
        return s;
    }

    public static synchronized ig wp() {
        ig igVar;
        synchronized (ox.class) {
            igVar = q;
        }
        return igVar;
    }

    public static dq xz() {
        return kk;
    }

    private static void yy() {
        if (f9361e == null) {
            f9361e = new DownloadReceiver();
        }
        if (wn) {
            return;
        }
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            dq.registerReceiver(f9361e, intentFilter);
            wn = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
