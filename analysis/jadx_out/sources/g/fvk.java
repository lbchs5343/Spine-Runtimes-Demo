package g;

/* loaded from: classes.dex */
public final class fvk implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final cno f17479a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17480b;

    public fvk(cno cnoVar, int i) {
        this.f17479a = cnoVar;
        this.f17480b = i;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        fvk fvkVar = (fvk) obj;
        int compare = Integer.compare(this.f17480b, fvkVar.f17480b);
        if (compare != 0) {
            return compare;
        }
        return this.f17479a.f13186e.ak.compareTo(fvkVar.f17479a.f13186e.ak);
    }

    public final String toString() {
        return this.f17479a + ":" + this.f17480b;
    }
}
