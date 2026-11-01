package com.ss.android.downloadlib.addownload.d;

import android.text.TextUtils;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private final ConcurrentHashMap<Long, DownloadModel> f9145d;
    private volatile boolean dq;
    private final ConcurrentHashMap<Long, DownloadEventConfig> ox;
    private final ConcurrentHashMap<Long, DownloadController> p;
    private final ConcurrentHashMap<Long, com.ss.android.downloadad.api.dq.d> s;

    public static class dq {
        private static iw dq = new iw();
    }

    private iw() {
        this.dq = false;
        this.f9145d = new ConcurrentHashMap<>();
        this.ox = new ConcurrentHashMap<>();
        this.p = new ConcurrentHashMap<>();
        this.s = new ConcurrentHashMap<>();
    }

    public static iw dq() {
        return dq.dq;
    }

    public DownloadEventConfig d(long j) {
        return this.ox.get(Long.valueOf(j));
    }

    public com.ss.android.downloadad.api.dq.d d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (com.ss.android.downloadad.api.dq.d dVar : this.s.values()) {
            if (dVar != null && str.equals(dVar.dq())) {
                return dVar;
            }
        }
        return null;
    }

    public void d() {
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.addownload.d.iw.1
            @Override // java.lang.Runnable
            public void run() {
                if (iw.this.dq) {
                    return;
                }
                synchronized (iw.class) {
                    try {
                        if (!iw.this.dq) {
                            iw.this.s.putAll(kk.dq().d());
                            iw.this.dq = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }, true);
    }

    public void d(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        for (DownloadModel downloadModel : this.f9145d.values()) {
            if ((downloadModel instanceof AdDownloadModel) && TextUtils.equals(downloadModel.getDownloadUrl(), str)) {
                ((AdDownloadModel) downloadModel).setPackageName(str2);
            }
        }
    }

    public DownloadModel dq(long j) {
        return this.f9145d.get(Long.valueOf(j));
    }

    public com.ss.android.downloadad.api.dq.d dq(int i) {
        for (com.ss.android.downloadad.api.dq.d dVar : this.s.values()) {
            if (dVar != null && dVar.gh() == i) {
                return dVar;
            }
        }
        return null;
    }

    public com.ss.android.downloadad.api.dq.d dq(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return null;
        }
        for (com.ss.android.downloadad.api.dq.d dVar : this.s.values()) {
            if (dVar != null && dVar.gh() == downloadInfo.getId()) {
                return dVar;
            }
        }
        if (!TextUtils.isEmpty(downloadInfo.getExtra())) {
            try {
                long dq2 = mp.dq(new JSONObject(downloadInfo.getExtra()), "extra");
                if (dq2 != 0) {
                    for (com.ss.android.downloadad.api.dq.d dVar2 : this.s.values()) {
                        if (dVar2 != null && dVar2.d() == dq2) {
                            return dVar2;
                        }
                    }
                    com.ss.android.downloadlib.s.ox.dq().dq("getNativeModelByInfo");
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        for (com.ss.android.downloadad.api.dq.d dVar3 : this.s.values()) {
            if (dVar3 != null && TextUtils.equals(dVar3.dq(), downloadInfo.getUrl())) {
                return dVar3;
            }
        }
        return null;
    }

    public com.ss.android.downloadad.api.dq.d dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (com.ss.android.downloadad.api.dq.d dVar : this.s.values()) {
            if (dVar != null && str.equals(dVar.s())) {
                return dVar;
            }
        }
        return null;
    }

    public Map<Long, com.ss.android.downloadad.api.dq.d> dq(String str, String str2) {
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            for (com.ss.android.downloadad.api.dq.d dVar : this.s.values()) {
                if (dVar != null && TextUtils.equals(dVar.dq(), str)) {
                    dVar.d(str2);
                    hashMap.put(Long.valueOf(dVar.d()), dVar);
                }
            }
        }
        return hashMap;
    }

    public void dq(long j, DownloadController downloadController) {
        if (downloadController != null) {
            this.p.put(Long.valueOf(j), downloadController);
        }
    }

    public void dq(long j, DownloadEventConfig downloadEventConfig) {
        if (downloadEventConfig != null) {
            this.ox.put(Long.valueOf(j), downloadEventConfig);
        }
    }

    public void dq(DownloadModel downloadModel) {
        if (downloadModel != null) {
            this.f9145d.put(Long.valueOf(downloadModel.getId()), downloadModel);
            if (downloadModel.getDeepLink() != null) {
                downloadModel.getDeepLink().setId(downloadModel.getId());
                downloadModel.getDeepLink().setPackageName(downloadModel.getPackageName());
            }
        }
    }

    public synchronized void dq(com.ss.android.downloadad.api.dq.d dVar) {
        if (dVar == null) {
            return;
        }
        this.s.put(Long.valueOf(dVar.d()), dVar);
        kk.dq().dq(dVar);
    }

    public synchronized void dq(List<Long> list) {
        try {
            ArrayList arrayList = new ArrayList();
            for (Long l : list) {
                arrayList.add(String.valueOf(l.longValue()));
                this.s.remove(l);
            }
            kk.dq().dq((List<String>) arrayList);
        } catch (Throwable th) {
            throw th;
        }
    }

    public void iw(long j) {
        this.f9145d.remove(Long.valueOf(j));
        this.ox.remove(Long.valueOf(j));
        this.p.remove(Long.valueOf(j));
    }

    public DownloadController ox(long j) {
        return this.p.get(Long.valueOf(j));
    }

    public ConcurrentHashMap<Long, com.ss.android.downloadad.api.dq.d> ox() {
        return this.s;
    }

    public com.ss.android.downloadad.api.dq.d p(long j) {
        return this.s.get(Long.valueOf(j));
    }

    public s s(long j) {
        s sVar = new s();
        sVar.dq = j;
        sVar.f9152d = dq(j);
        DownloadEventConfig d2 = d(j);
        sVar.ox = d2;
        if (d2 == null) {
            sVar.ox = new com.ss.android.download.api.download.ox();
        }
        DownloadController ox = ox(j);
        sVar.p = ox;
        if (ox == null) {
            sVar.p = new com.ss.android.download.api.download.d();
        }
        return sVar;
    }
}
