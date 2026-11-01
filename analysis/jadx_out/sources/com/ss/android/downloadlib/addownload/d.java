package com.ss.android.downloadlib.addownload;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;

/* loaded from: classes.dex */
public class d {
    private static volatile d dq;

    /* renamed from: d, reason: collision with root package name */
    private Handler f9141d = null;

    public static d dq() {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new d();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public boolean d() {
        return no.kk().optInt("forbid_invalidte_download_file_install", 0) == 1;
    }

    public void dq(Context context, DownloadInfo downloadInfo) {
        if (d() && downloadInfo != null) {
            try {
                File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
                if (file.isFile() && file.exists()) {
                    file.delete();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (this.f9141d == null) {
                this.f9141d = new Handler(Looper.getMainLooper());
            }
            final String url = downloadInfo.getUrl();
            Downloader.getInstance(context).clearDownloadData(downloadInfo.getId());
            this.f9141d.post(new Runnable() { // from class: com.ss.android.downloadlib.addownload.d.1
                @Override // java.lang.Runnable
                public void run() {
                    no.ox().dq(3, no.getContext(), null, "下载失败，请重试！", null, 0);
                    s dq2 = com.ss.android.downloadlib.ia.dq().dq(url);
                    if (dq2 != null) {
                        dq2.mn();
                    }
                }
            });
        }
    }
}
