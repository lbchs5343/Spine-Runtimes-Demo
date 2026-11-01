package g;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class gec implements View.OnApplyWindowInsetsListener {

    /* renamed from: a, reason: collision with root package name */
    public anp f17975a = null;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f17976b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ghx f17977c;

    public gec(View view, ghx ghxVar) {
        this.f17976b = view;
        this.f17977c = ghxVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        anp c2 = anp.c(view, windowInsets);
        int i = Build.VERSION.SDK_INT;
        ghx ghxVar = this.f17977c;
        if (i < 30) {
            cd.f(windowInsets, this.f17976b);
            if (c2.equals(this.f17975a)) {
                return ghxVar.k(view, c2).j();
            }
        }
        this.f17975a = c2;
        anp k = ghxVar.k(view, c2);
        if (i >= 30) {
            return k.j();
        }
        WeakHashMap weakHashMap = goi.f18490c;
        dzc.c(view);
        return k.j();
    }
}
