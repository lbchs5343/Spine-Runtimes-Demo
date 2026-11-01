package com.bytedance.sdk.component.d.dq;

import android.text.TextUtils;
import g.tn;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class iw {
    private final String[] dq;

    public static final class dq {
        final List<String> dq = new ArrayList(20);

        private void ox(String str, String str2) {
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
                    throw new IllegalArgumentException(com.bytedance.sdk.component.d.dq.d.o.dq("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i), str));
                }
            }
            if (str2 == null) {
                throw new NullPointerException(tn.ad("value for name ", str, " == null"));
            }
            int length2 = str2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                char charAt2 = str2.charAt(i2);
                if ((charAt2 <= 31 && charAt2 != '\t') || charAt2 >= 127) {
                    throw new IllegalArgumentException(com.bytedance.sdk.component.d.dq.d.o.dq("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt2), Integer.valueOf(i2), str, str2));
                }
            }
        }

        public dq d(String str, String str2) {
            try {
                ox(str, str2);
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
            return dq(str, str2);
        }

        public dq dq(String str, String str2) {
            this.dq.add(str);
            this.dq.add(str2.trim());
            return this;
        }

        public iw dq() {
            return new iw(this);
        }
    }

    public iw(dq dqVar) {
        List<String> list = dqVar.dq;
        this.dq = (String[]) list.toArray(new String[list.size()]);
    }

    public iw(String[] strArr) {
        this.dq = strArr;
    }

    public String d(int i) {
        return this.dq[(i * 2) + 1];
    }

    public Map<String, List<String>> d() {
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

    public int dq() {
        return this.dq.length / 2;
    }

    public String dq(int i) {
        return this.dq[i * 2];
    }
}
