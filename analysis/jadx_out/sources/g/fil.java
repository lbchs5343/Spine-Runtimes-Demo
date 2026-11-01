package g;

import android.net.Uri;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class fil implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f16846a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Bundle f16847b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ cfo f16848c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f16849d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Uri f16850e;

    public fil(cfo cfoVar, int i, Uri uri, boolean z, Bundle bundle) {
        this.f16848c = cfoVar;
        this.f16849d = i;
        this.f16850e = uri;
        this.f16846a = z;
        this.f16847b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16848c.f12793c.onRelationshipValidationResult(this.f16849d, this.f16850e, this.f16846a, this.f16847b);
    }
}
