package g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* loaded from: classes.dex */
public final class gyg extends ftn implements SubMenu {
    public final ftn aw;
    public final far ax;

    public gyg(Context context, ftn ftnVar, far farVar) {
        super(context);
        this.aw = ftnVar;
        this.ax = farVar;
    }

    @Override // g.ftn
    public final ftn aa() {
        return this.aw.aa();
    }

    @Override // g.ftn
    public final boolean ab() {
        return this.aw.ab();
    }

    @Override // g.ftn
    public final boolean ac() {
        return this.aw.ac();
    }

    @Override // g.ftn
    public final boolean ad(far farVar) {
        return this.aw.ad(farVar);
    }

    @Override // g.ftn
    public final boolean af(ftn ftnVar, MenuItem menuItem) {
        return super.af(ftnVar, menuItem) || this.aw.af(ftnVar, menuItem);
    }

    @Override // g.ftn
    public final boolean ak(far farVar) {
        return this.aw.ak(farVar);
    }

    @Override // g.ftn
    public final boolean an() {
        return this.aw.an();
    }

    @Override // g.ftn
    public final String aq() {
        far farVar = this.ax;
        int i = farVar != null ? farVar.k : 0;
        if (i == 0) {
            return null;
        }
        return awf.ac(i, "android:menu:actionviewstates:");
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.ax;
    }

    @Override // g.ftn, android.view.Menu
    public final void setGroupDividerEnabled(boolean z) {
        this.aw.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        ah(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        ah(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        ah(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        ah(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        ah(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.ax.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.ax.setIcon(drawable);
        return this;
    }

    @Override // g.ftn, android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.aw.setQwertyMode(z);
    }
}
