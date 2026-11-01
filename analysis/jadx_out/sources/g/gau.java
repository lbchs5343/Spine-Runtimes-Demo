package g;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class gau implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ csp f17818a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f17819b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f17820c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Bundle f17821d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f17822e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f17823f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f17824g;
    public final /* synthetic */ boolean h;

    public gau(csp cspVar, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3) {
        this.f17818a = cspVar;
        this.f17823f = str;
        this.f17824g = str2;
        this.f17820c = j;
        this.f17821d = bundle;
        this.f17822e = z;
        this.h = z2;
        this.f17819b = z3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17818a.an(this.f17823f, this.f17824g, this.f17820c, this.f17821d, this.f17822e, this.h, this.f17819b);
    }
}
