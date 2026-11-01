package com.ss.android.socialbase.downloader.ia;

import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.exception.kk;

/* loaded from: classes.dex */
public interface iw {
    void d(BaseException baseException);

    boolean d(long j) throws BaseException;

    com.ss.android.socialbase.downloader.exception.ia dq(BaseException baseException, long j);

    com.ss.android.socialbase.downloader.exception.ia dq(com.ss.android.socialbase.downloader.model.d dVar, BaseException baseException, long j);

    com.ss.android.socialbase.downloader.model.d dq(int i);

    void dq(long j) throws BaseException;

    void dq(BaseException baseException, boolean z);

    void dq(d dVar);

    void dq(com.ss.android.socialbase.downloader.network.mn mnVar);

    void dq(String str, com.ss.android.socialbase.downloader.network.mn mnVar, long j) throws BaseException, kk;

    boolean dq(BaseException baseException);

    void ox(BaseException baseException);
}
