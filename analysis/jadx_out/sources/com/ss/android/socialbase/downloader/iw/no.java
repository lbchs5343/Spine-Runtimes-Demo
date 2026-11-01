package com.ss.android.socialbase.downloader.iw;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.ia.s;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.network.ox;
import g.awf;
import g.ekq;
import g.he;
import j$.util.Objects;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class no implements iw, ox.dq {
    private volatile boolean cd;

    /* renamed from: d, reason: collision with root package name */
    private final q f9416d;
    private final DownloadInfo dq;

    /* renamed from: e, reason: collision with root package name */
    private long f9417e;

    /* renamed from: f, reason: collision with root package name */
    private int f9418f;
    private BaseException fw;
    private int h;
    private final com.ss.android.socialbase.downloader.ia.s i;
    private final boolean ji;
    private long k;
    private float kx;
    private long mp;
    private com.ss.android.socialbase.downloader.model.p no;
    private com.ss.android.socialbase.downloader.model.p o;
    private final d ox;
    private final com.ss.android.socialbase.downloader.ia.iw p;
    private final com.ss.android.socialbase.downloader.kk.s r;
    private final mn s;
    private long wp;
    private volatile boolean iw = false;
    private volatile boolean mn = false;
    private final List<mp> ia = new ArrayList();
    private final List<fw> kk = new ArrayList();
    private volatile boolean ig = true;
    private final LinkedList<kk> q = new LinkedList<>();
    private final List<kk> jy = new ArrayList();
    private final Object gh = new Object();
    private volatile boolean le = false;
    private final s.d bl = new s.d() { // from class: com.ss.android.socialbase.downloader.iw.no.1

        /* renamed from: d, reason: collision with root package name */
        private int f9419d;

        @Override // com.ss.android.socialbase.downloader.ia.s.d
        public long dq() {
            if (no.this.iw || no.this.mn) {
                return -1L;
            }
            synchronized (no.this) {
                try {
                    if (no.this.o == null && no.this.no == null) {
                        long j = no.this.k;
                        if (j <= 0) {
                            return -1L;
                        }
                        this.f9419d++;
                        mp dq = no.this.dq(false, System.currentTimeMillis(), j);
                        if (dq == null) {
                            return j;
                        }
                        no.this.ox(dq);
                        dq.iw();
                        return ((this.f9419d / no.this.kk.size()) + 1) * j;
                    }
                    return -1L;
                } finally {
                }
            }
        }
    };
    private final s.d n = new s.d() { // from class: com.ss.android.socialbase.downloader.iw.no.2
        @Override // com.ss.android.socialbase.downloader.ia.s.d
        public long dq() {
            return no.this.cd();
        }
    };

    public no(DownloadInfo downloadInfo, q qVar, com.ss.android.socialbase.downloader.ia.iw iwVar) {
        this.dq = downloadInfo;
        this.f9416d = qVar;
        d dVar = new d(qVar.p(), qVar.s());
        this.ox = dVar;
        this.p = iwVar;
        this.s = new mn(downloadInfo, iwVar, dVar);
        this.i = new com.ss.android.socialbase.downloader.ia.s();
        this.r = new com.ss.android.socialbase.downloader.kk.s();
        this.ji = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).d("debug") == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long cd() {
        if (this.iw || this.mn) {
            return -1L;
        }
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            try {
                d(currentTimeMillis);
                long no = this.f9416d.no();
                if (no > 0) {
                    long j = this.f9417e;
                    if (j > 0 && currentTimeMillis - j > no && dq(currentTimeMillis, no)) {
                        this.f9417e = currentTimeMillis;
                        this.h++;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return 2000L;
    }

    private kk d(mp mpVar, fw fwVar) {
        while (!this.q.isEmpty()) {
            kk poll = this.q.poll();
            if (poll != null) {
                dq(this.jy, poll, true);
                if (dq(poll) > 0 || this.mp <= 0) {
                    return poll;
                }
            }
        }
        mp();
        kk ox = ox(mpVar, fwVar);
        if (ox != null && dq(ox) > 0) {
            dq(this.jy, ox, true);
            return ox;
        }
        kk f2 = f();
        if (f2 != null) {
            return f2;
        }
        return null;
    }

    private void d(long j) {
        this.r.dq(this.dq.getCurBytes(), j);
        Iterator<mp> it = this.ia.iterator();
        while (it.hasNext()) {
            it.next().d(j);
        }
    }

    private void d(mp mpVar, kk kkVar, fw fwVar, com.ss.android.socialbase.downloader.model.p pVar) throws BaseException, com.ss.android.socialbase.downloader.exception.kk {
        mp mpVar2 = kkVar.dq;
        if (mpVar2 != null && mpVar2 != mpVar) {
            throw new o(1, "segment already has an owner");
        }
        if (mpVar.ia() != kkVar.s()) {
            throw new o(5, "applySegment");
        }
        if (!pVar.d()) {
            if (kkVar.s() > 0) {
                throw new com.ss.android.socialbase.downloader.exception.d(1004, pVar.ox, "1: response code error : " + pVar.ox + " segment=" + kkVar);
            }
            com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", "parseHttpResponse: segment.getCurrentOffsetRead = " + kkVar.s());
            if (!pVar.dq()) {
                throw new com.ss.android.socialbase.downloader.exception.d(1004, pVar.ox, "2: response code error : " + pVar.ox + " segment=" + kkVar);
            }
        }
        if (!fwVar.p) {
            dq(pVar);
            if (this.no == null) {
                this.no = pVar;
                if (this.dq.getTotalBytes() <= 0) {
                    long o = pVar.o();
                    StringBuilder l = awf.l(o, "checkSegmentHttpResponse:len=", ",url=");
                    l.append(fwVar.dq);
                    com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", l.toString());
                    this.dq.setTotalBytes(o);
                }
                synchronized (this.gh) {
                    this.gh.notify();
                }
                return;
            }
            return;
        }
        if (this.o == null) {
            this.o = pVar;
            synchronized (this.gh) {
                this.gh.notify();
            }
            com.ss.android.socialbase.downloader.ia.iw iwVar = this.p;
            if (iwVar != null) {
                iwVar.dq(fwVar.dq, pVar.f9447d, kkVar.s());
            }
            long o2 = pVar.o();
            if (o2 > 0) {
                for (kk kkVar2 : this.jy) {
                    if (kkVar2.iw() <= 0 || kkVar2.iw() > o2 - 1) {
                        kkVar2.ox(o2 - 1);
                    }
                }
            }
        }
    }

    private void d(String str, List<fw> list) {
        int dq;
        if (this.ji) {
            Iterator<fw> it = list.iterator();
            while (it.hasNext()) {
                "addIpListLocked: urlRecord = ".concat(String.valueOf(it.next()));
            }
        }
        int ig = this.f9416d.ig();
        if ((ig == 1 || ig == 3) && (dq = dq(str)) >= 0 && dq < this.kk.size()) {
            this.kk.addAll(dq + 1, list);
        } else {
            this.kk.addAll(list);
        }
    }

    private void d(List<kk> list) {
        long totalBytes = this.dq.getTotalBytes();
        this.mp = totalBytes;
        if (totalBytes <= 0) {
            this.mp = this.dq.getExpectFileLength();
            com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "initSegments: getExpectFileLength = " + this.mp);
        }
        synchronized (this) {
            try {
                this.q.clear();
                if (list != null && !list.isEmpty()) {
                    Iterator<kk> it = list.iterator();
                    while (it.hasNext()) {
                        dq((List<kk>) this.q, new kk(it.next()), false);
                    }
                    p(this.q);
                    ox(this.q);
                    com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "initSegments: totalLength = " + this.mp);
                }
                dq((List<kk>) this.q, new kk(0L, -1L), false);
                com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "initSegments: totalLength = " + this.mp);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private int dq(long j) {
        int size = this.jy.size();
        for (int i = 0; i < size; i++) {
            kk kkVar = this.jy.get(i);
            if (kkVar.ox() == j) {
                return i;
            }
            if (kkVar.ox() > j) {
                return -1;
            }
        }
        return -1;
    }

    private int dq(String str) {
        int size = this.kk.size();
        for (int i = 0; i < size; i++) {
            if (TextUtils.equals(this.kk.get(i).dq, str)) {
                return i;
            }
        }
        return -1;
    }

    private long dq(int i, int i2) {
        kk kkVar = this.jy.get(i);
        long dq = dq(kkVar);
        int i3 = i + 1;
        kk kkVar2 = i3 < i2 ? this.jy.get(i3) : null;
        if (kkVar2 == null) {
            return dq;
        }
        long ox = kkVar2.ox() - kkVar.s();
        return dq == -1 ? ox : Math.min(dq, ox);
    }

    private long dq(kk kkVar) {
        long d2 = kkVar.d();
        if (d2 == -1) {
            long j = this.mp;
            if (j > 0) {
                return j - kkVar.s();
            }
        }
        return d2;
    }

    private mp dq(long j, long j2, long j3, int i) {
        long j4 = Long.MAX_VALUE;
        int i2 = 0;
        mp mpVar = null;
        for (mp mpVar2 : this.ia) {
            if (mpVar2.iw > 0) {
                i2++;
                if (mpVar2.iw < j) {
                    long dq = mpVar2.dq(j, j2);
                    if (dq >= 0 && dq < j4) {
                        mpVar = mpVar2;
                        j4 = dq;
                    }
                }
            }
        }
        if (mpVar == null || i2 < i || j4 >= j3) {
            return null;
        }
        StringBuilder l = awf.l(j4, "findPoorReadThread: ----------- minSpeed = ", ", threadIndex = ");
        l.append(mpVar.ox);
        com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", l.toString());
        return mpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public mp dq(boolean z, long j, long j2) {
        mp mpVar = null;
        for (mp mpVar2 : this.ia) {
            if (mpVar2.ox != 0 || z) {
                if (mpVar2.p > 0 && mpVar2.s <= 0 && j - mpVar2.p > j2 && (mpVar == null || mpVar2.p < mpVar.p)) {
                    mpVar = mpVar2;
                }
            }
        }
        return mpVar;
    }

    private void dq(BaseException baseException) {
        com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", "onError, e = ".concat(String.valueOf(baseException)));
        this.fw = baseException;
        this.ox.ox();
        synchronized (this) {
            try {
                Iterator<mp> it = this.ia.iterator();
                while (it.hasNext()) {
                    it.next().s();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void dq(fw fwVar) {
        mp mpVar = new mp(this.dq, this, this.ox, fwVar, this.ia.size());
        this.ia.add(mpVar);
        mpVar.dq(com.ss.android.socialbase.downloader.downloader.ox.fw().submit(mpVar));
    }

    private void dq(com.ss.android.socialbase.downloader.model.p pVar) throws BaseException {
        com.ss.android.socialbase.downloader.model.p pVar2 = this.o;
        if (pVar2 == null && (pVar2 = this.no) == null) {
            return;
        }
        long o = pVar.o();
        long o2 = pVar2.o();
        if (o != o2) {
            StringBuilder l = awf.l(o, "total len not equals,len=", ",sLen=");
            l.append(o2);
            l.append(",code=");
            l.append(pVar.ox);
            l.append(",sCode=");
            l.append(pVar2.ox);
            l.append(",range=");
            l.append(pVar.s());
            l.append(",sRange = ");
            l.append(pVar2.s());
            l.append(",url = ");
            l.append(pVar.dq);
            l.append(",sUrl=");
            l.append(pVar2.dq);
            String sb = l.toString();
            com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", sb);
            if (o > 0 && o2 > 0) {
                throw new BaseException(1074, sb);
            }
        }
        String ox = pVar.ox();
        String ox2 = pVar2.ox();
        if (TextUtils.equals(ox, ox2)) {
            return;
        }
        String str = "etag not equals with main url, etag = " + ox + ", mainEtag = " + ox2;
        com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", str);
        if (!TextUtils.isEmpty(ox) && !TextUtils.isEmpty(ox2) && !ox.equalsIgnoreCase(ox2)) {
            throw new BaseException(1074, str);
        }
    }

    private void dq(List<kk> list, kk kkVar, boolean z) {
        long ox = kkVar.ox();
        int size = list.size();
        int i = 0;
        while (i < size && ox >= list.get(i).ox()) {
            i++;
        }
        list.add(i, kkVar);
        if (z) {
            kkVar.dq(size);
        }
    }

    private boolean dq(long j, long j2) {
        long j3 = j - j2;
        long d2 = this.r.d(j3, j);
        int size = this.ia.size();
        if (size > 0) {
            d2 /= size;
        }
        mp dq = dq(j3, j, (long) Math.max(10.0f, d2 * this.kx), size / 2);
        if (dq != null) {
            ox(dq);
            com.ss.android.socialbase.downloader.ox.dq.p("SegmentDispatcher", "handlePoorReadThread: reconnect for poor speed, threadIndex = " + dq.ox);
            dq.iw();
            return true;
        }
        mp dq2 = dq(true, j, j2);
        if (dq2 == null) {
            return false;
        }
        ox(dq2);
        com.ss.android.socialbase.downloader.ox.dq.p("SegmentDispatcher", "handlePoorReadThread: reconnect for connect timeout, threadIndex = " + dq2.ox);
        dq2.iw();
        return true;
    }

    private boolean dq(mp mpVar, long j, long j2, long j3, double d2) {
        if (mpVar.iw <= 0) {
            return false;
        }
        long d3 = this.r.d(j, j2);
        int size = this.ia.size();
        if (size > 0) {
            d3 /= size;
        }
        long dq = mpVar.dq(j, j2);
        return dq < j3 || ((double) dq) < ((double) d3) * d2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x004f, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private kk f() {
        no noVar;
        int i = 0;
        while (true) {
            kk fw = fw();
            if (fw != null) {
                mp mpVar = fw.dq;
                if (mpVar == null) {
                    break;
                }
                if (fw.o() >= 2) {
                    return null;
                }
                long currentTimeMillis = System.currentTimeMillis();
                d(currentTimeMillis);
                if (currentTimeMillis - mpVar.iw > 2000) {
                    noVar = this;
                    if (noVar.dq(mpVar, currentTimeMillis - 2000, currentTimeMillis, 500L, 1.0d)) {
                        if (noVar.ji) {
                            fw.toString();
                            return fw;
                        }
                    }
                } else {
                    noVar = this;
                }
                int i2 = i + 1;
                if (i <= 2) {
                    try {
                        synchronized (this) {
                            wait(500L);
                        }
                        i = i2;
                    } catch (InterruptedException unused) {
                        return null;
                    }
                } else if (noVar.ji) {
                    "obtainSegmentWhenNoNewSegment: waitCount > 2, return segment = ".concat(String.valueOf(fw));
                }
            } else {
                return null;
            }
        }
    }

    private kk fw() {
        int o;
        kk kkVar = null;
        int i = he.UNDEFINED_ITEM_ID;
        for (kk kkVar2 : this.jy) {
            if (dq(kkVar2) > 0 && (o = kkVar2.o()) < i) {
                kkVar = kkVar2;
                i = o;
            }
        }
        return kkVar;
    }

    private void ia() {
        if (this.wp > 0) {
            this.f9417e = System.currentTimeMillis();
            this.i.dq(this.n, 0L);
        }
    }

    private boolean ig() {
        Iterator<mp> it = this.ia.iterator();
        while (it.hasNext()) {
            if (!it.next().mn()) {
                return false;
            }
        }
        return true;
    }

    private void iw() {
        this.kk.add(new fw(this.dq.getUrl(), true));
        List<String> backUpUrls = this.dq.getBackUpUrls();
        if (backUpUrls != null) {
            for (String str : backUpUrls) {
                if (!TextUtils.isEmpty(str)) {
                    this.kk.add(new fw(str, false));
                }
            }
        }
        this.f9416d.dq(this.kk.size());
    }

    private long jy() {
        Iterator<mp> it = this.ia.iterator();
        long j = 0;
        while (it.hasNext()) {
            j += it.next().d();
        }
        return j;
    }

    private void kk() {
        List<String> backUpUrls;
        int ig = this.f9416d.ig();
        if (ig <= 0) {
            this.ig = false;
            s();
            return;
        }
        com.ss.android.socialbase.downloader.network.ox dq = com.ss.android.socialbase.downloader.network.ox.dq();
        dq.dq(this.dq.getUrl(), this, 2000L);
        if (ig <= 2 || (backUpUrls = this.dq.getBackUpUrls()) == null) {
            return;
        }
        for (String str : backUpUrls) {
            if (!TextUtils.isEmpty(str)) {
                dq.dq(str, this, 2000L);
            }
        }
    }

    private void mn() {
        q qVar = this.f9416d;
        this.k = qVar.o();
        this.wp = qVar.no();
        this.kx = qVar.jy();
        int i = this.h;
        if (i > 0) {
            this.i.dq(this.bl, i);
        }
    }

    private void mp() {
        int size;
        if (this.mp > 0 && (size = this.jy.size()) > 1) {
            ArrayList<kk> arrayList = null;
            int i = 0;
            for (int i2 = 1; i2 < size; i2++) {
                kk kkVar = this.jy.get(i);
                kk kkVar2 = this.jy.get(i2);
                if (kkVar.s() > kkVar2.ox() && kkVar2.dq() <= 0 && kkVar2.dq == null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(kkVar2);
                    if (this.ji) {
                        kkVar2.toString();
                        kkVar.toString();
                    }
                } else if (kkVar2.s() > kkVar.s()) {
                    i++;
                }
            }
            if (arrayList != null) {
                for (kk kkVar3 : arrayList) {
                    this.jy.remove(kkVar3);
                    for (mp mpVar : this.ia) {
                        if (mpVar.dq == kkVar3) {
                            if (this.ji) {
                                Objects.toString(kkVar3);
                            }
                            mpVar.dq(true);
                        }
                    }
                }
            }
        }
    }

    private void no() {
        com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "onComplete");
        this.ox.ox();
        synchronized (this.gh) {
            this.gh.notify();
        }
    }

    private fw o() {
        fw fwVar;
        synchronized (this) {
            try {
                int size = this.f9418f % this.kk.size();
                if (this.f9416d.d()) {
                    this.f9418f++;
                }
                fwVar = this.kk.get(size);
            } catch (Throwable th) {
                throw th;
            }
        }
        return fwVar;
    }

    private kk ox(mp mpVar, fw fwVar) {
        String str;
        int size = this.jy.size();
        long j = -1;
        int i = -1;
        for (int i2 = 0; i2 < size; i2++) {
            long dq = dq(i2, size);
            if (dq > j) {
                i = i2;
                j = dq;
            }
        }
        long mn = this.f9416d.mn();
        long kk = this.f9416d.kk();
        if (i < 0 || j <= mn) {
            return null;
        }
        kk kkVar = this.jy.get(i);
        int q = this.jy.size() < this.ia.size() ? 2 : this.f9416d.q();
        if (q == 1) {
            mp mpVar2 = kkVar.dq;
            if (mpVar2 != null) {
                long currentTimeMillis = System.currentTimeMillis();
                long j2 = currentTimeMillis - 4000;
                long dq2 = mpVar2.dq(j2, currentTimeMillis);
                long dq3 = mpVar.dq(j2, currentTimeMillis);
                float f2 = (dq2 <= 0 || dq3 <= 0) ? -1.0f : dq3 / (dq2 + dq3);
                if (f2 == -1.0f) {
                    long d2 = mpVar2.d();
                    long d3 = mpVar.d();
                    if (d2 > 0 && d3 > 0) {
                        f2 = d3 / (d2 + d3);
                    }
                }
                if (f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    float f3 = f2 * 0.9f;
                    long j3 = (long) (j * f3);
                    if (j3 < mn) {
                        j3 = mn;
                    }
                    long j4 = (kk <= 0 || j3 <= kk) ? j3 : kk;
                    long j5 = mn / 2;
                    long j6 = j - j5;
                    if (j4 > j6) {
                        j4 = j6;
                    } else if (j4 < j5) {
                        j4 = j5;
                    }
                    kk kkVar2 = new kk((j - j4) + kkVar.s(), kkVar.iw());
                    com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "obtainSegment: parent = " + kkVar + ", child = " + kkVar2 + ", maxRemainBytes = " + j + ", childLength = " + j4 + ", ratio = " + f3 + ", threadIndex = " + mpVar.ox);
                    return kkVar2;
                }
            }
            str = "SegmentDispatcher";
        } else {
            str = "SegmentDispatcher";
            if (q == 2) {
                long curBytes = this.mp - this.dq.getCurBytes();
                float p = p(mpVar, fwVar);
                long j7 = (long) (curBytes * p);
                if (j7 < mn) {
                    j7 = mn;
                }
                if (kk > 0 && j7 > kk) {
                    j7 = kk;
                }
                long j8 = mn / 2;
                long j9 = j - j8;
                if (j7 > j9) {
                    j7 = j9;
                } else if (j7 < j8) {
                    j7 = j8;
                }
                kk kkVar3 = new kk((j - j7) + kkVar.s(), kkVar.iw());
                com.ss.android.socialbase.downloader.ox.dq.ox(str, "obtainSegment: parent = " + kkVar + ", child = " + kkVar3 + ", maxRemainBytes = " + j + ", childLength = " + j7 + ", ratio = " + p + ", threadIndex = " + mpVar.ox);
                return kkVar3;
            }
        }
        kk kkVar4 = new kk((j / 2) + kkVar.s(), kkVar.iw());
        com.ss.android.socialbase.downloader.ox.dq.ox(str, "obtainSegment: parent = " + kkVar + ",child = " + kkVar4);
        return kkVar4;
    }

    private List<fw> ox(String str, List<InetAddress> list) {
        boolean z;
        if (list != null && !list.isEmpty()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int i = 0;
            for (InetAddress inetAddress : list) {
                if (inetAddress != null) {
                    String hostAddress = inetAddress.getHostAddress();
                    if (!TextUtils.isEmpty(hostAddress)) {
                        if (this.ji) {
                            "onDnsResolved: ip = ".concat(String.valueOf(hostAddress));
                        }
                        fw fwVar = new fw(str, hostAddress);
                        LinkedList linkedList = (LinkedList) linkedHashMap.get(fwVar.ox);
                        if (linkedList == null) {
                            linkedList = new LinkedList();
                            linkedHashMap.put(fwVar.ox, linkedList);
                        }
                        linkedList.add(fwVar);
                        i++;
                    }
                }
            }
            if (i > 0) {
                ArrayList arrayList = new ArrayList();
                do {
                    Iterator it = linkedHashMap.entrySet().iterator();
                    z = false;
                    while (it.hasNext()) {
                        LinkedList linkedList2 = (LinkedList) ((Map.Entry) it.next()).getValue();
                        if (linkedList2 != null && !linkedList2.isEmpty()) {
                            arrayList.add((fw) linkedList2.pollFirst());
                            i--;
                            z = true;
                        }
                    }
                    if (i <= 0) {
                        break;
                    }
                } while (z);
                return arrayList;
            }
        }
        return null;
    }

    private void ox() throws BaseException, InterruptedException {
        BaseException baseException;
        synchronized (this.gh) {
            try {
                if (this.o == null && this.no == null) {
                    this.gh.wait();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.o == null && this.no == null && (baseException = this.fw) != null) {
            throw baseException;
        }
    }

    private void ox(List<kk> list) {
        long d2 = jy.d(list);
        com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "checkDownloadBytes: getCurBytes = " + this.dq.getCurBytes() + ", totalBytes = " + this.dq.getTotalBytes() + ", downloadedBytes = " + d2);
        if (d2 > this.dq.getTotalBytes() && this.dq.getTotalBytes() > 0) {
            d2 = this.dq.getTotalBytes();
        }
        if (this.dq.getCurBytes() == this.dq.getTotalBytes() || this.dq.getCurBytes() == d2) {
            return;
        }
        this.dq.setCurBytes(d2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ox(mp mpVar) {
        synchronized (this) {
            try {
                fw p = p(mpVar);
                if (p == null) {
                    return false;
                }
                return mpVar.dq(p);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private float p(mp mpVar, fw fwVar) {
        long d2 = mpVar.d();
        int size = this.ia.size();
        if (size <= 1) {
            size = this.f9416d.dq();
        }
        float f2 = 1.0f;
        if (d2 <= 0) {
            float mp = this.f9416d.mp();
            if (mp <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || mp >= 1.0f) {
                mp = 1.0f / size;
            }
            if (mpVar.ox == 0) {
                return mp;
            }
            if (size > 1) {
                f2 = 1.0f - mp;
                size--;
            }
        } else {
            long jy = jy();
            if (jy > d2) {
                return d2 / jy;
            }
        }
        return f2 / size;
    }

    private fw p(mp mpVar) {
        fw fwVar;
        Iterator<fw> it = this.kk.iterator();
        fw fwVar2 = null;
        while (true) {
            if (!it.hasNext()) {
                fwVar = null;
                break;
            }
            fwVar = it.next();
            if (fwVar != mpVar.f9413d && !fwVar.p()) {
                if (fwVar2 == null) {
                    fwVar2 = fwVar;
                }
                if (fwVar.dq() <= 0) {
                    break;
                }
            }
        }
        if (this.f9416d.d()) {
            if (fwVar != null) {
                return fwVar;
            }
            if (this.f9416d.ox()) {
                return null;
            }
        }
        return fwVar2;
    }

    private void p() throws BaseException {
        try {
            this.s.dq((p) this.ox);
        } catch (f unused) {
        } catch (BaseException e2) {
            com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", "dispatchSegments: loopAndWrite e = ".concat(String.valueOf(e2)));
            dq(e2);
            throw e2;
        }
        if (this.mn || this.iw) {
            return;
        }
        try {
            synchronized (this) {
                while (!this.q.isEmpty()) {
                    try {
                        kk poll = this.q.poll();
                        if (poll != null) {
                            dq(this.jy, poll, true);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                ox(this.jy);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        if (!this.le || this.fw == null) {
            if (this.dq.getCurBytes() != this.dq.getTotalBytes()) {
                com.ss.android.socialbase.downloader.p.dq.dq(this.dq, this.jy);
            }
            com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "dispatchSegments::download finished");
        } else {
            com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", "dispatchSegments: loopAndWrite  failedException = " + this.fw);
            throw this.fw;
        }
    }

    private void p(List<kk> list) {
        kk kkVar = list.get(0);
        long ox = kkVar.ox();
        if (ox > 0) {
            kk kkVar2 = new kk(0L, ox - 1);
            kkVar.toString();
            kkVar2.toString();
            dq(list, kkVar2, true);
        }
        Iterator<kk> it = list.iterator();
        if (it.hasNext()) {
            kk next = it.next();
            while (it.hasNext()) {
                kk next2 = it.next();
                if (next.iw() < next2.ox() - 1) {
                    com.ss.android.socialbase.downloader.ox.dq.p("SegmentDispatcher", "fixSegment: segment = " + next + ", new end = " + (next2.ox() - 1));
                    next.ox(next2.ox() - 1);
                }
                next = next2;
            }
        }
        kk kkVar3 = (kk) awf.q(1, list);
        long totalBytes = this.dq.getTotalBytes();
        if (totalBytes <= 0 || (kkVar3.iw() != -1 && kkVar3.iw() < totalBytes - 1)) {
            com.ss.android.socialbase.downloader.ox.dq.p("SegmentDispatcher", "fixSegment: last segment = " + kkVar3 + ", new end=-1");
            kkVar3.ox(-1L);
        }
    }

    private boolean q() {
        long j = this.mp;
        if (j <= 0) {
            this.cd = false;
            return false;
        }
        synchronized (this) {
            try {
                long dq = jy.dq(this.jy);
                com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "isAllContentDownloaded: firstOffset = ".concat(String.valueOf(dq)));
                if (dq >= j) {
                    this.cd = true;
                    return true;
                }
                this.cd = false;
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void s() {
        int i;
        if (this.mp <= 0 || this.ig) {
            i = 1;
        } else {
            i = this.f9416d.dq();
            int ia = (int) (this.mp / this.f9416d.ia());
            if (i > ia) {
                i = ia;
            }
        }
        com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "dispatchReadThread: totalLength = " + this.mp + ", threadCount = " + i);
        int i2 = i > 0 ? i : 1;
        synchronized (this) {
            do {
                try {
                    if (this.ia.size() >= i2) {
                        break;
                    }
                    if (!this.mn && !this.iw) {
                        dq(o());
                    }
                    return;
                } finally {
                }
            } while (!this.f9416d.iw());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
    
        if ((r19.s() - r23.s()) < (r13 / 2)) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void s(mp mpVar, kk kkVar) throws o {
        kk kkVar2;
        long j;
        long j2;
        long iw;
        kk kkVar3;
        com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "applySegment: start ".concat(String.valueOf(kkVar)));
        if (kkVar.dq == mpVar) {
            com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "applySegment: " + mpVar + " is already the owner of " + kkVar);
            return;
        }
        if (kkVar.dq != null) {
            com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", "applySegment: " + kkVar + " is already has an owner:" + kkVar.dq);
            throw new o(1, "segment already has an owner");
        }
        if (mpVar.ia() != kkVar.s()) {
            throw new o(5, "applySegment");
        }
        long ox = kkVar.ox();
        int dq = dq(ox);
        if (dq == -1 || (kkVar2 = this.jy.get(dq)) == null) {
            com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", "applySegment: " + kkVar + " not exist! segmentIndex = " + dq);
            throw new o(2, "segment not exist");
        }
        if (kkVar2 != kkVar) {
            if (kkVar2.ox() == kkVar.ox()) {
                long dq2 = dq(kkVar2);
                if (dq2 > 0) {
                    mp mpVar2 = kkVar2.dq;
                    if (mpVar2 != null) {
                        if (dq2 < 524288) {
                            j = 0;
                            kkVar3 = kkVar2;
                            if (mpVar.iw - mpVar2.iw > 1000) {
                            }
                        } else {
                            kkVar3 = kkVar2;
                        }
                        "applySegmentLocked: has same segment, but owner is normal, abort. segmentInList = ".concat(String.valueOf(kkVar3));
                        com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", "applySegment: " + kkVar + " not exist! but has another same segment, segmentInList = " + kkVar3);
                        throw new o(2, "segment not exist, but has another same segment");
                    }
                    kkVar3 = kkVar2;
                    j = 0;
                    if (mpVar2 != null) {
                        "applySegmentLocked: has same segment,and owner too slow, segmentInList = ".concat(String.valueOf(kkVar3));
                        mpVar2.dq(true);
                    } else {
                        "applySegmentLocked: has same segment and no owner, segmentInList = ".concat(String.valueOf(kkVar3));
                    }
                    kkVar.ox(kkVar3.iw());
                    kkVar.d(kkVar3.o());
                    this.jy.set(dq, kkVar);
                }
            }
            kkVar3 = kkVar2;
            com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", "applySegment: " + kkVar + " not exist! but has another same segment, segmentInList = " + kkVar3);
            throw new o(2, "segment not exist, but has another same segment");
        }
        j = 0;
        long dq3 = kkVar.dq();
        int i = dq - 1;
        while (true) {
            if (i < 0) {
                j2 = 1;
                break;
            }
            kk kkVar4 = this.jy.get(i);
            long iw2 = kkVar4.iw();
            if (iw2 <= j || iw2 >= ox) {
                if (dq3 <= j && kkVar4.s() > ox) {
                    com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", "applySegment:prev's current has over this start, prev = " + kkVar4 + ", segment = " + kkVar);
                    this.jy.remove(kkVar);
                    throw new o(3, "prev overstep");
                }
                if (kkVar4.dq == null) {
                    j2 = 1;
                    kkVar4.ox(ox - 1);
                    com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "applySegment: prev set end, prev = ".concat(String.valueOf(kkVar4)));
                    if (kkVar4.dq() > j) {
                        break;
                    }
                } else {
                    j2 = 1;
                    long j3 = ox - 1;
                    if (!kkVar4.dq.dq(j3)) {
                        com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", "applySegment: adjustSegmentEndOffset filed, prev = ".concat(String.valueOf(kkVar4)));
                        throw new o(4, "prev end adjust fail");
                    }
                    kkVar4.ox(j3);
                    com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "applySegment: adjustSegmentEndOffset succeed, prev = ".concat(String.valueOf(kkVar4)));
                }
            }
            i--;
        }
        int size = this.jy.size();
        for (int i2 = dq + 1; i2 < size; i2++) {
            kk kkVar5 = this.jy.get(i2);
            if (kkVar5.dq() > j || kkVar5.dq != null) {
                long iw3 = kkVar.iw();
                long ox2 = kkVar5.ox();
                if (iw3 <= j || iw3 >= ox2) {
                    long j4 = ox2 - j2;
                    kkVar.ox(j4);
                    com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "applySegment: segment set end:" + j4 + ", later = " + kkVar5);
                }
                iw = kkVar.iw();
                if (iw <= j && (ox > iw || kkVar.s() > iw)) {
                    throw new o(6, "applySegment: ".concat(String.valueOf(kkVar)));
                }
                kkVar.dq = mpVar;
                com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "applySegment: OK ".concat(String.valueOf(kkVar)));
            }
        }
        iw = kkVar.iw();
        if (iw <= j) {
        }
        kkVar.dq = mpVar;
        com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "applySegment: OK ".concat(String.valueOf(kkVar)));
    }

    public void d() {
        com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "pause1");
        this.mn = true;
        synchronized (this) {
            try {
                Iterator<mp> it = this.ia.iterator();
                while (it.hasNext()) {
                    it.next().s();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.s.d();
        this.ox.ox();
    }

    @Override // com.ss.android.socialbase.downloader.iw.iw
    public void d(mp mpVar) {
        com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "onReaderExit: threadIndex = " + mpVar.ox);
        synchronized (this) {
            try {
                mpVar.ox(true);
                this.ia.remove(mpVar);
                mp();
                if (!this.ia.isEmpty()) {
                    if (q()) {
                        Iterator<mp> it = this.ia.iterator();
                        while (it.hasNext()) {
                            it.next().s();
                        }
                    }
                }
                no();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.iw.iw
    public void d(mp mpVar, kk kkVar) throws BaseException {
        synchronized (this) {
            s(mpVar, kkVar);
        }
    }

    @Override // com.ss.android.socialbase.downloader.iw.iw
    public kk dq(mp mpVar, fw fwVar) {
        if (this.iw || this.mn) {
            return null;
        }
        synchronized (this) {
            try {
                kk d2 = d(mpVar, fwVar);
                if (d2 != null) {
                    d2.ia();
                    if (d2.o() > 1) {
                        return new kk(d2);
                    }
                }
                return d2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dq() {
        com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", ekq.PERMISSION_RESULT_CANCEL);
        this.iw = true;
        synchronized (this) {
            try {
                Iterator<mp> it = this.ia.iterator();
                while (it.hasNext()) {
                    it.next().s();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.s.dq();
        this.ox.ox();
    }

    @Override // com.ss.android.socialbase.downloader.iw.iw
    public void dq(mp mpVar) {
        if (this.ji) {
            com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "onReaderRun, threadIndex = " + mpVar.ox);
        }
    }

    @Override // com.ss.android.socialbase.downloader.iw.iw
    public void dq(mp mpVar, fw fwVar, kk kkVar, BaseException baseException) {
        synchronized (this) {
            try {
                com.ss.android.socialbase.downloader.ox.dq.s("SegmentDispatcher", "onSegmentFailed: segment = " + kkVar + ", e = " + baseException);
                mpVar.d(true);
                if (mpVar.ox == 0) {
                    this.fw = baseException;
                }
                if (ig()) {
                    if (this.fw == null) {
                        this.fw = baseException;
                    }
                    this.le = true;
                    dq(this.fw);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.iw.iw
    public void dq(mp mpVar, fw fwVar, kk kkVar, BaseException baseException, int i, int i2) {
        boolean d2 = com.ss.android.socialbase.downloader.kk.iw.d(baseException);
        int errorCode = baseException.getErrorCode();
        if (errorCode == 1047 || errorCode == 1074 || errorCode == 1055) {
            d2 = true;
        }
        if (d2 || i >= i2) {
            ox(mpVar);
        }
    }

    @Override // com.ss.android.socialbase.downloader.iw.iw
    public void dq(mp mpVar, kk kkVar) {
        synchronized (this) {
            kkVar.kk();
        }
    }

    @Override // com.ss.android.socialbase.downloader.iw.iw
    public void dq(mp mpVar, kk kkVar, fw fwVar, com.ss.android.socialbase.downloader.model.p pVar) throws BaseException, com.ss.android.socialbase.downloader.exception.kk {
        synchronized (this) {
            try {
                if (this.iw || this.mn) {
                    throw new f("connected");
                }
                d(mpVar, kkVar, fwVar, pVar);
                mpVar.d(false);
                if (this.mp <= 0) {
                    long totalBytes = this.dq.getTotalBytes();
                    this.mp = totalBytes;
                    if (totalBytes <= 0) {
                        this.mp = pVar.o();
                    }
                    s();
                } else if (this.f9416d.iw()) {
                    s();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.network.ox.dq
    public void dq(String str, List<InetAddress> list) {
        List<fw> list2;
        if (this.mn || this.iw) {
            return;
        }
        try {
            list2 = ox(str, list);
        } catch (Throwable th) {
            th.printStackTrace();
            list2 = null;
        }
        synchronized (this) {
            if (list2 != null) {
                try {
                    d(str, list2);
                } finally {
                }
            }
            this.ig = false;
            this.f9416d.dq(this.kk.size());
            s();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
    
        if (r6.iw == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean dq(List<kk> list) throws BaseException, InterruptedException {
        try {
            iw();
            d(list);
            s();
            mn();
            kk();
            long currentTimeMillis = System.currentTimeMillis();
            try {
                ox();
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                this.dq.increaseAllConnectTime(currentTimeMillis2);
                this.dq.setFirstSpeedTime(currentTimeMillis2);
                if (!this.mn && !this.iw) {
                    this.p.dq(this.mp);
                    ia();
                    p();
                    return true;
                }
                if (!this.mn) {
                }
                return true;
            } catch (Throwable th) {
                long currentTimeMillis3 = System.currentTimeMillis() - currentTimeMillis;
                this.dq.increaseAllConnectTime(currentTimeMillis3);
                this.dq.setFirstSpeedTime(currentTimeMillis3);
                throw th;
            }
        } finally {
            if (!this.mn && !this.iw) {
                com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "finally pause");
                d();
            }
            this.i.d();
        }
    }

    @Override // com.ss.android.socialbase.downloader.iw.iw
    public void ox(mp mpVar, kk kkVar) {
        synchronized (this) {
            try {
                if (kkVar.dq == mpVar) {
                    com.ss.android.socialbase.downloader.ox.dq.ox("SegmentDispatcher", "unApplySegment ".concat(String.valueOf(kkVar)));
                    kkVar.p(mpVar.p());
                    kkVar.dq = null;
                    mpVar.dq();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.iw.iw
    public s p(mp mpVar, kk kkVar) throws BaseException {
        s dq;
        synchronized (this) {
            ig igVar = new ig(this.dq, this.ox, kkVar);
            this.s.dq(igVar);
            dq = igVar.dq();
        }
        return dq;
    }
}
