package com.bykv.vk.component.ttvideo.mediakit.downloader;

import android.annotation.SuppressLint;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLLog;
import com.bytedance.sdk.component.d.dq.d;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.iw;
import com.bytedance.sdk.component.d.dq.jy;
import com.bytedance.sdk.component.d.dq.mp;
import com.bytedance.sdk.component.d.dq.q;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class AVMDLHttpExcutor {
    private static final String TAG = "AVMDLHttpExcutor";
    private static ig okHttpClient;

    public static String buildRangeHeader(long j, long j2) {
        String formRangeStrBySize = formRangeStrBySize(j, j2);
        if (formRangeStrBySize == null) {
            return null;
        }
        return "bytes=".concat(formRangeStrBySize);
    }

    @SuppressLint({"CI_DefaultLocale"})
    public static AVMDLResponse excute(AVMDLRequest aVMDLRequest, int i) throws IOException {
        q.dq dqVar = new q.dq();
        dqVar.dq(aVMDLRequest.urls[i]);
        dqVar.dq("GET", (jy) null);
        dqVar.dq(toOkHttpHeaders(aVMDLRequest));
        d dq = getOkHttpClient().dq(dqVar.d());
        try {
            long currentTimeMillis = System.currentTimeMillis();
            f dq2 = dq.dq();
            long currentTimeMillis2 = System.currentTimeMillis();
            aVMDLRequest.mCurlUrlIndex = i;
            String.format("http open cost time:%d url:%s", Long.valueOf(currentTimeMillis2 - currentTimeMillis), aVMDLRequest.urls[i]);
            return new AVMDLResponse(aVMDLRequest, dq2, dq);
        } catch (Exception e2) {
            AVMDLLog.e(TAG, "request exception is " + e2.getLocalizedMessage());
            throw e2;
        }
    }

    public static String formRangeStrByPos(long j, long j2) {
        if (j >= 0 && j2 > 0) {
            return j + "-" + j2;
        }
        if (j >= 0) {
            return j + "-";
        }
        if (j >= 0 || j2 <= 0) {
            return null;
        }
        return "-".concat(String.valueOf(j2));
    }

    public static String formRangeStrBySize(long j, long j2) {
        return formRangeStrByPos(j, j2 > 0 ? (j2 + j) - 1 : -1L);
    }

    private static synchronized ig getOkHttpClient() {
        ig igVar;
        long j;
        synchronized (AVMDLHttpExcutor.class) {
            try {
                if (okHttpClient == null) {
                    AVMDLDataLoaderConfigure config = AVMDLDataLoader.getInstance().getConfig();
                    long j2 = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
                    if (config != null) {
                        long j3 = config.mOpenTimeOut > 0 ? r4 * 1000 : 10000L;
                        int i = config.mRWTimeOut;
                        if (i > 0) {
                            j2 = i * 1000;
                        }
                        long j4 = j3;
                        j = j2;
                        j2 = j4;
                    } else {
                        j = 10000;
                    }
                    ig.dq dqVar = new ig.dq();
                    dqVar.dq(Collections.singletonList(mp.HTTP_1_1));
                    TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                    dqVar.dq(j2, timeUnit).d(j, timeUnit).ox(j, timeUnit);
                    okHttpClient = dqVar.dq();
                }
                igVar = okHttpClient;
            } catch (Throwable th) {
                throw th;
            }
        }
        return igVar;
    }

    private static iw toOkHttpHeaders(AVMDLRequest aVMDLRequest) {
        iw.dq dqVar = new iw.dq();
        HashMap<String, String> hashMap = aVMDLRequest.headers;
        if (hashMap != null) {
            for (Map.Entry<String, String> entry : hashMap.entrySet()) {
                entry.getKey();
                entry.getValue();
                dqVar.d(entry.getKey(), entry.getValue());
            }
        }
        String buildRangeHeader = buildRangeHeader(aVMDLRequest.reqOff, aVMDLRequest.size);
        if (buildRangeHeader != null) {
            dqVar.d("Range", buildRangeHeader);
        }
        dqVar.d("Accept-Encoding", "identity");
        return dqVar.dq();
    }
}
