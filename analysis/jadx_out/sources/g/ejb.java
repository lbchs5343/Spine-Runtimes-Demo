package g;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class ejb {

    /* renamed from: a, reason: collision with root package name */
    public boolean f15628a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f15629b;

    /* renamed from: c, reason: collision with root package name */
    public String f15630c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f15631d;

    /* renamed from: e, reason: collision with root package name */
    public cwx f15632e;

    /* renamed from: f, reason: collision with root package name */
    public List f15633f = Collections.EMPTY_LIST;

    /* renamed from: g, reason: collision with root package name */
    public cmw f15634g;

    public final vm h() {
        if (!this.f15633f.isEmpty()) {
            return (vm) this.f15633f.get(0);
        }
        throw new IllegalStateException("CodeVar without SSA variables attached: " + this);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f15628a ? "final " : "");
        sb.append(this.f15632e);
        sb.append(' ');
        sb.append(this.f15630c);
        return sb.toString();
    }
}
