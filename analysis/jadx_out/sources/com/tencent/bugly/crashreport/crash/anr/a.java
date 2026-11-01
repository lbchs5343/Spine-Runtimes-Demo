package com.tencent.bugly.crashreport.crash.anr;

import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import com.tencent.bugly.proguard.al;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class a implements TraceFileHelper.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TraceFileHelper.a f9515b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f9516c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f9517d;

    public a(TraceFileHelper.a aVar, String str, boolean z) {
        this.f9515b = aVar;
        this.f9516c = str;
        this.f9517d = z;
    }

    @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
    public final boolean a(long j) {
        al.c("process end %d", Long.valueOf(j));
        TraceFileHelper.a aVar = this.f9515b;
        return aVar.f9511a <= 0 || aVar.f9513c <= 0 || aVar.f9512b == null;
    }

    @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
    public final boolean a(long j, long j2, String str) {
        al.c("new process %s", str);
        if (!str.equals(this.f9516c)) {
            return true;
        }
        TraceFileHelper.a aVar = this.f9515b;
        aVar.f9511a = j;
        aVar.f9512b = str;
        aVar.f9513c = j2;
        return this.f9517d;
    }

    @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
    public final boolean a(String str, int i, String str2, String str3) {
        al.c("new thread %s", str);
        TraceFileHelper.a aVar = this.f9515b;
        if (aVar.f9511a > 0 && aVar.f9513c > 0 && aVar.f9512b != null) {
            if (aVar.f9514d == null) {
                aVar.f9514d = new HashMap();
            }
            aVar.f9514d.put(str, new String[]{str2, str3, String.valueOf(i)});
        }
        return true;
    }
}
