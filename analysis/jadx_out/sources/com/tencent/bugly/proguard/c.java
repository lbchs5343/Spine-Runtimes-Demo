package com.tencent.bugly.proguard;

import android.os.FileObserver;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import g.awf;
import g.gfh;

/* loaded from: classes.dex */
public final class c extends FileObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9753a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ay f9754b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(ay ayVar) {
        super("/data/anr/", 8);
        this.f9754b = ayVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(ay ayVar, String str) {
        super(str, 8);
        this.f9754b = ayVar;
    }

    @Override // android.os.FileObserver
    public final void onEvent(int i, String str) {
        int i2 = this.f9753a;
        ay ayVar = this.f9754b;
        switch (i2) {
            case 0:
                if (str != null) {
                    String concat = "/data/anr/".concat(str);
                    al.d("watching file %s", concat);
                    if (!concat.contains("trace")) {
                        al.d("not anr file %s", concat);
                        break;
                    } else {
                        ayVar.f9657d.a(new gfh(29, this, concat, false));
                        break;
                    }
                }
                break;
            default:
                if (str != null) {
                    al.d("observe file, dir:%s fileName:%s", ayVar.f9658e, str);
                    if (!str.startsWith("manual_bugly_trace_") || !str.endsWith(".txt")) {
                        al.c("not manual trace file, ignore.", new Object[0]);
                        break;
                    } else if (!ayVar.f9654a.get()) {
                        al.c("proc is not in anr, just ignore", new Object[0]);
                        break;
                    } else if (!ayVar.f9656c.a()) {
                        al.c("Found background anr, resend sigquit later.", new Object[0]);
                        ayVar.a(am.a(str, "manual_bugly_trace_", ".txt"), awf.f(ayVar.f9658e, "/", str, new StringBuilder()));
                        al.c("Finish handling one anr, now resend sigquit.", new Object[0]);
                        NativeCrashHandler.getInstance().resendSigquit();
                        break;
                    } else {
                        al.c("Found foreground anr, resend sigquit immediately.", new Object[0]);
                        NativeCrashHandler.getInstance().resendSigquit();
                        ayVar.a(am.a(str, "manual_bugly_trace_", ".txt"), awf.f(ayVar.f9658e, "/", str, new StringBuilder()));
                        al.c("Finish handling one anr.", new Object[0]);
                        break;
                    }
                }
                break;
        }
    }
}
