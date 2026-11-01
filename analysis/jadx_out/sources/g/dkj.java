package g;

import androidx.appcompat.widget.SwitchCompat;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class dkj implements fcd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c.e.b f14310a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f14311b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SwitchCompat f14312c;

    public dkj(c.e.b bVar, boolean z, SwitchCompat switchCompat) {
        this.f14310a = bVar;
        this.f14311b = z;
        this.f14312c = switchCompat;
    }

    @Override // g.fcd
    public final void h(String str) {
        int i = c.e.b.f391d;
        this.f14310a.q(this.f14311b);
    }

    @Override // g.fcd
    public final void onDenied(String str) {
        this.f14312c.setChecked(false);
        gm.e(this.f14310a.i, R.string.content_disabled_request_permission2);
    }
}
