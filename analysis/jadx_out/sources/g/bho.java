package g;

import android.net.NetworkRequest;
import android.os.Build;
import java.util.Set;

/* loaded from: classes.dex */
public final class bho {

    /* renamed from: a, reason: collision with root package name */
    public static final bho f11591a = new bho();

    /* renamed from: b, reason: collision with root package name */
    public final long f11592b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11593c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f11594d;

    /* renamed from: e, reason: collision with root package name */
    public final dnx f11595e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f11596f;

    /* renamed from: g, reason: collision with root package name */
    public final Set f11597g;
    public final im h;
    public final boolean i;
    public final long j;

    public bho() {
        dnx dnxVar = dnx.NOT_REQUIRED;
        bff.p(dnxVar, "requiredNetworkType");
        this.h = new im(null);
        this.f11595e = dnxVar;
        this.i = false;
        this.f11593c = false;
        this.f11594d = false;
        this.f11596f = false;
        this.j = -1L;
        this.f11592b = -1L;
        this.f11597g = gpk.f18539a;
    }

    public bho(bho bhoVar) {
        bff.p(bhoVar, "other");
        this.i = bhoVar.i;
        this.f11593c = bhoVar.f11593c;
        this.h = bhoVar.h;
        this.f11595e = bhoVar.f11595e;
        this.f11594d = bhoVar.f11594d;
        this.f11596f = bhoVar.f11596f;
        this.f11597g = bhoVar.f11597g;
        this.j = bhoVar.j;
        this.f11592b = bhoVar.f11592b;
    }

    public bho(im imVar, dnx dnxVar, boolean z, boolean z2, boolean z3, boolean z4, long j, long j2, Set set) {
        bff.p(dnxVar, "requiredNetworkType");
        this.h = imVar;
        this.f11595e = dnxVar;
        this.i = z;
        this.f11593c = z2;
        this.f11594d = z3;
        this.f11596f = z4;
        this.j = j;
        this.f11592b = j2;
        this.f11597g = set;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !bho.class.equals(obj.getClass())) {
            return false;
        }
        bho bhoVar = (bho) obj;
        if (this.i == bhoVar.i && this.f11593c == bhoVar.f11593c && this.f11594d == bhoVar.f11594d && this.f11596f == bhoVar.f11596f && this.j == bhoVar.j && this.f11592b == bhoVar.f11592b && bff.n(k(), bhoVar.k()) && this.f11595e == bhoVar.f11595e) {
            return bff.n(this.f11597g, bhoVar.f11597g);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = ((((((((this.f11595e.hashCode() * 31) + (this.i ? 1 : 0)) * 31) + (this.f11593c ? 1 : 0)) * 31) + (this.f11594d ? 1 : 0)) * 31) + (this.f11596f ? 1 : 0)) * 31;
        long j = this.j;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.f11592b;
        int hashCode2 = (this.f11597g.hashCode() + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31;
        NetworkRequest k = k();
        return hashCode2 + (k != null ? k.hashCode() : 0);
    }

    public final NetworkRequest k() {
        return (NetworkRequest) this.h.f19435b;
    }

    public final boolean l() {
        return Build.VERSION.SDK_INT < 24 || !this.f11597g.isEmpty();
    }

    public final String toString() {
        return "Constraints{requiredNetworkType=" + this.f11595e + ", requiresCharging=" + this.i + ", requiresDeviceIdle=" + this.f11593c + ", requiresBatteryNotLow=" + this.f11594d + ", requiresStorageNotLow=" + this.f11596f + ", contentTriggerUpdateDelayMillis=" + this.j + ", contentTriggerMaxDelayMillis=" + this.f11592b + ", contentUriTriggers=" + this.f11597g + ", }";
    }
}
