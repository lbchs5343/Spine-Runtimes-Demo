package g;

import android.view.View;
import android.view.Window;

/* loaded from: classes.dex */
public class djy extends ffb {

    /* renamed from: c, reason: collision with root package name */
    public final Window f14293c;

    public djy(Window window, bli bliVar) {
        this.f14293c = window;
    }

    public final void d(int i) {
        View decorView = this.f14293c.getDecorView();
        decorView.setSystemUiVisibility(i | decorView.getSystemUiVisibility());
    }

    public final void e(int i) {
        View decorView = this.f14293c.getDecorView();
        decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
    }
}
