package com.ss.android.downloadlib;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.OnItemClickListener;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class ia {
    private static volatile ia dq;
    private long iw;
    private final List<com.ss.android.downloadlib.addownload.mn> ox = new CopyOnWriteArrayList();
    private final Map<String, com.ss.android.downloadlib.addownload.mn> p = new ConcurrentHashMap();
    private final CopyOnWriteArrayList<Object> s = new CopyOnWriteArrayList<>();

    /* renamed from: d, reason: collision with root package name */
    private final Handler f9219d = new Handler(Looper.getMainLooper());

    private ia() {
    }

    private synchronized void d(Context context, int i, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel) {
        if (this.ox.size() <= 0) {
            ox(context, i, downloadStatusChangeListener, downloadModel);
            return;
        }
        com.ss.android.downloadlib.addownload.mn remove = this.ox.remove(0);
        remove.d(context).d(i, downloadStatusChangeListener).d(downloadModel).dq();
        this.p.put(downloadModel.getDownloadUrl(), remove);
    }

    private void d(Context context, int i, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel, String str) {
        if (downloadModel == null) {
            return;
        }
        com.ss.android.downloadlib.addownload.s sVar = new com.ss.android.downloadlib.addownload.s();
        sVar.d(context).d(i, downloadStatusChangeListener).d(downloadModel).dq(str).dq();
        this.p.put(str, sVar);
        com.ss.android.downloadlib.addownload.iw.dq().dq(str, downloadModel.getDownloadUrl());
    }

    public static ia dq() {
        if (dq == null) {
            synchronized (ia.class) {
                try {
                    if (dq == null) {
                        dq = new ia();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private synchronized void dq(Context context, int i, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel, String str) {
        try {
            try {
                if (this.ox.size() <= 0) {
                    d(context, i, downloadStatusChangeListener, downloadModel, str);
                    return;
                }
                com.ss.android.downloadlib.addownload.mn remove = this.ox.remove(0);
                remove.d(context).d(i, downloadStatusChangeListener).d(downloadModel).dq(str).dq();
                this.p.put(str, remove);
                com.ss.android.downloadlib.addownload.iw.dq().dq(str, downloadModel.getDownloadUrl());
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    private void ox() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.iw < 300000) {
            return;
        }
        this.iw = currentTimeMillis;
        if (this.ox.isEmpty()) {
            return;
        }
        p();
    }

    private void ox(Context context, int i, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel) {
        if (downloadModel == null) {
            return;
        }
        com.ss.android.downloadlib.addownload.s sVar = new com.ss.android.downloadlib.addownload.s();
        sVar.d(context).d(i, downloadStatusChangeListener).d(downloadModel).dq();
        this.p.put(downloadModel.getDownloadUrl(), sVar);
    }

    private void p() {
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        for (com.ss.android.downloadlib.addownload.mn mnVar : this.ox) {
            if (!mnVar.d() && currentTimeMillis - mnVar.p() > 300000) {
                mnVar.ia();
                arrayList.add(mnVar);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.ox.removeAll(arrayList);
    }

    public Handler d() {
        return this.f9219d;
    }

    public void d(final DownloadInfo downloadInfo, final String str) {
        this.f9219d.post(new Runnable() { // from class: com.ss.android.downloadlib.ia.4
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = ia.this.s.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next instanceof com.ss.android.download.api.download.dq.dq) {
                        ((com.ss.android.download.api.download.dq.dq) next).d(downloadInfo, str);
                    } else if (next instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.ss.android.download.api.download.dq.dq) {
                            ((com.ss.android.download.api.download.dq.dq) softReference.get()).d(downloadInfo, str);
                        }
                    }
                }
            }
        });
    }

    public com.ss.android.downloadlib.addownload.s dq(String str) {
        Map<String, com.ss.android.downloadlib.addownload.mn> map = this.p;
        if (map != null && map.size() != 0 && !TextUtils.isEmpty(str)) {
            com.ss.android.downloadlib.addownload.mn mnVar = no.kk().optInt("filter_download_url_key", 0) == 1 ? this.p.get(com.ss.android.downloadlib.addownload.iw.dq().dq(str)) : this.p.get(str);
            if (mnVar instanceof com.ss.android.downloadlib.addownload.s) {
                return (com.ss.android.downloadlib.addownload.s) mnVar;
            }
        }
        return null;
    }

    public void dq(Context context, int i, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel) {
        com.ss.android.downloadlib.addownload.mn mnVar;
        Context context2;
        DownloadStatusChangeListener downloadStatusChangeListener2;
        if (downloadModel == null || TextUtils.isEmpty(downloadModel.getDownloadUrl())) {
            return;
        }
        boolean z = no.kk().optInt("filter_download_url_key", 0) == 1;
        String dq2 = com.ss.android.downloadlib.addownload.iw.dq().dq(downloadModel.getDownloadUrl());
        if (!z || TextUtils.isEmpty(dq2)) {
            mnVar = this.p.get(downloadModel.getDownloadUrl());
        } else {
            mnVar = this.p.get(dq2);
            if (downloadModel instanceof AdDownloadModel) {
                AdDownloadModel adDownloadModel = (AdDownloadModel) downloadModel;
                if (TextUtils.isEmpty(adDownloadModel.getTaskKey())) {
                    adDownloadModel.setTaskKey(dq2);
                }
            }
        }
        if (mnVar != null) {
            mnVar.d(context).d(i, downloadStatusChangeListener).d(downloadModel).dq();
            return;
        }
        if (!this.ox.isEmpty()) {
            if (!z) {
                d(context, i, downloadStatusChangeListener, downloadModel);
                return;
            }
            if (!TextUtils.isEmpty(dq2)) {
                dq(context, i, downloadStatusChangeListener, downloadModel, dq2);
                return;
            }
            String dq3 = com.ss.android.downloadlib.addownload.iw.dq().dq(downloadModel);
            if (TextUtils.isEmpty(dq3)) {
                d(context, i, downloadStatusChangeListener, downloadModel);
                return;
            }
            dq(context, i, downloadStatusChangeListener, downloadModel, dq3);
            if (downloadModel instanceof AdDownloadModel) {
                AdDownloadModel adDownloadModel2 = (AdDownloadModel) downloadModel;
                if (TextUtils.isEmpty(adDownloadModel2.getTaskKey())) {
                    adDownloadModel2.setTaskKey(dq3);
                    return;
                }
                return;
            }
            return;
        }
        if (!z) {
            context2 = context;
            downloadStatusChangeListener2 = downloadStatusChangeListener;
        } else {
            if (!TextUtils.isEmpty(dq2)) {
                d(context, i, downloadStatusChangeListener, downloadModel, dq2);
                return;
            }
            context2 = context;
            downloadStatusChangeListener2 = downloadStatusChangeListener;
            String dq4 = com.ss.android.downloadlib.addownload.iw.dq().dq(downloadModel);
            if (!TextUtils.isEmpty(dq4)) {
                d(context2, i, downloadStatusChangeListener2, downloadModel, dq4);
                if (downloadModel instanceof AdDownloadModel) {
                    AdDownloadModel adDownloadModel3 = (AdDownloadModel) downloadModel;
                    if (TextUtils.isEmpty(adDownloadModel3.getTaskKey())) {
                        adDownloadModel3.setTaskKey(dq4);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        ox(context2, i, downloadStatusChangeListener2, downloadModel);
    }

    public void dq(final DownloadModel downloadModel, final DownloadController downloadController, final DownloadEventConfig downloadEventConfig) {
        this.f9219d.post(new Runnable() { // from class: com.ss.android.downloadlib.ia.1
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = ia.this.s.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next instanceof com.ss.android.download.api.download.dq.dq) {
                        ((com.ss.android.download.api.download.dq.dq) next).dq(downloadModel, downloadController, downloadEventConfig);
                    } else if (next instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.ss.android.download.api.download.dq.dq) {
                            ((com.ss.android.download.api.download.dq.dq) softReference.get()).dq(downloadModel, downloadController, downloadEventConfig);
                        }
                    }
                }
            }
        });
    }

    public void dq(com.ss.android.download.api.download.dq.dq dqVar) {
        if (dqVar != null) {
            if (com.ss.android.socialbase.downloader.mn.dq.ox().d("fix_listener_oom", false)) {
                this.s.add(new SoftReference(dqVar));
            } else {
                this.s.add(dqVar);
            }
        }
    }

    public void dq(final DownloadInfo downloadInfo) {
        this.f9219d.post(new Runnable() { // from class: com.ss.android.downloadlib.ia.5
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = ia.this.s.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next instanceof com.ss.android.download.api.download.dq.dq) {
                        ((com.ss.android.download.api.download.dq.dq) next).dq(downloadInfo);
                    } else if (next instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.ss.android.download.api.download.dq.dq) {
                            ((com.ss.android.download.api.download.dq.dq) softReference.get()).dq(downloadInfo);
                        }
                    }
                }
            }
        });
    }

    public void dq(final DownloadInfo downloadInfo, final BaseException baseException, final String str) {
        this.f9219d.post(new Runnable() { // from class: com.ss.android.downloadlib.ia.2
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = ia.this.s.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next instanceof com.ss.android.download.api.download.dq.dq) {
                        ((com.ss.android.download.api.download.dq.dq) next).dq(downloadInfo, baseException, str);
                    } else if (next instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.ss.android.download.api.download.dq.dq) {
                            ((com.ss.android.download.api.download.dq.dq) softReference.get()).dq(downloadInfo, baseException, str);
                        }
                    }
                }
            }
        });
    }

    public void dq(final DownloadInfo downloadInfo, final String str) {
        this.f9219d.post(new Runnable() { // from class: com.ss.android.downloadlib.ia.3
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = ia.this.s.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next instanceof com.ss.android.download.api.download.dq.dq) {
                        ((com.ss.android.download.api.download.dq.dq) next).dq(downloadInfo, str);
                    } else if (next instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.ss.android.download.api.download.dq.dq) {
                            ((com.ss.android.download.api.download.dq.dq) softReference.get()).dq(downloadInfo, str);
                        }
                    }
                }
            }
        });
    }

    public void dq(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean z = no.kk().optInt("filter_download_url_key", 0) == 1;
        String dq2 = com.ss.android.downloadlib.addownload.iw.dq().dq(str);
        com.ss.android.downloadlib.addownload.mn mnVar = (!z || TextUtils.isEmpty(dq2)) ? this.p.get(str) : this.p.get(dq2);
        if (mnVar != null) {
            if (mnVar.dq(i)) {
                this.ox.add(mnVar);
                if (!z || TextUtils.isEmpty(dq2)) {
                    this.p.remove(str);
                } else {
                    this.p.remove(dq2);
                    com.ss.android.downloadlib.addownload.iw.dq().d(dq2);
                }
            }
            ox();
        }
    }

    public void dq(String str, long j, int i, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        dq(str, j, i, downloadEventConfig, downloadController, null, null);
    }

    public void dq(String str, long j, int i, DownloadEventConfig downloadEventConfig, DownloadController downloadController, IDownloadButtonClickListener iDownloadButtonClickListener) {
        dq(str, j, i, downloadEventConfig, downloadController, null, iDownloadButtonClickListener);
    }

    public void dq(String str, long j, int i, DownloadEventConfig downloadEventConfig, DownloadController downloadController, OnItemClickListener onItemClickListener, IDownloadButtonClickListener iDownloadButtonClickListener) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean z = no.kk().optInt("filter_download_url_key", 0) == 1;
        String dq2 = com.ss.android.downloadlib.addownload.iw.dq().dq(str);
        com.ss.android.downloadlib.addownload.mn mnVar = (!z || TextUtils.isEmpty(dq2)) ? this.p.get(str) : this.p.get(dq2);
        if (mnVar != null) {
            mnVar.dq(j).d(downloadEventConfig).d(downloadController).dq(onItemClickListener).dq(iDownloadButtonClickListener).d(i);
        }
    }

    public void dq(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean z2 = no.kk().optInt("filter_download_url_key", 0) == 1;
        String dq2 = com.ss.android.downloadlib.addownload.iw.dq().dq(str);
        com.ss.android.downloadlib.addownload.mn mnVar = (!z2 || TextUtils.isEmpty(dq2)) ? this.p.get(str) : this.p.get(dq2);
        if (mnVar != null) {
            mnVar.dq(z);
        }
    }
}
