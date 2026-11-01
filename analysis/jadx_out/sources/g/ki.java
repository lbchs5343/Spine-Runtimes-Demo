package g;

import android.content.Context;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class ki implements deg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f19542a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bky f19543b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f19544c;

    public ki(Context context, bky bkyVar, Context context2) {
        this.f19542a = context;
        this.f19543b = bkyVar;
        this.f19544c = context2;
    }

    @Override // g.deg
    public final void d(String str, Throwable th) {
        if (th != null) {
            erl.ac(th);
        }
        gm.f(this.f19544c, R.string.shizuku_accessibility_failed);
        bew.s(this.f19542a, this.f19543b);
    }

    @Override // g.deg
    public final void onSuccess(Object obj) {
        bew.s(this.f19542a, this.f19543b);
    }
}
