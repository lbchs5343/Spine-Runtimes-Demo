package g;

import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class gjc implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18238a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c.b.b f18239b;

    public /* synthetic */ gjc(c.b.b bVar, int i) {
        this.f18238a = i;
        this.f18239b = bVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        Context context2;
        a.a.ab abVar;
        Context context3;
        a.a.ab abVar2;
        a.a.ab abVar3;
        Context context4;
        Context context5;
        switch (this.f18238a) {
            case 0:
                context = this.f18239b.context;
                byh.ad(context, "op_shortcuted", true);
                break;
            case 1:
                c.b.b bVar = this.f18239b;
                context2 = bVar.context;
                byh.ad(context2, "op_shortcuted", true);
                abVar = bVar.webView;
                String au = eyt.au(abVar.getUrl());
                if (TextUtils.isEmpty(au)) {
                    au = dlb.c();
                }
                String string = bVar.getString(R.string.op);
                context3 = bVar.context;
                abVar2 = bVar.webView;
                String url = abVar2.getUrl();
                abVar3 = bVar.webView;
                baf.v(bVar, au, string, R.drawable.op, dov.f(context3, url, abVar3.getTitle(), bVar.getString(R.string.op_sub_title), bVar.getString(R.string.op_share_attach), c.b.b.class));
                break;
            default:
                c.b.b bVar2 = this.f18239b;
                context4 = bVar2.context;
                int i2 = 2;
                int av = byh.av(context4, cro.av(context4, 2, "op_update_freq"), "op_update_freq");
                if (av != 1) {
                    if (av == 2) {
                        i2 = 3;
                    } else if (av == 3 || av == 4) {
                        i2 = 4;
                    }
                }
                bVar2.ab(i2, null);
                bVar2.invalidateOptionsMenu();
                try {
                    context5 = bVar2.context;
                    dzm.ah(context5, "op_updatable_total", "op_updatable_low_freq");
                    break;
                } catch (Exception unused) {
                    return;
                }
        }
    }
}
