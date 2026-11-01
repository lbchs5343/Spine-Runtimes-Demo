package g;

import android.view.View;

/* loaded from: classes.dex */
public final class gct extends egk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ egk f17892a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.b f17893b;

    public gct(androidx.fragment.app.b bVar, egk egkVar) {
        this.f17893b = bVar;
        this.f17892a = egkVar;
    }

    @Override // g.egk
    public final View c(int i) {
        egk egkVar = this.f17892a;
        return egkVar.d() ? egkVar.c(i) : this.f17893b.onFindViewById(i);
    }

    @Override // g.egk
    public final boolean d() {
        return this.f17892a.d() || this.f17893b.onHasView();
    }
}
