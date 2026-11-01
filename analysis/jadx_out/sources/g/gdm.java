package g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.accessibility.selecttospeak.SelectToSpeakService;

/* loaded from: classes.dex */
public final class gdm implements hdb {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17937b;

    public /* synthetic */ gdm(int i) {
        this.f17937b = i;
    }

    @Override // g.hdb
    public final boolean _bz(Context context, ert ertVar) {
        Intent c2 = c(context);
        if ((context instanceof elf) && c2.getComponent() != null && b.d.a.class.getName().equals(c2.getComponent().getClassName())) {
            c2.putExtra("layout_control_window_only", true);
        }
        if ((context instanceof Activity) && c2.getComponent() != null && ((b.d.a.class.getName().equals(c2.getComponent().getClassName()) || b.d.ab.class.getName().equals(c2.getComponent().getClassName()) || c.a.a.class.getName().equals(c2.getComponent().getClassName())) && yb.j((Activity) context, c2, false))) {
            return true;
        }
        fgj.e().g(context, c2, true, false, true);
        return true;
    }

    public final Intent c(Context context) {
        switch (this.f17937b) {
            case 0:
                return acr.au(context, b.a.b.class).putExtra("show_ad_full", fml.h(context)).putExtra("show_ad_banner", fml.e(context));
            case 1:
                return acr.au(context, f.a.d.class);
            case 2:
                return acr.au(context, c.c.c.class);
            case 3:
                return acr.au(context, b.a.b.class).putExtra("show_ad_full", fml.h(context)).putExtra("show_ad_banner", fml.e(context));
            case 4:
                return acr.au(context, b.b.a.class);
            case 5:
                return acr.au(context, c.a.a.class).putExtra("accessibilityClassName", SelectToSpeakService.class.getName());
            case 6:
                return acr.au(context, b.d.ab.class).putExtra("accessibilityClassName", SelectToSpeakService.class.getName());
            case 7:
                return acr.au(context, b.b.b.class);
            case 8:
                return acr.au(context, c.c.b.class);
            case 9:
                return acr.au(context, b.b.c.class);
            case 10:
                return acr.au(context, c.c.c.class);
            case 11:
                return acr.au(context, d.b.a.class);
            case 12:
                return acr.au(context, b.d.a.class).putExtra("accessibilityClassName", SelectToSpeakService.class.getName()).putExtra(abn.EXTRA_SOURCE, "tool");
            default:
                return acr.au(context, b.c.b.class);
        }
    }
}
