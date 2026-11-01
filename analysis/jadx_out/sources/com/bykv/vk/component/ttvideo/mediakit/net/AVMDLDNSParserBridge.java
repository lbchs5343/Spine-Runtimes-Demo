package com.bykv.vk.component.ttvideo.mediakit.net;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLLog;
import java.util.Locale;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class AVMDLDNSParserBridge implements AVMDLDNSParserListener {
    private static final String TAG = "AVMDLDNSParserBridge";
    private static boolean v2Usable = true;
    public String host;
    String ipList = null;
    boolean isFinish = false;
    private Lock lock = new ReentrantLock();
    private long handle = 0;

    private static native void _notifyParserResult(long j, String str, String str2, long j2, String str3);

    private static native void _notifyParserResultV2(long j, String str, String str2, long j2, String str3, int i);

    /* JADX WARN: Removed duplicated region for block: B:23:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int parserResult(long j, String str, int i) {
        boolean z;
        int i2;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        this.lock.lock();
        this.handle = j;
        AVMDLDNSParserBridge aVMDLDNSParserBridge = null;
        try {
            try {
                this.host = str;
                AVMDLDNSInfo aVMDLDNSInfo = IPCache.getInstance().get(str);
                if (aVMDLDNSInfo != null) {
                    this.ipList = aVMDLDNSInfo.mIpList;
                    long currentTimeMillis = System.currentTimeMillis();
                    String.format("get result from cache expiredT:%d curT:%d ", Long.valueOf(aVMDLDNSInfo.mExpiredTime), Long.valueOf(currentTimeMillis));
                    long j2 = aVMDLDNSInfo.mExpiredTime;
                    z = j2 <= currentTimeMillis;
                    try {
                        long j3 = this.handle;
                        if (j3 != 0) {
                            if (i == 1) {
                                v2Usable = false;
                                _notifyParserResult(j3, str, this.ipList, j2, null);
                            } else {
                                v2Usable = true;
                                _notifyParserResultV2(j3, str, this.ipList, j2, null, aVMDLDNSInfo.mType);
                            }
                        }
                        i2 = 1;
                    } catch (UnsatisfiedLinkError e2) {
                        e = e2;
                        AVMDLLog.e(TAG, e.toString());
                        if (v2Usable) {
                            v2Usable = false;
                        }
                        this.lock.unlock();
                        i2 = 0;
                        if (z) {
                        }
                        String.format("****call start end, listener:%s", aVMDLDNSParserBridge);
                        return i2;
                    }
                } else {
                    i2 = 0;
                    aVMDLDNSParserBridge = this;
                    z = true;
                }
                this.lock.unlock();
            } catch (UnsatisfiedLinkError e3) {
                e = e3;
                z = true;
            }
            if (z) {
                String.format("call add host to parser listener:%s", aVMDLDNSParserBridge);
                AVMDLDNSParser.getInstance().addHost(str, aVMDLDNSParserBridge);
            }
            String.format("****call start end, listener:%s", aVMDLDNSParserBridge);
            return i2;
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    private void parserResult(int i, String str, String str2, long j, String str3, int i2, int i3) {
        String str4;
        long j2;
        int i4;
        AVMDLDNSInfo backUpIp;
        this.lock.lock();
        try {
            try {
                if (this.isFinish) {
                    Locale locale = Locale.ENGLISH;
                } else {
                    Locale locale2 = Locale.ENGLISH;
                    TextUtils.isEmpty(str2);
                    if (TextUtils.isEmpty(str2) && AVMDLDNSParser.getIntValue(5) == 1 && (backUpIp = IPCache.getInstance().getBackUpIp(str)) != null) {
                        str4 = backUpIp.mIpList;
                        i4 = backUpIp.mType;
                        j2 = 0;
                    } else {
                        str4 = str2;
                        j2 = j;
                        i4 = i2;
                    }
                    this.ipList = str4;
                    this.isFinish = true;
                    long j3 = this.handle;
                    if (j3 != 0) {
                        if (i3 == 2) {
                            v2Usable = true;
                            _notifyParserResultV2(j3, str, str4, j2, str3, i4);
                        } else {
                            v2Usable = false;
                            _notifyParserResult(j3, str, str4, j2, str3);
                        }
                    }
                }
            } catch (UnsatisfiedLinkError unused) {
                if (v2Usable) {
                    v2Usable = false;
                }
                this.isFinish = false;
            }
            this.lock.unlock();
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    public String getBackUp(String str) {
        AVMDLDNSInfo backUpIp;
        if (AVMDLDNSParser.getIntValue(5) != 1 || (backUpIp = IPCache.getInstance().getBackUpIp(str)) == null) {
            return null;
        }
        return backUpIp.mIpList;
    }

    public String getResult() {
        this.lock.lock();
        try {
            return this.ipList;
        } finally {
            this.lock.unlock();
        }
    }

    public boolean isFinish() {
        return this.isFinish;
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.net.AVMDLDNSParserListener
    public void onCompletion(int i, String str, String str2, long j, String str3, int i2) {
        if (!this.isFinish && v2Usable) {
            parserResult(i, str, str2, j, str3, i2, 2);
        }
        if (this.isFinish) {
            return;
        }
        parserResult(i, str, str2, j, str3, i2, 1);
    }

    public void release() {
        String.format("----start release:%s", this);
        this.lock.lock();
        try {
            this.handle = 0L;
            this.lock.unlock();
            AVMDLDNSParser.getInstance().removeHost(this.host, this);
            String.format("****end call release:%s", this);
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    public int start(long j, String str) {
        int parserResult = v2Usable ? parserResult(j, str, 2) : 0;
        return parserResult <= 0 ? parserResult(j, str, 1) : parserResult;
    }
}
