package com.ss.android.socialbase.downloader.impls;

import android.text.TextUtils;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class no implements com.ss.android.socialbase.downloader.downloader.o {
    private final SparseArray<DownloadInfo> dq = new SparseArray<>();

    /* renamed from: d, reason: collision with root package name */
    private final SparseArray<List<com.ss.android.socialbase.downloader.model.d>> f9400d = new SparseArray<>();
    private final SparseArray<Map<Long, com.ss.android.socialbase.downloader.iw.kk>> ox = new SparseArray<>();

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized DownloadInfo d(int i) {
        DownloadInfo downloadInfo;
        try {
            downloadInfo = this.dq.get(i);
        } catch (Exception e2) {
            e2.printStackTrace();
            downloadInfo = null;
        }
        return downloadInfo;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo d(int i, long j) {
        DownloadInfo d2 = d(i);
        if (d2 != null) {
            d2.setCurBytes(j, false);
            d2.setStatus(-1);
            d2.setFirstDownload(false);
        }
        return d2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized List<DownloadInfo> d() {
        if (this.dq.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.dq.size());
        for (int i = 0; i < this.dq.size(); i++) {
            DownloadInfo valueAt = this.dq.valueAt(i);
            if (valueAt != null) {
                arrayList.add(valueAt);
            }
        }
        return arrayList;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized List<DownloadInfo> d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.dq.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.dq.size(); i++) {
            DownloadInfo downloadInfo = this.dq.get(this.dq.keyAt(i));
            if (downloadInfo != null && !TextUtils.isEmpty(downloadInfo.getMimeType()) && downloadInfo.getMimeType().equals(str) && DownloadStatus.isFailedStatus(downloadInfo.getStatus())) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void d(int i, List<com.ss.android.socialbase.downloader.model.d> list) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void d(DownloadInfo downloadInfo) {
        dq(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void d(com.ss.android.socialbase.downloader.model.d dVar) {
    }

    public SparseArray<DownloadInfo> dq() {
        return this.dq;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized DownloadInfo dq(int i, int i2) {
        DownloadInfo d2;
        d2 = d(i);
        if (d2 != null) {
            d2.setChunkCount(i2);
        }
        return d2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo dq(int i, long j) {
        DownloadInfo d2 = d(i);
        if (d2 != null) {
            d2.setCurBytes(j, false);
            if (d2.getStatus() != -3 && d2.getStatus() != -2 && !DownloadStatus.isFailedStatus(d2.getStatus()) && d2.getStatus() != -4) {
                d2.setStatus(4);
            }
        }
        return d2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo dq(int i, long j, String str, String str2) {
        DownloadInfo d2 = d(i);
        if (d2 != null) {
            d2.setTotalBytes(j);
            d2.seteTag(str);
            if (TextUtils.isEmpty(d2.getName()) && !TextUtils.isEmpty(str2)) {
                d2.setName(str2);
            }
            d2.setStatus(3);
        }
        return d2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized List<DownloadInfo> dq(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        try {
            int size = this.dq.size();
            for (int i = 0; i < size; i++) {
                DownloadInfo valueAt = this.dq.valueAt(i);
                if (str != null && str.equals(valueAt.getUrl())) {
                    arrayList.add(valueAt);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void dq(int i, int i2, int i3, int i4) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002b, code lost:
    
        if (r0.mn() == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002d, code lost:
    
        r3 = r0.mn().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0039, code lost:
    
        if (r3.hasNext() == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003b, code lost:
    
        r5 = r3.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0041, code lost:
    
        if (r5 == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0047, code lost:
    
        if (r5.gh() != r4) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0049, code lost:
    
        r5.d(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004d, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0051, code lost:
    
        return;
     */
    @Override // com.ss.android.socialbase.downloader.downloader.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void dq(int i, int i2, int i3, long j) {
        List<com.ss.android.socialbase.downloader.model.d> ox = ox(i);
        if (ox == null) {
            return;
        }
        Iterator<com.ss.android.socialbase.downloader.model.d> it = ox.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            com.ss.android.socialbase.downloader.model.d next = it.next();
            if (next != null && next.gh() == i3 && !next.iw()) {
                break;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized void dq(int i, int i2, long j) {
        List<com.ss.android.socialbase.downloader.model.d> ox = ox(i);
        if (ox == null) {
            return;
        }
        for (com.ss.android.socialbase.downloader.model.d dVar : ox) {
            if (dVar != null && dVar.gh() == i2) {
                dVar.d(j);
                return;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list) {
        if (list == null) {
            return;
        }
        p(i);
        for (com.ss.android.socialbase.downloader.model.d dVar : list) {
            if (dVar != null) {
                dq(dVar);
                if (dVar.iw()) {
                    Iterator<com.ss.android.socialbase.downloader.model.d> it = dVar.mn().iterator();
                    while (it.hasNext()) {
                        dq(it.next());
                    }
                }
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void dq(com.ss.android.socialbase.downloader.model.d dVar) {
        int no = dVar.no();
        List<com.ss.android.socialbase.downloader.model.d> list = this.f9400d.get(no);
        if (list == null) {
            list = new ArrayList<>();
            this.f9400d.put(no, list);
        }
        list.add(dVar);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized boolean dq(int i, Map<Long, com.ss.android.socialbase.downloader.iw.kk> map) {
        this.ox.put(i, map);
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized boolean dq(DownloadInfo downloadInfo) {
        boolean z = true;
        if (downloadInfo == null) {
            return true;
        }
        if (this.dq.get(downloadInfo.getId()) == null) {
            z = false;
        }
        this.dq.put(downloadInfo.getId(), downloadInfo);
        return z;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo ia(int i) {
        DownloadInfo d2 = d(i);
        if (d2 != null) {
            d2.setStatus(5);
            d2.setFirstDownload(false);
        }
        return d2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized Map<Long, com.ss.android.socialbase.downloader.iw.kk> ig(int i) {
        return this.ox.get(i);
    }

    public SparseArray<List<com.ss.android.socialbase.downloader.model.d>> iw() {
        return this.f9400d;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean iw(int i) {
        s(i);
        p(i);
        mp(i);
        return true;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo kk(int i) {
        DownloadInfo d2 = d(i);
        if (d2 != null) {
            d2.setStatus(1);
        }
        return d2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo mn(int i) {
        DownloadInfo d2 = d(i);
        if (d2 != null) {
            d2.setStatus(2);
        }
        return d2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized void mp(int i) {
        this.ox.remove(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo o(int i) {
        DownloadInfo d2 = d(i);
        if (d2 != null) {
            d2.setStatus(-7);
        }
        return d2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo ox(int i, long j) {
        DownloadInfo d2 = d(i);
        if (d2 != null) {
            d2.setCurBytes(j, false);
            d2.setStatus(-3);
            d2.setFirstDownload(false);
            d2.setFirstSuccess(false);
        }
        return d2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized List<com.ss.android.socialbase.downloader.model.d> ox(int i) {
        return this.f9400d.get(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized List<DownloadInfo> ox(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.dq.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.dq.size(); i++) {
            DownloadInfo downloadInfo = this.dq.get(this.dq.keyAt(i));
            if (downloadInfo != null && !TextUtils.isEmpty(downloadInfo.getMimeType()) && downloadInfo.getMimeType().equals(str) && downloadInfo.getStatus() == -3) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized void ox() {
        this.dq.clear();
        this.f9400d.clear();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo p(int i, long j) {
        DownloadInfo d2 = d(i);
        if (d2 != null) {
            d2.setCurBytes(j, false);
            d2.setStatus(-2);
        }
        return d2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized List<DownloadInfo> p(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.dq.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.dq.size(); i++) {
            DownloadInfo downloadInfo = this.dq.get(this.dq.keyAt(i));
            if (downloadInfo != null && !TextUtils.isEmpty(downloadInfo.getMimeType()) && downloadInfo.getMimeType().equals(str) && DownloadStatus.isUnCompletedStatus(downloadInfo.getStatus())) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized void p(int i) {
        this.f9400d.remove(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean p() {
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized List<com.ss.android.socialbase.downloader.iw.kk> q(int i) {
        Map<Long, com.ss.android.socialbase.downloader.iw.kk> map = this.ox.get(i);
        if (map != null && !map.isEmpty()) {
            return new ArrayList(map.values());
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean s() {
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public synchronized boolean s(int i) {
        this.dq.remove(i);
        return true;
    }
}
