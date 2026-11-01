package g;

import android.content.Context;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.Window;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class bbp extends gkl {

    /* renamed from: b, reason: collision with root package name */
    public boolean f11233b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11234c;

    /* renamed from: d, reason: collision with root package name */
    public final fxu f11235d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11236e;

    /* renamed from: f, reason: collision with root package name */
    public final Window.Callback f11237f;

    /* renamed from: g, reason: collision with root package name */
    public final fc f11238g;
    public final ArrayList h = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public final dyn f11232a = new dyn(2, this);

    public bbp(Toolbar toolbar, CharSequence charSequence, ecc eccVar) {
        aoy aoyVar = new aoy(this);
        fxu fxuVar = new fxu(toolbar, false);
        this.f11235d = fxuVar;
        eccVar.getClass();
        this.f11237f = eccVar;
        fxuVar.f17592b = eccVar;
        toolbar.setOnMenuItemClickListener(aoyVar);
        if (!fxuVar.o) {
            fxuVar.f17591a = charSequence;
            if ((fxuVar.l & 8) != 0) {
                Toolbar toolbar2 = fxuVar.h;
                toolbar2.setTitle(charSequence);
                if (fxuVar.o) {
                    goi.r(toolbar2.getRootView(), charSequence);
                }
            }
        }
        this.f11238g = new fc(18, this);
    }

    @Override // g.gkl
    public final boolean _ae() {
        fxu fxuVar = this.f11235d;
        Toolbar toolbar = fxuVar.h;
        dyn dynVar = this.f11232a;
        toolbar.removeCallbacks(dynVar);
        Toolbar toolbar2 = fxuVar.h;
        WeakHashMap weakHashMap = goi.f18490c;
        toolbar2.postOnAnimation(dynVar);
        return true;
    }

    @Override // g.gkl
    public final boolean _af(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            j();
        }
        return true;
    }

    @Override // g.gkl
    public final void aa(CharSequence charSequence) {
        this.f11235d.r(charSequence);
    }

    @Override // g.gkl
    public final void ab(boolean z) {
    }

    @Override // g.gkl
    public final int ac() {
        return this.f11235d.l;
    }

    @Override // g.gkl
    public final void ad(boolean z) {
    }

    @Override // g.gkl
    public final Context ae() {
        return this.f11235d.h.getContext();
    }

    @Override // g.gkl
    public final void ah(CharSequence charSequence) {
        fxu fxuVar = this.f11235d;
        if (fxuVar.o) {
            return;
        }
        Toolbar toolbar = fxuVar.h;
        fxuVar.f17591a = charSequence;
        if ((fxuVar.l & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (fxuVar.o) {
                goi.r(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // g.gkl
    public final void ai(boolean z) {
        int i = z ? 4 : 0;
        fxu fxuVar = this.f11235d;
        fxuVar.q((i & 4) | (fxuVar.l & (-5)));
    }

    @Override // g.gkl
    public final boolean aj(int i, KeyEvent keyEvent) {
        Menu n = n();
        if (n == null) {
            return false;
        }
        n.setQwertyMode(KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() != 1);
        return n.performShortcut(i, keyEvent, 0);
    }

    @Override // g.gkl
    public final boolean ak() {
        far farVar;
        glz glzVar = this.f11235d.h.ak;
        if (glzVar == null || (farVar = glzVar.k) == null) {
            return false;
        }
        if (glzVar == null) {
            farVar = null;
        }
        if (farVar == null) {
            return true;
        }
        farVar.collapseActionView();
        return true;
    }

    @Override // g.gkl
    public final void an(boolean z) {
        if (z == this.f11236e) {
            return;
        }
        this.f11236e = z;
        ArrayList arrayList = this.h;
        if (arrayList.size() > 0) {
            throw tn.w(0, arrayList);
        }
    }

    @Override // g.gkl
    public final void ao() {
    }

    @Override // g.gkl
    public final void i() {
        this.f11235d.h.removeCallbacks(this.f11232a);
    }

    @Override // g.gkl
    public final boolean j() {
        return this.f11235d.h.bd();
    }

    @Override // g.gkl
    public final boolean k() {
        esf esfVar;
        ActionMenuView actionMenuView = this.f11235d.h.f115ab;
        return (actionMenuView == null || (esfVar = actionMenuView.f82b) == null || !esfVar.ah()) ? false : true;
    }

    public final Menu n() {
        boolean z = this.f11234c;
        fxu fxuVar = this.f11235d;
        if (!z) {
            gez gezVar = new gez(7, this);
            dcq dcqVar = new dcq(18, this);
            Toolbar toolbar = fxuVar.h;
            toolbar.an = gezVar;
            toolbar.n = dcqVar;
            ActionMenuView actionMenuView = toolbar.f115ab;
            if (actionMenuView != null) {
                actionMenuView.f85g = gezVar;
                actionMenuView.f84f = dcqVar;
            }
            this.f11234c = true;
        }
        return fxuVar.h.getMenu();
    }
}
