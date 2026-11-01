package com.bytedance.sdk.component.ox.d;

import android.text.TextUtils;
import g.awf;
import g.tn;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class cd {
    public final String[] dq;

    public static final class dq {
        final List<String> dq = new ArrayList(20);

        private void p(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt <= ' ' || charAt >= 127) {
                    throw new IllegalArgumentException(com.bytedance.sdk.component.ox.d.dq.ox.dq("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                }
            }
            if (str2 == null) {
                throw new NullPointerException(tn.ad("value for name ", str, " == null"));
            }
            int length2 = str2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                char charAt2 = str2.charAt(i2);
                if ((charAt2 <= 31 && charAt2 != '\t') || charAt2 >= 127) {
                    throw new IllegalArgumentException(com.bytedance.sdk.component.ox.d.dq.ox.dq("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str, str2));
                }
            }
        }

        public dq d(String str) {
            int i = 0;
            while (i < this.dq.size()) {
                if (str.equalsIgnoreCase(this.dq.get(i))) {
                    this.dq.remove(i);
                    this.dq.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }

        public dq d(String str, String str2) {
            this.dq.add(str);
            this.dq.add(str2.trim());
            return this;
        }

        public dq dq(String str) {
            int indexOf = str.indexOf(":", 1);
            return indexOf != -1 ? d(str.substring(0, indexOf), str.substring(indexOf + 1)) : str.startsWith(":") ? d("", str.substring(1)) : d("", str);
        }

        public dq dq(String str, String str2) {
            try {
                p(str, str2);
            } catch (Throwable unused) {
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    try {
                        StringBuilder sb = new StringBuilder();
                        int length = str2.length();
                        for (int i = 0; i < length; i++) {
                            char charAt = str2.charAt(i);
                            if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                                sb.append(charAt);
                            } else {
                                sb.append(URLEncoder.encode(String.valueOf(charAt), "UTF-8"));
                            }
                        }
                        str2 = sb.toString();
                    } catch (UnsupportedEncodingException e2) {
                        e2.printStackTrace();
                        return this;
                    }
                }
                return this;
            }
            return d(str, str2);
        }

        public cd dq() {
            return new cd(this);
        }

        public dq ox(String str, String str2) {
            try {
                p(str, str2);
            } catch (Throwable unused) {
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    try {
                        StringBuilder sb = new StringBuilder();
                        int length = str2.length();
                        for (int i = 0; i < length; i++) {
                            char charAt = str2.charAt(i);
                            if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                                sb.append(charAt);
                            } else {
                                sb.append(URLEncoder.encode(String.valueOf(charAt), "UTF-8"));
                            }
                        }
                        str2 = sb.toString();
                    } catch (UnsupportedEncodingException e2) {
                        e2.printStackTrace();
                        return this;
                    }
                }
                return this;
            }
            d(str);
            d(str, str2);
            return this;
        }
    }

    public cd(dq dqVar) {
        List<String> list = dqVar.dq;
        this.dq = (String[]) list.toArray(new String[list.size()]);
    }

    private cd(String[] strArr) {
        this.dq = strArr;
    }

    public static cd dq(String... strArr) {
        if (strArr == null) {
            throw new NullPointerException("namesAndValues == null");
        }
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (int i = 0; i < strArr2.length; i++) {
            String str = strArr2[i];
            if (str == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i] = str.trim();
        }
        for (int i2 = 0; i2 < strArr2.length; i2 += 2) {
            String str2 = strArr2[i2];
            String str3 = strArr2[i2 + 1];
            if (str2.length() == 0 || str2.indexOf(0) != -1 || str3.indexOf(0) != -1) {
                throw new IllegalArgumentException(awf.t("Unexpected header: ", str2, ": ", str3));
            }
        }
        return new cd(strArr2);
    }

    private static String dq(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public dq d() {
        dq dqVar = new dq();
        Collections.addAll(dqVar.dq, this.dq);
        return dqVar;
    }

    public String d(int i) {
        return this.dq[(i * 2) + 1];
    }

    public List<String> d(String str) {
        int dq2 = dq();
        ArrayList arrayList = null;
        for (int i = 0; i < dq2; i++) {
            if (str.equalsIgnoreCase(dq(i))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(d(i));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.EMPTY_LIST;
    }

    public int dq() {
        return this.dq.length / 2;
    }

    public String dq(int i) {
        return this.dq[i * 2];
    }

    public String dq(String str) {
        return dq(this.dq, str);
    }

    public boolean equals(Object obj) {
        return (obj instanceof cd) && Arrays.equals(((cd) obj).dq, this.dq);
    }

    public int hashCode() {
        return Arrays.hashCode(this.dq);
    }

    public Map<String, List<String>> ox() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int dq2 = dq();
        for (int i = 0; i < dq2; i++) {
            String lowerCase = dq(i).toLowerCase(Locale.US);
            List list = (List) treeMap.get(lowerCase);
            if (list == null) {
                list = new ArrayList(2);
                treeMap.put(lowerCase, list);
            }
            list.add(d(i));
        }
        return treeMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int dq2 = dq();
        for (int i = 0; i < dq2; i++) {
            sb.append(dq(i));
            sb.append(": ");
            sb.append(d(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
