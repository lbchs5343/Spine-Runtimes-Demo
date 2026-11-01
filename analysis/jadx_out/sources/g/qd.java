package g;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class qd implements dsb {

    /* renamed from: a, reason: collision with root package name */
    public static final eiw f19848a;

    /* renamed from: b, reason: collision with root package name */
    public final ja f19849b;

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f19850c = new ConcurrentHashMap();

    static {
        int i = 0;
        f19848a = new eiw(i);
        new eiw(i);
    }

    public qd(ja jaVar) {
        this.f19849b = jaVar;
    }

    public final bke d(ja jaVar, eem eemVar, ri riVar, esz eszVar, boolean z) {
        bke j;
        Object ao = jaVar.j(new ri(eszVar.value())).ao();
        boolean nullSafe = eszVar.nullSafe();
        if (ao instanceof bke) {
            j = (bke) ao;
        } else {
            if (!(ao instanceof dsb)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + ao.getClass().getName() + " as a @JsonAdapter for " + acr.al(riVar.f19902b) + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            dsb dsbVar = (dsb) ao;
            if (z) {
                dsb dsbVar2 = (dsb) this.f19850c.putIfAbsent(riVar.f19901a, dsbVar);
                if (dsbVar2 != null) {
                    dsbVar = dsbVar2;
                }
            }
            j = dsbVar.j(eemVar, riVar);
        }
        return (j == null || !nullSafe) ? j : new agf(j, 2);
    }

    @Override // g.dsb
    public final bke j(eem eemVar, ri riVar) {
        esz eszVar = (esz) riVar.f19901a.getAnnotation(esz.class);
        if (eszVar == null) {
            return null;
        }
        return d(this.f19849b, eemVar, riVar, eszVar, true);
    }
}
