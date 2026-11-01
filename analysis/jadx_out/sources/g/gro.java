package g;

import android.content.Context;
import android.content.Intent;
import g.fxe;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class gro implements bmm {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ atf f18651a;

    public gro(atf atfVar) {
        this.f18651a = atfVar;
    }

    @Override // g.bmm
    public final void ad(czh czhVar, anx anxVar) {
        fxe fxeVar;
        Context context = this.f18651a.f10798e;
        long currentTimeMillis = System.currentTimeMillis();
        atf.f10795b = currentTimeMillis;
        acw.s(context, "config_last_success_update", currentTimeMillis);
        cbf cbfVar = (cbf) anxVar.f10540b;
        if (cbfVar == null) {
            return;
        }
        if (cbfVar.getCode() != 0 || (fxeVar = (fxe) cbfVar.getData()) == null) {
            cbfVar.getMessage();
            return;
        }
        fxe fxeVar2 = atf.f10796c;
        if (fxeVar2 == null || !fxeVar2.equals(fxeVar)) {
            Intent intent = new Intent("cacu");
            fxe fxeVar3 = atf.f10796c;
            if (fxeVar3 != null) {
                intent.putExtra("cacuoc", fxeVar3);
            }
            intent.putExtra("cacunc", fxeVar);
            fzn.l(this.f18651a.f10798e).q(intent);
        }
        atf.f10796c = fxeVar;
        acw.au(this.f18651a.f10798e, "config", ex.i(fxeVar));
        acw.s(this.f18651a.f10798e, "config_request_interval", fxeVar.requestInterval);
        Context context2 = this.f18651a.f10798e;
        fxe.d dVar = fxeVar.net;
        cro.af(context2, "config_https", dVar == null ? true : dVar.isCodeKKHttps);
    }

    @Override // g.bmm
    public final void w(czh czhVar, Throwable th) {
        Context context = this.f18651a.f10798e;
        String str = "g c fail, exception is: " + th;
        Field field = gm.f18385a;
        if (byh.bc()) {
            gm.k(context, str);
        }
    }
}
