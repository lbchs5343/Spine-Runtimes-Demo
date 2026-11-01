package g;

import android.view.View;

/* loaded from: classes.dex */
public abstract class czu implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final fei f13825a = new fei();

    public abstract void b();

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f13825a.b()) {
            b();
        }
    }
}
