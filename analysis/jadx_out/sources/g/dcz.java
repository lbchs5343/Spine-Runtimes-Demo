package g;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

/* loaded from: classes.dex */
public final class dcz extends ActionMode {

    /* renamed from: a, reason: collision with root package name */
    public final Context f13992a;

    /* renamed from: b, reason: collision with root package name */
    public final gtg f13993b;

    public dcz(Context context, gtg gtgVar) {
        this.f13992a = context;
        this.f13993b = gtgVar;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f13993b.m();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f13993b.r();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new bvc(this.f13992a, this.f13993b.t());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f13993b.j();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f13993b.l();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f13993b.w;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f13993b.n();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f13993b.x;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f13993b.u();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f13993b.f();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f13993b.o(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i) {
        this.f13993b.s(i);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f13993b.g(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f13993b.w = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i) {
        this.f13993b.k(i);
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f13993b.i(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z) {
        this.f13993b.h(z);
    }
}
