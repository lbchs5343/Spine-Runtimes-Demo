package g;

import android.view.View;

/* loaded from: classes.dex */
public final class bix extends eyh {

    /* renamed from: a, reason: collision with root package name */
    public acb f11670a;

    @Override // g.eyh
    public final ewk dq() {
        return new eoe(this);
    }

    @Override // g.dlv
    public final View ox() {
        acb acbVar = new acb(this.s);
        this.f11670a = acbVar;
        acbVar.f9961a = this;
        return acbVar;
    }

    @Override // g.dlv
    public final void p() {
        this.f11670a.setEventMap(this.bf);
        super.p();
    }
}
