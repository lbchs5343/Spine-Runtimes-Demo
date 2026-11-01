package com.ss.android.downloadlib;

import android.content.Context;
import android.text.TextUtils;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.OnItemClickListener;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.downloadlib.addownload.mp;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes.dex */
public class o {
    private static volatile o dq;

    /* renamed from: d, reason: collision with root package name */
    private final com.ss.android.download.api.dq f9244d;
    private long iw;
    private final ia ox;
    private final com.ss.android.downloadad.api.dq p;
    private com.ss.android.downloadad.api.d s;

    private o(Context context) {
        this.ox = ia.dq();
        this.f9244d = new iw();
        this.iw = System.currentTimeMillis();
        d(context);
        this.p = dq.dq();
    }

    private void d(Context context) {
        no.dq(context);
        Downloader.getInstance(no.getContext());
        com.ss.android.downloadlib.addownload.d.iw.dq().d();
        com.ss.android.socialbase.appdownloader.p.o().dq(no.getContext(), "misc_config", new com.ss.android.downloadlib.ox.mn(), new com.ss.android.downloadlib.ox.iw(context), new ox());
        com.ss.android.downloadlib.ox.p pVar = new com.ss.android.downloadlib.ox.p();
        com.ss.android.socialbase.appdownloader.p.o().dq(pVar);
        Downloader.getInstance(context).registerDownloadCacheSyncListener(pVar);
        com.ss.android.socialbase.appdownloader.p.o().dq(new mp());
        com.ss.android.socialbase.downloader.downloader.ox.dq(new com.ss.android.downloadlib.ox.s());
        com.ss.android.socialbase.appdownloader.p.o().dq(com.ss.android.downloadlib.iw.ox.dq());
    }

    public static o dq(final Context context) {
        if (dq == null) {
            synchronized (o.class) {
                try {
                    if (dq == null) {
                        com.ss.android.downloadlib.s.d.dq(new Runnable() { // from class: com.ss.android.downloadlib.o.1
                            @Override // java.lang.Runnable
                            public void run() {
                                o unused = o.dq = new o(context);
                            }
                        });
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ia ia() {
        return this.ox;
    }

    public long d() {
        return this.iw;
    }

    public DownloadInfo d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return com.ss.android.socialbase.appdownloader.p.o().dq(no.getContext(), str);
    }

    public com.ss.android.download.api.dq dq() {
        return this.f9244d;
    }

    public com.ss.android.download.api.dq dq(String str) {
        com.ss.android.download.api.config.iw d2 = mn.dq().d();
        return (d2 == null || !d2.dq(str)) ? this.f9244d : d2.d(str);
    }

    public DownloadInfo dq(String str, String str2, boolean z) {
        return (TextUtils.isEmpty(str2) && z) ? d(str) : Downloader.getInstance(no.getContext()).getDownloadInfo(str, str2);
    }

    public void dq(final Context context, final int i, final DownloadStatusChangeListener downloadStatusChangeListener, final DownloadModel downloadModel) {
        com.ss.android.downloadlib.s.d.dq(new Runnable() { // from class: com.ss.android.downloadlib.o.4
            @Override // java.lang.Runnable
            public void run() {
                o.this.ia().dq(context, i, downloadStatusChangeListener, downloadModel);
            }
        });
    }

    public void dq(com.ss.android.download.api.download.dq.dq dqVar) {
        ia().dq(dqVar);
    }

    public void dq(final String str, final int i) {
        com.ss.android.downloadlib.s.d.dq(new Runnable() { // from class: com.ss.android.downloadlib.o.2
            @Override // java.lang.Runnable
            public void run() {
                o.this.ia().dq(str, i);
            }
        });
    }

    public void dq(final String str, final long j, final int i, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController) {
        com.ss.android.downloadlib.s.d.dq(new Runnable() { // from class: com.ss.android.downloadlib.o.6
            @Override // java.lang.Runnable
            public void run() {
                o.this.ia().dq(str, j, i, downloadEventConfig, downloadController);
            }
        });
    }

    public void dq(final String str, final long j, final int i, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        com.ss.android.downloadlib.s.d.dq(new Runnable() { // from class: com.ss.android.downloadlib.o.7
            @Override // java.lang.Runnable
            public void run() {
                o.this.ia().dq(str, j, i, downloadEventConfig, downloadController, iDownloadButtonClickListener);
            }
        });
    }

    public void dq(final String str, final long j, final int i, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController, final OnItemClickListener onItemClickListener, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        com.ss.android.downloadlib.s.d.dq(new Runnable() { // from class: com.ss.android.downloadlib.o.5
            @Override // java.lang.Runnable
            public void run() {
                o.this.ia().dq(str, j, i, downloadEventConfig, downloadController, onItemClickListener, iDownloadButtonClickListener);
            }
        });
    }

    public void dq(final String str, final boolean z) {
        com.ss.android.downloadlib.s.d.dq(new Runnable() { // from class: com.ss.android.downloadlib.o.3
            @Override // java.lang.Runnable
            public void run() {
                o.this.ia().dq(str, z);
            }
        });
    }

    public String iw() {
        return no.q();
    }

    public void mn() {
        s.dq().iw();
    }

    public void ox() {
        this.iw = System.currentTimeMillis();
    }

    public com.ss.android.downloadad.api.dq p() {
        return this.p;
    }

    public com.ss.android.downloadad.api.d s() {
        if (this.s == null) {
            this.s = d.dq();
        }
        return this.s;
    }
}
