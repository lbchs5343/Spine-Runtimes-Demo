package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.List;

/* loaded from: classes.dex */
public final class fhm implements ebp, Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final cwx f16795a;
    public final List k;
    public final List l;
    public final ayu m;
    public final List n;
    public final int o;

    public fhm(ayu ayuVar, List list, cwx cwxVar, List list2, List list3, int i) {
        this.m = ayuVar;
        this.n = list;
        this.f16795a = cwxVar;
        this.k = list2;
        this.l = list3;
        this.o = i;
    }

    @Override // g.ebp
    public final int _cv() {
        return this.o;
    }

    @Override // g.eue
    public final String c() {
        return awf.aa(this) + " (c)";
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.m.compareTo(((fhm) obj).m);
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.j;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof fhm) {
            return this.m.equals(((fhm) obj).m);
        }
        return false;
    }

    @Override // g.ebp
    public final List f() {
        return this.n;
    }

    @Override // g.ebp
    public final cwx g() {
        return this.f16795a;
    }

    @Override // g.ebp
    public final List getTypeParameters() {
        return this.k;
    }

    @Override // g.ebp
    public final boolean h() {
        return (this.o & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
    }

    public final int hashCode() {
        return this.m.f11074b;
    }

    @Override // g.ebp
    public final List i() {
        return this.l;
    }

    @Override // g.ebp
    public final ayu j() {
        return this.m;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ClspMth{");
        List list = this.k;
        if (evh.e(list)) {
            sb.append('<');
            sb.append(evh.h(", ", list));
            sb.append("> ");
        }
        StringBuilder sb2 = new StringBuilder();
        ayu ayuVar = this.m;
        sb2.append(ayuVar.f11076d.f20147b);
        sb2.append('.');
        sb2.append(ayuVar.f11078f);
        sb.append(sb2.toString());
        sb.append('(');
        sb.append(evh.h(", ", this.n));
        sb.append("):");
        sb.append(this.f16795a);
        if (h()) {
            sb.append(" VARARG");
        }
        List list2 = this.l;
        if (evh.e(list2)) {
            sb.append(" throws ");
            sb.append(evh.h(", ", list2));
        }
        sb.append('}');
        return sb.toString();
    }
}
