package g;

import android.graphics.Path;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class ais {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10279a;

    public ais(int i) {
        switch (i) {
            case 1:
                this.f10279a = new ArrayList();
                break;
            default:
                this.f10279a = new ArrayList(20);
                break;
        }
    }

    public void b(String str) {
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f10279a;
            if (i >= arrayList.size()) {
                return;
            }
            if (str.equalsIgnoreCase((String) arrayList.get(i))) {
                arrayList.remove(i);
                arrayList.remove(i);
                i -= 2;
            }
            i += 2;
        }
    }

    public void c(String str, String str2) {
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        bff.p(str2, "value");
        if (str.length() <= 0) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ('!' > charAt || charAt >= 127) {
                throw new IllegalArgumentException(erq.h("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str).toString());
            }
        }
        h(str, str2);
    }

    public dvq d() {
        return new dvq((String[]) this.f10279a.toArray(new String[0]));
    }

    public void e(String str, String str2) {
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        bff.p(str2, "value");
        dyd.bn(str);
        dyd.al(str2, str);
        h(str, str2);
    }

    public void f(Path path) {
        ArrayList arrayList = this.f10279a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ejw ejwVar = (ejw) arrayList.get(size);
            cqw cqwVar = ebx.f15269c;
            if (ejwVar != null && !ejwVar.f15687c) {
                ebx.g(path, ejwVar.f15685a.c() / 100.0f, ejwVar.f15686b.c() / 100.0f, ejwVar.f15688d.c() / 360.0f);
            }
        }
    }

    public void g(String str) {
        int bh = dcv.bh(str, ':', 1, 4);
        if (bh != -1) {
            String substring = str.substring(0, bh);
            bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            String substring2 = str.substring(bh + 1);
            bff.e(substring2, "this as java.lang.String).substring(startIndex)");
            h(substring, substring2);
            return;
        }
        if (str.charAt(0) != ':') {
            h("", str);
            return;
        }
        String substring3 = str.substring(1);
        bff.e(substring3, "this as java.lang.String).substring(startIndex)");
        h("", substring3);
    }

    public void h(String str, String str2) {
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        bff.p(str2, "value");
        ArrayList arrayList = this.f10279a;
        arrayList.add(str);
        arrayList.add(dcv.bk(str2).toString());
    }

    public String i(String str) {
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        ArrayList arrayList = this.f10279a;
        int size = arrayList.size() - 2;
        int bf = ffb.bf(size, 0, -2);
        if (bf > size) {
            return null;
        }
        while (!str.equalsIgnoreCase((String) arrayList.get(size))) {
            if (size == bf) {
                return null;
            }
            size -= 2;
        }
        return (String) arrayList.get(size + 1);
    }
}
