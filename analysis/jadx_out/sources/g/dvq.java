package g;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class dvq implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final String[] f14895a;

    public dvq(String[] strArr) {
        this.f14895a = strArr;
    }

    public final String b(int i) {
        return this.f14895a[(i * 2) + 1];
    }

    public final String c(String str) {
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        String[] strArr = this.f14895a;
        int length = strArr.length - 2;
        int bf = ffb.bf(length, 0, -2);
        if (bf > length) {
            return null;
        }
        while (!str.equalsIgnoreCase(strArr[length])) {
            if (length == bf) {
                return null;
            }
            length -= 2;
        }
        return strArr[length + 1];
    }

    public final List d(String str) {
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        int size = size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            if (str.equalsIgnoreCase(e(i))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(b(i));
            }
        }
        if (arrayList == null) {
            return fai.f16469a;
        }
        List unmodifiableList = Collections.unmodifiableList(arrayList);
        bff.e(unmodifiableList, "{\n      Collections.unmodifiableList(result)\n    }");
        return unmodifiableList;
    }

    public final String e(int i) {
        return this.f14895a[i * 2];
    }

    public final boolean equals(Object obj) {
        if (obj instanceof dvq) {
            return Arrays.equals(this.f14895a, ((dvq) obj).f14895a);
        }
        return false;
    }

    public final ais f() {
        ais aisVar = new ais(0);
        ArrayList arrayList = aisVar.f10279a;
        bff.p(arrayList, "<this>");
        String[] strArr = this.f14895a;
        bff.p(strArr, "elements");
        arrayList.addAll(fuv.bf(strArr));
        return aisVar;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f14895a);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        int size = size();
        ger[] gerVarArr = new ger[size];
        for (int i = 0; i < size; i++) {
            gerVarArr[i] = new ger(e(i), b(i));
        }
        return new bve(gerVarArr);
    }

    public final int size() {
        return this.f14895a.length / 2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            String e2 = e(i);
            String b2 = b(i);
            sb.append(e2);
            sb.append(": ");
            if (erq.v(e2)) {
                b2 = "██";
            }
            sb.append(b2);
            sb.append("\n");
        }
        String sb2 = sb.toString();
        bff.e(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
