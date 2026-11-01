package g;

import android.view.DisplayCutout;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class fve {

    /* renamed from: a, reason: collision with root package name */
    public final DisplayCutout f17472a;

    public fve(DisplayCutout displayCutout) {
        this.f17472a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || fve.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f17472a, ((fve) obj).f17472a);
    }

    public final int hashCode() {
        int hashCode;
        hashCode = this.f17472a.hashCode();
        return hashCode;
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f17472a + "}";
    }
}
