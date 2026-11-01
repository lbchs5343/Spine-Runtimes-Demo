package g;

import android.view.View;

/* loaded from: classes3.dex */
public final class bee implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11361a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cuz f11362b;

    public /* synthetic */ bee(cuz cuzVar, int i) {
        this.f11361a = i;
        this.f11362b = cuzVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f11361a) {
            case 0:
                gaf gafVar = this.f11362b.s;
                if (gafVar != null) {
                    gafVar.onCancelled();
                    break;
                }
                break;
            case 1:
                this.f11362b.af();
                break;
            default:
                this.f11362b.af();
                break;
        }
    }
}
