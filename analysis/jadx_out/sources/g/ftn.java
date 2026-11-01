package g;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class ftn implements Menu {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f17390a = {1, 4, 5, 3, 2, 0};

    /* renamed from: b, reason: collision with root package name */
    public boolean f17391b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f17392c;

    /* renamed from: d, reason: collision with root package name */
    public View f17393d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f17394e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f17395f;
    public egz h;
    public final Context i;
    public far k;
    public final ArrayList m;
    public CharSequence p;
    public final ArrayList q;
    public final Resources r;
    public final ArrayList s;
    public boolean v;
    public boolean w;
    public final ArrayList x;

    /* renamed from: g, reason: collision with root package name */
    public int f17396g = 0;
    public boolean o = false;
    public boolean t = false;
    public boolean y = false;
    public boolean n = false;
    public final ArrayList u = new ArrayList();
    public final CopyOnWriteArrayList j = new CopyOnWriteArrayList();
    public boolean l = false;

    public ftn(Context context) {
        boolean z;
        boolean z2 = false;
        this.i = context;
        Resources resources = context.getResources();
        this.r = resources;
        this.m = new ArrayList();
        this.x = new ArrayList();
        this.f17391b = true;
        this.q = new ArrayList();
        this.s = new ArrayList();
        this.f17392c = true;
        if (resources.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Method method = btu.f12200a;
            if (Build.VERSION.SDK_INT >= 28) {
                z = eyo.j(viewConfiguration);
            } else {
                Resources resources2 = context.getResources();
                int identifier = resources2.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
                z = identifier != 0 && resources2.getBoolean(identifier);
            }
            if (z) {
                z2 = true;
            }
        }
        this.f17395f = z2;
    }

    public ftn aa() {
        return this;
    }

    public boolean ab() {
        return this.f17395f;
    }

    public boolean ac() {
        return this.v;
    }

    public boolean ad(far farVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.j;
        boolean z = false;
        if (!copyOnWriteArrayList.isEmpty() && this.k == farVar) {
            aj();
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                us usVar = (us) weakReference.get();
                if (usVar == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    z = usVar.g(farVar);
                    if (z) {
                        break;
                    }
                }
            }
            ai();
            if (z) {
                this.k = null;
            }
        }
        return z;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i) {
        return ag(0, 0, 0, this.r.getString(i));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, int i4) {
        return ag(i, i2, i3, this.r.getString(i4));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return ag(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return ag(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.i.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i6 = 0; i6 < size; i6++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            far ag = ag(i, i2, i3, resolveInfo.loadLabel(packageManager));
            ag.setIcon(resolveInfo.loadIcon(packageManager));
            ag.ad = intent2;
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = ag;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.r.getString(i));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.r.getString(i4));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        far ag = ag(i, i2, i3, charSequence);
        gyg gygVar = new gyg(this.i, this, ag);
        ag.f16487d = gygVar;
        gygVar.setHeaderTitle(ag.j);
        return gygVar;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final ArrayList ae() {
        boolean z = this.f17391b;
        ArrayList arrayList = this.x;
        if (!z) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.m;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            far farVar = (far) arrayList2.get(i);
            if (farVar.isVisible()) {
                arrayList.add(farVar);
            }
        }
        this.f17391b = false;
        this.f17392c = true;
        return arrayList;
    }

    public boolean af(ftn ftnVar, MenuItem menuItem) {
        egz egzVar = this.h;
        return egzVar != null && egzVar.p(ftnVar, menuItem);
    }

    public final far ag(int i, int i2, int i3, CharSequence charSequence) {
        int i4;
        int i5 = ((-65536) & i3) >> 16;
        if (i5 < 0 || i5 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i6 = (f17390a[i5] << 16) | (65535 & i3);
        far farVar = new far(this, i, i2, i3, i6, charSequence, this.f17396g);
        ArrayList arrayList = this.m;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i4 = 0;
                break;
            }
            if (((far) arrayList.get(size)).f16490g <= i6) {
                i4 = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i4, farVar);
        am(true);
        return farVar;
    }

    public final void ah(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        if (view != null) {
            this.f17393d = view;
            this.p = null;
            this.f17394e = null;
        } else {
            if (i > 0) {
                this.p = this.r.getText(i);
            } else if (charSequence != null) {
                this.p = charSequence;
            }
            if (i2 > 0) {
                this.f17394e = this.i.getDrawable(i2);
            } else if (drawable != null) {
                this.f17394e = drawable;
            }
            this.f17393d = null;
        }
        am(false);
    }

    public final void ai() {
        this.o = false;
        if (this.t) {
            this.t = false;
            am(this.y);
        }
    }

    public final void aj() {
        if (this.o) {
            return;
        }
        this.o = true;
        this.t = false;
        this.y = false;
    }

    public boolean ak(far farVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.j;
        boolean z = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        aj();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            us usVar = (us) weakReference.get();
            if (usVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                z = usVar.a(farVar);
                if (z) {
                    break;
                }
            }
        }
        ai();
        if (z) {
            this.k = farVar;
        }
        return z;
    }

    public final void al(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(aq());
        int size = this.m.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((gyg) item.getSubMenu()).al(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    public final void am(boolean z) {
        if (this.o) {
            this.t = true;
            if (z) {
                this.y = true;
                return;
            }
            return;
        }
        if (z) {
            this.f17391b = true;
            this.f17392c = true;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = this.j;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        aj();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            us usVar = (us) weakReference.get();
            if (usVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                usVar.c();
            }
        }
        ai();
    }

    public boolean an() {
        return this.l;
    }

    public final void ao() {
        ArrayList ae = ae();
        if (this.f17392c) {
            CopyOnWriteArrayList copyOnWriteArrayList = this.j;
            Iterator it = copyOnWriteArrayList.iterator();
            boolean z = false;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                us usVar = (us) weakReference.get();
                if (usVar == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    z |= usVar.h();
                }
            }
            ArrayList arrayList = this.q;
            ArrayList arrayList2 = this.s;
            if (z) {
                arrayList.clear();
                arrayList2.clear();
                int size = ae.size();
                for (int i = 0; i < size; i++) {
                    far farVar = (far) ae.get(i);
                    if ((farVar.ac & 32) == 32) {
                        arrayList.add(farVar);
                    } else {
                        arrayList2.add(farVar);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(ae());
            }
            this.f17392c = false;
        }
    }

    public final void ap(us usVar, Context context) {
        this.j.add(new WeakReference(usVar));
        usVar.f(context, this);
        this.f17392c = true;
    }

    public String aq() {
        return "android:menu:actionviewstates";
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean ar(MenuItem menuItem, us usVar, int i) {
        boolean z;
        far farVar = (far) menuItem;
        if (farVar == null || !farVar.isEnabled()) {
            return false;
        }
        ftn ftnVar = farVar.f16489f;
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = farVar.t;
        if ((onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(farVar)) && !ftnVar.af(ftnVar, farVar)) {
            Intent intent = farVar.ad;
            if (intent != null) {
                try {
                    ftnVar.i.startActivity(intent);
                } catch (ActivityNotFoundException e2) {
                    Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e2);
                }
            }
            azw azwVar = farVar.z;
            if (azwVar == null || !azwVar.f11135b.onPerformDefaultAction()) {
                z = false;
                azw azwVar2 = farVar.z;
                boolean z2 = azwVar2 == null && azwVar2.f11135b.hasSubMenu();
                if (!farVar.ah()) {
                    z |= farVar.expandActionView();
                    if (z) {
                        at(true);
                    }
                } else if (farVar.hasSubMenu() || z2) {
                    if ((i & 4) == 0) {
                        at(false);
                    }
                    if (!farVar.hasSubMenu()) {
                        gyg gygVar = new gyg(this.i, this, farVar);
                        farVar.f16487d = gygVar;
                        gygVar.setHeaderTitle(farVar.j);
                    }
                    gyg gygVar2 = farVar.f16487d;
                    if (z2) {
                        azwVar2.f11135b.onPrepareSubMenu(gygVar2);
                    }
                    CopyOnWriteArrayList copyOnWriteArrayList = this.j;
                    if (!copyOnWriteArrayList.isEmpty()) {
                        r0 = usVar != null ? usVar.e(gygVar2) : false;
                        Iterator it = copyOnWriteArrayList.iterator();
                        while (it.hasNext()) {
                            WeakReference weakReference = (WeakReference) it.next();
                            us usVar2 = (us) weakReference.get();
                            if (usVar2 == null) {
                                copyOnWriteArrayList.remove(weakReference);
                            } else if (!r0) {
                                r0 = usVar2.e(gygVar2);
                            }
                        }
                    }
                    z |= r0;
                    if (!z) {
                        at(true);
                    }
                } else if ((i & 1) == 0) {
                    at(true);
                }
                return z;
            }
        }
        z = true;
        azw azwVar22 = farVar.z;
        if (azwVar22 == null) {
        }
        if (!farVar.ah()) {
        }
        return z;
    }

    public final void as(Bundle bundle) {
        int size = this.m.size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((gyg) item.getSubMenu()).as(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(aq(), sparseArray);
        }
    }

    public final void at(boolean z) {
        if (this.n) {
            return;
        }
        this.n = true;
        CopyOnWriteArrayList copyOnWriteArrayList = this.j;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            us usVar = (us) weakReference.get();
            if (usVar == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                usVar.d(this, z);
            }
        }
        this.n = false;
    }

    public final far au(int i, KeyEvent keyEvent) {
        ArrayList arrayList = this.u;
        arrayList.clear();
        z(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (far) arrayList.get(0);
        }
        boolean ac = ac();
        for (int i2 = 0; i2 < size; i2++) {
            far farVar = (far) arrayList.get(i2);
            char c2 = ac ? farVar.x : farVar.f16485b;
            char[] cArr = keyData.meta;
            if ((c2 == cArr[0] && (metaState & 2) == 0) || ((c2 == cArr[2] && (metaState & 2) != 0) || (ac && c2 == '\b' && i == 67))) {
                return farVar;
            }
        }
        return null;
    }

    public final void av(us usVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.j;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            us usVar2 = (us) weakReference.get();
            if (usVar2 == null || usVar2 == usVar) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
    }

    @Override // android.view.Menu
    public final void clear() {
        far farVar = this.k;
        if (farVar != null) {
            ad(farVar);
        }
        this.m.clear();
        am(true);
    }

    public final void clearHeader() {
        this.f17394e = null;
        this.p = null;
        this.f17393d = null;
        am(false);
    }

    @Override // android.view.Menu
    public final void close() {
        at(true);
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i) {
        MenuItem findItem;
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            far farVar = (far) arrayList.get(i2);
            if (farVar.k == i) {
                return farVar;
            }
            if (farVar.hasSubMenu() && (findItem = farVar.f16487d.findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i) {
        return (MenuItem) this.m.get(i);
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.w) {
            return true;
        }
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (((far) arrayList.get(i)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return au(i, keyEvent) != null;
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i, int i2) {
        return ar(findItem(i), null, i2);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        far au = au(i, keyEvent);
        boolean ar = au != null ? ar(au, null, i2) : false;
        if ((i2 & 2) != 0) {
            at(true);
        }
        return ar;
    }

    @Override // android.view.Menu
    public final void removeGroup(int i) {
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i3 = -1;
                break;
            } else if (((far) arrayList.get(i3)).w == i) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 >= 0) {
            int size2 = arrayList.size() - i3;
            while (true) {
                int i4 = i2 + 1;
                if (i2 >= size2 || ((far) arrayList.get(i3)).w != i) {
                    break;
                }
                if (i3 >= 0) {
                    ArrayList arrayList2 = this.m;
                    if (i3 < arrayList2.size()) {
                        arrayList2.remove(i3);
                    }
                }
                i2 = i4;
            }
            am(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i) {
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (((far) arrayList.get(i2)).k == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            ArrayList arrayList2 = this.m;
            if (i2 >= arrayList2.size()) {
                return;
            }
            arrayList2.remove(i2);
            am(true);
        }
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i, boolean z, boolean z2) {
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            far farVar = (far) arrayList.get(i2);
            if (farVar.w == i) {
                farVar.ac = (farVar.ac & (-5)) | (z2 ? 4 : 0);
                farVar.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.l = z;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i, boolean z) {
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            far farVar = (far) arrayList.get(i2);
            if (farVar.w == i) {
                farVar.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i, boolean z) {
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            far farVar = (far) arrayList.get(i2);
            if (farVar.w == i) {
                int i3 = farVar.ac;
                int i4 = (i3 & (-9)) | (z ? 0 : 8);
                farVar.ac = i4;
                if (i3 != i4) {
                    z2 = true;
                }
            }
        }
        if (z2) {
            am(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.v = z;
        am(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.m.size();
    }

    public final void z(List list, int i, KeyEvent keyEvent) {
        boolean ac = ac();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            ArrayList arrayList = this.m;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                far farVar = (far) arrayList.get(i2);
                if (farVar.hasSubMenu()) {
                    farVar.f16487d.z(list, i, keyEvent);
                }
                char c2 = ac ? farVar.x : farVar.f16485b;
                if ((modifiers & 69647) == ((ac ? farVar.f16486c : farVar.v) & 69647) && c2 != 0) {
                    char[] cArr = keyData.meta;
                    if ((c2 == cArr[0] || c2 == cArr[2] || (ac && c2 == '\b' && i == 67)) && farVar.isEnabled()) {
                        list.add(farVar);
                    }
                }
            }
        }
    }
}
