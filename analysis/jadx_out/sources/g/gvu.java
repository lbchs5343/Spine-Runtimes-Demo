package g;

import android.os.SystemClock;

/* loaded from: classes3.dex */
public final class gvu {

    /* renamed from: a, reason: collision with root package name */
    public final dcy f18840a;

    /* renamed from: b, reason: collision with root package name */
    public final long f18841b;

    /* renamed from: c, reason: collision with root package name */
    public final cvb f18842c;

    public gvu(dcy dcyVar, long j, cvb cvbVar) {
        this.f18840a = dcyVar;
        this.f18842c = cvbVar;
        ((czz) cvbVar).getClass();
        this.f18841b = SystemClock.elapsedRealtime() + j;
    }
}
