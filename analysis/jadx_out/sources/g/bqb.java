package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class bqb implements cka {

    /* renamed from: c, reason: collision with root package name */
    public final gez f11994c;

    /* renamed from: d, reason: collision with root package name */
    public final cqv f11995d;

    public bqb() {
        gez gezVar = new gez();
        this.f11994c = gezVar;
        this.f11995d = new cqv(gezVar);
    }

    @Override // g.cka
    public final dpa a() {
        return new dpa("dex-input", "Dex Input", "Load .dex and .apk files");
    }

    @Override // g.cka
    public final void b(gay gayVar) {
        gez gezVar = this.f11994c;
        cqc cqcVar = gayVar.f17833f;
        try {
            Objects.requireNonNull(gezVar);
            gayVar.f17829b = gezVar;
            gezVar.l(cqcVar.k.q);
            gayVar.h.add(new gpy(0, this));
            this.f11995d.f13351d = cqcVar.i;
        } catch (Exception e2) {
            throw new gck("Failed to apply options for plugin: ".concat((String) gayVar.f17830c.f14569g), e2);
        }
    }
}
