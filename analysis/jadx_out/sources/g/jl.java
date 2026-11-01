package g;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class jl implements gkt {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f19491a;

    /* renamed from: b, reason: collision with root package name */
    public final bto f19492b;

    public jl(CharSequence charSequence, bto btoVar) {
        bff.p(charSequence, "input");
        this.f19491a = charSequence;
        this.f19492b = btoVar;
    }

    @Override // g.gkt
    public final Iterator iterator() {
        return new fdz(this);
    }
}
