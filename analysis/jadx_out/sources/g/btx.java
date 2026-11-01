package g;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class btx extends gtg implements egz {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ hp f12202a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f12203b;

    /* renamed from: c, reason: collision with root package name */
    public final ftn f12204c;

    /* renamed from: d, reason: collision with root package name */
    public clx f12205d;

    /* renamed from: e, reason: collision with root package name */
    public WeakReference f12206e;

    public btx(hp hpVar, Context context, clx clxVar) {
        this.f12202a = hpVar;
        this.f12203b = context;
        this.f12205d = clxVar;
        ftn ftnVar = new ftn(context);
        ftnVar.f17396g = 1;
        this.f12204c = ftnVar;
        ftnVar.h = this;
    }

    @Override // g.egz
    public final void _cj(ftn ftnVar) {
        if (this.f12205d == null) {
            return;
        }
        u();
        esf esfVar = this.f12202a.n.k;
        if (esfVar != null) {
            esfVar.ag();
        }
    }

    @Override // g.gtg
    public final boolean f() {
        return this.f12202a.n.j;
    }

    @Override // g.gtg
    public final void g(CharSequence charSequence) {
        this.f12202a.n.setSubtitle(charSequence);
    }

    @Override // g.gtg
    public final void h(boolean z) {
        this.x = z;
        this.f12202a.n.setTitleOptional(z);
    }

    @Override // g.gtg
    public final void i(CharSequence charSequence) {
        this.f12202a.n.setTitle(charSequence);
    }

    @Override // g.gtg
    public final MenuInflater j() {
        return new cck(this.f12203b);
    }

    @Override // g.gtg
    public final void k(int i) {
        i(this.f12202a._ac.getResources().getString(i));
    }

    @Override // g.gtg
    public final CharSequence l() {
        return this.f12202a.n.getSubtitle();
    }

    @Override // g.gtg
    public final void m() {
        hp hpVar = this.f12202a;
        if (hpVar.r != this) {
            return;
        }
        if (hpVar.p) {
            hpVar.t = this;
            hpVar.f19384d = this.f12205d;
        } else {
            this.f12205d.u(this);
        }
        this.f12205d = null;
        hpVar.ap(false);
        ActionBarContextView actionBarContextView = hpVar.n;
        if (actionBarContextView.i == null) {
            actionBarContextView.aa();
        }
        hpVar.w.setHideOnContentScrollEnabled(hpVar._ad);
        hpVar.r = null;
    }

    @Override // g.gtg
    public final CharSequence n() {
        return this.f12202a.n.getTitle();
    }

    @Override // g.gtg
    public final void o(View view) {
        this.f12202a.n.setCustomView(view);
        this.f12206e = new WeakReference(view);
    }

    @Override // g.egz
    public final boolean p(ftn ftnVar, MenuItem menuItem) {
        clx clxVar = this.f12205d;
        if (clxVar != null) {
            return ((dbn) clxVar.f13103e).q(this, menuItem);
        }
        return false;
    }

    @Override // g.gtg
    public final View r() {
        WeakReference weakReference = this.f12206e;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // g.gtg
    public final void s(int i) {
        g(this.f12202a._ac.getResources().getString(i));
    }

    @Override // g.gtg
    public final ftn t() {
        return this.f12204c;
    }

    @Override // g.gtg
    public final void u() {
        if (this.f12202a.r != this) {
            return;
        }
        ftn ftnVar = this.f12204c;
        ftnVar.aj();
        try {
            this.f12205d.m(this, ftnVar);
        } finally {
            ftnVar.ai();
        }
    }
}
