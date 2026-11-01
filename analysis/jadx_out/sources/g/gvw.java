package g;

import android.graphics.drawable.Drawable;

/* loaded from: classes3.dex */
public final class gvw {

    /* renamed from: a, reason: collision with root package name */
    public final String f18844a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18845b;

    /* renamed from: c, reason: collision with root package name */
    public final Drawable f18846c;

    public gvw(String str, String str2, Drawable drawable) {
        if (str == null) {
            throw new NullPointerException("Null advertiserName");
        }
        this.f18844a = str;
        if (str2 == null) {
            throw new NullPointerException("Null imageUrl");
        }
        this.f18845b = str2;
        this.f18846c = drawable;
    }

    public final boolean equals(Object obj) {
        Drawable drawable;
        if (obj == this) {
            return true;
        }
        if (obj instanceof gvw) {
            gvw gvwVar = (gvw) obj;
            String str = gvwVar.f18844a;
            Drawable drawable2 = gvwVar.f18846c;
            if (this.f18844a.equals(str) && this.f18845b.equals(gvwVar.f18845b) && ((drawable = this.f18846c) != null ? drawable.equals(drawable2) : drawable2 == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = ((this.f18844a.hashCode() ^ 1000003) * 1000003) ^ this.f18845b.hashCode();
        Drawable drawable = this.f18846c;
        return (hashCode * 1000003) ^ (drawable == null ? 0 : drawable.hashCode());
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f18846c);
        StringBuilder sb = new StringBuilder("OfflineAdAssets{advertiserName=");
        sb.append(this.f18844a);
        sb.append(", imageUrl=");
        return awf.r(sb, this.f18845b, ", icon=", valueOf, "}");
    }
}
