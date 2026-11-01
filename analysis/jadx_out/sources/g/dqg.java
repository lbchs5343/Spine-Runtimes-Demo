package g;

import java.util.HashSet;

/* loaded from: classes3.dex */
public final class dqg extends aiq {

    /* renamed from: b, reason: collision with root package name */
    public Long f14635b;

    /* renamed from: c, reason: collision with root package name */
    public tl f14636c;

    /* renamed from: g, reason: collision with root package name */
    public String f14637g;
    public Long h;
    public HashSet j;

    @Override // g.aiq
    public final void i() {
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:96)
        */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final java.util.ArrayList k(java.lang.String r47, java.util.List r48, java.util.List r49, java.lang.Long r50, java.lang.Long r51) {
        /*
            Method dump skipped, instructions count: 3012
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g.dqg.k(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.ArrayList");
    }

    public final akb o(Integer num) {
        if (this.f14636c.containsKey(num)) {
            return (akb) this.f14636c.get(num);
        }
        akb akbVar = new akb(this, this.f14637g);
        this.f14636c.put(num, akbVar);
        return akbVar;
    }
}
