package g;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;

/* loaded from: classes3.dex */
public final class bhp implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ebb f11598a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11599b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.google.android.material.datepicker.c f11600c;

    public /* synthetic */ bhp(ebb ebbVar, com.google.android.material.datepicker.c cVar, int i) {
        this.f11599b = i;
        this.f11598a = ebbVar;
        this.f11600c = cVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f11599b) {
            case 0:
                this.f11598a.u(this.f11600c.f9042b.getStart().monthsLater(((LinearLayoutManager) r3.o.getLayoutManager()).by() - 1));
                break;
            default:
                ebb ebbVar = this.f11598a;
                ebbVar.u(this.f11600c.f9042b.getStart().monthsLater(((LinearLayoutManager) ebbVar.o.getLayoutManager()).bv() + 1));
                break;
        }
    }
}
