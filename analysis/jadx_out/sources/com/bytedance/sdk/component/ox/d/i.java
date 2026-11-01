package com.bytedance.sdk.component.ox.d;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class i {
    private final String iw;
    private final String ox;
    private final String p;
    private final String s;
    private static final Pattern dq = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: d, reason: collision with root package name */
    private static final Pattern f2112d = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    private i(String str, String str2, String str3, String str4) {
        this.ox = str;
        this.p = str2;
        this.s = str3;
        this.iw = str4;
    }

    public static i dq(String str) {
        Matcher matcher = dq.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String group = matcher.group(1);
        Locale locale = Locale.US;
        String lowerCase = group.toLowerCase(locale);
        String lowerCase2 = matcher.group(2).toLowerCase(locale);
        Matcher matcher2 = f2112d.matcher(str);
        String str2 = null;
        for (int end = matcher.end(); end < str.length(); end = matcher2.end()) {
            matcher2.region(end, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            String group2 = matcher2.group(1);
            if (group2 != null && group2.equalsIgnoreCase("charset")) {
                String group3 = matcher2.group(2);
                if (group3 == null) {
                    group3 = matcher2.group(3);
                } else if (group3.startsWith("'") && group3.endsWith("'") && group3.length() > 2) {
                    group3 = group3.substring(1, group3.length() - 1);
                }
                if (str2 != null && !group3.equalsIgnoreCase(str2)) {
                    return null;
                }
                str2 = group3;
            }
        }
        return new i(str, lowerCase, lowerCase2, str2);
    }

    public String d() {
        return this.s;
    }

    public String dq() {
        return this.p;
    }

    public Charset dq(Charset charset) {
        try {
            String str = this.iw;
            return str != null ? Charset.forName(str) : charset;
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof i) && ((i) obj).ox.equals(this.ox);
    }

    public int hashCode() {
        return this.ox.hashCode();
    }

    public Charset ox() {
        return dq((Charset) null);
    }

    public String toString() {
        return this.ox;
    }
}
