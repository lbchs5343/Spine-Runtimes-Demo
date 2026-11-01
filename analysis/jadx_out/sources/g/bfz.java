package g;

import java.util.List;

/* loaded from: classes.dex */
public final class bfz {

    /* renamed from: a, reason: collision with root package name */
    public List f11487a;

    /* renamed from: b, reason: collision with root package name */
    public int f11488b = -1;

    /* renamed from: c, reason: collision with root package name */
    public final vm f11489c;

    /* renamed from: d, reason: collision with root package name */
    public List f11490d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11491e;

    /* renamed from: f, reason: collision with root package name */
    public cwx f11492f;

    public bfz(vm vmVar) {
        this.f11489c = vmVar;
    }

    public final boolean g() {
        if (this.f11491e) {
            return false;
        }
        int size = (this.f11488b + 1) % this.f11487a.size();
        this.f11488b = size;
        this.f11492f = (cwx) this.f11487a.get(size);
        return this.f11488b == 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f11489c.l());
        if (this.f11491e) {
            sb.append(", resolved type: ");
            sb.append(this.f11492f);
        } else {
            sb.append(", currentType=");
            sb.append(this.f11492f);
            sb.append(", candidateTypes=");
            sb.append(this.f11487a);
            sb.append(", constraints=");
            sb.append(this.f11490d);
        }
        return sb.toString();
    }
}
