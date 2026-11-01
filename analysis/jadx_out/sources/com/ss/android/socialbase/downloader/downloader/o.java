package com.ss.android.socialbase.downloader.downloader;

import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface o {
    DownloadInfo d(int i);

    DownloadInfo d(int i, long j);

    List<DownloadInfo> d();

    List<DownloadInfo> d(String str);

    void d(int i, List<com.ss.android.socialbase.downloader.model.d> list);

    void d(DownloadInfo downloadInfo);

    void d(com.ss.android.socialbase.downloader.model.d dVar);

    DownloadInfo dq(int i, int i2);

    DownloadInfo dq(int i, long j);

    DownloadInfo dq(int i, long j, String str, String str2);

    List<DownloadInfo> dq(String str);

    void dq(int i, int i2, int i3, int i4);

    void dq(int i, int i2, int i3, long j);

    void dq(int i, int i2, long j);

    void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list);

    void dq(com.ss.android.socialbase.downloader.model.d dVar);

    boolean dq(int i, Map<Long, com.ss.android.socialbase.downloader.iw.kk> map);

    boolean dq(DownloadInfo downloadInfo);

    DownloadInfo ia(int i);

    Map<Long, com.ss.android.socialbase.downloader.iw.kk> ig(int i);

    boolean iw(int i);

    DownloadInfo kk(int i);

    DownloadInfo mn(int i);

    void mp(int i);

    DownloadInfo o(int i);

    DownloadInfo ox(int i, long j);

    List<com.ss.android.socialbase.downloader.model.d> ox(int i);

    List<DownloadInfo> ox(String str);

    void ox();

    DownloadInfo p(int i, long j);

    List<DownloadInfo> p(String str);

    void p(int i);

    boolean p();

    List<com.ss.android.socialbase.downloader.iw.kk> q(int i);

    boolean s();

    boolean s(int i);
}
