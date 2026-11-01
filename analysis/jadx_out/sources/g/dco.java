package g;

import android.os.Bundle;
import androidx.activity.ComponentActivity;

/* loaded from: classes.dex */
public final /* synthetic */ class dco implements fet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13968a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f13969c;

    public /* synthetic */ dco(int i, Object obj) {
        this.f13968a = i;
        this.f13969c = obj;
    }

    @Override // g.fet
    public final Bundle b() {
        switch (this.f13968a) {
            case 0:
                return ComponentActivity.b((ComponentActivity) this.f13969c);
            case 1:
                return ((androidx.fragment.app.v) this.f13969c).bv();
            default:
                return gzf.g((gzf) this.f13969c);
        }
    }
}
