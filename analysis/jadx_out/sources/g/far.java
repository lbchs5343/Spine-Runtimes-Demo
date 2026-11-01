package g;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class far implements buc {

    /* renamed from: a, reason: collision with root package name */
    public View f16483a;

    /* renamed from: ab, reason: collision with root package name */
    public final int f16484ab;
    public Intent ad;
    public CharSequence ae;

    /* renamed from: b, reason: collision with root package name */
    public char f16485b;

    /* renamed from: d, reason: collision with root package name */
    public gyg f16487d;

    /* renamed from: e, reason: collision with root package name */
    public int f16488e;

    /* renamed from: f, reason: collision with root package name */
    public final ftn f16489f;

    /* renamed from: g, reason: collision with root package name */
    public final int f16490g;
    public MenuItem.OnActionExpandListener h;
    public Drawable i;
    public CharSequence j;
    public final int k;
    public CharSequence p;
    public MenuItem.OnMenuItemClickListener t;
    public final int w;
    public char x;
    public CharSequence y;
    public azw z;
    public int v = 4096;

    /* renamed from: c, reason: collision with root package name */
    public int f16486c = 4096;
    public int u = 0;
    public ColorStateList s = null;
    public PorterDuff.Mode aa = null;
    public boolean l = false;
    public boolean n = false;
    public boolean o = false;
    public int ac = 16;
    public boolean m = false;

    public far(ftn ftnVar, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f16489f = ftnVar;
        this.k = i2;
        this.w = i;
        this.f16484ab = i3;
        this.f16490g = i4;
        this.j = charSequence;
        this.f16488e = i5;
    }

    public static void af(int i, int i2, String str, StringBuilder sb) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    public final Drawable ag(Drawable drawable) {
        if (drawable != null && this.o && (this.l || this.n)) {
            drawable = dzm.aw(drawable).mutate();
            if (this.l) {
                drawable.setTintList(this.s);
            }
            if (this.n) {
                drawable.setTintMode(this.aa);
            }
            this.o = false;
        }
        return drawable;
    }

    public final boolean ah() {
        azw azwVar;
        if ((this.f16488e & 8) != 0) {
            if (this.f16483a == null && (azwVar = this.z) != null) {
                this.f16483a = azwVar.f11135b.onCreateActionView(this);
            }
            if (this.f16483a != null) {
                return true;
            }
        }
        return false;
    }

    public final void ai(boolean z) {
        if (z) {
            this.ac |= 32;
        } else {
            this.ac &= -33;
        }
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f16488e & 8) == 0) {
            return false;
        }
        if (this.f16483a == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.h;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f16489f.ad(this);
        }
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        if (!ah()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.h;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f16489f.ak(this);
        }
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View view = this.f16483a;
        if (view != null) {
            return view;
        }
        azw azwVar = this.z;
        if (azwVar == null) {
            return null;
        }
        View onCreateActionView = azwVar.f11135b.onCreateActionView(this);
        this.f16483a = onCreateActionView;
        return onCreateActionView;
    }

    @Override // g.buc, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f16486c;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.x;
    }

    @Override // g.buc, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.y;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.w;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.i;
        if (drawable != null) {
            return ag(drawable);
        }
        int i = this.u;
        if (i == 0) {
            return null;
        }
        Drawable ai = fso.ai(this.f16489f.i, i);
        this.u = 0;
        this.i = ai;
        return ag(ai);
    }

    @Override // g.buc, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.s;
    }

    @Override // g.buc, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.aa;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.ad;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.k;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // g.buc, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.v;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f16485b;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f16484ab;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f16487d;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.j;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.p;
        return charSequence != null ? charSequence : this.j;
    }

    @Override // g.buc, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.ae;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f16487d != null;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.m;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.ac & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.ac & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.ac & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        azw azwVar = this.z;
        return (azwVar == null || !azwVar.f11135b.overridesItemVisibility()) ? (this.ac & 8) == 0 : (this.ac & 8) == 0 && this.z.f11135b.isVisible();
    }

    @Override // g.buc
    public final azw q() {
        return this.z;
    }

    @Override // g.buc
    public final buc r(azw azwVar) {
        this.f16483a = null;
        this.z = azwVar;
        this.f16489f.am(true);
        azw azwVar2 = this.z;
        if (azwVar2 != null) {
            azwVar2.f11134a = new emr(12, this);
            azwVar2.f11135b.setVisibilityListener(azwVar2);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i) {
        int i2;
        Context context = this.f16489f.i;
        View inflate = LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false);
        this.f16483a = inflate;
        this.z = null;
        if (inflate != null && inflate.getId() == -1 && (i2 = this.k) > 0) {
            inflate.setId(i2);
        }
        ftn ftnVar = this.f16489f;
        ftnVar.f17392c = true;
        ftnVar.am(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i;
        this.f16483a = view;
        this.z = null;
        if (view != null && view.getId() == -1 && (i = this.k) > 0) {
            view.setId(i);
        }
        ftn ftnVar = this.f16489f;
        ftnVar.f17392c = true;
        ftnVar.am(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2) {
        if (this.x == c2) {
            return this;
        }
        this.x = Character.toLowerCase(c2);
        this.f16489f.am(false);
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2, int i) {
        if (this.x == c2 && this.f16486c == i) {
            return this;
        }
        this.x = Character.toLowerCase(c2);
        this.f16486c = KeyEvent.normalizeMetaState(i);
        this.f16489f.am(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        int i = this.ac;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.ac = i2;
        if (i != i2) {
            this.f16489f.am(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        int i = this.ac;
        if ((i & 4) == 0) {
            int i2 = (i & (-3)) | (z ? 2 : 0);
            this.ac = i2;
            if (i != i2) {
                this.f16489f.am(false);
            }
            return this;
        }
        ftn ftnVar = this.f16489f;
        ArrayList arrayList = ftnVar.m;
        int size = arrayList.size();
        ftnVar.aj();
        for (int i3 = 0; i3 < size; i3++) {
            far farVar = (far) arrayList.get(i3);
            if (farVar.w == this.w && (farVar.ac & 4) != 0 && farVar.isCheckable()) {
                boolean z2 = farVar == this;
                int i4 = farVar.ac;
                int i5 = (z2 ? 2 : 0) | (i4 & (-3));
                farVar.ac = i5;
                if (i4 != i5) {
                    farVar.f16489f.am(false);
                }
            }
        }
        ftnVar.ai();
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final buc setContentDescription(CharSequence charSequence) {
        this.y = charSequence;
        this.f16489f.am(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        if (z) {
            this.ac |= 16;
        } else {
            this.ac &= -17;
        }
        this.f16489f.am(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.i = null;
        this.u = i;
        this.o = true;
        this.f16489f.am(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.u = 0;
        this.i = drawable;
        this.o = true;
        this.f16489f.am(false);
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.s = colorStateList;
        this.l = true;
        this.o = true;
        this.f16489f.am(false);
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.aa = mode;
        this.n = true;
        this.o = true;
        this.f16489f.am(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.ad = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2) {
        if (this.f16485b == c2) {
            return this;
        }
        this.f16485b = c2;
        this.f16489f.am(false);
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2, int i) {
        if (this.f16485b == c2 && this.v == i) {
            return this;
        }
        this.f16485b = c2;
        this.v = KeyEvent.normalizeMetaState(i);
        this.f16489f.am(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.h = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.t = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3) {
        this.f16485b = c2;
        this.x = Character.toLowerCase(c3);
        this.f16489f.am(false);
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.f16485b = c2;
        this.v = KeyEvent.normalizeMetaState(i);
        this.x = Character.toLowerCase(c3);
        this.f16486c = KeyEvent.normalizeMetaState(i2);
        this.f16489f.am(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f16488e = i;
        ftn ftnVar = this.f16489f;
        ftnVar.f17392c = true;
        ftnVar.am(true);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        setTitle(this.f16489f.i.getString(i));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.j = charSequence;
        this.f16489f.am(false);
        gyg gygVar = this.f16487d;
        if (gygVar != null) {
            gygVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.p = charSequence;
        this.f16489f.am(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // g.buc, android.view.MenuItem
    public final buc setTooltipText(CharSequence charSequence) {
        this.ae = charSequence;
        this.f16489f.am(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        int i = this.ac;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.ac = i2;
        if (i != i2) {
            ftn ftnVar = this.f16489f;
            ftnVar.f17391b = true;
            ftnVar.am(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.j;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }
}
