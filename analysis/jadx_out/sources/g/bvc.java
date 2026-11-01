package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

/* loaded from: classes.dex */
public class bvc extends cgo implements Menu {

    /* renamed from: d, reason: collision with root package name */
    public final ftn f12259d;

    public bvc(Context context, ftn ftnVar) {
        super(context);
        if (ftnVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f12259d = ftnVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i) {
        return ad(this.f12259d.add(i));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, int i4) {
        return ad(this.f12259d.add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return ad(this.f12259d.ag(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return ad(this.f12259d.ag(0, 0, 0, charSequence));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.f12259d.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = ad(menuItemArr2[i5]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i) {
        return this.f12259d.addSubMenu(i);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return this.f12259d.addSubMenu(i, i2, i3, i4);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return this.f12259d.addSubMenu(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return this.f12259d.addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final void clear() {
        bcp bcpVar = (bcp) this.f12848ab;
        if (bcpVar != null) {
            bcpVar.clear();
        }
        this.f12259d.clear();
    }

    @Override // android.view.Menu
    public final void close() {
        this.f12259d.close();
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i) {
        return ad(this.f12259d.findItem(i));
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i) {
        return ad(this.f12259d.getItem(i));
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        return this.f12259d.hasVisibleItems();
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.f12259d.isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i, int i2) {
        return this.f12259d.performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.f12259d.performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public final void removeGroup(int i) {
        if (((bcp) this.f12848ab) != null) {
            int i2 = 0;
            while (true) {
                bcp bcpVar = (bcp) this.f12848ab;
                if (i2 >= bcpVar.f11294g) {
                    break;
                }
                if (((buc) bcpVar.n(i2)).getGroupId() == i) {
                    ((bcp) this.f12848ab).r(i2);
                    i2--;
                }
                i2++;
            }
        }
        this.f12259d.removeGroup(i);
    }

    @Override // android.view.Menu
    public final void removeItem(int i) {
        if (((bcp) this.f12848ab) != null) {
            int i2 = 0;
            while (true) {
                bcp bcpVar = (bcp) this.f12848ab;
                if (i2 >= bcpVar.f11294g) {
                    break;
                }
                if (((buc) bcpVar.n(i2)).getItemId() == i) {
                    ((bcp) this.f12848ab).r(i2);
                    break;
                }
                i2++;
            }
        }
        this.f12259d.removeItem(i);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f12259d.setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i, boolean z) {
        this.f12259d.setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i, boolean z) {
        this.f12259d.setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public final void setQwertyMode(boolean z) {
        this.f12259d.setQwertyMode(z);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f12259d.size();
    }
}
