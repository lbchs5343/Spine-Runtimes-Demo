package g;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class aea {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f10078a = dsr.k(aea.class);

    /* renamed from: b, reason: collision with root package name */
    public boolean f10079b;

    /* renamed from: d, reason: collision with root package name */
    public eys f10081d;

    /* renamed from: f, reason: collision with root package name */
    public gsh f10083f;
    public final int h;
    public fza i;
    public guv j;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f10082e = new ArrayList(1);

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f10080c = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public boolean f10084g = false;

    public aea(int i) {
        this.h = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || aea.class != obj.getClass()) {
            return false;
        }
        aea aeaVar = (aea) obj;
        return this.h == aeaVar.h && this.f10082e.equals(aeaVar.f10082e) && Objects.equals(this.j, aeaVar.j);
    }

    public final int hashCode() {
        return Objects.hash(this.f10082e, Integer.valueOf(this.h));
    }

    public final boolean k(hed hedVar, ve veVar) {
        ArrayList arrayList = this.f10082e;
        if (veVar != null) {
            if (arrayList.contains(veVar)) {
                return false;
            }
            return arrayList.add(veVar);
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        StringBuilder sb = new StringBuilder("Throwable added to exception handler: '");
        sb.append(arrayList.isEmpty() ? "all" : evh.d(arrayList, " | ", new fov(20)));
        sb.append("', keep only Throwable");
        hedVar.bw(sb.toString());
        arrayList.clear();
        return true;
    }

    public final cwx l() {
        if (m()) {
            return cwx.v;
        }
        ArrayList arrayList = this.f10082e;
        return arrayList.size() == 1 ? ((ve) arrayList.iterator().next()).f20149d : cwx.v;
    }

    public final boolean m() {
        ArrayList arrayList = this.f10082e;
        if (arrayList.isEmpty()) {
            return true;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((ve) it.next()).f20147b.equals("java.lang.Throwable")) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = this.f10082e;
        sb.append(arrayList.isEmpty() ? "all" : evh.d(arrayList, " | ", new fov(20)));
        sb.append(" -> ");
        sb.append(ack.d(this.h));
        return sb.toString();
    }
}
