package com.bytedance.sdk.openadsdk.api.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;
import com.ss.android.download.api.model.DownloadShortInfo;
import g.hat;

/* loaded from: classes.dex */
public class p implements Bridge {
    private DownloadShortInfo dq;

    public p(DownloadShortInfo downloadShortInfo) {
        this.dq = downloadShortInfo;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case ValueSetConstants.VALUE_DOWNLOAD_SHORT_EQUALS /* 223700 */:
                return (T) Boolean.valueOf(equals(valueSet.objectValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_EQUALS_PARAMETER, Object.class)));
            case ValueSetConstants.VALUE_DOWNLOAD_SHORT_HASH_CODE /* 223701 */:
                hashCode();
                return null;
            default:
                return null;
        }
    }

    public int d() {
        DownloadShortInfo downloadShortInfo = this.dq;
        if (downloadShortInfo != null) {
            return downloadShortInfo.status;
        }
        return -1;
    }

    public long dq() {
        DownloadShortInfo downloadShortInfo = this.dq;
        if (downloadShortInfo != null) {
            return downloadShortInfo.id;
        }
        return -1L;
    }

    public boolean equals(Object obj) {
        DownloadShortInfo downloadShortInfo = this.dq;
        if (downloadShortInfo != null) {
            return downloadShortInfo.equals(obj);
        }
        return false;
    }

    public int hashCode() {
        DownloadShortInfo downloadShortInfo = this.dq;
        if (downloadShortInfo != null) {
            return downloadShortInfo.hashCode();
        }
        return 0;
    }

    public int iw() {
        DownloadShortInfo downloadShortInfo = this.dq;
        if (downloadShortInfo != null) {
            return downloadShortInfo.failStatus;
        }
        return 0;
    }

    public boolean mn() {
        DownloadShortInfo downloadShortInfo = this.dq;
        if (downloadShortInfo != null) {
            return downloadShortInfo.onlyWifi;
        }
        return false;
    }

    public long ox() {
        DownloadShortInfo downloadShortInfo = this.dq;
        if (downloadShortInfo != null) {
            return downloadShortInfo.totalBytes;
        }
        return -1L;
    }

    public long p() {
        DownloadShortInfo downloadShortInfo = this.dq;
        if (downloadShortInfo != null) {
            return downloadShortInfo.currentBytes;
        }
        return -1L;
    }

    public String s() {
        DownloadShortInfo downloadShortInfo = this.dq;
        return downloadShortInfo != null ? downloadShortInfo.fileName : "";
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat f2 = hat.f();
        f2.h(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_ID, dq());
        f2.o(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_STATUS, d());
        f2.h(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES, ox());
        f2.h(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES, p());
        f2.f19148c.put(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME, s());
        f2.o(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FAIL_STATUS, iw());
        f2.i(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_ONLY_WIFI, mn());
        return f2.k();
    }
}
