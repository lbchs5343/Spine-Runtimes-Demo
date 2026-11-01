package com.bykv.vk.component.ttvideo.mediakit.downloader;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLLog;
import com.bytedance.sdk.component.d.dq.d;
import com.bytedance.sdk.component.d.dq.f;
import java.io.IOException;

/* loaded from: classes.dex */
public class AVMDLResponse {
    private static final String TAG = "AVMDLResponse";
    public d call;
    public long readOff;
    public AVMDLRequest request;
    public f response;
    public long contentlength = -1;
    public int statusCode = -1;
    public boolean isReadErr = false;

    public AVMDLResponse(AVMDLRequest aVMDLRequest, f fVar, d dVar) {
        this.request = aVMDLRequest;
        this.response = fVar;
        this.call = dVar;
        this.readOff = aVMDLRequest.reqOff;
        parseResponse();
    }

    private void parseResponse() {
        int lastIndexOf;
        f fVar = this.response;
        if (fVar == null) {
            return;
        }
        int ox = fVar.ox();
        this.statusCode = ox;
        if (ox == 200) {
            this.contentlength = toInt(this.response.dq("Content-Length"));
            return;
        }
        if (ox == 206) {
            String dq = this.response.dq("Content-Range");
            if (TextUtils.isEmpty(dq) || (lastIndexOf = dq.lastIndexOf("/")) < 0 || lastIndexOf >= dq.length() - 1) {
                return;
            }
            this.contentlength = toInt(dq.substring(lastIndexOf + 1), -1);
        }
    }

    public static int toInt(String str) {
        return toInt(str, 0);
    }

    public static int toInt(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public void cancel() {
        d dVar = this.call;
        if (dVar != null) {
            dVar.d();
        }
    }

    @SuppressLint({"CI_DefaultLocale"})
    public boolean isFinish() {
        AVMDLRequest aVMDLRequest = this.request;
        long j = aVMDLRequest.size;
        long j2 = j >= 0 ? aVMDLRequest.reqOff + j : this.contentlength;
        long j3 = this.contentlength;
        if (j2 > j3) {
            j2 = j3;
        }
        String.format("check readoff:%d reqoff:%d reqsize:%d contentlen:%d endoff:%d", Long.valueOf(this.readOff), Long.valueOf(this.request.reqOff), Long.valueOf(this.request.size), Long.valueOf(this.contentlength), Long.valueOf(j2));
        return this.readOff >= j2;
    }

    public boolean isOpenSuccessful() {
        int i = this.statusCode;
        return i >= 200 && i < 300;
    }

    public boolean isReadSuccessful() {
        return !this.isReadErr;
    }

    @SuppressLint({"CI_DefaultLocale"})
    public int readData(byte[] bArr) {
        if (this.response.iw() == null) {
            return 0;
        }
        try {
            int read = this.response.iw().ox().read(bArr);
            if (read <= 0) {
                return -1;
            }
            String.format("before read off:%d reqoff:%d req size:%d", Long.valueOf(this.readOff), Long.valueOf(this.request.reqOff), Long.valueOf(this.request.size));
            long j = read;
            this.readOff += j;
            AVMDLRequest aVMDLRequest = this.request;
            aVMDLRequest.reqOff += j;
            long j2 = aVMDLRequest.size;
            if (j2 > 0) {
                aVMDLRequest.size = j2 - j;
            }
            String.format("after read,ret:%d off:%d reqoff:%d req size:%d", Integer.valueOf(read), Long.valueOf(this.readOff), Long.valueOf(this.request.reqOff), Long.valueOf(this.request.size));
            return read;
        } catch (IOException e2) {
            this.isReadErr = true;
            AVMDLLog.e(TAG, "read data exception:" + e2.getLocalizedMessage());
            return -1;
        }
    }

    public void reset() {
        this.response = null;
        this.call = null;
        this.contentlength = -1L;
        this.statusCode = -1;
        this.isReadErr = false;
    }
}
