package g;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* loaded from: classes3.dex */
public final class cdq extends eit implements cqh {
    public final Integer ap;
    public final Bundle aq;
    public final daw ar;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f12705d;

    public cdq(Context context, Looper looper, daw dawVar, Bundle bundle, fwr fwrVar, dko dkoVar) {
        super(context, looper, 44, dawVar, fwrVar, dkoVar);
        this.f12705d = true;
        this.ar = dawVar;
        this.aq = bundle;
        this.ap = (Integer) dawVar.f13888g;
    }

    @Override // g.adw
    public final String a() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // g.adw
    public final Bundle an() {
        daw dawVar = this.ar;
        boolean equals = getContext().getPackageName().equals((String) dawVar.f13882a);
        Bundle bundle = this.aq;
        if (!equals) {
            bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", (String) dawVar.f13882a);
        }
        return bundle;
    }

    @Override // g.adw
    public final String b() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // g.adw
    public final IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof cta ? (cta) queryLocalInterface : new cta(iBinder, "com.google.android.gms.signin.internal.ISignInService", 0);
    }

    @Override // g.adw
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override // g.adw, g.cqh
    public final boolean requiresSignIn() {
        return this.f12705d;
    }
}
