package g;

/* loaded from: classes.dex */
public final class fm extends cet {
    public adh u;
    public gez v;
    public final adh w;
    public Object x;

    public fm(adh adhVar, adh adhVar2) {
        this.w = adhVar;
        this.u = adhVar2;
        if (adhVar.f10041f != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        adhVar.f10041f = this;
    }

    @Override // androidx.lifecycle.a
    public final void m(jn jnVar) {
        super.m(jnVar);
        this.x = null;
        this.v = null;
    }

    @Override // androidx.lifecycle.a
    public final void p() {
        adh adhVar = this.w;
        adhVar.j = true;
        adhVar.f10038c = false;
        adhVar.l = false;
        adhVar.n();
        adhVar.m = new ezv(adhVar);
        adhVar.o();
    }

    @Override // g.cet, androidx.lifecycle.a
    public final void q(Object obj) {
        super.q(obj);
        adh adhVar = this.u;
        if (adhVar != null) {
            adhVar.f10038c = true;
            adhVar.j = false;
            adhVar.l = false;
            adhVar.f10040e = false;
            this.u = null;
        }
    }

    @Override // androidx.lifecycle.a
    public final void t() {
        this.w.j = false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("LoaderInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #0 : ");
        erl.au(this.w, sb);
        sb.append("}}");
        return sb.toString();
    }

    public final adh y(boolean z) {
        adh adhVar = this.w;
        adhVar.n();
        adhVar.l = true;
        gez gezVar = this.v;
        if (gezVar != null) {
            m(gezVar);
            if (z && gezVar.f18010g) {
                ((cuz) gezVar.f18008e).f13567g = false;
            }
        }
        fm fmVar = adhVar.f10041f;
        if (fmVar == null) {
            throw new IllegalStateException("No listener register");
        }
        if (fmVar != this) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        adhVar.f10041f = null;
        if ((gezVar == null || gezVar.f18010g) && !z) {
            return adhVar;
        }
        adhVar.f10038c = true;
        adhVar.j = false;
        adhVar.l = false;
        adhVar.f10040e = false;
        return this.u;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [g.iz, java.lang.Object] */
    public final void z() {
        ?? r0 = this.x;
        gez gezVar = this.v;
        if (r0 == 0 || gezVar == null) {
            return;
        }
        super.m(gezVar);
        n(r0, gezVar);
    }
}
