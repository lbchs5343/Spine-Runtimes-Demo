package g;

import android.text.TextUtils;
import android.view.View;
import g.fxe;

/* loaded from: classes.dex */
public final class zd implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ dmr f20387a;

    public zd(dmr dmrVar) {
        this.f20387a = dmrVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        dmr dmrVar = this.f20387a;
        fxe.a j = atf.g(dmrVar.f14439d).j();
        if (j == null || TextUtils.isEmpty(j.faqUrl)) {
            return;
        }
        dov.d(dmrVar.f14440e, j.faqUrl, eyt.bk(j.faqTitle), "", "", "");
    }
}
