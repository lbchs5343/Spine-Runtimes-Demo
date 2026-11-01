package g;

import android.net.Uri;

/* loaded from: classes.dex */
public final class cdc {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f12678a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f12679b;

    public cdc(Uri uri, boolean z) {
        this.f12678a = uri;
        this.f12679b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!cdc.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        bff.ag(obj, "null cannot be cast to non-null type androidx.work.Constraints.ContentUriTrigger");
        cdc cdcVar = (cdc) obj;
        return bff.n(this.f12678a, cdcVar.f12678a) && this.f12679b == cdcVar.f12679b;
    }

    public final int hashCode() {
        return (this.f12678a.hashCode() * 31) + (this.f12679b ? 1231 : 1237);
    }
}
