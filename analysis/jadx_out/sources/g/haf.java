package g;

import android.os.Bundle;

/* loaded from: classes3.dex */
public abstract class haf {

    /* renamed from: e, reason: collision with root package name */
    public final int f19110e;

    /* renamed from: f, reason: collision with root package name */
    public final Bundle f19111f;

    /* renamed from: g, reason: collision with root package name */
    public Boolean f19112g;
    public final /* synthetic */ adw h;
    public boolean i;
    public final /* synthetic */ adw j;

    public haf(adw adwVar, int i, Bundle bundle) {
        this.h = adwVar;
        Boolean bool = Boolean.TRUE;
        this.j = adwVar;
        this.f19112g = bool;
        this.i = false;
        this.f19110e = i;
        this.f19111f = bundle;
    }

    public abstract void b(nk nkVar);

    public abstract boolean c();

    public final void k() {
        l();
        synchronized (this.j.v) {
            this.j.v.remove(this);
        }
    }

    public final void l() {
        synchronized (this) {
            this.f19112g = null;
        }
    }
}
