package g;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class bbn implements fet {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11229a;

    /* renamed from: c, reason: collision with root package name */
    public final Object f11230c;

    public bbn(hbu hbuVar) {
        this.f11229a = 1;
        this.f11230c = new LinkedHashSet();
        hbuVar.j("androidx.savedstate.Restarter", this);
    }

    public bbn(ub ubVar) {
        this.f11229a = 0;
        this.f11230c = ubVar;
    }

    @Override // g.fet
    public final Bundle b() {
        switch (this.f11229a) {
            case 0:
                Bundle bundle = new Bundle();
                ((ub) this.f11230c).getDelegate().getClass();
                return bundle;
            default:
                Bundle bundle2 = new Bundle();
                bundle2.putStringArrayList("classes_to_restore", new ArrayList<>((LinkedHashSet) this.f11230c));
                return bundle2;
        }
    }
}
