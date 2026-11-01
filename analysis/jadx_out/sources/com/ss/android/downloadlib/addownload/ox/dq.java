package com.ss.android.downloadlib.addownload.ox;

import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.downloadlib.mn.no;
import com.ss.android.socialbase.downloader.depend.cd;
import com.ss.android.socialbase.downloader.depend.fw;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.awf;

/* loaded from: classes.dex */
public class dq implements cd {
    private int dq;

    private long d(com.ss.android.socialbase.downloader.mn.dq dqVar) {
        long dq = dqVar.dq("clear_space_sleep_time", 0L);
        if (dq <= 0) {
            return 0L;
        }
        if (dq > PushUIConfig.dismissTime) {
            dq = 5000;
        }
        no.d("AppDownloadDiskSpaceHandler", "waiting for space clear, sleepTime = ".concat(String.valueOf(dq)), null);
        try {
            Thread.sleep(dq);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        no.d("AppDownloadDiskSpaceHandler", "waiting end!", null);
        return dq;
    }

    private void dq() {
        com.ss.android.downloadlib.addownload.no.f();
        ox.dq();
        ox.d();
    }

    private void dq(long j, long j2, long j3, long j4, long j5) {
        DownloadInfo downloadInfo = Downloader.getInstance(com.ss.android.downloadlib.addownload.no.getContext()).getDownloadInfo(this.dq);
        if (downloadInfo == null) {
            return;
        }
        try {
            com.ss.android.downloadlib.dq.dq().dq(downloadInfo, j, j2, j3, j4, j5, j2 > j3);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean dq(com.ss.android.socialbase.downloader.mn.dq dqVar) {
        if (dqVar.dq("clear_space_use_disk_handler", 0) != 1) {
            return false;
        }
        return System.currentTimeMillis() - p.dq().d() >= dqVar.dq("clear_space_min_time_interval", 600000L);
    }

    public void dq(int i) {
        this.dq = i;
    }

    @Override // com.ss.android.socialbase.downloader.depend.cd
    public boolean dq(long j, long j2, fw fwVar) {
        com.ss.android.socialbase.downloader.mn.dq dq = com.ss.android.socialbase.downloader.mn.dq.dq(this.dq);
        if (!dq(dq)) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        p.dq().ox();
        long j3 = 0;
        long d2 = mp.d(0L);
        dq();
        long d3 = mp.d(0L);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (d3 < j2) {
            long d4 = d(dq);
            if (d4 > 0) {
                d3 = mp.d(0L);
            }
            j3 = d4;
        }
        long j4 = d3;
        StringBuilder l = awf.l(j2, "cleanUpDisk, byteRequired = ", ", byteAvailableAfter = ");
        l.append(j4);
        l.append(", cleaned = ");
        l.append(j4 - d2);
        no.d("AppDownloadDiskSpaceHandler", l.toString(), null);
        dq(d2, j4, j2, currentTimeMillis2, j3);
        if (j4 < j2) {
            return false;
        }
        if (fwVar == null) {
            return true;
        }
        fwVar.dq();
        return true;
    }
}
