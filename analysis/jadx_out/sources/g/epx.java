package g;

import java.util.Comparator;

/* loaded from: classes3.dex */
public final class epx implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final int f15952a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f15953b;

    public epx(int i, boolean z) {
        this.f15952a = i;
        this.f15953b = z;
    }

    @Override // java.util.Comparator
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final int compare(eih eihVar, eih eihVar2) {
        boolean z = eihVar.directory;
        if (z != eihVar2.directory) {
            return z ? -1 : 1;
        }
        int i = this.f15952a;
        int compareTo = i != 1 ? i != 2 ? i != 3 ? 0 : eihVar.extension.compareTo(eihVar2.extension) : Long.compare(eihVar.modifiedTime, eihVar2.modifiedTime) : Long.compare(eihVar.sizeBytes, eihVar2.sizeBytes);
        if (compareTo == 0) {
            compareTo = eihVar.getName().compareToIgnoreCase(eihVar2.getName());
        }
        if (compareTo == 0) {
            compareTo = eihVar.getName().compareTo(eihVar2.getName());
        }
        return this.f15953b ? compareTo : -compareTo;
    }
}
