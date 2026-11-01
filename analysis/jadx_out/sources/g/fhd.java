package g;

import android.content.DialogInterface;
import cn.trinea.android.lib.view.BaseApplication;
import cn.trinea.developertools.MyApplication;
import g.fxe;

/* loaded from: classes.dex */
public final class fhd implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fxe.c f16781a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ elf f16782b;

    public fhd(elf elfVar, fxe.c cVar) {
        this.f16782b = elfVar;
        this.f16781a = cVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        String str;
        String str2;
        elf elfVar = this.f16782b;
        elf elfVar2 = elfVar.aa;
        byh.k = true;
        cro.af(elfVar2, "is_agree_newest_agreement", true);
        fxe.c cVar = this.f16781a;
        if (cVar != null && (str2 = cVar.uaVersion) != null) {
            acw.au(elfVar.aa, "pagreeVersion", str2);
        }
        if (cVar != null && (str = cVar.paVersion) != null) {
            acw.au(elfVar.aa, "uagreeVersion", str);
        }
        MyApplication.d(elfVar.aa);
        byh.q(elfVar.aa);
        elf elfVar3 = elfVar.aa;
        String f2 = fml.f(elfVar3);
        atf.g(elfVar.aa).o();
        BaseApplication.c(elfVar3, f2);
        elfVar.ai();
    }
}
