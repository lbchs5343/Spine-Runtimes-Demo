package g;

import android.content.res.Resources;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class bcu {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f11302a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources.Theme f11303b;

    public bcu(Resources resources, Resources.Theme theme) {
        this.f11302a = resources;
        this.f11303b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && bcu.class == obj.getClass()) {
            bcu bcuVar = (bcu) obj;
            if (this.f11302a.equals(bcuVar.f11302a) && Objects.equals(this.f11303b, bcuVar.f11303b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f11302a, this.f11303b);
    }
}
