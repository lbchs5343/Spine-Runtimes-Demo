package g;

import android.view.View;

/* loaded from: classes.dex */
public final class fzh implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17704a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n f17705b;

    public /* synthetic */ fzh(n nVar, int i) {
        this.f17704a = i;
        this.f17705b = nVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f17704a) {
            case 0:
                n nVar = this.f17705b;
                fso.ae(nVar.getContext(), "color", nVar.h.getText(), true);
                break;
            default:
                n nVar2 = this.f17705b;
                fso.ae(nVar2.getContext(), "point", (String) nVar2.f19696g.getTag(), true);
                break;
        }
    }
}
