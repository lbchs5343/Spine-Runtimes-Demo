package g;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* loaded from: classes.dex */
public final class bdt implements buc {

    /* renamed from: a, reason: collision with root package name */
    public Drawable f11343a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f11344b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11345c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f11346d;

    /* renamed from: e, reason: collision with root package name */
    public char f11347e;

    /* renamed from: f, reason: collision with root package name */
    public ColorStateList f11348f;

    /* renamed from: g, reason: collision with root package name */
    public int f11349g;
    public CharSequence h;
    public char i;
    public int j;
    public PorterDuff.Mode k;
    public Context l;
    public CharSequence m;
    public CharSequence n;
    public Intent o;
    public int p;

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // g.buc, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.p;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.i;
    }

    @Override // g.buc, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.n;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f11343a;
    }

    @Override // g.buc, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f11348f;
    }

    @Override // g.buc, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.k;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.o;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return R.id.home;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // g.buc, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f11349g;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f11347e;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.h;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.m;
        return charSequence != null ? charSequence : this.h;
    }

    @Override // g.buc, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f11344b;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.j & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.j & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.j & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.j & 8) == 0;
    }

    @Override // g.buc
    public final azw q() {
        return null;
    }

    @Override // g.buc
    public final buc r(azw azwVar) {
        throw new UnsupportedOperationException();
    }

    public final void s() {
        Drawable drawable = this.f11343a;
        if (drawable != null) {
            if (this.f11346d || this.f11345c) {
                Drawable aw = dzm.aw(drawable);
                this.f11343a = aw;
                Drawable mutate = aw.mutate();
                this.f11343a = mutate;
                if (this.f11346d) {
                    mutate.setTintList(this.f11348f);
                }
                if (this.f11345c) {
                    this.f11343a.setTintMode(this.k);
                }
            }
        }
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2) {
        this.i = Character.toLowerCase(c2);
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2, int i) {
        this.i = Character.toLowerCase(c2);
        this.p = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        this.j = (z ? 1 : 0) | (this.j & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        this.j = (z ? 2 : 0) | (this.j & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.n = charSequence;
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final buc setContentDescription(CharSequence charSequence) {
        this.n = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.j = (z ? 16 : 0) | (this.j & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f11343a = this.l.getDrawable(i);
        s();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f11343a = drawable;
        s();
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f11348f = colorStateList;
        this.f11346d = true;
        s();
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.k = mode;
        this.f11345c = true;
        s();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.o = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2) {
        this.f11347e = c2;
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2, int i) {
        this.f11347e = c2;
        this.f11349g = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3) {
        this.f11347e = c2;
        this.i = Character.toLowerCase(c3);
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.f11347e = c2;
        this.f11349g = KeyEvent.normalizeMetaState(i);
        this.i = Character.toLowerCase(c3);
        this.p = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i) {
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        this.h = this.l.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.h = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.m = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f11344b = charSequence;
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final buc setTooltipText(CharSequence charSequence) {
        this.f11344b = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        this.j = (this.j & 8) | (z ? 0 : 8);
        return this;
    }
}
