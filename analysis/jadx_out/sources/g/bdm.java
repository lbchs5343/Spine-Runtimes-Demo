package g;

import android.text.TextUtils;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class bdm implements cx {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dqe f11327b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f11328c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f11329d;

    public bdm(dqe dqeVar, boolean z, boolean z2) {
        this.f11327b = dqeVar;
        this.f11328c = z;
        this.f11329d = z2;
    }

    @Override // g.cx
    public final void a(dkp dkpVar) {
        if (!this.f11328c) {
            this.f11327b.ab();
        }
        if (dkpVar == null || TextUtils.isEmpty(dkpVar._ci())) {
            return;
        }
        Objects.toString(dkpVar._ci());
    }

    @Override // g.cx
    public final void onSuccess(Object obj) {
        boolean ak;
        fjv fjvVar = (fjv) obj;
        boolean z = this.f11328c || fjvVar.isForce();
        dqe dqeVar = this.f11327b;
        if (!z) {
            dqeVar.ab();
        }
        ak = dqeVar.ak(this.f11329d);
        if (ak) {
            return;
        }
        dqeVar.p(fjvVar, true, false, z);
    }
}
