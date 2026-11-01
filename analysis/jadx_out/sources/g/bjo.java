package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class bjo {

    /* renamed from: a, reason: collision with root package name */
    public final vm f11708a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f11709b = new ArrayList(3);

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f11710c = new ArrayList(3);

    public bjo(vm vmVar) {
        this.f11708a = vmVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        vm vmVar = this.f11708a;
        sb.append(vmVar == null ? "-" : vmVar.l());
        sb.append(", a:");
        sb.append(this.f11709b);
        sb.append(", u:");
        sb.append(this.f11710c);
        sb.append('}');
        return sb.toString();
    }
}
