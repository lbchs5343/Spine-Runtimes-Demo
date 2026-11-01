package com.ss.android.socialbase.downloader.ia;

import android.database.sqlite.SQLiteException;
import android.os.Handler;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.socialbase.downloader.depend.IDownloadInterceptor;
import com.ss.android.socialbase.downloader.depend.cd;
import com.ss.android.socialbase.downloader.depend.k;
import com.ss.android.socialbase.downloader.depend.wp;
import com.ss.android.socialbase.downloader.downloader.gh;
import com.ss.android.socialbase.downloader.downloader.o;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.impls.fw;
import com.ss.android.socialbase.downloader.iw.no;
import com.ss.android.socialbase.downloader.iw.q;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import com.ss.android.socialbase.downloader.model.d;
import com.ss.android.socialbase.downloader.network.ig;
import com.ss.android.socialbase.downloader.network.kk;
import g.awf;
import g.tn;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.SSLHandshakeException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox implements iw, Runnable {
    private static final String dq = "ox";

    /* renamed from: c, reason: collision with root package name */
    private long f9375c;
    private final com.ss.android.socialbase.downloader.downloader.ia cd;
    private final com.ss.android.socialbase.downloader.mn.dq ce;

    /* renamed from: d, reason: collision with root package name */
    private Future f9376d;

    /* renamed from: e, reason: collision with root package name */
    private com.ss.android.socialbase.downloader.network.mn f9377e;

    /* renamed from: f, reason: collision with root package name */
    private DownloadInfo f9378f;
    private com.ss.android.socialbase.downloader.downloader.ia fw;
    private com.ss.android.socialbase.downloader.downloader.mn gh;
    private cd h;
    private gh i;
    private boolean ia;
    private boolean ig;
    private final o jy;
    private volatile BaseException k;
    private boolean kk;
    private k kx;
    private final com.ss.android.socialbase.downloader.downloader.iw le;
    private volatile com.ss.android.socialbase.downloader.downloader.s mn;
    private final AtomicBoolean mp;
    private boolean no;
    private boolean o;
    private String op;
    private final DownloadTask ox;
    private final com.ss.android.socialbase.downloader.downloader.mn r;
    private AtomicInteger s;
    private long u;
    private kk wp;
    private volatile boolean p = false;
    private final ArrayList<d> iw = new ArrayList<>();
    private volatile com.ss.android.socialbase.downloader.constants.ia q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_NONE;
    private volatile int ji = 5;
    private boolean bl = false;
    private boolean n = false;
    private boolean ir = false;
    private int er = 0;
    private volatile no wn = null;

    public ox(DownloadTask downloadTask, Handler handler) {
        this.ox = downloadTask;
        if (downloadTask != null) {
            this.f9378f = downloadTask.getDownloadInfo();
            this.fw = downloadTask.getChunkStrategy();
            this.gh = downloadTask.getChunkAdjustCalculator();
            this.kx = downloadTask.getForbiddenHandler();
            this.h = downloadTask.getDiskSpaceHandler();
            this.i = dq(downloadTask);
            this.ce = com.ss.android.socialbase.downloader.mn.dq.dq(this.f9378f.getId());
        } else {
            this.ce = com.ss.android.socialbase.downloader.mn.dq.ox();
        }
        ia();
        this.jy = com.ss.android.socialbase.downloader.downloader.ox.e();
        this.cd = com.ss.android.socialbase.downloader.downloader.ox.er();
        this.r = com.ss.android.socialbase.downloader.downloader.ox.j();
        this.le = new com.ss.android.socialbase.downloader.downloader.iw(downloadTask, handler);
        this.mp = new AtomicBoolean(true);
    }

    private boolean bl() {
        DownloadInfo downloadInfo = this.f9378f;
        return (downloadInfo == null || downloadInfo.isExpiredRedownload() || (this.kk && this.f9378f.getChunkCount() <= 1) || this.f9378f.isChunkDowngradeRetryUsed() || !this.o || this.ig) ? false : true;
    }

    private void c() {
        com.ss.android.socialbase.downloader.ox.dq.p(dq, "clearCurrentDownloadData::" + Log.getStackTraceString(new Throwable()));
        try {
            this.jy.p(this.f9378f.getId());
            this.jy.mp(this.f9378f.getId());
            com.ss.android.socialbase.downloader.kk.iw.dq(this.f9378f);
            this.kk = false;
            this.f9378f.resetDataForEtagEndure("");
            this.jy.dq(this.f9378f);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void cd() {
        kk kkVar = this.wp;
        if (kkVar != null) {
            kkVar.p();
            this.wp = null;
        }
    }

    private void ce() {
        try {
            Iterator it = ((ArrayList) this.iw.clone()).iterator();
            while (it.hasNext()) {
                d dVar = (d) it.next();
                if (dVar != null) {
                    dVar.d();
                }
            }
        } catch (Throwable th) {
            com.ss.android.socialbase.downloader.ox.dq.ox(dq, "cancelAllChunkRunnable: " + th.toString());
        }
    }

    private void d(String str, List<com.ss.android.socialbase.downloader.model.ox> list, long j) throws BaseException, com.ss.android.socialbase.downloader.exception.kk {
        com.ss.android.socialbase.downloader.network.dq.ox dq2;
        boolean z = true;
        if (this.f9378f.getChunkCount() == 1 && (dq2 = com.ss.android.socialbase.downloader.network.dq.dq.dq().dq(str, list)) != null) {
            this.f9377e = dq2;
            this.f9378f.setPreconnectLevel(1);
        }
        if (this.f9377e == null && !this.n && this.f9378f.isHeadConnectionAvailable()) {
            try {
                int d2 = this.ce.d("net_lib_strategy");
                if (this.ce.dq("monitor_download_connect", 0) <= 0) {
                    z = false;
                }
                this.f9377e = com.ss.android.socialbase.downloader.downloader.ox.dq(str, list, d2, z, this.f9378f);
            } catch (Throwable th) {
                this.f9378f.setHeadConnectionException(com.ss.android.socialbase.downloader.kk.iw.o(th));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x005e, code lost:
    
        if (r8 <= 0) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int dq(long j, List<com.ss.android.socialbase.downloader.model.d> list) {
        int i;
        if (bl()) {
            if (this.kk) {
                i = list != null ? list.size() : this.f9378f.getChunkCount();
            } else {
                com.ss.android.socialbase.downloader.downloader.ia iaVar = this.fw;
                int dq2 = iaVar != null ? iaVar.dq(j) : this.cd.dq(j);
                ig d2 = com.ss.android.socialbase.downloader.network.no.dq().d();
                com.ss.android.socialbase.downloader.ox.dq.d(dq, "NetworkQuality is : " + d2.name());
                this.f9378f.setNetworkQuality(d2.name());
                com.ss.android.socialbase.downloader.downloader.mn mnVar = this.gh;
                i = mnVar != null ? mnVar.dq(dq2, d2) : this.r.dq(dq2, d2);
            }
        }
        i = 1;
        if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
            String str = dq;
            String valueOf = String.valueOf(i);
            String name = this.f9378f.getName();
            String valueOf2 = String.valueOf(j);
            StringBuilder o = tn.o("chunk count : ", valueOf, " for ", name, " contentLen:");
            o.append(valueOf2);
            com.ss.android.socialbase.downloader.ox.dq.d(str, o.toString());
        }
        return i;
    }

    private gh dq(DownloadTask downloadTask) {
        gh retryDelayTimeCalculator = downloadTask.getRetryDelayTimeCalculator();
        if (retryDelayTimeCalculator != null) {
            return retryDelayTimeCalculator;
        }
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            String retryDelayTimeArray = downloadInfo.getRetryDelayTimeArray();
            if (!TextUtils.isEmpty(retryDelayTimeArray)) {
                return new fw(retryDelayTimeArray);
            }
        }
        return com.ss.android.socialbase.downloader.downloader.ox.nh();
    }

    public static com.ss.android.socialbase.downloader.model.d dq(DownloadInfo downloadInfo, long j) {
        return new d.dq(downloadInfo.getId()).dq(-1).dq(0L).s(j).d(j).ox(0L).p(downloadInfo.getTotalBytes() - j).dq();
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0068, code lost:
    
        if (r9.iw() != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private com.ss.android.socialbase.downloader.model.d dq(com.ss.android.socialbase.downloader.model.d dVar, int i) {
        com.ss.android.socialbase.downloader.model.d dVar2 = null;
        if (!dVar.p()) {
            return null;
        }
        long ox = dVar.ox(true);
        com.ss.android.socialbase.downloader.ox.dq.d(dq, "reuseChunk retainLen:" + ox + " chunkIndex:" + i);
        if (!dVar.iw() && ox > com.ss.android.socialbase.downloader.constants.s.iw && this.f9378f.isNeedReuseChunkRunnable()) {
            List<com.ss.android.socialbase.downloader.model.d> dq2 = dVar.dq(this.f9378f.getChunkCount(), this.f9378f.getTotalBytes());
            if (dq2 != null) {
                Iterator<com.ss.android.socialbase.downloader.model.d> it = dq2.iterator();
                while (it.hasNext()) {
                    this.jy.d(it.next());
                }
            }
        }
        if (dVar.iw()) {
            for (int i2 = 1; i2 < dVar.mn().size(); i2++) {
                com.ss.android.socialbase.downloader.model.d dVar3 = dVar.mn().get(i2);
                if (dVar3 != null) {
                    com.ss.android.socialbase.downloader.ox.dq.d(dq, "check can checkUnCompletedChunk -- chunkIndex:" + dVar3.gh() + " currentOffset:" + dVar3.q() + "  startOffset:" + dVar3.ig() + " contentLen:" + dVar3.fw());
                    if (dVar3.gh() < 0 || (!dVar3.kk() && !dVar3.ox())) {
                        dVar2 = dVar3;
                        break;
                    }
                }
            }
            if (dVar2 != null) {
                long q = dVar.q();
                com.ss.android.socialbase.downloader.ox.dq.d(dq, "unComplete chunk " + dVar.gh() + " curOffset:" + q + " reuseChunk chunkIndex:" + i + " for subChunk:" + dVar2.gh());
                this.jy.dq(dVar2.no(), dVar2.gh(), dVar2.d(), i);
                dVar2.ox(i);
                dVar2.dq(true);
            }
        }
        return dVar2;
    }

    private List<com.ss.android.socialbase.downloader.model.ox> dq(com.ss.android.socialbase.downloader.model.d dVar) {
        List<com.ss.android.socialbase.downloader.model.ox> dq2 = com.ss.android.socialbase.downloader.kk.iw.dq(this.f9378f.getExtraHeaders(), this.f9378f.geteTag(), dVar);
        if (this.f9378f.isExpiredRedownload() && this.ir && this.f9378f.getLastModified() != null) {
            dq2.add(new com.ss.android.socialbase.downloader.model.ox("if-modified-since", this.f9378f.getLastModified()));
            dq2.add(new com.ss.android.socialbase.downloader.model.ox("download-tc21-1-15", "download-tc21-1-15"));
            com.ss.android.socialbase.downloader.ox.dq.d(dq, "dcache::add head IF_MODIFIED_SINCE=" + this.f9378f.getLastModified());
        }
        return dq2;
    }

    private void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list) throws BaseException {
        if (list.size() != i) {
            throw new BaseException(1033, new IllegalArgumentException());
        }
        dq(list, this.f9378f.getTotalBytes());
    }

    private void dq(long j, int i) throws BaseException {
        long j2 = j / i;
        int id = this.f9378f.getId();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        long j3 = 0;
        while (i2 < i) {
            com.ss.android.socialbase.downloader.model.d dq2 = new d.dq(id).dq(i2).dq(j3).s(j3).d(j3).ox(i2 == i + (-1) ? 0L : (j3 + j2) - 1).dq();
            arrayList.add(dq2);
            this.jy.dq(dq2);
            j3 += j2;
            i2++;
        }
        this.f9378f.setChunkCount(i);
        this.jy.dq(id, i);
        dq(arrayList, j);
    }

    private void dq(com.ss.android.socialbase.downloader.model.d dVar, String str, kk kkVar) throws BaseException {
        dVar.dq(this.f9378f.getTotalBytes() - dVar.q());
        this.f9378f.setChunkCount(1);
        this.jy.dq(this.f9378f.getId(), 1);
        this.mn = new com.ss.android.socialbase.downloader.downloader.s(this.f9378f, str, kkVar, dVar, this);
        r();
    }

    private void dq(String str, String str2) throws com.ss.android.socialbase.downloader.exception.kk {
        this.jy.p(this.f9378f.getId());
        this.jy.mp(this.f9378f.getId());
        com.ss.android.socialbase.downloader.kk.iw.dq(this.f9378f);
        this.kk = false;
        this.f9378f.resetDataForEtagEndure(str);
        this.jy.dq(this.f9378f);
        throw new com.ss.android.socialbase.downloader.exception.kk(str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00f7 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dq(String str, List<com.ss.android.socialbase.downloader.model.ox> list) throws BaseException, com.ss.android.socialbase.downloader.exception.kk {
        List<com.ss.android.socialbase.downloader.model.ox> list2;
        kk kkVar;
        if (this.wp != null) {
            return;
        }
        com.ss.android.socialbase.downloader.network.dq.p d2 = this.f9378f.getChunkCount() == 1 ? com.ss.android.socialbase.downloader.network.dq.dq.dq().d(str, list) : null;
        try {
            if (d2 != null) {
                dq(this.wp);
                this.f9378f.setPreconnectLevel(2);
                this.wp = d2;
            } else {
                try {
                    try {
                        list2 = list;
                    } catch (Throwable th) {
                        th = th;
                        list2 = list;
                    }
                    try {
                        kkVar = com.ss.android.socialbase.downloader.downloader.ox.dq(this.f9378f.isNeedDefaultHttpServiceBackUp(), this.f9378f.getMaxBytes(), str, null, list2, this.ce.d("net_lib_strategy"), this.ce.dq("monitor_download_connect", 0) > 0, this.f9378f);
                        this.wp = kkVar;
                    } catch (Throwable th2) {
                        th = th2;
                        Throwable th3 = th;
                        if (this.f9378f.isExpiredRedownload() && com.ss.android.socialbase.downloader.kk.iw.mn(th3) && com.ss.android.socialbase.downloader.kk.iw.ox(list2)) {
                            com.ss.android.socialbase.downloader.ox.dq.d(dq, "dcache=execepiton responseCode=304 lastModified not changed, use local file.. old cacheControl=" + this.f9378f.getCacheControl());
                            long kk = com.ss.android.socialbase.downloader.kk.iw.kk(this.f9378f.getCacheControl());
                            if (kk <= 0) {
                                kk = com.ss.android.socialbase.downloader.mn.dq.dq(this.f9378f.getId()).dq("default_304_max_age", TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX);
                            }
                            this.f9378f.setCacheExpiredTime((kk * 1000) + System.currentTimeMillis());
                            throw new com.ss.android.socialbase.downloader.exception.dq(this.op);
                        }
                        if (com.ss.android.socialbase.downloader.kk.iw.iw(th3)) {
                            dq("", "http code 416");
                        } else if (com.ss.android.socialbase.downloader.kk.iw.s(th3)) {
                            dq("", "http code 412");
                        } else {
                            com.ss.android.socialbase.downloader.kk.iw.dq(th3, "CreateFirstConnection");
                        }
                        kkVar = this.wp;
                        dq(kkVar);
                        if (this.wp != null) {
                        }
                    }
                    dq(kkVar);
                } catch (BaseException e2) {
                    throw e2;
                }
            }
            if (this.wp != null) {
                throw new BaseException(1022, new IOException("download can't continue, firstConnection is null"));
            }
        } catch (Throwable th4) {
            dq(this.wp);
            throw th4;
        }
    }

    private void dq(String str, List<com.ss.android.socialbase.downloader.model.ox> list, long j) throws BaseException, com.ss.android.socialbase.downloader.exception.kk {
        d(str, list, j);
        com.ss.android.socialbase.downloader.network.mn mnVar = this.f9377e;
        if (mnVar != null) {
            try {
                dq(str, mnVar, j);
            } catch (Throwable unused) {
                this.n = true;
            }
        }
        if (this.f9377e == null || this.n) {
            dq(str, list);
            dq(str, this.wp, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f9378f.setForbiddenBackupUrls(list, this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_WAITING_ASYNC_HANDLER);
        com.ss.android.socialbase.downloader.impls.dq n = com.ss.android.socialbase.downloader.downloader.ox.n();
        if (n != null) {
            n.ig(this.f9378f.getId());
        }
    }

    private void dq(List<com.ss.android.socialbase.downloader.model.d> list, long j) throws BaseException {
        for (com.ss.android.socialbase.downloader.model.d dVar : list) {
            if (dVar != null) {
                long q = dVar.f() == 0 ? j - dVar.q() : (dVar.f() - dVar.q()) + 1;
                if (q > 0) {
                    dVar.dq(q);
                    if (!this.f9378f.isNeedReuseFirstConnection() || this.wp == null || (this.f9378f.isHeadConnectionAvailable() && !this.n)) {
                        this.iw.add(new d(dVar, this.ox, this));
                    } else if (dVar.gh() == 0) {
                        this.iw.add(new d(dVar, this.ox, this.wp, this));
                    } else if (dVar.gh() > 0) {
                        this.iw.add(new d(dVar, this.ox, this));
                    }
                }
            }
        }
        if (!com.ss.android.socialbase.downloader.kk.dq.dq(64)) {
            ArrayList arrayList = new ArrayList(this.iw.size());
            Iterator<d> it = this.iw.iterator();
            while (it.hasNext()) {
                d next = it.next();
                if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_CANCELED) {
                    next.d();
                } else if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_PAUSE) {
                    next.dq();
                } else {
                    arrayList.add(Executors.callable(next));
                }
            }
            if (le()) {
                return;
            }
            try {
                com.ss.android.socialbase.downloader.impls.s.ox(arrayList);
                return;
            } catch (InterruptedException e2) {
                throw new BaseException(1020, e2);
            }
        }
        ArrayList arrayList2 = new ArrayList(this.iw.size());
        Iterator<d> it2 = this.iw.iterator();
        while (it2.hasNext()) {
            d next2 = it2.next();
            if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_CANCELED) {
                next2.d();
            } else if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_PAUSE) {
                next2.dq();
            } else {
                arrayList2.add(next2);
            }
        }
        try {
            List<Future> p = com.ss.android.socialbase.downloader.impls.s.p(arrayList2);
            for (Runnable runnable = (Runnable) arrayList2.remove(0); runnable != null; runnable = com.ss.android.socialbase.downloader.impls.s.s(p)) {
                if (le()) {
                    return;
                }
                try {
                    runnable.run();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            if (p == null || p.isEmpty()) {
                return;
            }
            for (Future future : p) {
                if (future != null && !future.isDone()) {
                    try {
                        future.get();
                    } catch (Throwable unused) {
                    }
                }
            }
        } catch (Throwable unused2) {
        }
    }

    private boolean dq(int i, String str, String str2) {
        if (i == 412) {
            return true;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.equals(str2) || !(this.no || this.o)) {
            return (i == 201 || i == 416) && this.f9378f.getCurBytes() > 0;
        }
        return true;
    }

    private boolean e() {
        if (this.f9378f.isChunked()) {
            DownloadInfo downloadInfo = this.f9378f;
            downloadInfo.setTotalBytes(downloadInfo.getCurBytes());
        }
        com.ss.android.socialbase.downloader.ox.dq.ox(dq, "checkCompletedByteValid: downloadInfo.getCurBytes() = " + this.f9378f.getCurBytes() + ",  downloadInfo.getTotalBytes() = " + this.f9378f.getTotalBytes());
        if (this.f9378f.getCurBytes() > 0) {
            if (this.f9378f.isIgnoreDataVerify()) {
                return true;
            }
            if (this.f9378f.getTotalBytes() > 0 && this.f9378f.getCurBytes() == this.f9378f.getTotalBytes()) {
                return true;
            }
        }
        this.f9378f.setByteInvalidRetryStatus(com.ss.android.socialbase.downloader.constants.d.BYTE_INVALID_RETRY_STATUS_RESTART);
        this.f9378f.reset();
        this.jy.dq(this.f9378f);
        this.jy.p(this.f9378f.getId());
        this.jy.mp(this.f9378f.getId());
        com.ss.android.socialbase.downloader.kk.iw.dq(this.f9378f);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void er() {
        com.ss.android.socialbase.downloader.impls.dq n;
        if (le() || (n = com.ss.android.socialbase.downloader.downloader.ox.n()) == null) {
            return;
        }
        n.ig(this.f9378f.getId());
    }

    private void f() {
        boolean z;
        boolean z2;
        com.ss.android.socialbase.downloader.ox.dq.d(dq, "endDownloadRunnable::runStatus=" + this.q);
        boolean z3 = (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_PAUSE || this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_CANCELED) ? false : true;
        try {
            z = k();
            z2 = false;
        } catch (Exception e2) {
            if (e2 instanceof BaseException) {
                this.le.dq((BaseException) e2);
            } else {
                this.le.dq(new BaseException(1046, e2));
            }
            z = true;
            z2 = true;
        }
        if (!z && !z2) {
            this.bl = true;
            com.ss.android.socialbase.downloader.ox.dq.d(dq, "jump to restart");
            return;
        }
        this.mp.set(false);
        if (z3) {
            try {
                com.ss.android.socialbase.downloader.impls.dq n = com.ss.android.socialbase.downloader.downloader.ox.n();
                if (n != null) {
                    n.dq(this);
                }
            } catch (Throwable th) {
                th.printStackTrace();
                wp monitorDepend = this.ox.getMonitorDepend();
                DownloadInfo downloadInfo = this.f9378f;
                BaseException baseException = new BaseException(1014, com.ss.android.socialbase.downloader.kk.iw.d(th, "removeDownloadRunnable"));
                DownloadInfo downloadInfo2 = this.f9378f;
                com.ss.android.socialbase.downloader.p.dq.dq(monitorDepend, downloadInfo, baseException, downloadInfo2 != null ? downloadInfo2.getStatus() : 0);
            }
        }
    }

    private void fw() {
        com.ss.android.socialbase.downloader.network.mn mnVar = this.f9377e;
        if (mnVar != null) {
            mnVar.ox();
            this.f9377e = null;
        }
    }

    private void gh() {
        fw();
        cd();
    }

    private long h() {
        return this.i.dq(this.f9378f.getCurRetryTimeInTotal(), this.f9378f.getTotalRetryCount());
    }

    private boolean i() {
        return this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_CANCELED || this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_PAUSE;
    }

    private void ia() {
        DownloadInfo downloadInfo = this.f9378f;
        if (downloadInfo == null) {
            return;
        }
        int retryCount = downloadInfo.getRetryCount() - this.f9378f.getCurRetryTime();
        if (retryCount < 0) {
            retryCount = 0;
        }
        AtomicInteger atomicInteger = this.s;
        if (atomicInteger == null) {
            this.s = new AtomicInteger(retryCount);
        } else {
            atomicInteger.set(retryCount);
        }
    }

    private void ig() {
        boolean z;
        List<com.ss.android.socialbase.downloader.model.d> ox;
        try {
            this.q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_NONE;
            this.f9378f.updateStartDownloadTime();
            this.f9378f.resetRealStartDownloadTime();
            long currentTimeMillis = System.currentTimeMillis();
            this.f9378f.setFirstSpeedTime(-1L);
            int i = 0;
            try {
                o();
                z = false;
            } catch (com.ss.android.socialbase.downloader.exception.dq e2) {
                com.ss.android.socialbase.downloader.ox.dq.d(dq, "file exist " + e2.dq());
                this.op = e2.dq();
                z = true;
            }
            if (!this.bl) {
                this.le.d();
            }
            this.bl = false;
            if (le()) {
                f();
                return;
            }
            if (!TextUtils.isEmpty(this.op) && z) {
                if (this.f9378f.isExpiredRedownload()) {
                    this.ir = com.ss.android.socialbase.downloader.kk.iw.p(this.f9378f);
                }
                if (!this.ir) {
                    mp();
                    f();
                    return;
                }
            }
            while (!le()) {
                try {
                    try {
                        ir();
                        ji();
                        op();
                        ox = this.jy.ox(this.f9378f.getId());
                        u();
                    } catch (BaseException e3) {
                        com.ss.android.socialbase.downloader.ox.dq.p(dq, "downloadInner: baseException = " + e3);
                        if (this.q != com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_PAUSE) {
                            if (e3.getErrorCode() != 1025 && e3.getErrorCode() != 1009) {
                                if (dq(e3)) {
                                    if (com.ss.android.socialbase.downloader.kk.iw.dq(e3)) {
                                        c();
                                    }
                                    if (dq(e3, 0L) == com.ss.android.socialbase.downloader.exception.ia.RETURN) {
                                        gh();
                                        f();
                                        return;
                                    }
                                    gh();
                                    i = 0;
                                } else {
                                    d(e3);
                                }
                            }
                            this.q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_END_RIGHT_NOW;
                            gh();
                            f();
                            return;
                        }
                    }
                } catch (com.ss.android.socialbase.downloader.exception.dq unused) {
                    mp();
                } catch (com.ss.android.socialbase.downloader.exception.kk e4) {
                    try {
                        com.ss.android.socialbase.downloader.ox.dq.p(dq, "downloadInner: retry throwable for " + e4.dq());
                        if (this.q != com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_PAUSE) {
                            AtomicInteger atomicInteger = this.s;
                            if (atomicInteger != null && atomicInteger.get() > 0) {
                                this.f9378f.updateCurRetryTime(this.s.decrementAndGet());
                                this.f9378f.setStatus(5);
                            } else if (this.s == null) {
                                d(new BaseException(1043, "retry for Throwable, but retain retry time is NULL, last error is" + e4.dq()));
                            } else if (this.f9378f.trySwitchToNextBackupUrl()) {
                                this.f9378f.setStatus(5);
                                this.s.set(this.f9378f.getRetryCount());
                                this.f9378f.updateCurRetryTime(this.s.get());
                            } else {
                                d(new BaseException(1018, "retry for Throwable, but retry Time " + String.valueOf(this.f9378f.getRetryCount()) + " all used, last error is " + e4.dq()));
                            }
                            gh();
                            i = 0;
                        }
                    } finally {
                        gh();
                    }
                } catch (Throwable th) {
                    com.ss.android.socialbase.downloader.ox.dq.p(dq, "downloadInner: throwable =  " + th);
                    if (this.q != com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_PAUSE) {
                        d(new BaseException(1045, th));
                    }
                }
                if (q()) {
                    com.ss.android.socialbase.downloader.ox.dq.ox(dq, "downloadSegments return");
                    gh();
                    f();
                    return;
                }
                String connectionUrl = this.f9378f.getConnectionUrl();
                if (le()) {
                    gh();
                    f();
                    return;
                }
                long s = this.kk ? com.ss.android.socialbase.downloader.kk.iw.s(this.f9378f) : 0L;
                com.ss.android.socialbase.downloader.model.d dq2 = dq(this.f9378f, s);
                List<com.ss.android.socialbase.downloader.model.ox> dq3 = dq(dq2);
                com.ss.android.socialbase.downloader.kk.iw.dq(dq3, this.f9378f);
                com.ss.android.socialbase.downloader.kk.iw.d(dq3, this.f9378f);
                this.f9378f.setPreconnectLevel(i);
                long currentTimeMillis2 = System.currentTimeMillis();
                try {
                    dq(connectionUrl, dq3, s);
                    this.f9378f.increaseAllConnectTime(System.currentTimeMillis() - currentTimeMillis2);
                    if (le()) {
                        gh();
                        f();
                        return;
                    }
                    long totalBytes = this.f9378f.getTotalBytes();
                    dq(totalBytes);
                    int dq4 = dq(totalBytes, ox);
                    if (le()) {
                        gh();
                        f();
                        return;
                    }
                    if (dq4 <= 0) {
                        throw new BaseException(1032, "chunkCount is 0");
                    }
                    boolean z2 = dq4 == 1;
                    this.ia = z2;
                    if (z2) {
                        if (this.wp == null) {
                            try {
                                currentTimeMillis2 = System.currentTimeMillis();
                                dq(connectionUrl, dq3);
                                this.f9378f.increaseAllConnectTime(System.currentTimeMillis() - currentTimeMillis2);
                            } finally {
                            }
                        }
                        if (le()) {
                            gh();
                            f();
                            return;
                        } else {
                            this.f9378f.setFirstSpeedTime(System.currentTimeMillis() - currentTimeMillis);
                            jy();
                            dq(dq2, connectionUrl, this.wp);
                        }
                    } else {
                        if (!this.f9378f.isNeedReuseFirstConnection()) {
                            cd();
                        }
                        if (le()) {
                            gh();
                            f();
                            return;
                        } else {
                            jy();
                            this.f9378f.setFirstSpeedTime(System.currentTimeMillis() - currentTimeMillis);
                            if (this.kk) {
                                dq(dq4, ox);
                            } else {
                                dq(totalBytes, dq4);
                            }
                        }
                    }
                    f();
                    return;
                } finally {
                }
            }
            f();
        } catch (Throwable th2) {
            f();
            throw th2;
        }
    }

    private void ir() throws BaseException {
        if (TextUtils.isEmpty(this.f9378f.getSavePath())) {
            throw new BaseException(1028, "download savePath can not be empty");
        }
        if (TextUtils.isEmpty(this.f9378f.getName())) {
            throw new BaseException(1029, "download name can not be empty");
        }
        File file = new File(this.f9378f.getSavePath());
        if (file.exists()) {
            if (file.isDirectory()) {
                return;
            }
            if (!com.ss.android.socialbase.downloader.kk.p.d(this.f9378f)) {
                throw new BaseException(1031, "download savePath is not a directory:" + this.f9378f.getSavePath());
            }
            file.delete();
            if (file.mkdirs() || file.exists()) {
                return;
            }
            throw new BaseException(1031, "download savePath is not directory:path=" + this.f9378f.getSavePath());
        }
        boolean mkdirs = file.mkdirs();
        if (mkdirs || file.exists()) {
            return;
        }
        int i = 0;
        if (com.ss.android.socialbase.downloader.mn.dq.dq(this.f9378f.getId()).dq("opt_mkdir_failed", 0) != 1) {
            throw new BaseException(AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, "download savePath directory can not created:" + this.f9378f.getSavePath());
        }
        while (!mkdirs) {
            int i2 = i + 1;
            if (i >= 3) {
                break;
            }
            try {
                Thread.sleep(10L);
                mkdirs = file.mkdirs();
                i = i2;
            } catch (InterruptedException unused) {
            }
        }
        if (mkdirs || file.exists()) {
            return;
        }
        if (com.ss.android.socialbase.downloader.kk.iw.p(this.f9378f.getSavePath()) < 16384) {
            throw new BaseException(PluginConstants.ERROR_PLUGIN_SIGN_VERIFY, "download savePath directory can not created:" + this.f9378f.getSavePath());
        }
        throw new BaseException(AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, "download savePath directory can not created:" + this.f9378f.getSavePath());
    }

    private void ji() throws com.ss.android.socialbase.downloader.exception.kk, BaseException {
        com.ss.android.socialbase.downloader.impls.dq n;
        int id = this.f9378f.getId();
        int dq2 = com.ss.android.socialbase.downloader.downloader.ox.dq(this.f9378f);
        if (this.f9378f.isDownloaded() && !this.f9378f.isExpiredRedownload() && !this.ir) {
            throw new BaseException(1009, "file has downloaded");
        }
        DownloadInfo d2 = this.jy.d(dq2);
        if (d2 == null || (n = com.ss.android.socialbase.downloader.downloader.ox.n()) == null || d2.getId() == id || !d2.equalsTask(this.f9378f)) {
            return;
        }
        if (n.dq(d2.getId())) {
            this.jy.iw(id);
            throw new BaseException(1025, "another same task is downloading");
        }
        List<com.ss.android.socialbase.downloader.model.d> ox = this.jy.ox(dq2);
        com.ss.android.socialbase.downloader.kk.iw.dq(this.f9378f);
        this.jy.iw(dq2);
        if (d2.isBreakpointAvailable()) {
            this.f9378f.copyFromCacheData(d2, false);
            this.jy.dq(this.f9378f);
            if (ox != null) {
                for (com.ss.android.socialbase.downloader.model.d dVar : ox) {
                    dVar.d(id);
                    this.jy.dq(dVar);
                }
            }
            throw new com.ss.android.socialbase.downloader.exception.kk("retry task because id generator changed");
        }
    }

    private void jy() {
        if (com.ss.android.socialbase.downloader.mn.dq.dq(this.f9378f.getId()).dq("reset_retain_retry_times", 0) != 1 || this.er >= 3) {
            return;
        }
        this.s.set(this.f9378f.isBackUpUrlUsed() ? this.f9378f.getBackUpUrlRetryCount() : this.f9378f.getRetryCount());
        this.er++;
    }

    private boolean k() {
        if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_ERROR) {
            this.le.dq(this.k);
        } else if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_CANCELED) {
            this.le.ox();
        } else if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_PAUSE) {
            this.le.p();
        } else if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_END_RIGHT_NOW) {
            try {
                this.le.mn();
            } catch (BaseException e2) {
                this.le.dq(e2);
            }
        } else if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_END_FOR_FILE_EXIST) {
            try {
                this.le.dq(this.op);
            } catch (BaseException e3) {
                this.le.dq(e3);
            }
        } else {
            if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET) {
                this.le.dq(this.k, false);
                return false;
            }
            if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_WAITING_ASYNC_HANDLER) {
                return true;
            }
            com.ss.android.socialbase.downloader.constants.ia iaVar = this.q;
            com.ss.android.socialbase.downloader.constants.ia iaVar2 = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_RETRY_DELAY;
            if (iaVar == iaVar2 && !wp()) {
                com.ss.android.socialbase.downloader.ox.dq.d(dq, "doTaskStatusHandle retryDelay");
                kx();
                return this.q == iaVar2;
            }
            try {
                if (!e()) {
                    return false;
                }
                this.le.iw();
                com.ss.android.socialbase.downloader.impls.cd.dq().p();
            } catch (Throwable th) {
                d(new BaseException(1008, com.ss.android.socialbase.downloader.kk.iw.d(th, "doTaskStatusHandle onComplete")));
            }
        }
        return true;
    }

    private boolean kk() {
        int status = this.f9378f.getStatus();
        if (status == 1 || this.f9378f.canSkipStatusHandler()) {
            return true;
        }
        if (status == -2 || status == -4) {
            return false;
        }
        d(new BaseException(1000, awf.ac(status, "The download Task can't start, because its status is not prepare:")));
        return false;
    }

    private void kx() {
        this.q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_NONE;
    }

    private boolean le() {
        if (!i() && this.f9378f.getStatus() != -2) {
            return false;
        }
        if (i()) {
            return true;
        }
        if (this.f9378f.getStatus() == -2) {
            this.q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_PAUSE;
            return true;
        }
        if (this.f9378f.getStatus() != -4) {
            return true;
        }
        this.q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_CANCELED;
        return true;
    }

    private void mp() {
        com.ss.android.socialbase.downloader.ox.dq.d(dq, "finishWithFileExist");
        if (com.ss.android.socialbase.downloader.mn.dq.ox().d("fix_end_for_file_exist_error", true)) {
            if (this.op.equals(this.f9378f.getName())) {
                this.q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_END_RIGHT_NOW;
                return;
            } else {
                this.q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_END_FOR_FILE_EXIST;
                return;
            }
        }
        if (this.op.equals(this.f9378f.getTargetFilePath())) {
            this.q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_END_RIGHT_NOW;
        } else {
            this.q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_END_FOR_FILE_EXIST;
        }
    }

    private void n() throws BaseException {
        long j;
        int dq2;
        try {
            j = com.ss.android.socialbase.downloader.kk.iw.p(this.f9378f.getTempPath());
        } catch (BaseException unused) {
            j = 0;
        }
        String str = dq;
        com.ss.android.socialbase.downloader.ox.dq.ox(str, "checkSpaceOverflowInProgress: available = " + com.ss.android.socialbase.downloader.kk.iw.dq(j) + "MB");
        if (j > 0) {
            long totalBytes = this.f9378f.getTotalBytes() - this.f9378f.getCurBytes();
            if (j < totalBytes && (dq2 = com.ss.android.socialbase.downloader.mn.dq.dq(this.f9378f.getId()).dq("space_fill_min_keep_mb", 100)) > 0) {
                long j2 = j - (dq2 * BaseConstants.MB_VALUE);
                StringBuilder z = tn.z(dq2, "checkSpaceOverflowInProgress: minKeep  = ", "MB, canDownload = ");
                z.append(com.ss.android.socialbase.downloader.kk.iw.dq(j2));
                z.append("MB");
                com.ss.android.socialbase.downloader.ox.dq.ox(str, z.toString());
                if (j2 > 0) {
                    this.u = j2 + BaseConstants.MB_VALUE + this.f9378f.getCurBytes();
                    return;
                } else {
                    this.u = 0L;
                    throw new com.ss.android.socialbase.downloader.exception.p(j, totalBytes);
                }
            }
        }
        this.u = 0L;
    }

    private void no() {
        Process.setThreadPriority(10);
        try {
            DownloadInfo downloadInfo = this.f9378f;
            if (downloadInfo != null && this.f9375c > 0) {
                downloadInfo.increaseDownloadPrepareTime(System.currentTimeMillis() - this.f9375c);
            }
        } catch (Throwable unused) {
        }
        try {
            IDownloadInterceptor interceptor = this.ox.getInterceptor();
            if (interceptor != null) {
                if (interceptor.intercepte()) {
                    this.le.s();
                    return;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (!kk()) {
            wp monitorDepend = this.ox.getMonitorDepend();
            DownloadInfo downloadInfo2 = this.f9378f;
            BaseException baseException = new BaseException(1003, "task status is invalid");
            DownloadInfo downloadInfo3 = this.f9378f;
            com.ss.android.socialbase.downloader.p.dq.dq(monitorDepend, downloadInfo2, baseException, downloadInfo3 != null ? downloadInfo3.getStatus() : 0);
            return;
        }
        while (true) {
            ig();
            if (!this.bl) {
                return;
            }
            if (this.ji > 0) {
                this.ji--;
            } else {
                if (this.f9378f.getCurBytes() != this.f9378f.getTotalBytes()) {
                    com.ss.android.socialbase.downloader.ox.dq.d(dq, this.f9378f.getErrorBytesLog());
                    this.le.dq(new com.ss.android.socialbase.downloader.exception.iw(1027, "current bytes is not equals to total bytes, bytes invalid retry status is : " + this.f9378f.getByteInvalidRetryStatus()));
                    return;
                }
                if (this.f9378f.getCurBytes() <= 0) {
                    com.ss.android.socialbase.downloader.ox.dq.d(dq, this.f9378f.getErrorBytesLog());
                    this.le.dq(new com.ss.android.socialbase.downloader.exception.iw(1026, "curBytes is 0, bytes invalid retry status is : " + this.f9378f.getByteInvalidRetryStatus()));
                    return;
                }
                if (this.f9378f.getTotalBytes() <= 0) {
                    com.ss.android.socialbase.downloader.ox.dq.d(dq, this.f9378f.getErrorBytesLog());
                    this.le.dq(new com.ss.android.socialbase.downloader.exception.iw(1044, "TotalBytes is 0, bytes invalid retry status is : " + this.f9378f.getByteInvalidRetryStatus()));
                    return;
                }
            }
        }
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x00f4: IF  (r4 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:91:0x0101, block:B:90:0x00f4 */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b3 A[Catch: all -> 0x00d4, TryCatch #8 {all -> 0x00d4, blocks: (B:33:0x00af, B:35:0x00b3, B:37:0x00b7, B:71:0x00f1), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void o() throws com.ss.android.socialbase.downloader.exception.dq {
        boolean z;
        boolean z2;
        DownloadTask downloadTask;
        boolean z3 = false;
        try {
            try {
                int id = this.f9378f.getId();
                if (this.jy != null) {
                    if (com.ss.android.socialbase.downloader.kk.dq.dq(2048)) {
                        this.jy.s();
                    }
                    DownloadInfo d2 = this.jy.d(id);
                    z2 = true;
                    if (d2 != null && !d2.isNewTask()) {
                        String savePath = this.f9378f.getSavePath();
                        String md5 = this.f9378f.getMd5();
                        this.f9378f.copyFromCacheData(d2, true);
                        boolean z4 = com.ss.android.socialbase.downloader.kk.dq.dq(4096) && d2 != this.f9378f;
                        try {
                            if (savePath.equals(d2.getSavePath()) && com.ss.android.socialbase.downloader.kk.iw.dq(d2, false, md5)) {
                                try {
                                    throw new com.ss.android.socialbase.downloader.exception.dq(d2.getName());
                                } catch (com.ss.android.socialbase.downloader.exception.dq e2) {
                                    throw e2;
                                } catch (Throwable th) {
                                    th = th;
                                    z3 = z4;
                                    downloadTask = this.ox;
                                    if (downloadTask != null) {
                                    }
                                    if (z3) {
                                    }
                                }
                            } else if (com.ss.android.socialbase.downloader.downloader.ox.dq(d2) != id) {
                                try {
                                    this.jy.iw(id);
                                } catch (SQLiteException e3) {
                                    e3.printStackTrace();
                                }
                            } else {
                                z2 = z4;
                            }
                        } catch (com.ss.android.socialbase.downloader.exception.dq e4) {
                            e = e4;
                            throw e;
                        } catch (Throwable th2) {
                            th = th2;
                            z3 = z4;
                            z2 = false;
                            downloadTask = this.ox;
                            if (downloadTask != null) {
                                com.ss.android.socialbase.downloader.p.dq.dq(downloadTask.getMonitorDepend(), this.f9378f, new BaseException(1003, com.ss.android.socialbase.downloader.kk.iw.d(th, "checkTaskCache")), this.f9378f.getStatus());
                            }
                            if (z3) {
                            }
                        }
                    }
                    this.f9378f.reset();
                } else {
                    z2 = false;
                }
            } catch (Throwable th3) {
                if (0 != 0) {
                    if (z) {
                        try {
                            if (this.ce.dq("fix_file_exist_update_download_info")) {
                            }
                        } catch (SQLiteException e5) {
                            e5.printStackTrace();
                        }
                    }
                    this.jy.dq(this.f9378f);
                }
                throw th3;
            }
        } catch (com.ss.android.socialbase.downloader.exception.dq e6) {
            e = e6;
        } catch (Throwable th4) {
            th = th4;
        }
        try {
            ia();
            if (z2) {
                try {
                    this.jy.dq(this.f9378f);
                } catch (SQLiteException e7) {
                    e7.printStackTrace();
                }
            }
        } catch (com.ss.android.socialbase.downloader.exception.dq e8) {
            e = e8;
            throw e;
        } catch (Throwable th5) {
            th = th5;
            z3 = z2;
            z2 = false;
            downloadTask = this.ox;
            if (downloadTask != null && this.f9378f != null) {
                com.ss.android.socialbase.downloader.p.dq.dq(downloadTask.getMonitorDepend(), this.f9378f, new BaseException(1003, com.ss.android.socialbase.downloader.kk.iw.d(th, "checkTaskCache")), this.f9378f.getStatus());
            }
            if (z3) {
                if (z2) {
                    try {
                        if (!this.ce.dq("fix_file_exist_update_download_info")) {
                            return;
                        }
                    } catch (SQLiteException e9) {
                        e9.printStackTrace();
                        return;
                    }
                }
                this.jy.dq(this.f9378f);
            }
        }
    }

    private void op() throws com.ss.android.socialbase.downloader.exception.iw {
        if (this.f9378f.isOnlyWifi() && !com.ss.android.socialbase.downloader.kk.iw.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), "android.permission.ACCESS_NETWORK_STATE")) {
            throw new com.ss.android.socialbase.downloader.exception.iw(1019, "download task need permission:android.permission.ACCESS_NETWORK_STATE");
        }
        if (!this.f9378f.isDownloadWithWifiValid()) {
            throw new com.ss.android.socialbase.downloader.exception.ox();
        }
        if (!this.f9378f.isPauseReserveWithWifiValid()) {
            throw new com.ss.android.socialbase.downloader.exception.s();
        }
    }

    private boolean p(BaseException baseException) {
        AtomicInteger atomicInteger = this.s;
        boolean z = true;
        if (atomicInteger == null) {
            d(new BaseException(1043, "retry for exception, but retain retry time is null, last error is :" + baseException.getErrorMessage()));
            return true;
        }
        if (atomicInteger.get() <= 0 || (baseException != null && baseException.getErrorCode() == 1070)) {
            if (this.f9378f.trySwitchToNextBackupUrl()) {
                this.s.set(this.f9378f.getBackUpUrlRetryCount());
                this.f9378f.updateCurRetryTime(this.s.get());
            } else {
                if (baseException == null || ((baseException.getErrorCode() != 1011 && (baseException.getCause() == null || !(baseException.getCause() instanceof SSLHandshakeException))) || !this.f9378f.canReplaceHttpForRetry())) {
                    int errorCode = baseException.getErrorCode();
                    String valueOf = String.valueOf(this.s);
                    String valueOf2 = String.valueOf(this.f9378f.getRetryCount());
                    String errorMessage = baseException.getErrorMessage();
                    StringBuilder o = tn.o("retry for exception, but current retry time : ", valueOf, " , retry Time ", valueOf2, " all used, last error is ");
                    o.append(errorMessage);
                    d(new BaseException(errorCode, o.toString()));
                    return true;
                }
                this.s.set(this.f9378f.getRetryCount());
                this.f9378f.updateCurRetryTime(this.s.get());
                this.f9378f.setHttpsToHttpRetryUsed(true);
            }
            z = false;
        }
        if (this.q != com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_RETRY_DELAY && z) {
            this.f9378f.updateCurRetryTime(this.s.decrementAndGet());
        }
        return false;
    }

    private boolean q() throws BaseException, InterruptedException {
        if (this.f9378f.isExpiredRedownload() || this.f9378f.getChunkCount() != 1 || this.f9378f.getThrottleNetSpeed() > 0) {
            return false;
        }
        JSONObject p = com.ss.android.socialbase.downloader.mn.dq.dq(this.f9378f.getId()).p("segment_config");
        List<com.ss.android.socialbase.downloader.iw.kk> q = this.jy.q(this.f9378f.getId());
        if (this.f9378f.getCurBytes() > 0) {
            if (q == null || q.isEmpty()) {
                return false;
            }
            if (p == null) {
                p = new JSONObject();
            }
        }
        if (p == null) {
            return false;
        }
        this.wn = new no(this.f9378f, q.dq(p), this);
        if (!le()) {
            return this.wn.dq(q);
        }
        com.ss.android.socialbase.downloader.ox.dq.ox(dq, "downloadSegments: is stopped by user");
        if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_CANCELED) {
            this.wn.dq();
        } else {
            this.wn.d();
        }
        return true;
    }

    private void r() throws BaseException {
        if (this.mn != null) {
            if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_CANCELED) {
                this.f9378f.setStatus(-4);
                this.mn.ox();
            } else if (this.q != com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_PAUSE) {
                this.mn.p();
            } else {
                this.f9378f.setStatus(-2);
                this.mn.d();
            }
        }
    }

    private void u() {
        long iw = com.ss.android.socialbase.downloader.kk.iw.iw(this.f9378f);
        long curBytes = this.f9378f.getCurBytes();
        if (iw != curBytes) {
            String str = dq;
            StringBuilder l = awf.l(iw, "checkTaskCanResume: offset = ", ", curBytes = ");
            l.append(curBytes);
            com.ss.android.socialbase.downloader.ox.dq.p(str, l.toString());
        }
        this.f9378f.setCurBytes(iw);
        boolean z = iw > 0;
        this.kk = z;
        if (z || this.ir) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.ox(dq, "checkTaskCanResume: deleteAllDownloadFiles");
        this.jy.p(this.f9378f.getId());
        this.jy.mp(this.f9378f.getId());
        com.ss.android.socialbase.downloader.kk.iw.dq(this.f9378f);
    }

    private boolean wn() {
        return false;
    }

    private boolean wp() {
        if (this.f9378f.getChunkCount() <= 1) {
            return this.f9378f.getCurBytes() > 0 && this.f9378f.getCurBytes() == this.f9378f.getTotalBytes();
        }
        List<com.ss.android.socialbase.downloader.model.d> ox = this.jy.ox(this.f9378f.getId());
        if (ox == null || ox.size() <= 1) {
            return false;
        }
        for (com.ss.android.socialbase.downloader.model.d dVar : ox) {
            if (dVar == null || !dVar.kk()) {
                return false;
            }
        }
        return true;
    }

    public void d() {
        com.ss.android.socialbase.downloader.constants.ia iaVar = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_CANCELED;
        this.q = iaVar;
        if (this.wn != null) {
            this.wn.dq();
        }
        if (this.mn != null) {
            this.mn.ox();
        }
        if (this.wn == null && this.mn == null) {
            gh();
            this.q = iaVar;
            f();
        }
        ce();
    }

    @Override // com.ss.android.socialbase.downloader.ia.iw
    public void d(BaseException baseException) {
        com.ss.android.socialbase.downloader.ox.dq.d(dq, "onError:" + baseException.getMessage());
        this.q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_ERROR;
        this.k = baseException;
        ce();
    }

    @Override // com.ss.android.socialbase.downloader.ia.iw
    public boolean d(long j) throws BaseException {
        if (this.u > 0 && this.f9378f.getCurBytes() > this.u) {
            n();
        }
        return this.le.dq(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00fa  */
    @Override // com.ss.android.socialbase.downloader.ia.iw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public com.ss.android.socialbase.downloader.exception.ia dq(BaseException baseException, long j) {
        long totalBytes;
        long j2;
        this.k = baseException;
        this.f9378f.increaseCurBytes(-j);
        this.jy.dq(this.f9378f);
        if (i()) {
            return com.ss.android.socialbase.downloader.exception.ia.RETURN;
        }
        if (baseException != null && baseException.getErrorCode() == 1047) {
            if (this.kx != null && !this.f9378f.isForbiddenRetryed()) {
                com.ss.android.socialbase.downloader.depend.d dVar = new com.ss.android.socialbase.downloader.depend.d() { // from class: com.ss.android.socialbase.downloader.ia.ox.1
                    @Override // com.ss.android.socialbase.downloader.depend.d, com.ss.android.socialbase.downloader.depend.le
                    public void dq(List<String> list) {
                        super.dq(list);
                        ox.this.dq(list);
                    }
                };
                boolean dq2 = this.kx.dq(dVar);
                this.f9378f.setForbiddenRetryed();
                if (dq2) {
                    if (!dVar.dq()) {
                        ce();
                        this.le.ia();
                        this.q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_WAITING_ASYNC_HANDLER;
                        return com.ss.android.socialbase.downloader.exception.ia.RETURN;
                    }
                }
            } else if (p(baseException)) {
                return com.ss.android.socialbase.downloader.exception.ia.RETURN;
            }
            if (wn()) {
            }
        } else if (!com.ss.android.socialbase.downloader.kk.iw.ia(baseException)) {
            if (p(baseException)) {
                return com.ss.android.socialbase.downloader.exception.ia.RETURN;
            }
            if (wn()) {
                ce();
            }
        } else {
            if (this.h == null) {
                d(baseException);
                return com.ss.android.socialbase.downloader.exception.ia.RETURN;
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            com.ss.android.socialbase.downloader.depend.fw fwVar = new com.ss.android.socialbase.downloader.depend.fw() { // from class: com.ss.android.socialbase.downloader.ia.ox.2
                @Override // com.ss.android.socialbase.downloader.depend.fw
                public void dq() {
                    synchronized (ox.this) {
                        atomicBoolean.set(true);
                        ox.this.er();
                    }
                }
            };
            if (baseException instanceof com.ss.android.socialbase.downloader.exception.p) {
                com.ss.android.socialbase.downloader.exception.p pVar = (com.ss.android.socialbase.downloader.exception.p) baseException;
                j2 = pVar.dq();
                totalBytes = pVar.d();
            } else {
                totalBytes = this.f9378f.getTotalBytes();
                j2 = -1;
            }
            synchronized (this) {
                try {
                    if (!this.h.dq(j2, totalBytes, fwVar)) {
                        if (this.q == com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_WAITING_ASYNC_HANDLER) {
                            return com.ss.android.socialbase.downloader.exception.ia.RETURN;
                        }
                        d(baseException);
                        return com.ss.android.socialbase.downloader.exception.ia.RETURN;
                    }
                    if (!com.ss.android.socialbase.downloader.mn.dq.dq(this.f9378f.getId()).d("not_delete_when_clean_space", false)) {
                        e();
                    }
                    if (!atomicBoolean.get()) {
                        com.ss.android.socialbase.downloader.constants.ia iaVar = this.q;
                        com.ss.android.socialbase.downloader.constants.ia iaVar2 = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_WAITING_ASYNC_HANDLER;
                        if (iaVar != iaVar2) {
                            this.q = iaVar2;
                            ce();
                            this.le.ia();
                        }
                        return com.ss.android.socialbase.downloader.exception.ia.RETURN;
                    }
                    if (p(baseException)) {
                        return com.ss.android.socialbase.downloader.exception.ia.RETURN;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        com.ss.android.socialbase.downloader.downloader.iw iwVar = this.le;
        com.ss.android.socialbase.downloader.constants.ia iaVar3 = this.q;
        com.ss.android.socialbase.downloader.constants.ia iaVar4 = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_RETRY_DELAY;
        iwVar.dq(baseException, iaVar3 == iaVar4);
        return this.q == iaVar4 ? com.ss.android.socialbase.downloader.exception.ia.RETURN : com.ss.android.socialbase.downloader.exception.ia.CONTINUE;
    }

    @Override // com.ss.android.socialbase.downloader.ia.iw
    public com.ss.android.socialbase.downloader.exception.ia dq(com.ss.android.socialbase.downloader.model.d dVar, BaseException baseException, long j) {
        if (i()) {
            return com.ss.android.socialbase.downloader.exception.ia.RETURN;
        }
        if (baseException != null && (baseException.getErrorCode() == 1047 || com.ss.android.socialbase.downloader.kk.iw.ia(baseException))) {
            return dq(baseException, j);
        }
        this.k = baseException;
        this.f9378f.increaseCurBytes(-j);
        this.jy.dq(this.f9378f);
        if (p(baseException)) {
            return com.ss.android.socialbase.downloader.exception.ia.RETURN;
        }
        com.ss.android.socialbase.downloader.downloader.iw iwVar = this.le;
        com.ss.android.socialbase.downloader.constants.ia iaVar = this.q;
        com.ss.android.socialbase.downloader.constants.ia iaVar2 = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_RETRY_DELAY;
        iwVar.dq(dVar, baseException, iaVar == iaVar2);
        if (this.q != iaVar2 && this.f9378f.isNeedRetryDelay()) {
            long h = h();
            if (h > 0) {
                com.ss.android.socialbase.downloader.ox.dq.ox(dq, "onSingleChunkRetry with delay time " + h);
                try {
                    Thread.sleep(h);
                } catch (Throwable th) {
                    com.ss.android.socialbase.downloader.ox.dq.p(dq, "onSingleChunkRetry:" + th.getMessage());
                }
            }
        }
        return com.ss.android.socialbase.downloader.exception.ia.CONTINUE;
    }

    @Override // com.ss.android.socialbase.downloader.ia.iw
    public synchronized com.ss.android.socialbase.downloader.model.d dq(int i) {
        com.ss.android.socialbase.downloader.model.d dq2;
        if (this.f9378f.getChunkCount() < 2) {
            return null;
        }
        List<com.ss.android.socialbase.downloader.model.d> ox = this.jy.ox(this.f9378f.getId());
        if (ox != null && !ox.isEmpty()) {
            for (int i2 = 0; i2 < ox.size(); i2++) {
                com.ss.android.socialbase.downloader.model.d dVar = ox.get(i2);
                if (dVar != null && (dq2 = dq(dVar, i)) != null) {
                    return dq2;
                }
            }
            return null;
        }
        return null;
    }

    public void dq() {
        com.ss.android.socialbase.downloader.constants.ia iaVar = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_PAUSE;
        this.q = iaVar;
        if (this.wn != null) {
            this.wn.d();
        }
        if (this.mn != null) {
            this.mn.d();
        }
        if (this.wn == null && this.mn == null) {
            gh();
            this.q = iaVar;
            f();
        }
        try {
            Iterator it = ((ArrayList) this.iw.clone()).iterator();
            while (it.hasNext()) {
                d dVar = (d) it.next();
                if (dVar != null) {
                    dVar.dq();
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:6|7|8|(4:10|(1:12)(1:68)|13|(2:15|(12:17|(2:19|(1:21)(2:22|23))|24|(1:26)|56|28|29|30|31|32|33|34)(2:57|(6:59|30|31|32|33|34)(4:60|(1:62)(1:65)|63|64)))(1:66))(2:69|(4:71|(1:73)(1:76)|74|75)(2:77|(2:79|80)))|67|29|30|31|32|33|34) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0103, code lost:
    
        if (r10 > r26) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x016c, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x016d, code lost:
    
        com.ss.android.socialbase.downloader.ox.dq.s(com.ss.android.socialbase.downloader.ia.ox.dq, "checkSpaceOverflow: setLength1 e = " + r0 + ", mustSetLength = " + r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x018a, code lost:
    
        if (r10 >= r5) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0194, code lost:
    
        r7.d(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0198, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0199, code lost:
    
        com.ss.android.socialbase.downloader.ox.dq.s(com.ss.android.socialbase.downloader.ia.ox.dq, "checkSpaceOverflow: setLength2 ex = " + r0 + ", mustSetLength = " + r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01b2, code lost:
    
        if (r2 == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01ba, code lost:
    
        throw new com.ss.android.socialbase.downloader.exception.BaseException(com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader.KeyIsPreloadWaitListType, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01bb, code lost:
    
        if (r2 != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01cd, code lost:
    
        throw new com.ss.android.socialbase.downloader.exception.BaseException(com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader.KeyIsPreloadWaitListType, r0);
     */
    @Override // com.ss.android.socialbase.downloader.ia.iw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(long j) throws BaseException {
        long j2;
        long j3;
        long j4;
        boolean z;
        String tempPath = this.f9378f.getTempPath();
        String tempName = this.f9378f.getTempName();
        if (com.ss.android.socialbase.downloader.kk.iw.d(j)) {
            return;
        }
        com.ss.android.socialbase.downloader.model.s dq2 = com.ss.android.socialbase.downloader.kk.iw.dq(this.f9378f, tempPath, tempName, -1);
        try {
            long length = new File(tempPath, tempName).length();
            long j5 = j - length;
            long p = com.ss.android.socialbase.downloader.kk.iw.p(tempPath);
            com.ss.android.socialbase.downloader.mn.dq dq3 = com.ss.android.socialbase.downloader.mn.dq.dq(this.f9378f.getId());
            if (dq3.dq("space_fill_part_download", 0) == 1) {
                this.u = 0L;
                long totalBytes = j5 <= 0 ? this.f9378f.getTotalBytes() - this.f9378f.getCurBytes() : j5;
                if (p < totalBytes) {
                    String str = dq;
                    j2 = 0;
                    com.ss.android.socialbase.downloader.ox.dq.p(str, "checkSpaceOverflow: contentLength = " + com.ss.android.socialbase.downloader.kk.iw.dq(j) + "MB, downloaded = " + com.ss.android.socialbase.downloader.kk.iw.dq(length) + "MB, required = " + com.ss.android.socialbase.downloader.kk.iw.dq(totalBytes) + "MB, available = " + com.ss.android.socialbase.downloader.kk.iw.dq(p) + "MB");
                    if (p <= 0) {
                        if (dq3.dq("download_when_space_negative", 0) != 1) {
                            StringBuilder sb = new StringBuilder("availableSpace ");
                            sb.append(p == 0 ? "=" : "<");
                            sb.append(" 0");
                            throw new BaseException(1052, sb.toString());
                        }
                        j3 = j;
                        j4 = j3;
                        z = false;
                        dq2.d(j3);
                        com.ss.android.socialbase.downloader.kk.iw.dq(dq2);
                    }
                    int dq4 = dq3.dq("space_fill_min_keep_mb", 100);
                    if (dq4 > 0) {
                        long j6 = p - (dq4 * BaseConstants.MB_VALUE);
                        com.ss.android.socialbase.downloader.ox.dq.p(str, "checkSpaceOverflow: minKeep = " + dq4 + "MB, canDownload = " + com.ss.android.socialbase.downloader.kk.iw.dq(j6) + "MB");
                        if (j6 <= 0) {
                            throw new com.ss.android.socialbase.downloader.exception.p(p, totalBytes);
                        }
                        this.u = this.f9378f.getCurBytes() + j6;
                        p = j6;
                    }
                    if (length < j) {
                        j4 = length + p;
                    }
                    j4 = j;
                    j3 = j;
                    z = true;
                    dq2.d(j3);
                    com.ss.android.socialbase.downloader.kk.iw.dq(dq2);
                }
                j2 = 0;
            } else {
                j2 = 0;
                if (p <= 0) {
                    StringBuilder sb2 = new StringBuilder("availableSpace ");
                    sb2.append(p == 0 ? "=" : "<");
                    sb2.append(" 0");
                    throw new BaseException(1052, sb2.toString());
                }
                if (p < j5) {
                    throw new com.ss.android.socialbase.downloader.exception.p(p, j5);
                }
            }
            j3 = j;
            j4 = j3;
            z = true;
            dq2.d(j3);
            com.ss.android.socialbase.downloader.kk.iw.dq(dq2);
        } catch (Throwable th) {
            com.ss.android.socialbase.downloader.kk.iw.dq(dq2);
            throw th;
        }
    }

    @Override // com.ss.android.socialbase.downloader.ia.iw
    public void dq(BaseException baseException, boolean z) {
        com.ss.android.socialbase.downloader.ox.dq.d(dq, "onAllChunkRetryWithReset");
        this.q = com.ss.android.socialbase.downloader.constants.ia.RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET;
        this.k = baseException;
        ce();
        if (z ? p(baseException) : false) {
            return;
        }
        c();
    }

    @Override // com.ss.android.socialbase.downloader.ia.iw
    public void dq(d dVar) {
        if (this.ia) {
            return;
        }
        synchronized (this) {
            this.iw.remove(dVar);
        }
    }

    @Override // com.ss.android.socialbase.downloader.ia.iw
    public void dq(com.ss.android.socialbase.downloader.network.mn mnVar) {
        if (mnVar != null) {
            try {
                int d2 = mnVar.d();
                this.f9378f.setHttpStatusCode(d2);
                this.f9378f.setHttpStatusMessage(com.ss.android.socialbase.downloader.kk.d.dq(d2));
                return;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        this.f9378f.setHttpStatusCode(-1);
        this.f9378f.setHttpStatusMessage("");
    }

    @Override // com.ss.android.socialbase.downloader.ia.iw
    public void dq(String str, com.ss.android.socialbase.downloader.network.mn mnVar, long j) throws BaseException, com.ss.android.socialbase.downloader.exception.kk {
        long j2;
        long j3;
        if (mnVar == null) {
            return;
        }
        try {
            com.ss.android.socialbase.downloader.model.p pVar = new com.ss.android.socialbase.downloader.model.p(str, mnVar);
            int i = pVar.ox;
            String p = pVar.p();
            if (TextUtils.isEmpty(this.f9378f.getMimeType()) && !TextUtils.isEmpty(p)) {
                this.f9378f.setMimeType(p);
            }
            boolean d2 = pVar.d();
            this.o = d2;
            this.f9378f.setSupportPartial(d2);
            this.no = pVar.dq();
            String str2 = this.f9378f.geteTag();
            String ox = pVar.ox();
            String iw = pVar.iw();
            String mn = pVar.mn();
            String str3 = dq;
            StringBuilder sb = new StringBuilder("dcache=responseCode=");
            sb.append(i);
            sb.append(" last_modified=");
            sb.append(iw);
            sb.append(" CACHE_CONTROL=");
            sb.append(mn);
            sb.append(" max-age=");
            String str4 = ox;
            sb.append(pVar.no());
            sb.append(" isDeleteCacheIfCheckFailed=");
            sb.append(this.f9378f.isDeleteCacheIfCheckFailed());
            com.ss.android.socialbase.downloader.ox.dq.d(str3, sb.toString());
            com.ss.android.socialbase.downloader.ox.dq.d(str3, "dcache=firstOffset=" + j + " cur=" + iw + " before=" + this.f9378f.getLastModified() + " cur=" + pVar.o() + " before=" + this.f9378f.getTotalBytes());
            if (!TextUtils.isEmpty(mn)) {
                this.f9378f.setCacheControl(mn);
                if (pVar.no() > 0) {
                    this.f9378f.setCacheExpiredTime((pVar.no() * 1000) + System.currentTimeMillis());
                }
            }
            if (this.f9378f.isExpiredRedownload() && this.ir && !TextUtils.isEmpty(this.op)) {
                if (i == 304 || ((!TextUtils.isEmpty(this.f9378f.getLastModified()) || !this.f9378f.isDeleteCacheIfCheckFailed()) && TextUtils.equals(iw, this.f9378f.getLastModified()))) {
                    com.ss.android.socialbase.downloader.ox.dq.d(str3, "dcache=responseCode=" + i + " lastModified not changed, use local file  " + iw);
                    throw new com.ss.android.socialbase.downloader.exception.dq(this.op);
                }
                com.ss.android.socialbase.downloader.kk.iw.dq(this.f9378f);
            }
            if (j > 0 && this.f9378f.isExpiredRedownload() && !TextUtils.equals(iw, this.f9378f.getLastModified())) {
                com.ss.android.socialbase.downloader.ox.dq.d(str3, "dcache cdn file change, so retry");
                dq("", "cdn file changed");
            }
            if (!TextUtils.isEmpty(iw)) {
                this.f9378f.setLastModified(iw);
            }
            if (dq(i, str2, str4)) {
                if (!(mnVar instanceof kk)) {
                    throw new com.ss.android.socialbase.downloader.exception.d(1002, i, "");
                }
                if (!TextUtils.isEmpty(str2) && str2.equals(str4)) {
                    str4 = "";
                }
                dq(str4, "eTag of server file changed");
            }
            if (!this.o && !this.no) {
                if (i == 403) {
                    throw new BaseException(1047, "response code error : 403");
                }
                throw new com.ss.android.socialbase.downloader.exception.d(1004, i, "response code error : " + i);
            }
            if (this.no && j > 0) {
                if (!(mnVar instanceof kk)) {
                    throw new BaseException(1004, "isResponseFromBegin but firstOffset > 0");
                }
                dq("", "http head request not support");
            }
            long ia = pVar.ia();
            if (!(mnVar instanceof kk) && ia < 0 && com.ss.android.socialbase.downloader.kk.p.dq(this.f9378f)) {
                throw new BaseException(1004, "");
            }
            String dq2 = TextUtils.isEmpty(this.f9378f.getName()) ? com.ss.android.socialbase.downloader.kk.iw.dq(mnVar, this.f9378f.getUrl()) : "";
            boolean kk = pVar.kk();
            this.ig = kk;
            if (!kk && ia == 0 && !(mnVar instanceof kk)) {
                throw new BaseException(1004, "");
            }
            if (kk) {
                j2 = 0;
                j3 = -1;
            } else {
                String d3 = com.ss.android.socialbase.downloader.kk.iw.d(mnVar, "Content-Range");
                com.ss.android.socialbase.downloader.ox.dq.ox(str3, "firstConnection: contentRange = " + d3);
                if (TextUtils.isEmpty(d3) || !this.ce.d("fix_get_total_bytes", true)) {
                    j2 = 0;
                    long j4 = j + ia;
                    com.ss.android.socialbase.downloader.ox.dq.s(str3, "firstConnection: 2 totalLength = " + j4 + ", contentLength = " + ia);
                    j3 = j4;
                } else {
                    j3 = com.ss.android.socialbase.downloader.kk.iw.d(d3);
                    com.ss.android.socialbase.downloader.ox.dq.ox(str3, "firstConnection: 1 totalLength = " + j3);
                    j2 = 0L;
                }
            }
            if (!TextUtils.isEmpty(this.f9378f.getTaskKey()) && this.f9378f.getTotalBytes() > j2 && j3 != this.f9378f.getTotalBytes()) {
                if (!(mnVar instanceof kk)) {
                    throw new com.ss.android.socialbase.downloader.exception.d(1002, i, "");
                }
                dq("", "file totalLength changed");
            }
            if (le()) {
                return;
            }
            if (this.f9378f.getExpectFileLength() > j2 && com.ss.android.socialbase.downloader.mn.dq.dq(this.f9378f.getId()).d("force_check_file_length") == 1 && this.f9378f.getExpectFileLength() != j3) {
                throw new BaseException(1070, "expectFileLength = " + this.f9378f.getExpectFileLength() + " , totalLength = " + j3);
            }
            this.le.dq(j3, str4, dq2);
        } catch (BaseException e2) {
            throw e2;
        } catch (com.ss.android.socialbase.downloader.exception.kk e3) {
            throw e3;
        } catch (Throwable th) {
            com.ss.android.socialbase.downloader.kk.iw.dq(th, "HandleFirstConnection");
        }
    }

    public void dq(Future future) {
        this.f9376d = future;
    }

    @Override // com.ss.android.socialbase.downloader.ia.iw
    public boolean dq(BaseException baseException) {
        if (this.wn != null && com.ss.android.socialbase.downloader.kk.iw.kk(baseException) && this.s.get() < this.f9378f.getRetryCount()) {
            return false;
        }
        if (!com.ss.android.socialbase.downloader.kk.iw.d(baseException)) {
            AtomicInteger atomicInteger = this.s;
            return ((atomicInteger != null && atomicInteger.get() > 0) || this.f9378f.hasNextBackupUrl() || (baseException != null && ((baseException.getErrorCode() == 1011 || (baseException.getCause() != null && (baseException.getCause() instanceof SSLHandshakeException))) && this.f9378f.canReplaceHttpForRetry()))) && !(baseException instanceof com.ss.android.socialbase.downloader.exception.iw);
        }
        if (this.ia && !this.p) {
            com.ss.android.socialbase.downloader.kk.iw.dq(this.f9378f);
            this.p = true;
        }
        return true;
    }

    public void iw() {
        this.f9375c = System.currentTimeMillis();
        this.le.dq();
    }

    public Future mn() {
        return this.f9376d;
    }

    public DownloadTask ox() {
        return this.ox;
    }

    @Override // com.ss.android.socialbase.downloader.ia.iw
    public void ox(BaseException baseException) {
        DownloadInfo downloadInfo = this.f9378f;
        if (downloadInfo != null) {
            downloadInfo.setChunkDowngradeRetryUsed(true);
        }
        dq(baseException, false);
    }

    public boolean p() {
        return this.mp.get();
    }

    @Override // java.lang.Runnable
    public void run() {
        com.ss.android.socialbase.downloader.downloader.ox.dq(this.ox, 3);
        try {
            com.ss.android.socialbase.downloader.network.d.dq().d();
            no();
            com.ss.android.socialbase.downloader.network.d.dq().ox();
            com.ss.android.socialbase.downloader.downloader.ox.d(this.ox, 3);
        } catch (Throwable th) {
            com.ss.android.socialbase.downloader.network.d.dq().ox();
            throw th;
        }
    }

    public int s() {
        DownloadInfo downloadInfo = this.f9378f;
        if (downloadInfo != null) {
            return downloadInfo.getId();
        }
        return 0;
    }
}
