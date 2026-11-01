package g;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.MenuItem;
import android.webkit.JsPromptResult;
import android.widget.EditText;
import androidx.appcompat.widget.SwitchCompat;

/* loaded from: classes.dex */
public final class dtm implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f14782a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14783b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f14784c;

    public /* synthetic */ dtm(dms dmsVar, Object obj, int i) {
        this.f14783b = i;
        this.f14782a = dmsVar;
        this.f14784c = obj;
    }

    public /* synthetic */ dtm(Object obj, int i, Object obj2) {
        this.f14783b = i;
        this.f14784c = obj;
        this.f14782a = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f14783b;
        int i3 = 2;
        Object obj = this.f14782a;
        Object obj2 = this.f14784c;
        switch (i2) {
            case 0:
                int i4 = c.b.b.f378d;
                ((c.b.b) obj).ac((MenuItem) obj2);
                break;
            case 1:
                ((SwitchCompat) obj2).setChecked(true);
                c.e.b bVar = (c.e.b) obj;
                c.e.b bVar2 = bVar.i;
                int i5 = c.b.b.f378d;
                int av = byh.av(bVar2, cro.av(bVar2, 2, "op_update_freq"), "op_update_freq");
                if (av != 1) {
                    if (av == 2) {
                        i3 = 3;
                    } else if (av == 3 || av == 4) {
                        i3 = 4;
                    }
                }
                byh.bb(bVar.i, i3, "op_update_freq");
                c.b.b.l(bVar.i, "c.t.d.o.p.u.t");
                bVar.o();
                break;
            case 2:
                fyt.g((Activity) obj2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES", new cc(2, this));
                break;
            case 3:
                edx.am((edx) obj, ((EditText) obj2).getText());
                break;
            case 4:
                gfk gfkVar = (gfk) obj2;
                gfkVar.getClass();
                esy esyVar = ti.f20033a.z;
                esy.ad(gfkVar.f18037f, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", (String) obj), "Share via"));
                break;
            default:
                ((JsPromptResult) obj2).confirm(((EditText) obj).getText().toString());
                break;
        }
    }
}
