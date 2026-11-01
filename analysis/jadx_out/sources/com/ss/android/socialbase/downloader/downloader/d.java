package com.ss.android.socialbase.downloader.downloader;

import android.content.Context;
import android.text.TextUtils;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.ji;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.io.File;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d {
    private String globalDefaultSavePath;
    private String globalDefaultSaveTempPath;

    private File getGlobalSaveDir(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            File file = new File(str);
            try {
                if (!file.exists()) {
                    file.mkdirs();
                    return file;
                }
                if (file.isDirectory()) {
                    return file;
                }
                if (!z) {
                    return null;
                }
                file.delete();
                file.mkdirs();
                return file;
            } catch (Throwable unused) {
                return file;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static DownloadTask with(Context context) {
        Downloader.getInstance(context);
        return new DownloadTask();
    }

    public void addMainThreadListener(int i, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        p.dq().d(i, iDownloadListener, com.ss.android.socialbase.downloader.constants.iw.MAIN, false);
    }

    public void addNotificationListener(int i, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        p.dq().d(i, iDownloadListener, com.ss.android.socialbase.downloader.constants.iw.NOTIFICATION, false);
    }

    public void addSubThreadListener(int i, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        p.dq().d(i, iDownloadListener, com.ss.android.socialbase.downloader.constants.iw.SUB, false);
    }

    public boolean canResume(int i) {
        return p.dq().s(i);
    }

    public void cancel(int i) {
        cancel(i, true);
    }

    public void cancel(int i, boolean z) {
        p.dq().ox(i, z);
    }

    public void clearDownloadData(int i) {
        p.dq().p(i, true);
    }

    public void clearDownloadData(int i, boolean z) {
        p.dq().p(i, z);
    }

    public void destoryDownloader() {
        ox.dq();
    }

    public void forceDownloadIngoreRecommendSize(int i) {
        p.dq().q(i);
    }

    public List<DownloadInfo> getAllDownloadInfo() {
        return p.dq().s();
    }

    public long getCurBytes(int i) {
        return p.dq().ia(i);
    }

    public IDownloadFileUriProvider getDownloadFileUriProvider(int i) {
        return p.dq().cd(i);
    }

    public int getDownloadId(String str, String str2) {
        return p.dq().dq(str, str2);
    }

    public DownloadInfo getDownloadInfo(int i) {
        return p.dq().no(i);
    }

    public DownloadInfo getDownloadInfo(String str, String str2) {
        return p.dq().d(str, str2);
    }

    public List<DownloadInfo> getDownloadInfoList(String str) {
        return p.dq().dq(str);
    }

    public kx getDownloadNotificationEventListener(int i) {
        return p.dq().ig(i);
    }

    public List<DownloadInfo> getDownloadingDownloadInfosWithMimeType(String str) {
        return p.dq().s(str);
    }

    public List<DownloadInfo> getFailedDownloadInfosWithMimeType(String str) {
        return p.dq().d(str);
    }

    public File getGlobalSaveDir() {
        return getGlobalSaveDir(this.globalDefaultSavePath, true);
    }

    public File getGlobalSaveTempDir() {
        return getGlobalSaveDir(this.globalDefaultSaveTempPath, false);
    }

    public cd getReserveWifiStatusListener() {
        return ox.gx();
    }

    public int getStatus(int i) {
        return p.dq().kk(i);
    }

    public List<DownloadInfo> getSuccessedDownloadInfosWithMimeType(String str) {
        return p.dq().ox(str);
    }

    public List<DownloadInfo> getUnCompletedDownloadInfosWithMimeType(String str) {
        return p.dq().p(str);
    }

    public boolean isDownloadCacheSyncSuccess() {
        return p.dq().iw();
    }

    public boolean isDownloadServiceForeground(int i) {
        return p.dq().ox(i).d();
    }

    public boolean isDownloadSuccessAndFileNotExist(DownloadInfo downloadInfo) {
        return p.dq().dq(downloadInfo);
    }

    public boolean isDownloading(int i) {
        boolean o;
        if (!com.ss.android.socialbase.downloader.kk.dq.dq(4194304)) {
            return p.dq().o(i);
        }
        synchronized (this) {
            o = p.dq().o(i);
        }
        return o;
    }

    public boolean isHttpServiceInit() {
        return p.dq().p();
    }

    public void pause(int i) {
        p.dq().p(i);
    }

    public void pauseAll() {
        p.dq().ox();
    }

    public void registerDownloadCacheSyncListener(com.ss.android.socialbase.downloader.depend.no noVar) {
        p.dq().dq(noVar);
    }

    public void registerDownloaderProcessConnectedListener(ji jiVar) {
        p.dq().dq(jiVar);
    }

    public void removeMainThreadListener(int i, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        p.dq().dq(i, iDownloadListener, com.ss.android.socialbase.downloader.constants.iw.MAIN, false);
    }

    public void removeNotificationListener(int i, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        p.dq().dq(i, iDownloadListener, com.ss.android.socialbase.downloader.constants.iw.NOTIFICATION, false);
    }

    public void removeSubThreadListener(int i, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        p.dq().dq(i, iDownloadListener, com.ss.android.socialbase.downloader.constants.iw.SUB, false);
    }

    @Deprecated
    public void removeTaskMainListener(int i) {
        p.dq().dq(i, null, com.ss.android.socialbase.downloader.constants.iw.MAIN, true);
    }

    @Deprecated
    public void removeTaskNotificationListener(int i) {
        p.dq().dq(i, null, com.ss.android.socialbase.downloader.constants.iw.NOTIFICATION, true);
    }

    @Deprecated
    public void removeTaskSubListener(int i) {
        p.dq().dq(i, null, com.ss.android.socialbase.downloader.constants.iw.SUB, true);
    }

    public void restart(int i) {
        p.dq().mn(i);
    }

    public void restartAllFailedDownloadTasks(List<String> list) {
        p.dq().dq(list);
    }

    public void restartAllPauseReserveOnWifiDownloadTasks(List<String> list) {
        p.dq().d(list);
    }

    public void resume(int i) {
        p.dq().iw(i);
    }

    public void setDefaultSavePath(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.globalDefaultSavePath = str;
    }

    public void setDefaultSaveTempPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.globalDefaultSaveTempPath = str;
    }

    public void setDownloadInMultiProcess() {
        if (!com.ss.android.socialbase.downloader.kk.dq.dq(4194304)) {
            ox.d();
        } else {
            synchronized (this) {
                ox.d();
            }
        }
    }

    public void setDownloadNotificationEventListener(int i, kx kxVar) {
        p.dq().dq(i, kxVar);
    }

    public void setLogLevel(int i) {
        p.dq().f(i);
    }

    @Deprecated
    public void setMainThreadListener(int i, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        p.dq().d(i, iDownloadListener, com.ss.android.socialbase.downloader.constants.iw.MAIN, true);
    }

    @Deprecated
    public void setMainThreadListener(int i, IDownloadListener iDownloadListener, boolean z) {
        if (iDownloadListener == null) {
            return;
        }
        p.dq().dq(i, iDownloadListener, com.ss.android.socialbase.downloader.constants.iw.MAIN, true, z);
    }

    @Deprecated
    public void setNotificationListener(int i, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        p.dq().d(i, iDownloadListener, com.ss.android.socialbase.downloader.constants.iw.NOTIFICATION, true);
    }

    public void setReserveWifiStatusListener(cd cdVar) {
        ox.dq(cdVar);
    }

    @Deprecated
    public void setSubThreadListener(int i, IDownloadListener iDownloadListener) {
        if (iDownloadListener == null) {
            return;
        }
        p.dq().d(i, iDownloadListener, com.ss.android.socialbase.downloader.constants.iw.SUB, true);
    }

    public void setThrottleNetSpeed(int i, long j) {
        p.dq().dq(i, j);
    }

    public void unRegisterDownloadCacheSyncListener(com.ss.android.socialbase.downloader.depend.no noVar) {
        p.dq().d(noVar);
    }

    public void unRegisterDownloaderProcessConnectedListener(ji jiVar) {
        p.dq().d(jiVar);
    }
}
