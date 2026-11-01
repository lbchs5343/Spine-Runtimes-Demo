package com.ss.android.downloadlib.addownload;

import android.content.Context;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.OnItemClickListener;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;

/* loaded from: classes.dex */
public interface mn {
    mn d(int i, DownloadStatusChangeListener downloadStatusChangeListener);

    mn d(Context context);

    mn d(DownloadController downloadController);

    mn d(DownloadEventConfig downloadEventConfig);

    mn d(DownloadModel downloadModel);

    void d(int i);

    boolean d();

    mn dq(long j);

    mn dq(IDownloadButtonClickListener iDownloadButtonClickListener);

    mn dq(OnItemClickListener onItemClickListener);

    mn dq(String str);

    void dq();

    void dq(boolean z);

    boolean dq(int i);

    void ia();

    long p();
}
