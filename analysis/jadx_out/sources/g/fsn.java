package g;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class fsn extends gtg implements egz {

    /* renamed from: a, reason: collision with root package name */
    public ftn f17338a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f17339b;

    /* renamed from: c, reason: collision with root package name */
    public Context f17340c;

    /* renamed from: d, reason: collision with root package name */
    public ActionBarContextView f17341d;

    /* renamed from: e, reason: collision with root package name */
    public clx f17342e;
    public WeakReference v;

    @Override // g.egz
    public final void _cj(ftn ftnVar) {
        u();
        esf esfVar = this.f17341d.k;
        if (esfVar != null) {
            esfVar.ag();
        }
    }

    @Override // g.gtg
    public final boolean f() {
        return this.f17341d.j;
    }

    @Override // g.gtg
    public final void g(CharSequence charSequence) {
        this.f17341d.setSubtitle(charSequence);
    }

    @Override // g.gtg
    public final void h(boolean z) {
        this.x = z;
        this.f17341d.setTitleOptional(z);
    }

    @Override // g.gtg
    public final void i(CharSequence charSequence) {
        this.f17341d.setTitle(charSequence);
    }

    @Override // g.gtg
    public final MenuInflater j() {
        return new cck(this.f17341d.getContext());
    }

    @Override // g.gtg
    public final void k(int i) {
        i(this.f17340c.getString(i));
    }

    @Override // g.gtg
    public final CharSequence l() {
        return this.f17341d.getSubtitle();
    }

    @Override // g.gtg
    public final void m() {
        if (this.f17339b) {
            return;
        }
        this.f17339b = true;
        this.f17342e.u(this);
    }

    @Override // g.gtg
    public final CharSequence n() {
        return this.f17341d.getTitle();
    }

    @Override // g.gtg
    public final void o(View view) {
        this.f17341d.setCustomView(view);
        this.v = view != null ? new WeakReference(view) : null;
    }

    @Override // g.egz
    public final boolean p(ftn ftnVar, MenuItem menuItem) {
        return ((dbn) this.f17342e.f13103e).q(this, menuItem);
    }

    @Override // g.gtg
    public final View r() {
        WeakReference weakReference = this.v;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // g.gtg
    public final void s(int i) {
        g(this.f17340c.getString(i));
    }

    @Override // g.gtg
    public final ftn t() {
        return this.f17338a;
    }

    @Override // g.gtg
    public final void u() {
        this.f17342e.m(this, this.f17338a);
    }
}
