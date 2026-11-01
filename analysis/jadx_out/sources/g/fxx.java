package g;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;

/* loaded from: classes.dex */
public final class fxx {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f17599a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17600b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f17601c;

    /* renamed from: d, reason: collision with root package name */
    public final CharSequence f17602d;

    /* renamed from: e, reason: collision with root package name */
    public IconCompat f17603e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f17604f;

    /* renamed from: g, reason: collision with root package name */
    public final PendingIntent f17605g;

    public fxx(int i, CharSequence charSequence, PendingIntent pendingIntent) {
        IconCompat m = i != 0 ? IconCompat.m(null, "", i) : null;
        Bundle bundle = new Bundle();
        this.f17599a = true;
        this.f17603e = m;
        if (m != null && m.o() == 2) {
            this.f17600b = m.n();
        }
        this.f17602d = zc.t(charSequence);
        this.f17605g = pendingIntent;
        this.f17601c = bundle;
        this.f17604f = true;
        this.f17599a = true;
    }

    public final IconCompat h() {
        int i;
        if (this.f17603e == null && (i = this.f17600b) != 0) {
            this.f17603e = IconCompat.m(null, "", i);
        }
        return this.f17603e;
    }
}
