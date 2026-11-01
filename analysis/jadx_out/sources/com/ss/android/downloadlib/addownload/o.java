package com.ss.android.downloadlib.addownload;

import com.ss.android.download.api.model.DownloadShortInfo;

/* loaded from: classes.dex */
public class o {
    public static int dq(int i, int i2) {
        return (i2 <= 0 || i2 >= 100 || !dq(i)) ? i2 : (int) (Math.sqrt(i2) * 10.0d);
    }

    public static long dq(int i, long j, long j2) {
        if (dq(i)) {
            if (j <= 0) {
                return 0L;
            }
            if (j2 > 0) {
                return (j2 * dq(i, (int) ((j * 100) / j2))) / 100;
            }
        }
        return j;
    }

    public static DownloadShortInfo dq(DownloadShortInfo downloadShortInfo) {
        if (downloadShortInfo != null && dq((int) downloadShortInfo.id)) {
            downloadShortInfo.currentBytes = dq((int) downloadShortInfo.id, downloadShortInfo.currentBytes, downloadShortInfo.totalBytes);
        }
        return downloadShortInfo;
    }

    private static boolean dq(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("pause_optimise_pretend_download_percent_switch", 0) == 1 && com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("pause_optimise_switch", 0) == 1;
    }
}
