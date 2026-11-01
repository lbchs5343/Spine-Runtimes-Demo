package com.tencent.bugly.crashreport.crash.jni;

import android.content.Context;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.proguard.al;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.as;
import com.tencent.bugly.proguard.at;
import com.tencent.bugly.proguard.be;
import g.aqn;
import java.io.File;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NativeCrashHandler f9532a;

    public a(NativeCrashHandler nativeCrashHandler) {
        this.f9532a = nativeCrashHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context;
        boolean z;
        Context context2;
        String str;
        NativeExceptionHandler nativeExceptionHandler;
        Context context3;
        File[] fileArr;
        as asVar;
        String str2;
        as asVar2;
        NativeCrashHandler nativeCrashHandler = this.f9532a;
        context = nativeCrashHandler.f9528d;
        if (!ap.a(context, "native_record_lock")) {
            al.a("[Native] Failed to lock file for handling native crash record.", new Object[0]);
            return;
        }
        z = NativeCrashHandler.n;
        if (!z) {
            nativeCrashHandler.a(999, "false");
        }
        context2 = nativeCrashHandler.f9528d;
        str = NativeCrashHandler.f9525a;
        nativeExceptionHandler = nativeCrashHandler.f9531g;
        CrashDetailBean a2 = be.a(context2, str, nativeExceptionHandler);
        if (a2 != null) {
            al.a("[Native] Get crash from native record.", new Object[0]);
            asVar = nativeCrashHandler.m;
            if (!asVar.a(a2, true)) {
                asVar2 = nativeCrashHandler.m;
                asVar2.b(a2, false);
            }
            str2 = NativeCrashHandler.f9525a;
            be.a(false, str2);
        }
        long b2 = ap.b() - at.j;
        long b3 = ap.b() + AdBaseConstants.DEFAULT_DELAY_TIMESTAMP;
        File file = new File(NativeCrashHandler.f9525a);
        if (file.exists() && file.isDirectory()) {
            try {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length != 0) {
                    Arrays.sort(listFiles, new aqn(7));
                    int length = listFiles.length;
                    long j = 0;
                    int i = 0;
                    int i2 = 0;
                    int i3 = 0;
                    while (i < length) {
                        File file2 = listFiles[i];
                        long lastModified = file2.lastModified();
                        j += file2.length();
                        if (lastModified < b2 || lastModified >= b3 || j >= at.i) {
                            fileArr = listFiles;
                            al.a("[Native] Delete record file: %s", file2.getAbsolutePath());
                            i2++;
                            if (file2.delete()) {
                                i3++;
                            }
                        } else {
                            fileArr = listFiles;
                        }
                        i++;
                        listFiles = fileArr;
                    }
                    al.c("[Native] Number of record files overdue: %d, has deleted: %d", Integer.valueOf(i2), Integer.valueOf(i3));
                }
            } catch (Throwable th) {
                al.a(th);
            }
        }
        context3 = nativeCrashHandler.f9528d;
        ap.b(context3, "native_record_lock");
    }
}
