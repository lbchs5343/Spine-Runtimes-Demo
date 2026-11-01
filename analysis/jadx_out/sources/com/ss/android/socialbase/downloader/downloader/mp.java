package com.ss.android.socialbase.downloader.downloader;

import android.app.Notification;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.er;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.depend.op;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.List;

/* loaded from: classes.dex */
public interface mp {
    op cd(int i);

    DownloadInfo d(String str, String str2);

    List<DownloadInfo> d(String str);

    void d(int i, int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z);

    void d(int i, List<com.ss.android.socialbase.downloader.model.d> list);

    void d(int i, boolean z);

    void d(DownloadInfo downloadInfo);

    void d(DownloadTask downloadTask);

    void d(List<String> list);

    boolean d();

    boolean d(int i);

    int dq(String str, String str2);

    List<DownloadInfo> dq(String str);

    void dq();

    void dq(int i);

    void dq(int i, int i2);

    void dq(int i, int i2, int i3, int i4);

    void dq(int i, int i2, int i3, long j);

    void dq(int i, int i2, long j);

    void dq(int i, int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z);

    void dq(int i, int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z, boolean z2);

    void dq(int i, long j);

    void dq(int i, Notification notification);

    void dq(int i, kx kxVar);

    void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list);

    void dq(int i, boolean z);

    void dq(er erVar);

    void dq(DownloadTask downloadTask);

    void dq(com.ss.android.socialbase.downloader.model.d dVar);

    void dq(List<String> list);

    void dq(boolean z, boolean z2);

    boolean dq(DownloadInfo downloadInfo);

    boolean f(int i);

    kx fw(int i);

    IDownloadFileUriProvider gh(int i);

    DownloadInfo ia(int i);

    boolean ig(int i);

    int iw(int i);

    void iw();

    void jy(int i);

    List<com.ss.android.socialbase.downloader.model.d> kk(int i);

    boolean mn();

    boolean mn(int i);

    int mp(int i);

    void no(int i);

    void o(int i);

    List<DownloadInfo> ox(String str);

    void ox(int i);

    void ox(int i, boolean z);

    boolean ox();

    boolean ox(DownloadInfo downloadInfo);

    List<DownloadInfo> p();

    List<DownloadInfo> p(String str);

    void p(int i);

    boolean q(int i);

    long s(int i);

    List<DownloadInfo> s(String str);

    boolean s();

    void startService();
}
