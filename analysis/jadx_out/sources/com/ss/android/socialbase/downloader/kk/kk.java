package com.ss.android.socialbase.downloader.kk;

import g.awf;

/* loaded from: classes.dex */
public class kk {
    public static String d(String str, String[] strArr, String[] strArr2) {
        StringBuilder sb = new StringBuilder("INSERT OR REPLACE INTO ");
        sb.append("\"" + str + '\"');
        sb.append(" (");
        dq(sb, strArr);
        sb.append(") VALUES (");
        dq(sb, strArr.length);
        sb.append(')');
        return sb.toString();
    }

    public static StringBuilder d(StringBuilder sb, String[] strArr) {
        for (int i = 0; i < strArr.length; i++) {
            dq(sb, strArr[i]).append("=?");
            if (i < strArr.length - 1) {
                sb.append(',');
            }
        }
        return sb;
    }

    public static String dq(String str, String str2, String[] strArr) {
        StringBuilder sb = new StringBuilder(str);
        sb.append('\"');
        sb.append(str2);
        sb.append("\" (");
        dq(sb, strArr);
        sb.append(") VALUES (");
        dq(sb, strArr.length);
        sb.append(')');
        return sb.toString();
    }

    public static String dq(String str, String[] strArr) {
        String str2 = "\"" + str + '\"';
        StringBuilder sb = new StringBuilder("DELETE FROM ");
        sb.append(str2);
        if (strArr != null && strArr.length > 0) {
            sb.append(" WHERE ");
            dq(sb, str2, strArr);
        }
        return sb.toString();
    }

    public static String dq(String str, String[] strArr, String[] strArr2) {
        String str2 = "\"" + str + '\"';
        StringBuilder p = awf.p("UPDATE ", str2, " SET ");
        d(p, strArr);
        if (strArr2 != null && strArr2.length > 0) {
            p.append(" WHERE ");
            dq(p, str2, strArr2);
        }
        return p.toString();
    }

    public static StringBuilder dq(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 < i - 1) {
                sb.append("?,");
            } else {
                sb.append('?');
            }
        }
        return sb;
    }

    public static StringBuilder dq(StringBuilder sb, String str) {
        sb.append('\"');
        sb.append(str);
        sb.append('\"');
        return sb;
    }

    public static StringBuilder dq(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(".\"");
        sb.append(str2);
        sb.append('\"');
        return sb;
    }

    public static StringBuilder dq(StringBuilder sb, String str, String[] strArr) {
        for (int i = 0; i < strArr.length; i++) {
            dq(sb, str, strArr[i]).append("=?");
            if (i < strArr.length - 1) {
                sb.append(',');
            }
        }
        return sb;
    }

    public static StringBuilder dq(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            sb.append('\"');
            sb.append(strArr[i]);
            sb.append('\"');
            if (i < length - 1) {
                sb.append(',');
            }
        }
        return sb;
    }
}
