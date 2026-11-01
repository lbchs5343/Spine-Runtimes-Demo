package g;

import j$.util.Collection;
import j$.util.stream.Collectors;
import java.text.Collator;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class ens implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15872a = 1;

    /* renamed from: b, reason: collision with root package name */
    public Object f15873b;

    public /* synthetic */ ens() {
    }

    public ens(cwm cwmVar) {
        this.f15873b = cwmVar;
    }

    public ens(List list) {
        this.f15873b = (Set) Collection.b.stream(list).map(new gpn(18)).collect(Collectors.toSet());
    }

    public int c(String str, String str2) {
        char lowerCase;
        char lowerCase2;
        if (str == null) {
            return str2 == null ? 0 : -1;
        }
        if (str2 == null) {
            return 1;
        }
        int length = str.length();
        int length2 = str2.length();
        int min = Math.min(length, length2);
        for (int i = 0; i < min; i++) {
            char charAt = str.charAt(i);
            char charAt2 = str2.charAt(i);
            if (charAt != charAt2) {
                boolean ar = eyt.ar(charAt);
                boolean ar2 = eyt.ar(charAt2);
                if (ar) {
                    if (ar2) {
                        return ((Collator) this.f15873b).compare(str, str2);
                    }
                    return 1;
                }
                if (ar2) {
                    return -1;
                }
                char upperCase = Character.toUpperCase(charAt);
                char upperCase2 = Character.toUpperCase(charAt2);
                if (upperCase != upperCase2 && (lowerCase = Character.toLowerCase(upperCase)) != (lowerCase2 = Character.toLowerCase(upperCase2))) {
                    return lowerCase - lowerCase2;
                }
            }
        }
        return length - length2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f15872a) {
            case 0:
                fgh fghVar = (fgh) obj2;
                ((fgh) obj).getClass();
                boolean z = true;
                boolean z2 = d(null) || d(null);
                fghVar.getClass();
                if (!d(null) && !d(null)) {
                    z = false;
                }
                return -Boolean.compare(z2, z);
            case 1:
                return c((String) obj, (String) obj2);
            default:
                int i = ml.f19656b[((cwm) this.f15873b).h((cwx) obj, (cwx) obj2).ordinal()];
                if (i == 1) {
                    return -2;
                }
                if (i == 2 || i == 3) {
                    return -1;
                }
                return (i == 4 || i == 5) ? 1 : 0;
        }
    }

    public boolean d(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((Set) this.f15873b).contains((String) it.next())) {
                return true;
            }
        }
        return false;
    }
}
