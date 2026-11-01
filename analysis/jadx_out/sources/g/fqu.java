package g;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;

/* loaded from: classes.dex */
public class fqu extends ffb {

    /* renamed from: c, reason: collision with root package name */
    public final WindowInsetsController f17266c;

    /* renamed from: d, reason: collision with root package name */
    public final Window f17267d;

    public fqu(Window window, bli bliVar) {
        WindowInsetsController insetsController;
        insetsController = window.getInsetsController();
        this.f17266c = insetsController;
        this.f17267d = window;
    }

    @Override // g.ffb
    public final void a(boolean z) {
        Window window = this.f17267d;
        if (z) {
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 16);
            }
            this.f17266c.setSystemBarsAppearance(16, 16);
            return;
        }
        if (window != null) {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-17));
        }
        this.f17266c.setSystemBarsAppearance(0, 16);
    }

    @Override // g.ffb
    public final void b(boolean z) {
        Window window = this.f17267d;
        if (z) {
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
            }
            this.f17266c.setSystemBarsAppearance(8, 8);
            return;
        }
        if (window != null) {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-8193));
        }
        this.f17266c.setSystemBarsAppearance(0, 8);
    }
}
