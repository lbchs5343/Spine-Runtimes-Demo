package com.ss.android.socialbase.downloader.iw;

import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
class mn {

    /* renamed from: f, reason: collision with root package name */
    private final boolean f9411f;
    private long fw;
    private BaseException ia;
    private final com.ss.android.socialbase.downloader.ia.iw iw;
    private final long jy;
    private final ox mn;
    private final boolean mp;
    private final DownloadInfo ox;
    private final long q;
    private final com.ss.android.socialbase.downloader.mn.dq s;
    private final List<ig> dq = new LinkedList();

    /* renamed from: d, reason: collision with root package name */
    private final List<ig> f9410d = new ArrayList();
    private volatile boolean kk = false;
    private volatile boolean o = false;
    private volatile boolean no = false;
    private volatile long cd = 0;
    private volatile long gh = 0;
    private final com.ss.android.socialbase.downloader.downloader.o p = com.ss.android.socialbase.downloader.downloader.ox.e();
    private final com.ss.android.socialbase.downloader.dq.dq ig = com.ss.android.socialbase.downloader.dq.dq.dq();

    public mn(DownloadInfo downloadInfo, com.ss.android.socialbase.downloader.ia.iw iwVar, ox oxVar) {
        this.ox = downloadInfo;
        this.iw = iwVar;
        this.mn = oxVar;
        com.ss.android.socialbase.downloader.mn.dq dq = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId());
        this.s = dq;
        boolean z = dq.dq("sync_strategy", 0) == 1;
        this.mp = z;
        if (z) {
            long dq2 = dq.dq("sync_interval_ms_fg", MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
            long dq3 = dq.dq("sync_interval_ms_bg", 1000);
            this.q = Math.max(dq2, 500L);
            this.jy = Math.max(dq3, 500L);
        } else {
            this.q = 0L;
            this.jy = 0L;
        }
        this.f9411f = dq.d("monitor_rw") == 1;
    }

    private void d(List<ig> list) throws IOException {
        Iterator<ig> it = list.iterator();
        while (it.hasNext()) {
            it.next().ox();
        }
    }

    private void dq(long j, boolean z) throws IOException {
        long j2 = j - this.gh;
        if (this.mp) {
            if (j2 <= (this.ig.d() ? this.q : this.jy)) {
                return;
            }
        } else {
            long curBytes = this.ox.getCurBytes() - this.cd;
            if (!z && !dq(curBytes, j2)) {
                return;
            }
        }
        ox();
        this.gh = j;
    }

    private void dq(s sVar) {
        synchronized (this) {
            this.f9410d.add((ig) sVar);
        }
    }

    private void dq(List<ig> list) throws IOException {
        Iterator<ig> it = list.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }

    private void dq(List<ig> list, Map<Long, kk> map) {
        Iterator<ig> it = list.iterator();
        while (it.hasNext()) {
            kk s = it.next().s();
            kk kkVar = map.get(Long.valueOf(s.ox()));
            if (kkVar == null) {
                map.put(Long.valueOf(s.ox()), new kk(s));
            } else {
                kkVar.dq(s.p());
                kkVar.ox(s.iw());
            }
        }
    }

    private boolean dq(long j, long j2) {
        return j > 65536 && j2 > 500;
    }

    private void ox() throws IOException {
        boolean z;
        boolean z2 = this.f9411f;
        long nanoTime = z2 ? System.nanoTime() : 0L;
        DownloadInfo downloadInfo = this.ox;
        com.ss.android.socialbase.downloader.downloader.o oVar = this.p;
        List<ig> list = this.dq;
        List<ig> list2 = this.f9410d;
        Map<Long, kk> ig = oVar.ig(downloadInfo.getId());
        if (ig == null) {
            ig = new HashMap<>(4);
        }
        synchronized (this) {
            try {
                dq(list);
                try {
                    d(list);
                    z = true;
                } catch (Throwable th) {
                    th.printStackTrace();
                    z = false;
                }
                dq(list, ig);
                if (list2.size() > 0) {
                    ox(list2);
                    list.removeAll(list2);
                    list2.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z) {
            downloadInfo.updateRealDownloadTime(true);
            oVar.dq(downloadInfo.getId(), ig);
            oVar.dq(downloadInfo);
            this.cd = downloadInfo.getCurBytes();
        }
        if (z2) {
            this.fw += System.nanoTime() - nanoTime;
        }
    }

    private void ox(List<ig> list) {
        Iterator<ig> it = list.iterator();
        while (it.hasNext()) {
            it.next().p();
        }
    }

    public void d() {
        this.o = true;
        this.kk = true;
    }

    public void dq() {
        this.no = true;
        this.kk = true;
    }

    public void dq(ig igVar) {
        synchronized (this) {
            this.dq.add(igVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:311:0x00c9, code lost:
    
        if (r2 <= 0) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x00cc, code lost:
    
        r3.d(r2);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03ca A[Catch: all -> 0x02be, TryCatch #14 {all -> 0x02be, blocks: (B:178:0x02bb, B:179:0x02bd, B:68:0x033d, B:70:0x0347, B:72:0x034b, B:115:0x03c4, B:117:0x03ca, B:118:0x03cd, B:119:0x03de, B:133:0x023a), top: B:6:0x0024, inners: #44 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0213 A[Catch: all -> 0x02b2, TryCatch #5 {all -> 0x02b2, blocks: (B:125:0x020f, B:127:0x0213, B:129:0x021b, B:131:0x022b, B:133:0x023a), top: B:124:0x020f }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0263 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x02e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x02cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x03ee  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x00ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x040f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x03f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0347 A[Catch: all -> 0x02be, TryCatch #14 {all -> 0x02be, blocks: (B:178:0x02bb, B:179:0x02bd, B:68:0x033d, B:70:0x0347, B:72:0x034b, B:115:0x03c4, B:117:0x03ca, B:118:0x03cd, B:119:0x03de, B:133:0x023a), top: B:6:0x0024, inners: #44 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0373 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.ss.android.socialbase.downloader.model.DownloadInfo] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v27 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(p pVar) throws BaseException {
        long nanoTime;
        boolean z;
        long j;
        DownloadInfo downloadInfo;
        long j2;
        long j3;
        long j4;
        long j5;
        int i;
        DownloadInfo downloadInfo2;
        int i2;
        DownloadInfo downloadInfo3;
        Throwable th;
        Throwable th2;
        DownloadInfo downloadInfo4;
        Throwable th3;
        DownloadInfo downloadInfo5;
        Throwable th4;
        DownloadInfo downloadInfo6;
        long j6;
        DownloadInfo downloadInfo7;
        long j7;
        Throwable th5;
        if (this.o || this.no) {
            return;
        }
        com.ss.android.socialbase.downloader.network.d.s();
        this.ia = null;
        ?? r4 = this.ox;
        com.ss.android.socialbase.downloader.ia.iw iwVar = this.iw;
        ox oxVar = this.mn;
        long curBytes = r4.getCurBytes();
        nanoTime = System.nanoTime();
        z = this.f9411f;
        j = 0;
        try {
            try {
                r4.updateRealStartDownloadTime();
                long j8 = 0;
                long j9 = 0;
                long j10 = 0;
                int i3 = 0;
                while (true) {
                    if (z) {
                        try {
                            j8 = System.nanoTime();
                        } catch (f e2) {
                            e = e2;
                            i = i3;
                            j2 = curBytes;
                            j4 = j9;
                            downloadInfo6 = r4;
                            try {
                                this.ia = e;
                                throw e;
                            } catch (Throwable th6) {
                                th = th6;
                                j3 = j;
                                downloadInfo4 = downloadInfo6;
                                if (i > 0) {
                                }
                                if (!this.no) {
                                }
                                th = null;
                                synchronized (this) {
                                }
                            }
                        } catch (BaseException e3) {
                            e = e3;
                            i2 = i3;
                            j2 = curBytes;
                            j4 = j9;
                            downloadInfo7 = r4;
                            j5 = j;
                            downloadInfo5 = downloadInfo7;
                            if (this.s.dq("ignore_base_ex_on_stop_status")) {
                            }
                            if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                            }
                            com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                            this.ia = e;
                            throw e;
                        } catch (Throwable th7) {
                            th = th7;
                            i = i3;
                            downloadInfo = r4;
                            j2 = curBytes;
                            j4 = j9;
                            j3 = j;
                            try {
                                if (this.o) {
                                }
                                DownloadInfo downloadInfo8 = downloadInfo;
                                if (i > 0) {
                                }
                                if (!this.no) {
                                }
                                th2 = null;
                                synchronized (this) {
                                }
                            } catch (Throwable th8) {
                                th = th8;
                                r4 = downloadInfo;
                                th = th;
                                downloadInfo4 = r4;
                                if (i > 0) {
                                }
                                if (!this.no) {
                                }
                                th = null;
                                synchronized (this) {
                                }
                            }
                        }
                    }
                    try {
                        dq dq = pVar.dq();
                        if (z) {
                            j = (System.nanoTime() - j8) + j;
                        }
                        downloadInfo = r4;
                        try {
                            int i4 = dq.ox;
                            j2 = curBytes;
                            if (i4 == -1) {
                                try {
                                    dq(dq.f9405d);
                                    oxVar.dq(dq);
                                    r4 = downloadInfo;
                                } catch (f e4) {
                                    e = e4;
                                    i = i3;
                                    j4 = j9;
                                    downloadInfo6 = downloadInfo;
                                    this.ia = e;
                                    throw e;
                                } catch (BaseException e5) {
                                    e = e5;
                                    i2 = i3;
                                    j4 = j9;
                                    downloadInfo7 = downloadInfo;
                                    j5 = j;
                                    downloadInfo5 = downloadInfo7;
                                    if (this.s.dq("ignore_base_ex_on_stop_status")) {
                                    }
                                    if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                                    }
                                    com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                                    this.ia = e;
                                    throw e;
                                } catch (Throwable th9) {
                                    th = th9;
                                    i = i3;
                                    j4 = j9;
                                    j3 = j;
                                    if (this.o) {
                                    }
                                    DownloadInfo downloadInfo82 = downloadInfo;
                                    if (i > 0) {
                                    }
                                    if (!this.no) {
                                    }
                                    th2 = null;
                                    synchronized (this) {
                                    }
                                }
                            } else {
                                if (z) {
                                    j8 = System.nanoTime();
                                }
                                try {
                                    dq.f9405d.d(dq);
                                    if (z) {
                                        long j11 = j10;
                                        j4 = (System.nanoTime() - j8) + j9;
                                        j7 = j11;
                                    } else {
                                        j7 = j10;
                                        j4 = j9;
                                    }
                                    try {
                                        oxVar.dq(dq);
                                        if (this.kk) {
                                            try {
                                                if (this.o || this.no) {
                                                    break;
                                                } else {
                                                    this.kk = false;
                                                }
                                            } catch (f e6) {
                                                e = e6;
                                                i = i3;
                                                downloadInfo6 = downloadInfo;
                                                this.ia = e;
                                                throw e;
                                            } catch (BaseException e7) {
                                                e = e7;
                                                i2 = i3;
                                                j5 = j;
                                                downloadInfo5 = downloadInfo;
                                                if (this.s.dq("ignore_base_ex_on_stop_status")) {
                                                }
                                                if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                                                }
                                                com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                                                this.ia = e;
                                                throw e;
                                            } catch (Throwable th10) {
                                                th = th10;
                                                i = i3;
                                                j3 = j;
                                                if (this.o) {
                                                }
                                                DownloadInfo downloadInfo822 = downloadInfo;
                                                if (i > 0) {
                                                }
                                                if (!this.no) {
                                                }
                                                th2 = null;
                                                synchronized (this) {
                                                }
                                            }
                                        }
                                        i3 += i4;
                                        if (i3 >= 65536) {
                                            j6 = j;
                                            try {
                                                long uptimeMillis = SystemClock.uptimeMillis();
                                                if (uptimeMillis - j7 > 100) {
                                                    try {
                                                        dq(uptimeMillis, iwVar.d(i3));
                                                        if (!com.ss.android.socialbase.downloader.network.d.dq) {
                                                            if (downloadInfo.isOnlyWifi()) {
                                                                throw new com.ss.android.socialbase.downloader.exception.ox();
                                                            }
                                                            if (downloadInfo.isDownloadFromReserveWifi() && downloadInfo.isPauseReserveOnWifi()) {
                                                                throw new com.ss.android.socialbase.downloader.exception.s();
                                                            }
                                                        }
                                                        j9 = j4;
                                                        r4 = downloadInfo;
                                                        curBytes = j2;
                                                        i3 = 0;
                                                        j10 = uptimeMillis;
                                                        j = j6;
                                                    } catch (f e8) {
                                                        e = e8;
                                                        downloadInfo3 = downloadInfo;
                                                        j = j6;
                                                        i = 0;
                                                        downloadInfo6 = downloadInfo3;
                                                        this.ia = e;
                                                        throw e;
                                                    } catch (BaseException e9) {
                                                        e = e9;
                                                        downloadInfo2 = downloadInfo;
                                                        j5 = j6;
                                                        i2 = 0;
                                                        downloadInfo5 = downloadInfo2;
                                                        if (this.s.dq("ignore_base_ex_on_stop_status")) {
                                                        }
                                                        if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                                                        }
                                                        com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                                                        this.ia = e;
                                                        throw e;
                                                    } catch (Throwable th11) {
                                                        th = th11;
                                                        j3 = j6;
                                                        i = 0;
                                                        if (this.o) {
                                                        }
                                                        DownloadInfo downloadInfo8222 = downloadInfo;
                                                        if (i > 0) {
                                                        }
                                                        if (!this.no) {
                                                        }
                                                        th2 = null;
                                                        synchronized (this) {
                                                        }
                                                    }
                                                }
                                            } catch (f e10) {
                                                e = e10;
                                                i = i3;
                                                downloadInfo6 = downloadInfo;
                                                j = j6;
                                                this.ia = e;
                                                throw e;
                                            } catch (BaseException e11) {
                                                e = e11;
                                                i2 = i3;
                                                downloadInfo5 = downloadInfo;
                                                j5 = j6;
                                                if (this.s.dq("ignore_base_ex_on_stop_status") || !(this.o || this.no)) {
                                                    if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                                                        e.printStackTrace();
                                                    }
                                                    com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                                                    this.ia = e;
                                                    throw e;
                                                }
                                                if (i2 > 0) {
                                                    try {
                                                        iwVar.d(i2);
                                                    } catch (Throwable unused) {
                                                    }
                                                }
                                                if (!this.no) {
                                                    try {
                                                        ox();
                                                    } catch (Throwable th12) {
                                                        th4 = th12;
                                                        com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", "loopAndWrite: finally sync, e = ".concat(String.valueOf(th4)));
                                                        synchronized (this) {
                                                            ox(this.dq);
                                                            this.dq.clear();
                                                        }
                                                        com.ss.android.socialbase.downloader.p.dq.dq(this.s, downloadInfo5, downloadInfo5.getUrl(), null, this.o, this.no, this.ia, downloadInfo5.getCurBytes() - j2, System.nanoTime() - nanoTime, z, j5, j4, this.fw, null);
                                                        if (th4 == null || this.o || this.no || this.ia != null) {
                                                            return;
                                                        }
                                                        try {
                                                            com.ss.android.socialbase.downloader.kk.iw.dq(th4, "loopAndWrite_finally");
                                                            return;
                                                        } catch (BaseException e12) {
                                                            this.ia = e12;
                                                            throw e12;
                                                        }
                                                    }
                                                }
                                                th4 = null;
                                                synchronized (this) {
                                                }
                                            } catch (Throwable th13) {
                                                th = th13;
                                                i = i3;
                                                j3 = j6;
                                                if (!this.o || this.no) {
                                                    DownloadInfo downloadInfo82222 = downloadInfo;
                                                    if (i > 0) {
                                                        try {
                                                            iwVar.d(i);
                                                        } catch (Throwable unused2) {
                                                        }
                                                    }
                                                    if (!this.no) {
                                                        try {
                                                            ox();
                                                        } catch (Throwable th14) {
                                                            th2 = th14;
                                                            com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", "loopAndWrite: finally sync, e = ".concat(String.valueOf(th2)));
                                                            synchronized (this) {
                                                                ox(this.dq);
                                                                this.dq.clear();
                                                            }
                                                            com.ss.android.socialbase.downloader.p.dq.dq(this.s, downloadInfo82222, downloadInfo82222.getUrl(), null, this.o, this.no, this.ia, downloadInfo82222.getCurBytes() - j2, System.nanoTime() - nanoTime, z, j3, j4, this.fw, null);
                                                            if (th2 == null || this.o || this.no || this.ia != null) {
                                                                return;
                                                            }
                                                            try {
                                                                com.ss.android.socialbase.downloader.kk.iw.dq(th2, "loopAndWrite_finally");
                                                                return;
                                                            } catch (BaseException e13) {
                                                                this.ia = e13;
                                                                throw e13;
                                                            }
                                                        }
                                                    }
                                                    th2 = null;
                                                    synchronized (this) {
                                                    }
                                                } else {
                                                    if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                                                        try {
                                                            th.printStackTrace();
                                                        } catch (Throwable th15) {
                                                            th = th15;
                                                            downloadInfo4 = downloadInfo;
                                                            if (i > 0) {
                                                                try {
                                                                    iwVar.d(i);
                                                                } catch (Throwable unused3) {
                                                                }
                                                            }
                                                            if (!this.no) {
                                                                try {
                                                                    ox();
                                                                } catch (Throwable th16) {
                                                                    th = th16;
                                                                    com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", "loopAndWrite: finally sync, e = ".concat(String.valueOf(th)));
                                                                    synchronized (this) {
                                                                    }
                                                                }
                                                            }
                                                            th = null;
                                                            synchronized (this) {
                                                                ox(this.dq);
                                                                this.dq.clear();
                                                            }
                                                            Throwable th17 = th;
                                                            com.ss.android.socialbase.downloader.p.dq.dq(this.s, downloadInfo4, downloadInfo4.getUrl(), null, this.o, this.no, this.ia, downloadInfo4.getCurBytes() - j2, System.nanoTime() - nanoTime, z, j3, j4, this.fw, null);
                                                            if (th == null) {
                                                                throw th17;
                                                            }
                                                            if (this.o) {
                                                                throw th17;
                                                            }
                                                            if (this.no) {
                                                                throw th17;
                                                            }
                                                            if (this.ia != null) {
                                                                throw th17;
                                                            }
                                                            try {
                                                                com.ss.android.socialbase.downloader.kk.iw.dq(th, "loopAndWrite_finally");
                                                                throw th17;
                                                            } catch (BaseException e14) {
                                                                this.ia = e14;
                                                                throw e14;
                                                            }
                                                        }
                                                    }
                                                    r4 = "loopAndWrite:  e = ".concat(String.valueOf(th));
                                                    com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", r4);
                                                    try {
                                                        com.ss.android.socialbase.downloader.kk.iw.dq(th, "loopAndWrite");
                                                        if (i > 0) {
                                                            try {
                                                                iwVar.d(i);
                                                            } catch (Throwable unused4) {
                                                            }
                                                        }
                                                        if (!this.no) {
                                                            try {
                                                                ox();
                                                            } catch (Throwable th18) {
                                                                th3 = th18;
                                                                com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", "loopAndWrite: finally sync, e = ".concat(String.valueOf(th3)));
                                                                synchronized (this) {
                                                                    ox(this.dq);
                                                                    this.dq.clear();
                                                                }
                                                                com.ss.android.socialbase.downloader.p.dq.dq(this.s, downloadInfo, downloadInfo.getUrl(), null, this.o, this.no, this.ia, downloadInfo.getCurBytes() - j2, System.nanoTime() - nanoTime, z, j3, j4, this.fw, null);
                                                                if (th3 == null || this.o || this.no || this.ia != null) {
                                                                    return;
                                                                }
                                                                try {
                                                                    com.ss.android.socialbase.downloader.kk.iw.dq(th3, "loopAndWrite_finally");
                                                                    return;
                                                                } catch (BaseException e15) {
                                                                    this.ia = e15;
                                                                    throw e15;
                                                                }
                                                            }
                                                        }
                                                        th3 = null;
                                                        synchronized (this) {
                                                        }
                                                    } catch (BaseException e16) {
                                                        this.ia = e16;
                                                        throw e16;
                                                    }
                                                }
                                            }
                                        } else {
                                            j6 = j;
                                        }
                                        j9 = j4;
                                        r4 = downloadInfo;
                                        j = j6;
                                        j10 = j7;
                                    } catch (f e17) {
                                        e = e17;
                                    } catch (BaseException e18) {
                                        e = e18;
                                        j6 = j;
                                    } catch (Throwable th19) {
                                        th = th19;
                                        j6 = j;
                                    }
                                } catch (f e19) {
                                    e = e19;
                                    i = i3;
                                    j4 = j9;
                                    downloadInfo6 = downloadInfo;
                                    this.ia = e;
                                    throw e;
                                } catch (BaseException e20) {
                                    e = e20;
                                    j6 = j;
                                    i2 = i3;
                                    j4 = j9;
                                    downloadInfo5 = downloadInfo;
                                    j5 = j6;
                                    if (this.s.dq("ignore_base_ex_on_stop_status")) {
                                    }
                                    if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                                    }
                                    com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                                    this.ia = e;
                                    throw e;
                                } catch (Throwable th20) {
                                    th = th20;
                                    j6 = j;
                                    i = i3;
                                    j4 = j9;
                                    j3 = j6;
                                    if (this.o) {
                                    }
                                    DownloadInfo downloadInfo822222 = downloadInfo;
                                    if (i > 0) {
                                    }
                                    if (!this.no) {
                                    }
                                    th2 = null;
                                    synchronized (this) {
                                    }
                                }
                            }
                            curBytes = j2;
                        } catch (f e21) {
                            e = e21;
                            j2 = curBytes;
                        } catch (BaseException e22) {
                            e = e22;
                            j2 = curBytes;
                        } catch (Throwable th21) {
                            th = th21;
                            j2 = curBytes;
                        }
                    } catch (f e23) {
                        e = e23;
                        j2 = curBytes;
                        i = i3;
                        j4 = j9;
                        downloadInfo6 = r4;
                        this.ia = e;
                        throw e;
                    } catch (BaseException e24) {
                        e = e24;
                        j2 = curBytes;
                        i2 = i3;
                        j4 = j9;
                        downloadInfo7 = r4;
                        j5 = j;
                        downloadInfo5 = downloadInfo7;
                        if (this.s.dq("ignore_base_ex_on_stop_status")) {
                        }
                        if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                        }
                        com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                        this.ia = e;
                        throw e;
                    } catch (Throwable th22) {
                        th = th22;
                        downloadInfo = r4;
                        j2 = curBytes;
                    }
                }
            } catch (Throwable th23) {
                th = th23;
                th = th;
                downloadInfo4 = r4;
                if (i > 0) {
                }
                if (!this.no) {
                }
                th = null;
                synchronized (this) {
                }
            }
        } catch (f e25) {
            e = e25;
            j2 = curBytes;
            j4 = 0;
            downloadInfo3 = r4;
        } catch (BaseException e26) {
            e = e26;
            j2 = curBytes;
            j5 = 0;
            j4 = 0;
            downloadInfo2 = r4;
        } catch (Throwable th24) {
            th = th24;
            downloadInfo = r4;
            j2 = curBytes;
            j3 = 0;
            j4 = 0;
        }
        if (!this.no) {
            try {
                ox();
            } catch (Throwable th25) {
                th5 = th25;
                com.ss.android.socialbase.downloader.ox.dq.p("MultiSegmentWriter", "loopAndWrite: finally sync, e = ".concat(String.valueOf(th5)));
                synchronized (this) {
                    ox(this.dq);
                    this.dq.clear();
                }
                com.ss.android.socialbase.downloader.p.dq.dq(this.s, downloadInfo, downloadInfo.getUrl(), null, this.o, this.no, this.ia, downloadInfo.getCurBytes() - j2, System.nanoTime() - nanoTime, z, j, j4, this.fw, null);
                if (th5 == null || this.o || this.no || this.ia != null) {
                    return;
                }
                try {
                    com.ss.android.socialbase.downloader.kk.iw.dq(th5, "loopAndWrite_finally");
                    return;
                } catch (BaseException e27) {
                    this.ia = e27;
                    throw e27;
                }
            }
        }
        th5 = null;
        synchronized (this) {
        }
    }
}
