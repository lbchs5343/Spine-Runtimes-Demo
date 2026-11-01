package g;

import j$.util.Objects;
import j$.util.Optional;

/* loaded from: classes.dex */
public final class elt {

    /* renamed from: a, reason: collision with root package name */
    public final dun f15775a;

    /* renamed from: b, reason: collision with root package name */
    public final fza f15776b;

    /* renamed from: c, reason: collision with root package name */
    public final fza f15777c;

    /* renamed from: d, reason: collision with root package name */
    public final Optional f15778d;

    public elt(fza fzaVar, fza fzaVar2, dun dunVar) {
        this(fzaVar, fzaVar2, dunVar, Optional.empty());
    }

    public elt(fza fzaVar, fza fzaVar2, dun dunVar, Optional optional) {
        this.f15776b = fzaVar;
        this.f15777c = fzaVar2;
        this.f15778d = optional;
        this.f15775a = dunVar;
        if (f() && optional.isEmpty()) {
            throw new gck("Attempted to add a null exception handler as an edge of \"" + dunVar.toString() + "\" type");
        }
        if (g() && optional.isPresent()) {
            throw new gck("Attempted to add an exception handler as an edge of \"" + dunVar.toString() + "\" type");
        }
    }

    public final aea e() {
        if (!f()) {
            throw new gck("Attempted to get the exception handler of a non-handler edge type");
        }
        Optional optional = this.f15778d;
        if (optional.isEmpty()) {
            throw new gck("Attempted to get the exception handler of a handler edge type, however none was present");
        }
        return (aea) optional.get();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof elt)) {
            return false;
        }
        elt eltVar = (elt) obj;
        return this.f15776b.equals(eltVar.f15776b) && this.f15777c.equals(eltVar.f15777c) && this.f15778d.equals(eltVar.f15778d) && this.f15775a.equals(eltVar.f15775a);
    }

    public final boolean f() {
        return this.f15775a == dun.HANDLER;
    }

    public final boolean g() {
        return !f();
    }

    public final int hashCode() {
        return Objects.hash(this.f15776b, this.f15777c, this.f15775a, this.f15778d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TryEdge: [");
        sb.append(this.f15775a);
        sb.append(' ');
        sb.append(this.f15776b.toString());
        sb.append(" -> ");
        sb.append(this.f15777c.toString());
        sb.append("] - Handler: ");
        Optional optional = this.f15778d;
        if (optional.isEmpty()) {
            sb.append("None");
        } else {
            sb.append(((aea) optional.get()).toString());
        }
        return sb.toString();
    }
}
