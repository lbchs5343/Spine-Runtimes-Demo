package com.tencent.bugly.crashreport.crash.anr;

import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import com.tencent.bugly.proguard.al;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class b implements TraceFileHelper.b {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TraceFileHelper.a f9518b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f9519c;

    public b(TraceFileHelper.a aVar, boolean z) {
        this.f9518b = aVar;
        this.f9519c = z;
    }

    @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
    public final boolean a(long j) {
        al.c("process end %d", Long.valueOf(j));
        return false;
    }

    @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
    public final boolean a(long j, long j2, String str) {
        al.c("new process %s", str);
        TraceFileHelper.a aVar = this.f9518b;
        aVar.f9511a = j;
        aVar.f9512b = str;
        aVar.f9513c = j2;
        return this.f9519c;
    }

    @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
    public final boolean a(String str, int i, String str2, String str3) {
        al.c("new thread %s", str);
        TraceFileHelper.a aVar = this.f9518b;
        if (aVar.f9514d == null) {
            aVar.f9514d = new HashMap();
        }
        aVar.f9514d.put(str, new String[]{str2, str3, String.valueOf(i)});
        return true;
    }
}
