package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.aq;
import com.tencent.bugly.proguard.at;
import com.tencent.bugly.proguard.au;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.u;
import com.tencent.bugly.proguard.z;

/* loaded from: classes.dex */
public class CrashModule extends o {
    public static final int MODULE_ID = 1004;

    /* renamed from: c, reason: collision with root package name */
    private static int f9479c;

    /* renamed from: e, reason: collision with root package name */
    private static CrashModule f9480e = new CrashModule();

    /* renamed from: a, reason: collision with root package name */
    private long f9481a;

    /* renamed from: b, reason: collision with root package name */
    private BuglyStrategy.a f9482b;

    /* renamed from: d, reason: collision with root package name */
    private boolean f9483d = false;

    private synchronized void a(Context context, BuglyStrategy buglyStrategy) {
        if (buglyStrategy == null) {
            return;
        }
        try {
            String libBuglySOFilePath = buglyStrategy.getLibBuglySOFilePath();
            if (!TextUtils.isEmpty(libBuglySOFilePath)) {
                aa.a(context).t = libBuglySOFilePath;
                al.a("setted libBugly.so file path :%s", libBuglySOFilePath);
            }
            if (buglyStrategy.getCrashHandleCallback() != null) {
                this.f9482b = buglyStrategy.getCrashHandleCallback();
                al.a("setted CrashHanldeCallback", new Object[0]);
            }
            if (buglyStrategy.getAppReportDelay() > 0) {
                long appReportDelay = buglyStrategy.getAppReportDelay();
                this.f9481a = appReportDelay;
                al.a("setted delay: %d", Long.valueOf(appReportDelay));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static CrashModule getInstance() {
        CrashModule crashModule = f9480e;
        crashModule.id = 1004;
        return crashModule;
    }

    @Override // com.tencent.bugly.proguard.o
    public String[] getTables() {
        return new String[]{"t_cr"};
    }

    public synchronized boolean hasInitialized() {
        return this.f9483d;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b0 A[Catch: all -> 0x005b, TryCatch #0 {all -> 0x005b, blocks: (B:7:0x0003, B:10:0x0009, B:12:0x0033, B:14:0x0055, B:15:0x0069, B:17:0x007b, B:19:0x0082, B:22:0x0089, B:24:0x0099, B:27:0x00a0, B:29:0x00b0, B:31:0x00b8, B:32:0x00bf, B:37:0x00ab, B:38:0x0094, B:39:0x005e, B:40:0x0064), top: B:6:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b8 A[Catch: all -> 0x005b, TryCatch #0 {all -> 0x005b, blocks: (B:7:0x0003, B:10:0x0009, B:12:0x0033, B:14:0x0055, B:15:0x0069, B:17:0x007b, B:19:0x0082, B:22:0x0089, B:24:0x0099, B:27:0x00a0, B:29:0x00b0, B:31:0x00b8, B:32:0x00bf, B:37:0x00ab, B:38:0x0094, B:39:0x005e, B:40:0x0064), top: B:6:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bd  */
    @Override // com.tencent.bugly.proguard.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void init(Context context, boolean z, BuglyStrategy buglyStrategy) {
        if (context != null) {
            try {
                if (!this.f9483d) {
                    al.a("Initializing crash module.", new Object[0]);
                    u a2 = u.a();
                    int i = f9479c + 1;
                    f9479c = i;
                    a2.a(i);
                    this.f9483d = true;
                    CrashReport.setContext(context);
                    a(context, buglyStrategy);
                    at a3 = at.a(context, z, this.f9482b);
                    a3.t.a();
                    if (buglyStrategy != null) {
                        a3.B = buglyStrategy.getCallBackType();
                        a3.C = buglyStrategy.getCloseErrorCallback();
                        at.o = buglyStrategy.isUploadSpotCrash();
                        aa.a(context).S = buglyStrategy.isEnableRecordAnrMainStack();
                        if (buglyStrategy.isEnableCatchAnrTrace()) {
                            a3.u.enableCatchAnrTrace();
                        } else {
                            a3.u.disableCatchAnrTrace();
                        }
                    } else {
                        a3.u.enableCatchAnrTrace();
                    }
                    if (aa.b().f9537d.equals(z.a(a3.f9626c))) {
                        a3.u.removeEmptyNativeRecordFiles();
                    }
                    if (buglyStrategy != null && !buglyStrategy.isEnableNativeCrashMonitor()) {
                        al.a("[crash] Closed native crash monitor!", new Object[0]);
                        a3.d();
                        if (buglyStrategy != null && !buglyStrategy.isEnableANRCrashMonitor()) {
                            al.a("[crash] Closed ANR monitor!", new Object[0]);
                            a3.g();
                            if (buglyStrategy != null) {
                                at.f9623e = buglyStrategy.isMerged();
                            }
                            a3.a(buglyStrategy == null ? buglyStrategy.getAppReportDelay() : 0L);
                            a3.u.checkUploadRecordCrash();
                            au.a(context);
                            aq a4 = aq.a();
                            a4.a("android.net.conn.CONNECTIVITY_CHANGE");
                            a4.a(context);
                            u a5 = u.a();
                            int i2 = f9479c - 1;
                            f9479c = i2;
                            a5.a(i2);
                        }
                        a3.f();
                        if (buglyStrategy != null) {
                        }
                        a3.a(buglyStrategy == null ? buglyStrategy.getAppReportDelay() : 0L);
                        a3.u.checkUploadRecordCrash();
                        au.a(context);
                        aq a42 = aq.a();
                        a42.a("android.net.conn.CONNECTIVITY_CHANGE");
                        a42.a(context);
                        u a52 = u.a();
                        int i22 = f9479c - 1;
                        f9479c = i22;
                        a52.a(i22);
                    }
                    a3.e();
                    if (buglyStrategy != null) {
                        al.a("[crash] Closed ANR monitor!", new Object[0]);
                        a3.g();
                        if (buglyStrategy != null) {
                        }
                        a3.a(buglyStrategy == null ? buglyStrategy.getAppReportDelay() : 0L);
                        a3.u.checkUploadRecordCrash();
                        au.a(context);
                        aq a422 = aq.a();
                        a422.a("android.net.conn.CONNECTIVITY_CHANGE");
                        a422.a(context);
                        u a522 = u.a();
                        int i222 = f9479c - 1;
                        f9479c = i222;
                        a522.a(i222);
                    }
                    a3.f();
                    if (buglyStrategy != null) {
                    }
                    a3.a(buglyStrategy == null ? buglyStrategy.getAppReportDelay() : 0L);
                    a3.u.checkUploadRecordCrash();
                    au.a(context);
                    aq a4222 = aq.a();
                    a4222.a("android.net.conn.CONNECTIVITY_CHANGE");
                    a4222.a(context);
                    u a5222 = u.a();
                    int i2222 = f9479c - 1;
                    f9479c = i2222;
                    a5222.a(i2222);
                }
            } finally {
            }
        }
    }

    @Override // com.tencent.bugly.proguard.o
    public void onServerStrategyChanged(StrategyBean strategyBean) {
        at a2;
        if (strategyBean == null || (a2 = at.a()) == null) {
            return;
        }
        a2.t.a(strategyBean);
        a2.u.onStrategyChanged(strategyBean);
        a2.x.b();
    }
}
