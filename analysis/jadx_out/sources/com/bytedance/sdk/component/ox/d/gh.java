package com.bytedance.sdk.component.ox.d;

import g.awf;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class gh {
    private static final char[] p = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: d, reason: collision with root package name */
    final String f2108d;
    final String dq;
    private final List<String> ia;
    private final String iw;
    private final String kk;
    private final List<String> mn;
    private final String o;
    final int ox;
    private final String s;

    public static final class dq {
        String dq;
        String ia;
        final List<String> iw;
        List<String> mn;
        String p;

        /* renamed from: d, reason: collision with root package name */
        String f2109d = "";
        String ox = "";
        int s = -1;

        /* renamed from: com.bytedance.sdk.component.ox.d.gh$dq$dq, reason: collision with other inner class name */
        public enum EnumC0128dq {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public dq() {
            ArrayList arrayList = new ArrayList();
            this.iw = arrayList;
            arrayList.add("");
        }

        private static int d(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char charAt = str.charAt(i);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                while (true) {
                    i++;
                    if (i >= i2) {
                        break;
                    }
                    char charAt2 = str.charAt(i);
                    if (charAt2 < 'a' || charAt2 > 'z') {
                        if (charAt2 < 'A' || charAt2 > 'Z') {
                            if (charAt2 < '0' || charAt2 > '9') {
                                if (charAt2 != '+' && charAt2 != '-' && charAt2 != '.') {
                                    if (charAt2 == ':') {
                                        return i;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private void dq(String str, int i, int i2) {
            if (i == i2) {
                return;
            }
            char charAt = str.charAt(i);
            if (charAt == '/' || charAt == '\\') {
                this.iw.clear();
                this.iw.add("");
                i++;
            } else {
                List<String> list = this.iw;
                list.set(list.size() - 1, "");
            }
            int i3 = i;
            while (i3 < i2) {
                int dq = com.bytedance.sdk.component.ox.d.dq.ox.dq(str, i3, i2, "/\\");
                boolean z = dq < i2;
                String str2 = str;
                dq(str2, i3, dq, z, true);
                if (z) {
                    dq++;
                }
                i3 = dq;
                str = str2;
            }
        }

        private void dq(String str, int i, int i2, boolean z, boolean z2) {
            String dq = gh.dq(str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, true, null);
            if (iw(dq)) {
                return;
            }
            if (mn(dq)) {
                p();
                return;
            }
            if (((String) awf.q(1, this.iw)).isEmpty()) {
                List<String> list = this.iw;
                list.set(list.size() - 1, dq);
            } else {
                this.iw.add(dq);
            }
            if (z) {
                this.iw.add("");
            }
        }

        private static int iw(String str, int i, int i2) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(gh.dq(str, i, i2, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (parseInt <= 0 || parseInt > 65535) {
                return -1;
            }
            return parseInt;
        }

        private boolean iw(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean mn(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private static int ox(String str, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i3++;
                i++;
            }
            return i3;
        }

        private static int p(String str, int i, int i2) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt == ':') {
                    return i;
                }
                if (charAt == '[') {
                    do {
                        i++;
                        if (i < i2) {
                        }
                    } while (str.charAt(i) != ']');
                }
                i++;
            }
            return i2;
        }

        private void p() {
            if (!this.iw.remove(r0.size() - 1).isEmpty() || this.iw.isEmpty()) {
                this.iw.add("");
            } else {
                this.iw.set(r0.size() - 1, "");
            }
        }

        private static String s(String str, int i, int i2) {
            return com.bytedance.sdk.component.ox.d.dq.ox.dq(gh.dq(str, i, i2, false));
        }

        public dq d() {
            int size = this.iw.size();
            for (int i = 0; i < size; i++) {
                this.iw.set(i, gh.dq(this.iw.get(i), "[]", true, true, false, true));
            }
            List<String> list = this.mn;
            if (list != null) {
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = this.mn.get(i2);
                    if (str != null) {
                        this.mn.set(i2, gh.dq(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            String str2 = this.ia;
            if (str2 != null) {
                this.ia = gh.dq(str2, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        public dq d(String str) {
            if (str == null) {
                throw new NullPointerException("username == null");
            }
            this.f2109d = gh.dq(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public int dq() {
            int i = this.s;
            return i != -1 ? i : gh.dq(this.dq);
        }

        public EnumC0128dq dq(gh ghVar, String str) {
            int dq;
            String str2;
            int i;
            String str3;
            String str4 = str;
            int dq2 = com.bytedance.sdk.component.ox.d.dq.ox.dq(str4, 0, str4.length());
            int d2 = com.bytedance.sdk.component.ox.d.dq.ox.d(str4, dq2, str4.length());
            if (d(str4, dq2, d2) != -1) {
                if (str4.regionMatches(true, dq2, "https:", 0, 6)) {
                    this.dq = "https";
                    dq2 += 6;
                    str4 = str;
                } else {
                    str4 = str;
                    if (!str4.regionMatches(true, dq2, "http:", 0, 5)) {
                        return EnumC0128dq.UNSUPPORTED_SCHEME;
                    }
                    this.dq = "http";
                    dq2 += 5;
                }
            } else {
                if (ghVar == null) {
                    return EnumC0128dq.MISSING_SCHEME;
                }
                this.dq = ghVar.dq;
            }
            int ox = ox(str4, dq2, d2);
            char c2 = '#';
            if (ox >= 2 || ghVar == null || !ghVar.dq.equals(this.dq)) {
                int i2 = dq2 + ox;
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    dq = com.bytedance.sdk.component.ox.d.dq.ox.dq(str4, i2, d2, "@/\\?#");
                    char charAt = dq != d2 ? str4.charAt(dq) : (char) 65535;
                    if (charAt == 65535 || charAt == c2 || charAt == '/' || charAt == '\\' || charAt == '?') {
                        break;
                    }
                    if (charAt == '@') {
                        if (z) {
                            i = dq;
                            StringBuilder sb = new StringBuilder();
                            sb.append(this.ox);
                            sb.append("%40");
                            str3 = str;
                            sb.append(gh.dq(str3, i2, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null));
                            this.ox = sb.toString();
                        } else {
                            int dq3 = com.bytedance.sdk.component.ox.d.dq.ox.dq(str4, i2, dq, ':');
                            String dq4 = gh.dq(str, i2, dq3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z2) {
                                dq4 = awf.f(this.f2109d, "%40", dq4, new StringBuilder());
                            }
                            this.f2109d = dq4;
                            if (dq3 != dq) {
                                i = dq;
                                this.ox = gh.dq(str, dq3 + 1, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z = true;
                            } else {
                                i = dq;
                            }
                            str3 = str;
                            z2 = true;
                        }
                        i2 = i + 1;
                        str4 = str3;
                        c2 = '#';
                    }
                }
                str2 = str4;
                int i3 = i2;
                int p = p(str2, i3, dq);
                int i4 = p + 1;
                if (i4 < dq) {
                    this.p = s(str2, i3, p);
                    int iw = iw(str2, i4, dq);
                    this.s = iw;
                    if (iw == -1) {
                        return EnumC0128dq.INVALID_PORT;
                    }
                } else {
                    this.p = s(str2, i3, p);
                    this.s = gh.dq(this.dq);
                }
                if (this.p == null) {
                    return EnumC0128dq.INVALID_HOST;
                }
                dq2 = dq;
            } else {
                this.f2109d = ghVar.s();
                this.ox = ghVar.iw();
                this.p = ghVar.f2108d;
                this.s = ghVar.ox;
                this.iw.clear();
                this.iw.addAll(ghVar.o());
                if (dq2 == d2 || str4.charAt(dq2) == '#') {
                    s(ghVar.no());
                }
                str2 = str4;
            }
            int dq5 = com.bytedance.sdk.component.ox.d.dq.ox.dq(str2, dq2, d2, "?#");
            dq(str2, dq2, dq5);
            if (dq5 < d2 && str2.charAt(dq5) == '?') {
                int dq6 = com.bytedance.sdk.component.ox.d.dq.ox.dq(str2, dq5, d2, '#');
                this.mn = gh.d(gh.dq(str2, dq5 + 1, dq6, " \"'<>#", true, false, true, true, null));
                dq5 = dq6;
            }
            if (dq5 < d2 && str2.charAt(dq5) == '#') {
                this.ia = gh.dq(str2, dq5 + 1, d2, "", true, false, false, false, null);
            }
            return EnumC0128dq.SUCCESS;
        }

        public dq dq(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException(awf.ac(i, "unexpected port: "));
            }
            this.s = i;
            return this;
        }

        public dq dq(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.dq = "http";
                return this;
            }
            if (!str.equalsIgnoreCase("https")) {
                throw new IllegalArgumentException("unexpected scheme: ".concat(str));
            }
            this.dq = "https";
            return this;
        }

        public dq ox(String str) {
            if (str == null) {
                throw new NullPointerException("password == null");
            }
            this.ox = gh.dq(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public gh ox() {
            if (this.dq == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.p != null) {
                return new gh(this);
            }
            throw new IllegalStateException("host == null");
        }

        public dq p(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String s = s(str, 0, str.length());
            if (s == null) {
                throw new IllegalArgumentException("unexpected host: ".concat(str));
            }
            this.p = s;
            return this;
        }

        public dq query(String str) {
            this.mn = str != null ? gh.d(gh.dq(str, " \"'<>#", false, false, true, true)) : null;
            return this;
        }

        public dq s(String str) {
            this.mn = str != null ? gh.d(gh.dq(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.dq);
            sb.append("://");
            if (!this.f2109d.isEmpty() || !this.ox.isEmpty()) {
                sb.append(this.f2109d);
                if (!this.ox.isEmpty()) {
                    sb.append(':');
                    sb.append(this.ox);
                }
                sb.append('@');
            }
            if (this.p.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.p);
                sb.append(']');
            } else {
                sb.append(this.p);
            }
            int dq = dq();
            if (dq != gh.dq(this.dq)) {
                sb.append(':');
                sb.append(dq);
            }
            gh.dq(sb, this.iw);
            if (this.mn != null) {
                sb.append('?');
                gh.d(sb, this.mn);
            }
            if (this.ia != null) {
                sb.append('#');
                sb.append(this.ia);
            }
            return sb.toString();
        }
    }

    public gh(dq dqVar) {
        this.dq = dqVar.dq;
        this.s = dq(dqVar.f2109d, false);
        this.iw = dq(dqVar.ox, false);
        this.f2108d = dqVar.p;
        this.ox = dqVar.dq();
        this.mn = dq(dqVar.iw, false);
        List<String> list = dqVar.mn;
        this.ia = list != null ? dq(list, true) : null;
        String str = dqVar.ia;
        this.kk = str != null ? dq(str, false) : null;
        this.o = dqVar.toString();
    }

    public static List<String> d(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int indexOf = str.indexOf(38, i);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i);
            if (indexOf2 == -1 || indexOf2 > indexOf) {
                arrayList.add(str.substring(i, indexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            }
            i = indexOf + 1;
        }
        return arrayList;
    }

    public static void d(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    public static int dq(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public static gh dq(URL url) {
        return s(url.toString());
    }

    public static String dq(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !dq(str, i3, i2)))) || (codePointAt == 43 && z3)))) {
                com.bytedance.sdk.component.ox.dq.ox oxVar = new com.bytedance.sdk.component.ox.dq.ox();
                oxVar.dq(str, i, i3);
                dq(oxVar, str, i3, i2, str2, z, z2, z3, z4, charset);
                return oxVar.jy();
            }
            i3 += Character.charCount(codePointAt);
        }
        return str.substring(i, i2);
    }

    public static String dq(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                com.bytedance.sdk.component.ox.dq.ox oxVar = new com.bytedance.sdk.component.ox.dq.ox();
                oxVar.dq(str, i, i3);
                dq(oxVar, str, i3, i2, z);
                return oxVar.jy();
            }
        }
        return str.substring(i, i2);
    }

    public static String dq(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return dq(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    public static String dq(String str, boolean z) {
        return dq(str, 0, str.length(), z);
    }

    private List<String> dq(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? dq(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static void dq(com.bytedance.sdk.component.ox.dq.ox oxVar, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        com.bytedance.sdk.component.ox.dq.ox oxVar2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (!z || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt == 43 && z3) {
                    oxVar.d(z ? "+" : "%2B");
                } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z || (z2 && !dq(str, i, i2)))))) {
                    if (oxVar2 == null) {
                        oxVar2 = new com.bytedance.sdk.component.ox.dq.ox();
                    }
                    if (charset == null || charset.equals(com.bytedance.sdk.component.ox.d.dq.ox.s)) {
                        oxVar2.dq(codePointAt);
                    } else {
                        oxVar2.dq(str, i, Character.charCount(codePointAt) + i, charset);
                    }
                    while (!oxVar2.s()) {
                        byte ia = oxVar2.ia();
                        oxVar.kk(37);
                        char[] cArr = p;
                        oxVar.kk((int) cArr[((ia & 255) >> 4) & 15]);
                        oxVar.kk((int) cArr[ia & 15]);
                    }
                } else {
                    oxVar.dq(codePointAt);
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    public static void dq(com.bytedance.sdk.component.ox.dq.ox oxVar, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt != 37 || (i3 = i + 2) >= i2) {
                if (codePointAt == 43 && z) {
                    oxVar.kk(32);
                }
                oxVar.dq(codePointAt);
            } else {
                int dq2 = com.bytedance.sdk.component.ox.d.dq.ox.dq(str.charAt(i + 1));
                int dq3 = com.bytedance.sdk.component.ox.d.dq.ox.dq(str.charAt(i3));
                if (dq2 != -1 && dq3 != -1) {
                    oxVar.kk((dq2 << 4) + dq3);
                    i = i3;
                }
                oxVar.dq(codePointAt);
            }
            i += Character.charCount(codePointAt);
        }
    }

    public static void dq(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    public static boolean dq(String str, int i, int i2) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && com.bytedance.sdk.component.ox.d.dq.ox.dq(str.charAt(i + 1)) != -1 && com.bytedance.sdk.component.ox.d.dq.ox.dq(str.charAt(i3)) != -1;
    }

    public static gh s(String str) {
        dq dqVar = new dq();
        if (dqVar.dq(null, str) == dq.EnumC0128dq.SUCCESS) {
            return dqVar.ox();
        }
        return null;
    }

    public URI d() {
        String dqVar = q().d().toString();
        try {
            return new URI(dqVar);
        } catch (URISyntaxException e2) {
            try {
                return URI.create(dqVar.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e2);
            }
        }
    }

    public URL dq() {
        try {
            return new URL(this.o);
        } catch (MalformedURLException e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof gh) && ((gh) obj).o.equals(this.o);
    }

    public int hashCode() {
        return this.o.hashCode();
    }

    public int ia() {
        return this.ox;
    }

    public String ig() {
        if (this.kk == null) {
            return null;
        }
        return this.o.substring(this.o.indexOf(35) + 1);
    }

    public String iw() {
        if (this.iw.isEmpty()) {
            return "";
        }
        return this.o.substring(this.o.indexOf(58, this.dq.length() + 3) + 1, this.o.indexOf(64));
    }

    public String kk() {
        int indexOf = this.o.indexOf(47, this.dq.length() + 3);
        String str = this.o;
        return this.o.substring(indexOf, com.bytedance.sdk.component.ox.d.dq.ox.dq(str, indexOf, str.length(), "?#"));
    }

    public String mn() {
        return this.f2108d;
    }

    public String mp() {
        return p("/...").d("").ox("").ox().toString();
    }

    public String no() {
        if (this.ia == null) {
            return null;
        }
        int indexOf = this.o.indexOf(63) + 1;
        String str = this.o;
        return this.o.substring(indexOf, com.bytedance.sdk.component.ox.d.dq.ox.dq(str, indexOf, str.length(), '#'));
    }

    public List<String> o() {
        int indexOf = this.o.indexOf(47, this.dq.length() + 3);
        String str = this.o;
        int dq2 = com.bytedance.sdk.component.ox.d.dq.ox.dq(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < dq2) {
            int i = indexOf + 1;
            int dq3 = com.bytedance.sdk.component.ox.d.dq.ox.dq(this.o, i, dq2, '/');
            arrayList.add(this.o.substring(i, dq3));
            indexOf = dq3;
        }
        return arrayList;
    }

    public gh ox(String str) {
        dq p2 = p(str);
        if (p2 != null) {
            return p2.ox();
        }
        return null;
    }

    public String ox() {
        return this.dq;
    }

    public dq p(String str) {
        dq dqVar = new dq();
        if (dqVar.dq(this, str) == dq.EnumC0128dq.SUCCESS) {
            return dqVar;
        }
        return null;
    }

    public boolean p() {
        return this.dq.equals("https");
    }

    public dq q() {
        dq dqVar = new dq();
        dqVar.dq = this.dq;
        dqVar.f2109d = s();
        dqVar.ox = iw();
        dqVar.p = this.f2108d;
        dqVar.s = this.ox != dq(this.dq) ? this.ox : -1;
        dqVar.iw.clear();
        dqVar.iw.addAll(o());
        dqVar.s(no());
        dqVar.ia = ig();
        return dqVar;
    }

    public String query() {
        if (this.ia == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        d(sb, this.ia);
        return sb.toString();
    }

    public String s() {
        if (this.s.isEmpty()) {
            return "";
        }
        int length = this.dq.length() + 3;
        String str = this.o;
        return this.o.substring(length, com.bytedance.sdk.component.ox.d.dq.ox.dq(str, length, str.length(), ":@"));
    }

    public String toString() {
        return this.o;
    }
}
