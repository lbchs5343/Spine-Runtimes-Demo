package com.bytedance.sdk.component.ox.d.dq.ox;

import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.cd;
import com.bytedance.sdk.component.ox.d.gh;
import com.bytedance.sdk.component.ox.d.mp;
import g.he;
import java.util.Collections;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class s {
    private static final Pattern dq = Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");

    public static int d(String str, int i) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return he.UNDEFINED_ITEM_ID;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public static cd d(bl blVar) {
        return dq(blVar.o().dq().ox(), blVar.mn());
    }

    public static Set<String> d(cd cdVar) {
        Set<String> set = Collections.EMPTY_SET;
        int dq2 = cdVar.dq();
        for (int i = 0; i < dq2; i++) {
            if ("Vary".equalsIgnoreCase(cdVar.dq(i))) {
                String d2 = cdVar.d(i);
                if (set.isEmpty()) {
                    set = new TreeSet<>((Comparator<? super String>) String.CASE_INSENSITIVE_ORDER);
                }
                for (String str : d2.split(",")) {
                    set.add(str.trim());
                }
            }
        }
        return set;
    }

    public static int dq(String str, int i) {
        char charAt;
        while (i < str.length() && ((charAt = str.charAt(i)) == ' ' || charAt == '\t')) {
            i++;
        }
        return i;
    }

    public static int dq(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    public static long dq(bl blVar) {
        return dq(blVar.mn());
    }

    public static long dq(cd cdVar) {
        return dq(cdVar.dq("Content-Length"));
    }

    private static long dq(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static cd dq(cd cdVar, cd cdVar2) {
        Set<String> d2 = d(cdVar2);
        if (d2.isEmpty()) {
            return new cd.dq().dq();
        }
        cd.dq dqVar = new cd.dq();
        int dq2 = cdVar.dq();
        for (int i = 0; i < dq2; i++) {
            String dq3 = cdVar.dq(i);
            if (d2.contains(dq3)) {
                dqVar.dq(dq3, cdVar.d(i));
            }
        }
        return dqVar.dq();
    }

    public static void dq(mp mpVar, gh ghVar, cd cdVar) {
        if (mpVar == mp.dq) {
            return;
        }
        com.bytedance.sdk.component.ox.d.ig.dq(ghVar, cdVar).isEmpty();
    }

    public static boolean ox(bl blVar) {
        if (blVar.dq().d().equals("HEAD")) {
            return false;
        }
        int ox = blVar.ox();
        return (((ox >= 100 && ox < 200) || ox == 204 || ox == 304) && dq(blVar) == -1 && !"chunked".equalsIgnoreCase(blVar.dq("Transfer-Encoding"))) ? false : true;
    }
}
