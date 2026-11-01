package g;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Intent;
import android.view.View;
import android.widget.EditText;
import cn.trinea.android.developertools.R;
import java.io.File;

/* loaded from: classes.dex */
public final class gwc implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Dialog f18860a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f18861b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f18862c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f18863d;

    public /* synthetic */ gwc(Object obj, Object obj2, Dialog dialog, int i) {
        this.f18862c = i;
        this.f18861b = obj;
        this.f18863d = obj2;
        this.f18860a = dialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f18862c) {
            case 0:
                fdp fdpVar = ((fdp) this.f18861b).q;
                fso.ae(fdpVar, "color", ((gek) this.f18863d).m(fdpVar), true);
                ((AlertDialog) this.f18860a).dismiss();
                break;
            case 1:
                Intent intent = new Intent();
                intent.setAction("android.intent.action.SEND");
                gek gekVar = (gek) this.f18863d;
                fdp fdpVar2 = (fdp) this.f18861b;
                intent.putExtra("android.intent.extra.TEXT", gekVar.m(fdpVar2.q));
                intent.setType("text/plain");
                fgj.e().f(fdpVar2.q, Intent.createChooser(intent, fdpVar2.getResources().getText(R.string.share)));
                ((AlertDialog) this.f18860a).dismiss();
                break;
            default:
                String obj = ((EditText) this.f18863d).getText().toString();
                ade adeVar = ((fdh) this.f18861b).f16605a;
                if (adeVar.h(obj)) {
                    cuz cuzVar = adeVar.f10032g;
                    if (cuzVar != null) {
                        ero eroVar = (ero) cuzVar;
                        File file = new File((File) eroVar.o, obj);
                        if (file.mkdir()) {
                            eroVar.al(file, true);
                        } else {
                            gm.i(eroVar.getActivity(), R.string.nnf_create_folder_error, 0);
                        }
                    }
                    ((fpl) this.f18860a).dismiss();
                    break;
                }
                break;
        }
    }
}
