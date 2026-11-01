package g;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.Button;

/* loaded from: classes.dex */
public final class aix implements DialogInterface.OnShowListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fjv f10290a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dqe f10291b;

    public aix(dqe dqeVar, fjv fjvVar) {
        this.f10291b = dqeVar;
        this.f10290a = fjvVar;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        Context context;
        Button l;
        Button l2;
        Button l3;
        fpl fplVar = (fpl) dialogInterface;
        qa qaVar = new qa(this, 0);
        if (fplVar != null && (l3 = fplVar.l(-1)) != null) {
            l3.setOnClickListener(qaVar);
        }
        context = this.f10291b.x;
        if (dyd.bi(context)) {
            return;
        }
        qa qaVar2 = new qa(this, 1);
        if (fplVar != null && (l2 = fplVar.l(-2)) != null) {
            l2.setOnClickListener(qaVar2);
        }
        qa qaVar3 = new qa(this, 2);
        if (fplVar == null || (l = fplVar.l(-3)) == null) {
            return;
        }
        l.setOnClickListener(qaVar3);
    }
}
