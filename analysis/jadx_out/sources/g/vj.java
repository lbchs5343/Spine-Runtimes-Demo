package g;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class vj {

    /* renamed from: a, reason: collision with root package name */
    public final Object f20162a;

    /* renamed from: b, reason: collision with root package name */
    public final Throwable f20163b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f20164c;

    /* renamed from: d, reason: collision with root package name */
    public final cby f20165d;

    /* renamed from: e, reason: collision with root package name */
    public final and f20166e;

    public vj(Object obj, cby cbyVar, and andVar, Object obj2, Throwable th) {
        this.f20164c = obj;
        this.f20165d = cbyVar;
        this.f20166e = andVar;
        this.f20162a = obj2;
        this.f20163b = th;
    }

    public /* synthetic */ vj(Object obj, cby cbyVar, and andVar, CancellationException cancellationException, int i) {
        this(obj, (i & 2) != 0 ? null : cbyVar, (i & 4) != 0 ? null : andVar, (Object) null, (i & 16) != 0 ? null : cancellationException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Throwable] */
    public static vj f(vj vjVar, cby cbyVar, CancellationException cancellationException, int i) {
        Object obj = vjVar.f20164c;
        if ((i & 2) != 0) {
            cbyVar = vjVar.f20165d;
        }
        cby cbyVar2 = cbyVar;
        and andVar = vjVar.f20166e;
        Object obj2 = vjVar.f20162a;
        CancellationException cancellationException2 = cancellationException;
        if ((i & 16) != 0) {
            cancellationException2 = vjVar.f20163b;
        }
        vjVar.getClass();
        return new vj(obj, cbyVar2, andVar, obj2, cancellationException2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vj)) {
            return false;
        }
        vj vjVar = (vj) obj;
        return bff.n(this.f20164c, vjVar.f20164c) && bff.n(this.f20165d, vjVar.f20165d) && bff.n(this.f20166e, vjVar.f20166e) && bff.n(this.f20162a, vjVar.f20162a) && bff.n(this.f20163b, vjVar.f20163b);
    }

    public final int hashCode() {
        Object obj = this.f20164c;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        cby cbyVar = this.f20165d;
        int hashCode2 = (hashCode + (cbyVar == null ? 0 : cbyVar.hashCode())) * 31;
        and andVar = this.f20166e;
        int hashCode3 = (hashCode2 + (andVar == null ? 0 : andVar.hashCode())) * 31;
        Object obj2 = this.f20162a;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f20163b;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f20164c + ", cancelHandler=" + this.f20165d + ", onCancellation=" + this.f20166e + ", idempotentResume=" + this.f20162a + ", cancelCause=" + this.f20163b + ')';
    }
}
