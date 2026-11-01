package g;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final class erd {

    /* renamed from: a, reason: collision with root package name */
    public final String f16021a;

    /* renamed from: b, reason: collision with root package name */
    public int f16022b;

    public erd(String str, int i) {
        switch (i) {
            case 1:
                this.f16021a = str;
                this.f16022b = 0;
                break;
            default:
                this.f16021a = str;
                break;
        }
    }

    public erd(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f16021a = null;
        this.f16022b = 1;
    }

    public void c(dnp dnpVar) {
        e('(');
        int i = this.f16022b;
        String str = this.f16021a;
        if (str.charAt(i) == ')') {
            dnpVar.f14485e = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList = new ArrayList(5);
            do {
                arrayList.add(d());
            } while (str.charAt(this.f16022b) != ')');
            dnpVar.f14485e = arrayList;
        }
        e(')');
        dnpVar.f14484d = d();
    }

    public String d() {
        String str;
        int i = this.f16022b;
        String str2 = this.f16021a;
        if (i >= str2.length()) {
            return null;
        }
        char charAt = str2.charAt(i);
        if (charAt == 'L') {
            int indexOf = str2.indexOf(59, i);
            if (indexOf == -1) {
                throw new cyf("Unexpected object type descriptor: " + str2);
            }
            int i2 = indexOf + 1;
            String substring = str2.substring(i, i2);
            this.f16022b = i2;
            return substring;
        }
        if (charAt == '[') {
            this.f16022b++;
            return "[" + d();
        }
        if (charAt == 'F') {
            str = "F";
        } else if (charAt == 'S') {
            str = "S";
        } else if (charAt == 'V') {
            str = "V";
        } else if (charAt == 'Z') {
            str = "Z";
        } else if (charAt == 'I') {
            str = "I";
        } else if (charAt != 'J') {
            switch (charAt) {
                case 'B':
                    str = "B";
                    break;
                case 'C':
                    str = "C";
                    break;
                case 'D':
                    str = "D";
                    break;
                default:
                    throw new cyf("Unexpected char '" + charAt + "' in descriptor " + str2);
            }
        } else {
            str = "J";
        }
        this.f16022b = i + 1;
        return str;
    }

    public void e(char c2) {
        int i = this.f16022b;
        String str = this.f16021a;
        if (str.charAt(i) == c2) {
            this.f16022b++;
            return;
        }
        throw new cyf("Unexpected char in descriptor: " + str + " at pos " + this.f16022b + ", expected: " + c2);
    }
}
