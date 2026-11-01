package g;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class egn {

    /* renamed from: a, reason: collision with root package name */
    public static final Uri f15496a = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    /* renamed from: b, reason: collision with root package name */
    public final String f15497b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15498c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f15499d;

    public egn(String str, boolean z) {
        ckd.bf(str);
        this.f15497b = str;
        ckd.bf("com.google.android.gms");
        this.f15498c = "com.google.android.gms";
        this.f15499d = z;
    }

    public final Intent e(Context context) {
        Bundle bundle;
        String str = this.f15497b;
        if (str == null) {
            return new Intent().setComponent(null);
        }
        if (this.f15499d) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("serviceActionBundleKey", str);
            try {
                bundle = context.getContentResolver().call(f15496a, "serviceIntentCall", (String) null, bundle2);
            } catch (IllegalArgumentException e2) {
                "Dynamic intent resolution failed: ".concat(e2.toString());
                bundle = null;
            }
            r0 = bundle != null ? (Intent) bundle.getParcelable("serviceResponseIntentKey") : null;
            if (r0 == null) {
                "Dynamic lookup for intent failed for action: ".concat(String.valueOf(str));
            }
        }
        return r0 == null ? new Intent(str).setPackage(this.f15498c) : r0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof egn)) {
            return false;
        }
        egn egnVar = (egn) obj;
        return ffb.w(this.f15497b, egnVar.f15497b) && ffb.w(this.f15498c, egnVar.f15498c) && ffb.w(null, null) && this.f15499d == egnVar.f15499d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f15497b, this.f15498c, null, 4225, Boolean.valueOf(this.f15499d)});
    }

    public final String toString() {
        String str = this.f15497b;
        if (str != null) {
            return str;
        }
        ckd.k(null);
        throw null;
    }
}
