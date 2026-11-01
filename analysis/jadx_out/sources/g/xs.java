package g;

import android.view.MenuItem;

/* loaded from: classes.dex */
public final class xs implements MenuItem.OnActionExpandListener {

    /* renamed from: a, reason: collision with root package name */
    public final MenuItem.OnActionExpandListener f20317a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ hcv f20318b;

    public xs(hcv hcvVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f20318b = hcvVar;
        this.f20317a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f20317a.onMenuItemActionCollapse(this.f20318b.ad(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f20317a.onMenuItemActionExpand(this.f20318b.ad(menuItem));
    }
}
